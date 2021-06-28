-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 03, 2021 at 04:54 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stern`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikli`
--

CREATE TABLE `artikli` (
  `id` int(11) NOT NULL,
  `datum` varchar(64) COLLATE latin2_croatian_ci NOT NULL,
  `naslov` varchar(30) COLLATE latin2_croatian_ci NOT NULL,
  `podnaslov` varchar(30) COLLATE latin2_croatian_ci NOT NULL,
  `sazetak` text COLLATE latin2_croatian_ci NOT NULL,
  `tekst` text COLLATE latin2_croatian_ci NOT NULL,
  `slika` varchar(255) COLLATE latin2_croatian_ci NOT NULL,
  `kategorija` varchar(64) COLLATE latin2_croatian_ci NOT NULL,
  `arhiva` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_croatian_ci;

--
-- Dumping data for table `artikli`
--

INSERT INTO `artikli` (`id`, `datum`, `naslov`, `podnaslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(9, '2021-05-16', 'HRVATI OSTALI BEZ EUROPE', 'UDARAC ZA IVICU OLIĆA', 'Vedran Ćorluka, novi pomoćnik izbornika Zlatka Dalića, odigrao je posljednju utakmicu za Lokomotiv', 'HRVATI OSTALI BEZ EUROPE, VLAŠIĆ OZLIJEĐEN, ĆORLUKA SE OPROSTIO, STIŽE U VATRENE\r\n\r\nIvica Olić nije uspio s moskovskim CSKA izboriti nastup u Europi sljedeće sezone, budući da je ovo izdanje ruskog prvenstva završio na 6. mjestu na tablici.\r\n\r\nU nedjelju je odigrano posljednje, 30. kolo ruske lige, u kojem je CSKA bez ozlijeđenog Nikole Vlašića izgubio (3:2) moskovski derbi kod Dinama, za koji je Nikola Moro odigrao 90 minuta.\r\n\r\nCSKA je prvenstvo završio sa 50 bodova, 15 manje od prvaka Zenita, koji je danas bez ozlijeđenog Dejana Lovrena sa 5:1 slavio na gostovanju kod Tambova.\r\n\r\nVedran Ćorluka, novi pomoćnik izbornika Zlatka Dalića, odigrao je posljednju utakmicu za Lokomotiv (zasad nije sigurno je li mu to bila i posljednja utakmica u karijeri), koji je u Moskvi sa 1:0 svladao Ural, ali to mu je bilo dovoljno samo za 3. mjesto sa 56 bodova, pa Lokomotiv neće u kvalifikacije za Ligu prvaka, koje je izborio drugoplasirani Spartak sa 57 bodova. Navijači Lokomotiva ovacijama i transparentima su ispratili Ćorluku.', 'f_6604347_1024.jpg', 'sport', 0),
(12, '2021-05-16', 'Maradona je ispao kao hobit', 'S Parlovom imali smo sreće', 'Kako su kipari prikazivali nogometaše i sportaše, smatra se jednim od najtežih zadataka u plastici', 'No, kad je riječ o suvremenoj javnoj plastici, sve postaje puno teže. Rijetko se kada posljednjih godina nije vodila polemika o kakvom javnom spomeniku. Kod nas, no nije niti vani drugačije. Raspravljalo se i kada je Kažimir Hraste u Šibeniku prikazao Dražena Petrovića kao pogurenog dječarca na klupi. Uživo, moram priznati, ovaj spomenik puno bolje izgleda. Ideju da Matu Parlova Marija Ujević prikaže kao pjesnika, prihvatila bih. Ne mora sve biti doslovno. Da ga je radio neki manje iskusan kipar, ideja možda i ne bi zaživjela. Ovako jest. Možda je jedan od rijetkih primjera kada je struka većinom bila zadovoljna onaj kada je postavljen spomenik majstoru borilačkih vještina Bruceu Leeju u parku u Mostaru. No, autor, zagrebački kipar srednje generacije Ivan Fijolić, inače tehnički izuzetno vješt autor, sve je spomenike radio ipak s dozom ironije. Dakle, spomenici Bruce Leeju, Draženu Petroviću, Mati Parlovu, svi su odreda kvalitetni.\r\n\r\nŠto se tiče, pak, stranih spomenika, najlakše je pronaći i najlakše, na kraju krajeva, i prepoznati one loše, u rangu autora pučkih spomenika Franji Tuđmanu u haljini ili s golemim sunčanim naočalama, po pojedinim, u pravilu manjim mjestima u Hrvatskoj.\r\n\r\nPrvo mjesto u toj neslavnoj kategoriji svakako drže spomenici nogometnoj legendi Cristianu Ronaldu. Teško je od dva spomenika odlučiti koji je gori. Ronaldova bista koju je postavio kipar Emanuel Santos na aerodromu Madeira, 2017. godine, možda bi mogla ponijeti i titulu najviše ismijavane skulpture pojedinog sportaša. Ronaldo ima na licu grčevit izraz, zamrznuti, bolan smiješak, izgleda kao karikatura samoga sebe. Rezultat je za samog umjetnika bio poražavajući, nije to bila globalna popularnost kakvu je priželjkivao. Santos se nije predavao, stajao je uz skulpturu i ispitivao prolaznike što misle o njoj, ne otkrivši pri tom da je on autor, pokušavao napraviti novu verziju, sve je naposljetku završilo videom u kojemu i on i supruga ? plaču\r\n\r\nNi skulptura podignuta ovom znamenitom nogometašu u Madeiri, inače njegovom rodnom kraju, nije bolje prošla. Na njoj Ronaldo ima neproporcionalno goleme testise, pa je postalo mjesto na kojemu se turisti vole fotografirati, držeći Ronalda upravo za ovaj dio tijela. Autor je skulpture lokalni umjetnik Ricardo Veloza, a dio se skulpture s predimenzioniranim dijelom toliko izlizao da je naposljetku morao na restauraciju.', 'sg_10293_21.jpg', 'sport', 1),
(13, '2021-05-16', 'Hit-rođak Assassins Creeda', 'SAMURAJSKI HIT', 'Ghost of Tsushima najnovija je igra studija Sucker Punch koja nas vraća u vrijeme invazije Mongola', 'Grimizne šume javora, livade prekrivane nježnim pampasima i krdo svetih jelena u daljini. Ovi meditativni prizori pružaju utočište svima koji su se zasitili napredne tehnologije, pucnjave i općenito Zapada te su spremni za osvježavajuću istočnjačku priču smještenu u drevni Japan. Ghost of Tsushima najnovija je igra studija Sucker Punch koja nam je donijela popularnu futurističku avanturu Infamous, a sada nas vraća u 13. stoljeće, u vrijeme invazije Mongola, čije carstvo obuhvaća gotovo čitav istok.\r\n\r\nNa putu potpune mongolske dominacije stoji još samo japanski otok Tsushima, koji brani osamdesetak samuraja. Nakon prodora mongolske horde plaža Komodo ostala je prekrivena leševima japanskih boraca. Jedini preživjeli je zatočeni vladar Shimura, ili barem tako misli nemilosrdni Kotun-kan nakon što njegova nećaka, samuraja Jina Sakaija, baci s mosta. Međutim, Jin je preživio pad i uz pomoć sitne odmetnice Yune kreće u osvetnički pohod i oslobađanje ujaka. Otvoreni svijet, mehanika igre i mogućnosti nadogradnje lika odmah će vas podsjetiti na poznatu igru Assassin?s Creed, ali nakon nekog vremena uočit ćete da Ghost of Tsushima nije propustio napraviti određene dramaturške napretke s ciljem bolje koncentracije na centralnu misiju. Mapa je dovoljno velika da je se isplati istraživati, a opet ne tolika da se na njoj izgubite u moru sporednih misija koje samo služe za skupljanje XP-a i odvlače vas od uranjanja u priču. Posljedično, nažalost, mogućnost interakcije s predmetima i ljudima kraj kojih prolazite nešto je manja nego u recentnim Assassins Creedovima.\r\n\r\nNarativno srce igre Ghost of Tsushima Jinova je transformacija iz samuraja, časnog ratnika koji svoje žrtve gleda u oči, u Duha koji je svoje podmukle tehnike ubijanja naučio od surovih Mongola. Njegov napredak savršeno prate misije i sjećanja iz djetinjstva, a još bolje nadogradnje oklopa, ratnih maski, kaciga te, naravno, katane. Borba je najzabavniji dio ove igre, kako bi u jednoj akcijskoj avanturi i trebalo biti. Kombinacijom četiri stava: kamen, vjetar, voda i mjesec, branite se i napadate neprijatelje svih veličina, snage i naoružanja. Na primjer, kameni borbeni položaj bit će učinkovit protiv mačevalaca, ali ako vam usred borbe s njim dođe i Mongol s kopljem, brzo ćete morati promijeniti u vjetroviti način ratovanja. Peti način borbe je specifičan za vašu ulogu Duha, on je tajnovit i podrazumijeva bacanje noževa, bombi načinjenih od baruta i korištenje luka i strijele.  Neprijatelji nisu previše zahtjevni, dapače ponekad su malo slijepi ili gluhi te se nećete previše namučiti da ih pobijedite, čak ni u najtežim misijama. Izazov predstavljaju dueli s glavnim likovima u kojima pametnom kombinacijom napada i obrane spretnost igrača dolazi do izražaja. Uz prekrasan ambijent i igru svjetla i sjene dočarana je važnost unutarnje i vanjske borbe koju pojedinci s obje strane oštrice osjećaju.', '31c7f175489846600682.jpeg', 'kultura', 0),
(14, '2021-05-16', 'Izgled novog PlayStation-a', 'NOVA SONYJEVA KONZOLA', 'Sony je otkrio izgled novog PlayStationa te prvih dvadeset igara koje ćemo na njemu moći zaigrati.', 'Novi PlayStation izgleda nešto drukčije od svojih prethodnika, dolazi u bijelo-plavoj boji i zamišljena je da je se pored televizora postavi vertikalno. Ima i dvije verzije, a dok će jedna imati 4K Blu-ray pogon, druga će biti potpuno digitalna. Potonja će biti i pristupačnija cijenom, nešto je uža, a svidjet će se onima kojima nije stalo do kupovanja fizičkih primjeraka igara. Uz novu ?peticu? predstavljeno je i nekoliko dodataka - punjač, slušalice, upravljač i kamera. Iz Sonyja tvrde i da će biti sto puta brži od četvorke, čime će se iznimno poboljšati ne samo rezolucija već i brzina samih igara. Međutim, ono što još uvijek nisu otkrili je - koliko će konzola koštati.\r\n\r\nUz novi izgled PlayStationa i tehničke specifikacije, saznali smo i za čak dvadeset novih igara napravljenih posebno za novu plejku, ali ako je vjerovati šuškanjima posljednjih mjeseci, i igre s vašeg starog PlayStationa 4 bit će kompatibilne s novom konzolom. Moguće je i da će ?petica? ponuditi mogućnost igranja bilo koje postojeće PlayStation igre, čemu se mnogi obožavatelji retro igara posebno vesele.    Među novim igrama naći će se: Spider-Man: Miles Morales, Gran Turismo, Ratchet and Clank: Rift Apart, Destruction All Stars, Ghostwire: Tokyo, The Far Shore, Godfall, Hitman 3, NBA 2K21, Resident Evil VIII: Village...\r\n', '9904dbd006c491f23f0d.jpeg', 'kultura', 0),
(15, '2021-05-25', 'Donnarumma odlazi iz Milana?!', 'Stigla mu zamjena', 'Jedan od najtalentiranijih svjetskih golmana Gianluigi Donnarumma na izlaznim je vratima Milana', 'Nakon šest godina i 251 nastupa za seniorsku momčad Milana Gianlugi Donnarumma (22) odlazi iz \"rossonera\". Jedan od najboljih mladih svjetskih golmana neće produžiti ugovor koji mu istječe 30. lipnja.Ta je vijest šokirala navijače talijanskog viceprvaka jer radi se o momku koji je prošao kroz Milanovu nogometnu školu i debitirao za prvu momčad već sa 16 godina. Čini se kako je ključnu ulogu imao - Mino Raiola.\r\n\r\nGramzivi menadžer traži 10 milijuna eura po sezoni i dvogodišnji ugovor, dok je Milan ponudio osam uz petogodišnji ugovor. A pravi kamen spoticanja svakako je zahtjev za provizijom od 20 milijuna eura samo za potpis.Rastanak je nakon svega, kako sad stvari stoje, neminovan, a u redu čekaju Juventus, Barcelona i PSG.\r\n\r\nAli Milan ne gubi vrijeme, riješio je njegovu zamjenu, Francuza Mikea Maignana (25) iz Lillea. I to za polovicu Donnarummine plaće, tri milijuna eura. Novi prvak Francuske na njemu će zaraditi 15 milijuna eura.', '1002719022.jpg', 'sport', 0),
(17, '2021-05-26', 'Milan u ligi prvaka!', 'NAKON SEDAM GODINA ČEKANJA', 'U posljednjem kolu Serie A odlučeno je danas tko će u Ligu prvaka', 'U posljednjem kolu Serie A odlučeno je danas tko će u Ligu prvaka. Učešće su izborili Milan nakon dugih sedam godina posta i Juventus, a otpao je Napoli nakon što nije uspio pobijediti Veronu Ivana Jurića. Jurić je tako pomogao Juventusu i pogurao ga u Ligu prvaka.\r\n\r\nJuventus je morao pobijediti Bolognu što se i dogodilo (4:1) i čekati kiks Milana ili Napolija. Milan je pobijedio kod Atalante 2:0, a Napoli je na stadionu Diega Armanda Maradone odigrao 1:1 protiv rasterećene Verone Ivana Jurića.\r\n\r\nKiksom Napolija Juventus se ugurao na četvrto mjesto koje vodi u Ligu prvaka. Napotilanci su veliki tragičari, elita im je iskliznula za samo bod u odnosu na Juventus na 4. mjestu.\r\n\r\nNogometaši Milana i Juventusa pridružili su se prvaku Interu i Atalanti kao predstavnici Serie A u sljedećoj sezoni Lige prvaka, a Napoli je ostao bez plasmana u elitno europsko natjecanje jer je u zadnjem kolu odigrao samo 1-1 na svom stadionu protiv Verone pod vodstvom hrvatskog trenera Ivana Jurića.\r\n\r\nJuventus je do Lige prvaka stigao uvjerljivom pobjedom 4-1 na gostovanju u Bologni, ali mu ona ništa ne bi značila da je Napoli uspio svladati Na\r\n\r\nJuve moćno do tri boda\r\nNapoli će tako u Europsku ligu zajedno s Lazijom, koji je poražen u zadnjem kolu kod Sassuola s 2-0. No, kako je Roma odigrala 2-2 kod Spezije, Sassuolo je ostao bez plasmana u Konferencijsku europsku ligu, novog natjecanje koje kreće od sljedeće sezone.\r\n\r\nDva pogotka za Juventus u Bologni postigao je Morata (29, 47), a po jedan Chiesa (6) i Rabiot (45). Gol za domaću momčad dao je Orsolini (86).\r\n\r\nMilan minimalno ali slatko, Rebić nije igrao\r\nPobjedu vrijednu Lige prvaka Milan je ostvario s dva pogotka iz kaznenih udaraca, a oba puta je realizator bio Franck Kessie (43-11m, 90+4-11m). Ante Rebić nije bio u konkurenciji za sastav zbog ozljede, a Mario Mandžukić je igrao od 79. minute. Za Atalantu je od 80. minute igrao Mario Pašalić.\r\n\r\nNapoli je devet minuta bio u Ligi prvaka. Bivši igrač zagrebačkog Dinama Amir Rrahmani postigao je pogodak za vodstvo Napolija u 60. minuti, a izjednačio je Faraoni u 69. minuti. Nikola Kalinić je za Veronu igrao do 63. minute. poli, jer je Milan u Bergamu svladao Atalantu s 2-0.', 'profimedia-0612323929.jpg', 'sport', 0),
(18, '2021-06-03', 'Rimac izveo najbrži automobil', 'Dva milijuna eura', 'Većina ključnih komponenti i tehnologije nastala je u Hrvatskoj i plod je pameti naših  stručnjaka.', 'Uz to, na pisti u Zemuniku Nevera je prošli tjedan na ?četvrt milje? (402 metra) postigla vrijeme od 8,6 sekundi, što je svjetski rekord za serijske automobile. Munjevito! A upravo zbog toga hrvatski je hiperautomobil nazvan prema brzoj, neočekivanoj i moćnoj mediteranskoj oluji. Cijena Nevere je 2 milijuna eura. ? To je to. Ovo je automobil koji sam sanjao kad sam prije deset godina krenuo na ovo ?nemoguće? putovanje. Sav naš naporan rad rezultirao je Neverom ? našim hiperautomobilom koji obara rekorde. Ovaj automobil stvoren je da nadmaši sve i podigne ljestvicu i standarde za automobile visokih performansi. Ne samo u performansama, nego i kao zaokruženi, izbalansirani automobil za cestu. Kad smo prvi put predstavili C-Two, postavili smo izuzetno visoke ciljeve. Ali smo od početka tražili načine kako da ih nadmašimo ? rekao je 32-godišnji Mate Rimac.\r\n\r\nPerjanica uspješne tvrtke Podsjetimo, Mate Rimac je kao 21-godišnjak 2009. osnovao tvrtku s ciljem da proizvede najbrži električni automobil na svijetu. Rimac je već tada odabrao odličnu nišu, razvoj električnog vozila koje je upravo sada zbog ekologije postalo glavni razvojni put za sve najveće proizvođače automobila. Danas Rimac Automobili s tvrtkama kćerima zapošljavaju oko 1000 ljudi, a nedavno je predstavljen projekt kampusa na 200.000 kvadrata u Kerestincu koji bi trebao biti sagrađen 2023. investicijom od 200 milijuna eura i s planom zapošljavanja još 1500 ljudi. Sofisticiranu tehnologiju za električne aute prodaju najrenomiranijim svjetskim automobilskim tvrtkama, a u tvrtku su stotine milijuna kuna uložili Porsche i Hyundai. Posljednja velika investicija stigla je u ožujku kada je njemački gigant Porsche u Rimac Automobile uložio dodatnih 70 milijuna eura i povećao svoj udio u tvrtki iz Svete Nedelje s 15,5% na 24%. Perjanica tvrtke i svojevrsni tehnološki, ali i marketinški izlog od prvog je dana električni hiperautomobil.\r\n\r\n? Proizvest ćemo samo 150 primjeraka Nevere, pri čemu je svaki automobil proizveden u Hrvatskoj, a motiv koji pokreće cijeli tim je strast prema automobilima ? rekao je Mate Rimac. Najviše veseli to što je većina ključnih komponenti Nevere razvijena u Hrvatskoj i sadrži mnogo jedinstvene tehnologije, a svi su sustavi poboljšani u posljednje tri godine otkako su stotine naših inženjera i stručnjaka koji rade u Rimac Automobilima pokazale prototip. To je rezultiralo još boljim performansama. Primjerice, ubrzanje do 300 km/h od 9,3 s poboljšano je za čak 2,5 s. Ključ Neverinih izvanrednih performansi je u jedinstvenom električnom pogonu. Jedinstvenu, tekućinom hlađenu bateriju u obliku slova H sa 6960 ćelija i kapacitetom od 120 kWh, tim Rimac automobila dizajnirao je od nule i smjestio je u samo srce Nevere. Četiri zasebna motora s permanentnim magnetima pojedinačno pokreću sva četiri kotača. Zajedno daju 1914 KS i 2360 Nm okretnog momenta, što je više od superautomobila s ?konvencionalnim motorom? kakvih trenutačno ima na tržištu. Prednji i stražnji kotači povezani su s motorima preko prijenosnika s jednom brzinom. Konstruirani tako da odmah postignu maksimalan okretni moment, električni motori Nevere postižu učinkovitost od 97% ? u usporedbi s 40% koliko imaju najučinkovitiji motori s unutarnjim izgaranjem ? i ne trebaju nikakvo održavanje tijekom cijelog radnog vijeka.', '54e2bda83f88e476.jpeg', 'kultura', 0),
(19, '2021-06-03', 'Što sve može volan Formule 1?', 'Objasnio Carlos Sainz Jr.', 'SVE na formuli je fascinantno, posebno upravljač, koji se drastično razlikuje od onog u automobilu.', 'Carlos Sainz Jr. objašnjava što sve može volan bolida Formule 1\r\n\r\nZa početak tu je neobični oblik, a potom i središnja površina s nebrojenim tipkama i pokazivačima. Sainz pretpostavlja da ovaj upravljač nudi tisuće različitih funkcija. Postoje i vrlo razumljivi i očekivani prekidači poput zelenog sa slovom N koji služi za ubacivanje u ler (Neutral). Odmah do njega je PC tipka kojom pilot potvrđuje da je čuo tim sa zahtjevom za odlazak u boks.\r\n\r\nVozač može birati i između nekoliko stilova, a regulirati može i maksimalnu snagu motora. Tu je i tipka za signaliziranje istrošenosti pneumatika te one koje reguliraju intenzitet kočenja motorom, rad spojke i sl.\r\n\r\nModerni bolidi Formule 1 su među najimpresivnijim strojevima koje je čovjek ikada napravio. Osim što se oni koriste za utrke, mnogi proizvođači na bolidima isprobavaju određena tehnološka rješenja koja bi se s vremenom mogla primijeniti i u standardnim automobilima. Jedan od najzanimljivijih i najzahtjevnijih dijelova na formuli je upravo volan, jer rješenje za svaki zadatak koji vozač treba obaviti i svaka informacija koju treba znati moraju mu biti doslovno nadohvat ruke.\r\nSvaka momčad razvija vlastiti volan s funkcijama prema potrebi vozača, ali u konačnici su to vrlo slični volani. Pri razvoju volana najbitniji su prijedlozi i želje vozača, jer će oni točno znati što im treba i oni će biti ti koji ih koriste. S obzirom na to da se neke staze bitno razlikuju i prema tome se mijenjaju potrebe vozača, svaka momčad mora razviti po nekoliko volana koji će se koristiti na određenim vrstama staza. Na svakome F1 vikendu koriste se po tri vrste volana ? primarni, rezervni i eksperimentalni volan na kojem se isprobavaju novi dodaci i funkcije.\r\n\r\nOvakav trkaći volan sadrži LCD i 30-ak tipki pomoću kojih vozač tijekom utrke mijenja način rada svoga bolida. Volan mora biti čvrst i izdržljiv zbog velikih sila kojima su vozači izloženi te, bez obzira na velike brzine i vibracije, mora omogućiti vozaču precizno upravljanje. Najbitnija stavka je da su sve tipke smještene tako da se do njih može doći jednim pokretom, bez puštanja volana.', '99e43707-7d04-4ab-a36-364a1c6f22.jpg', 'sport', 0);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) COLLATE latin2_croatian_ci NOT NULL,
  `prezime` varchar(32) COLLATE latin2_croatian_ci NOT NULL,
  `korisnickoIme` varchar(32) COLLATE latin2_croatian_ci NOT NULL,
  `lozinka` varchar(255) COLLATE latin2_croatian_ci NOT NULL,
  `razina` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_croatian_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `korisnickoIme`, `lozinka`, `razina`) VALUES
(2, 'Vanja', 'Lončarić', 'admin', '$2y$10$rb8MWipwXexc6hh6NyLipOjG9eXXM1oY0UmR6cL7tZWdgaX0Vyx22', 1),
(3, 'Renato', 'Macešan', 'rmacesan', '$2y$10$InatQP3CEcHjBXJXTphEfeMEKSQPTXsxsqOu0kPG/QBoY6s40E31i', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikli`
--
ALTER TABLE `artikli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnickoIme` (`korisnickoIme`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikli`
--
ALTER TABLE `artikli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
