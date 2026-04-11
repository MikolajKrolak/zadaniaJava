### Zadania laboratoryjne \- dziedziczenie i polimorfizmTermin realizacji 24.04.2026  23:59

Rozwiązania do zadań zamieść w repozytorium użytym podczas pierwszych ćwiczeń.

**Zadanie 1**   
Zaimplementuj **abstrakcyjną** klasę `Maszyna` z chronionymi atrybutami `marka`, `nazwa`, `pojemnoscSilnika` i `rodzajSilnika`. Ten ostatni ma być enumeracją.

**Zadanie 2** 

Zaimplementuj klasę `Lokomotywa` dziedziczącą po maszynie. Klasa ta ma dodawać dwa prywatne atrybuty charakterystyczne dla lokomotyw i nieuwzględnione wcześniej w maszynie. Klasa ta ma mieć konstruktor, przyjmujący komplet 6 parametrów oraz metodę `wyswietl`, wyrzucającą w zamyśle na ekran wyczerpujący opis danej lokomotywy.

**Zadanie 3**   
Uzupełnij repozytorium o klasę `Kosiarka`, która:

- dziedziczy z maszyny;  
- wprowadza prywatne atrybuty `czyMelekser` (typu boolean), `czyNaped`(j.w.) i `liczbaOstrzy` (typu int);  
- posiada, analogicznie jak klasa `Kosiarka`, jeden konstruktor i metodę `wyswietl`, która wyświetla komplet 7 atrybutów w zorganizowanej formie;  
- dodatkowo, klasa ma zawierać metody *set* dla wszystkich trzech nowowprowadzanych atrybutów.

**Zadanie 4**

Ostatnią klasą dziedziczącą bezpośrednio z maszyny jest klasa `Pojazd`. Klasa zawierać będzie pojedynczy konstruktor, standardową metodę wyświetlającą oraz chronione atrybuty typu double `moc` oraz `momentObrotowy`. Konstruktor ma realizować autonumerowanie pojazdów. W tym celu należy posłużyć się parą klasowych atrybutów typu int: `nrPojazdu` oraz `maxLiczbaPojazdow` (ten ostatni statyczny). Metoda wyświetlająca ma uwzględniać obie wskazane informacje, np. *Pojazd 7 z 12...*.

**Zadanie 5** 

Z klasy `Pojazd` dziedziczą `Samochod` (dodatkowe atrybuty `segment` i `VIN`) oraz `Jednoslad` (dodatkowy atrybut `typ`). Obie wspomniane klasy wykorzystują autorskie enumeracje i zostają wyposażone w konstruktory oraz metody `wyswietl`, nadpisujące metody o tej samej nazwie w klasach nadrzędnych. Konstruktory mają wywoływać konstruktory klasy nadrzędnej i wpisywać się w logikę autonumerowania i wyświetlania informacji o numeracji. W szczególności, klasy te powinny mieć konstruktory pobierające odpowiednio 8 i 7 atrybutów \- a jednoślad dodatkowo konstruktor, który nie pobiera wszystkich atrybutów (z uwagi na specyficzną logikę opisu rowerów i hulajnóg tradycyjnych). Metoda wyświetlająca klasy `Jednoślad` ma pomijać wartości niewprowadzone.

**Zadanie 6**  
W metodzie głównej klasy `ParkMaszynowy` zadeklarować po 2 obiekty każdej klasy, w stosunku do której jest to możliwe. Wszystkie obiekty trafiają do **pojedynczej** kolekcji i są wyświetlane pętlą *for each*. Jakiej modyfikacji należy dokonać w klasie `Maszyna`, aby było to możliwe? Wykorzystaj dodolną metodę *set* obiektu klasy `Kosiarka` i wyświetl ten obiekt ponownie.  
