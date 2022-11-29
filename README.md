# Projekat iz OS1 za godinu 2021/22

## Odnos jezgra i sistema-domaćina:
Jezgro i korisnička aplikacija treba da se posmatraju kao jedinstven program (.exe) dobijen
prevođenjem i statičkim povezivanjem kôda na izvornom programskom jeziku na kom su
realizovani. Oni će biti pokrenuti unutar edukativnog operativnog sistema xv6 kao sistema domaćina. Ovaj sistem xv6 je za ovu priliku značajno modifikovan tako što su mu izbačene
mnoge funkcionalnosti (promena konteksta i raspoređivanje procesa, upravljanje memorijom,
fajl podsistem, upravljanje diskom itd.). Sistem-domaćin ima ulogu samo da se sam pokrene i
inicijalizuje ciljni hardver, potom napravi samo jedan proces sa virtuelnim adresnim prostorom
koji zauzima celu raspoloživu fizičku memoriju, učita kôd programa koji čine realizovano
jezgro i sa njim povezana aplikacija i zatim pokrene njegovo izvršavanje u kontekstu tog
jedinog procesa. Osim toga, sistem-domaćin obezbeđuje i osnovne usluge hardvera: periodičan
prekid od tajmera i pristup konzoli (tastaturi i ekranu). Na PC računarima i njihovim
operativnim sistemima cela ova računarska platforma (procesor RISC V, tajmer i konzola, kao
i sistem-domaćin xv6) simuliraju se odgovarajućom virtuelnom mašinom (emulatorom).

<ins>U realizaciji jezgra nije dozvoljeno koristiti usluge operativnog sistema-domaćina niti
operativnog sistema PC računara na kom se sve ovo izvršava, a koje se odnose na koncepte niti
ili procesa, semafora, prekida, sinhronizacije i komunikacije između niti ili procesa, itd. Drugim
rečima, sve zahtevane koncepte i funkcionalnosti potrebno je realizovati u potpunosti
samostalno i „od nule“. </ins>
<hr>

### Opšti zahtevi:

Jezgro treba da obezbedi tri vrste interfejsa prema korisničkom programu: 

* ABI (engl. application binary interface) je binarni interfejs sistemskih poziva koji se
vrše pomoću softverskog prekida ciljnog procesora. Ovaj sloj obezbeđuje prenos argumenata
sistemskog poziva preko registara procesora, prelazak u privilegovani režim rada procesora i
prelazak na kôd jezgra.

* C API (engl. application programming interface) je klasičan, proceduralan (ne
objektno orijentisan) programski interfejs sistemskih poziva implementiran kao skup funkcija
na jeziku C. Ove funkcije u svojoj implementaciji mogu imati jedan sistemski poziv, više njih
ili nijedan sistemski poziv iz sloja ABI, u zavisnosti od svoje uloge. Tako su ove funkcije
zapravo omotač (engl. wrapper) oko interfejsa ABI.

* C++ API je objektno orijentisan API koji pruža objektni pogled na koncepte koje
jezgro podržava. Implementiran je kao jednostavan objektno orijentisan omotač oko funkcija
iz sloja C API pisan na jeziku C++. 
<hr>

## Sistemski pozivi koje je trebalo realizovati:
| Funkcija       | Objašnjenje         |
| ------------- |:-------------:|
| `void* mem_alloc (size_t size);`             | Alocira (najmanje) size bajtova memorije, zaokruženo i poravnato na blokove veličine MEM_BLOCK_SIZE. Vraća pokazivač na alocirani deo memorije u slučaju uspeha, a null pokazivač u slučaju neuspeha. MEM_BLOCK_SIZE je celobrojna konstanta veća od ili jednaka 64, a manja od ili jednaka 1024. |
| `int mem_free (void*);`     | Oslobađa prostor prethodno zauzet pomoću mem_alloc. Vraća 0 u slučaju uspeha, negativnu vrednost u slučaju greške (kôd greške). Argument mora imati vrednost vraćenu iz mem_alloc. Ukoliko to nije slučaj, ponašanje je nedefinisano: jezgro može vratiti grešku ukoliko može da je detektuje ili manifestovati bilo kakvo drugo predvidivo ili nepredvidivo ponašanje.|
| `class _thread;` <br> `typedef _thread* thread_t;` <br> `int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg);` | Pokreće nit nad funkcijom start_routine, pozivajući je sa argumentom arg. U slučaju uspeha, u *handle upisuje „ručku“ novokreirane niti i vraća 0, a u slučaju neuspeha vraća negativnu vrednost (kôd greške). „Ručka“ je interni identifikator koji jezgro koristi da bi identifikovalo nit (pokazivač na neku internu strukturu/objekat jezgra čije je ime sakriveno iza sinonima _thread). |
| `int thread_exit ();` | Gasi tekuću nit. U slučaju neuspeha vraća negativnu vrednost (kôd greške). |
| `void thread_dispatch ();`  | Potencijalno oduzima procesor tekućoj i daje nekoj drugoj (ili istoj) niti. |
| `class _sem;` <br> `typedef _sem* sem_t;` <br> `int sem_open (  sem_t* handle,  unsigned init);` | Kreira semafor sa inicijalnom vrednošću init. U slučaju uspeha, u *handle upisuje ručku novokreiranog semafora i vraća 0, a u slučaju neuspeha vraća negativnu vrednost (kôd greške). „Ručka“ je interni identifikator koji jezgro koristi da bi identifikovalo semafore (pokazivač na neku internu strukturu/objekat jezgra čije je ime sakriveno iza sinonima _sem). |
| `int sem_close (sem_t handle);` | Oslobađa semafor sa datom ručkom. Sve niti koje su se zatekle da čekaju na semaforu se deblokiraju, pri čemu njihov wait vraća grešku. U slučaju uspeha vraća 0, a u slučaju neuspeha vraća negativnu vrednost (kôd greške). |
| `int sem_wait (sem_t id);` | Operacija wait na semaforu sa datom ručkom. U slučaju uspeha vraća 0, a u slučaju neuspeha, uključujući i slučaj kada je semafor dealociran dok je pozivajuća nit na njemu čekala, vraća negativnu vrednost (kôd greške). |
| `int sem_signal (sem_t id);` | Operacija signal na semaforu sa datom ručkom. U slučaju uspeha vraća 0, a u slučaju neuspeha vraća negativnu vrednost (kôd greške). |
| `typedef unsigned long time_t;` <br> `int time_sleep (time_t);`| Uspavljuje pozivajuću nit na zadati period u internim jedinicama vremena (periodama tajmera). U slučaju uspeha vraća 0, a u slučaju neuspeha vraća negativnu vrednost (kôd greške). |
| `const int EOF = -1;` <br> `char getc ();` | Učitava jedan znak iz bafera znakova učitanih sa konzole. U slučaju da je bafer prazan, suspenduje pozivajuću nit dok se znak ne pojavi. Vraća učitani znak u slučaju uspeha, a konstantu EOF u slučaju greške. |
| `void putc (char);` | Ispisuje dati znak na konzolu |

