# Lab 01 - Introducere în Octave

## [00-setup](./00-setup/): Creare mediu de lucru Docker

Începem prin a instala mediul de lucru pe care îl vom folosi pentru tot parcursul semestrului. Așadar, **asigurați-vă că acesta funcționează corect, căci NU vom reveni asupra acestui pas!**

Pașii de mai jos sunt gândiți pentru o distribuție de **Linux** (mai precis, Debian/Ubuntu).

### First time setup

Acești pași vor fi rulați **o singură dată**, adică doar la primul laborator. După aceea, în laboratoarele următoare, nu va trebui să îi mai rulați.

1. Instalați [Docker Engine](https://docs.docker.com/engine/install/).

   Pașii pentru **Ubuntu** se găsesc [aici](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository). Urmați pașii de la "Install using the `apt` repository".

   Pașii pentru **Debian** se găsesc [aici](https://docs.docker.com/engine/install/debian/#install-using-the-repository). Urmați pașii de la "Install using the `apt` repository".

2. Deschideți un terminal și asigurați-vă că vă aflați în directorul `00-setup` (i.e. `NM-lab-24-25/lab-01/00-setup`).

3. Asigurați-vă că fișierele `build.sh` și `run.sh` au permisiuni de execuție (i.e. `chmod +x build.sh`, respectiv `chmod +x run.sh`).

4. Executați din terminal `./build.sh`. În funcție de conexiunea la internet și de viteza laptopului vostru, comanda poate rula câteva minute bune, fără mult feedback vizual.

   _Notă: Această comandă vă va crea o imagine denumită `new-nm-octave` ce poate fi instanțiată oricând. Imaginea are suport atât pentru notebook-uri Octave, cât și pentru notebook-uri Python 3._

Dacă nu ați avut nicio eroare, puteți trece mai departe.

### Run this everytime

Pașii care urmează vor fi rulați **înaintea fiecărui laborator**:

1. Dintr-un terminal ce are calea curentă setată în folder-ul `00-setup` (i.e. `NM-lab-24-25/lab-01/00-setup`), rulați `./run.sh`.

   _Notă: Această comandă va crea un container `new-octave-container`, instanțat din imaginea `new-nm-octave` creată în pașii anteriori._

2. Dacă nu aveți erori, ar trebui să puteți accesa [`http://127.0.0.1:8888/lab`](http://127.0.0.1:8888/lab), interfața grafică de Jupyter Notebook pe care o vom folosi mereu.

3. Ar trebui, de asemenea, să vedeți în partea stângă toate folderele din repo-ul de laborator.

