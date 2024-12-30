CREATE TABLE Personeller(
PersonelID NVARCHAR (50) ,
 Ad� NVARCHAR (50),
 Soyad� nvarchar (50),
 Cinsiyet nvarchar (50),
 Maa� nvarchar(50),
 Tckn NVARCHAR (50),
 Mail nvarchar(50),
 Telefon NVARCHAR (50),
 Adres nvarchar(50),
 Do�umTarihi nvarchar (50),
 ��eGiri�Tarihi nvarchar(50),
 ��ten��k��Tarihi nvarchar(50),
);

insert into Personeller
values 
(1 ,'Ahmet','EK�NC�','Erkek',6000,2368957298,'ahmet.ekinci@gmail.com','5316489586','�STANBUL','01-04-1889',2012,null),
(2 ,'Demet','�OLAK','Kad�n',6000,45668951234,'demet.colak@gmail.com','5358989144','�STANBUL','02-10-1891',2012,null),
(3 ,'Kamil','SARI','Erkek',5500,32065489789,'kamil.sari@gmail.com',5326919181,'�STANBUL','10-10-2000',2020,null),
(4 ,'Necati','UYSAL','Erkek',5900,32927489019,'necati.uysal@gmail.com',5323114121,'�STANBUL','01-11-1996',2015,null),
(5 ,'Taner','BOZOKLU','Erkek',9981,532479521357,'taner.bozoklu@gmail.com',5363311272,'�STANBUL','04-08-1978',2004,null),
(6 ,'Osman','UYSAL','Erkek',9981,532479521937,'osman.uysal@gmail.com',5365071937,'�STANBUL','30-06-1982',2017,null),
(7 ,'Perihan','KANAT','Kad�n',9981,5324795213,'perihan.kanat@gmail.com',5363311272,'�STANBUL','01-01-1982',2011,null),
(8 ,'Akif','�AKIR','Erkek',7569,53058152132,'akif.cakir@gmail.com',5323375298,'�STANBUL','02-02-1980',2018,null),
(9 ,'J�lide','BUZDA�','Kad�n',8196,34725829751,'julide.buzdag@gmail.com',5309184150,'�STANBUL','03-03-1992',2006,null),
(10 ,'Elif','BUZDA�','Kad�n',7569,54235990322,'elif.buzdag@gmail.com',5363311272,'�STANBUL','04-05-1996',2006,null),
(11 ,'Taner','BOZOKLU','Erkek',6735,17454714902,'taner.bozoklu@gmail.com',5363311272,'�STANBUL','18-06-1990',2006,null),
(12 ,'�mer','BUZDA�','Erkek',9492,22698025486,'omer.buzdag@gmail.com',5301046904,'�STANBUL','08-12-1980',2000,null),
(13 ,'Veysel','ERT�Z�N','Erkek',8452,28686444888,'veysel.ertuzun@gmail.com',5328563756,'�STANBUL','20-07-1998',2004,null),
(14 ,'Serta�','K�SEDA�','Erkek',9647,35636341708,'sertac.kosedag@gmail.com',5427110757,'�STANBUL','25-08-1986',2004,null),
(15 ,'Necati','UYSAL','Erkek',6977,28793496008,'necati.uysal@gmail.com',5424224430,'�STANBUL','08-09-1995',2000,2022),
(16 ,'Zeliha','CAN��','Kad�n',5639,80184981098,'zeliha.canis@gmail.com',5418615319,'�STANBUL','19-09-1997',2019,null),
(17 ,'Emin','F�DAN','Erkek',8881,46421031292,'emin.fidan@gmail.com',5325474342,'�STANBUL','27-10-1978',2001,null),
(18 ,'Fidan','AY','Kad�n',9785,13473690654,'fidan.ay@gmail.com',5418318167,'�STANBUL','11-11-1977',1994,null),
(19 ,'Yakup','G�K�E','Erkek',7569,44705036100,'yakup.gokce@gmail.com',5486491490,'�STANBUL','05-12-1979',2004,null),
(20 ,'Evrim','�ITAK','Kad�n',7132,91460816140,'evrim.citak@gmail.com',5323218906,'�STANBUL','01-01-1981',2004,null),
(21 ,'Yunus','�ITAK','Erkek',7132,91666673936,'yunus.citak@gmail.com',5427625062,'�STANBUL','01-02-1980',2004,null),
(22 ,'Ilg�n','ACI','Erkek',6012,69539665234,'ilgin.aci@gmail.com',5328600170,'�STANBUL','30-10-1998',2018,2022),
(23 ,'�mit','��R�N','Erkek',8306,56339896616,'umit.sirin@gmail.com',5334811677,'�STANBUL','25-10-2000',2019,null),
(24 ,'Jale','CAN','Kad�n',6012,35199559084,'jale.can@gmail.com',5407781661,'�STANBUL','12-12-1987',2010,null),
(25 ,'Arslan','Aky�z','Erkek',7569,21130039302,'arslan.aky�z@gmail.com',5334811677,'�STANBUL','11-06-1982',2010,null),
(26 ,'Adn�n ','Tokg�z','Erkek',6012,96121598472,'adnan.tokgoz@gmail.com',5407986288,'�STANBUL','30-01-1983',2001,null),
(27 ,'Se�il ','�ymen','Kad�n',7569,83830820192,'secil.oymen@gmail.com',5325342909,'�STANBUL','02-06-1983',2004,null),
(28 ,'Sinem','�zbey','Kad�n',8306,47852660334,'sinem.ozbey@gmail.com',5408843387,'�STANBUL','06-01-1984',2004,2018),
(29 ,'�eyma ','�amdal�','Kad�n',5829,29135475668,'seyma.camdal�@gmail.com',5426777422,'�STANBUL','07-09-1988',2004,null),
(30 ,'Tahir ','Tazeg�l','Erkek',5829,41857478284,'tahir.tazegul@gmail.com',5334693972,'�STANBUL','11-09-1997',2004,2016),
(31 ,'Faz�l ','Ozansoy','Erkek',12285,90309240580,'fazil.ozansoy@gmail.com',5487317307,'�STANBUL','09-10-1996',2004,null),
(32 ,'�zge ','Karaduman','Kad�n',12285,67136726884,'ozge.karaduman@gmail.com',5421119105,'�STANBUL','30-04-1978',2004,2020),
(33 ,'Dilan ','�zkara','Kad�n',12285,26982533312,'dilan.ozkara@gmail.com',5329209368,'�STANBUL','05-05-1998',2004,2018),
(34 ,'Murat ','�zkara','Erkek',10156,23052470812,'murat.ozkara@gmail.com',5412260360,'�STANBUL','10-10-2000',2004,null),
(35 ,'Ferhat ','Kuzucu','Erkek',9396,55227120048,'ferhat.kuzucu@gmail.com',5330793605,'�STANBUL','09-09-1966',2004,null),
(36 ,'Dilruba ','TA�','Kad�n',10156,19460533720,'dilruba.tas@gmail.com',5407262768,'�STANBUL','12-02-1998',2022,null),
(37 ,'Ela ','�ymen','Kad�n',10156,63872715830,'ela.oymen@gmail.com',5489075647,'�STANBUL','06-05-1997',2022,null),
(38 ,'Re�at ','Akg�l','Erkek',9396,88860280336,'resat.akgul@gmail.com',5481385909,'�STANBUL','04-04-1965',1996,null),
(39 ,'Dilan ','Bolatl�','Kad�n',8661,84881336540,'dilan.bolatli@gmail.com',5338714595,'�STANBUL','08-04-1985',2004,null),
(40 ,'Fahriye ','Kunter','Kad�n',9895,65078317962,'fahriye.kunter@gmail.com',5401292481,'�STANBUL','01-01-1986',2004,null),
(41 ,'A�elya ','Kasapo�lu','Kad�n',7241,71921218720,'acelya.kasapoglu@gmail.com',5410784484,'�STANBUL','01-02-2000',2022,null),
(42 ,'Ertu�rul  ','K�yl�o�lu ','Erkek',9392,90419568406,'ertugrul.koyluoglu@gmail.com',5331384707,'�STANBUL','01-06-1991',2018,null),
(43 ,'Mithat ','Tanr�kulu','Erkek',7569,18848668290,'mithat.tanrikulu@gmail.com',5363311272,'�STANBUL','05-05-1976',2019,null),
(44 ,'�lker ','Eronat','Erkek',9392,25742659606,'ilker.eronat@gmail.com',5489874949,'�STANBUL','23-11-1989',2018,null),
(45 ,'Caner ','Akay','Erkek',6475,87488537976,'caner.akay@gmail.com',5363311272,'�STANBUL','17-10-1987',2019,null),
(46 ,'�aban ','Kasapo�lu','Erkek',6727,47066521292,'saban,kasapoglu@gmail.com',5301004365,'�STANBUL','14-11-1964',2004,null),
(47 ,'Simge ','Akman','Kad�n',6727,20105149114,'simge.akman@gmail.com',5336525342,'�STANBUL','12-10-1989',2014,null),
(48 ,'Fidan ','Sar�o�lu','Kad�n',6727,57882360548,'fidan.sarioglu@gmail.com',5363311272,'�STANBUL','16-03-1988',2014,null),
(49 ,'Peri ','�amdal�','Kad�n',9300,49521006108,'peri.camdal�@gmail.com',5515063329,'�STANBUL','18-08-1996',2020,null),
(50 ,'Hikmet ','Tazeg�l','Erkek',6894,19726491054,'hikmet.tazegul@gmail.com',5337724785,'�STANBUL','19-02-1982',2019,null),
(51 ,'Eray ','Aln�a��k','Erkek',7569,43233243172,'eray.alniacik@gmail.com',5512132716,'�STANBUL','20-02-2000',2022,null),
(52 ,'Utku ','Poyrazo�lu','Erkek',5982,14996986248,'utku.poyrazoglu@gmail.com',5306649700,'�STANBUL','19-06-1989',2019,null),
(53 ,'Faruk  ','Tokg�z','Erkek',8793,93112063230,'faruk.tokgoz@gmail.com',5325798219,'�STANBUL','19-07-1997',2020,null),
(54 ,'Arslan ','�ymen','Erkek',7899,96413143618,'arslan.oymen@gmail.com',5308692194,'�STANBUL','19-08-1998',2019,null),
(55 ,'Fuat ','T�rky�lmaz','Erkek',12118,64988490222,'fuat.turkyilmaz@gmail.com',5328009713,'�STANBUL','18-09-1980',2004,null),
(56 ,'Tutku ','Tu�luk','Kad�n',12118,73529251802,'tutku.tugluk@gmail.com',5519503956,'�STANBUL','02-12-2000',20020,null),
(57 ,'G�zde ','Yorulmaz','Kad�n',12118,51149117616,'gozde.yorulmaz@gmail.com',5318204298,'�STANBUL','19-04-1998',2017,null),
(58 ,'Feride ','Alyanak','Kad�n',12118,24004246080,'feride.alyanak@gmail.com',5326946031,'�STANBUL','18-05-1985',2015,null),
(59 ,'Eda ','Abac�','Kad�n',6581,17446054528,'eda.abaci@gmail.com',5337210907,'�STANBUL','17-07-1997',2016,null),
(60,'Alpay ','Bolatl�','Erkek',6908,59896322048,'alpay.bolatli@gmail.com',5518312820,'�STANBUL','18-03-1983',2014,null),
(61 ,'Cilvenaz ','Limoncuo�lu','Kad�n',16696,54337122300,'cilvenaz.limoncuo�lu@gmail.com',5318124131,'�STANBUL','20-02-2000',2022,null),
(62 ,'Sunay  ','Evliyao�lu','Kad�n',7903,15521328670,'sunay.evliyaoglu@gmail.com',5354966021,'�STANBUL','19-01-1984',2004,null),
(63 ,'Muharrem  ','Uca','Erkek',8153,82566979204,'muharrem.uca@gmail.com',5329646612,'�STANBUL','05-05-1985',2010,null),
(64 ,'Ferhat  ','Arslano�lu','Erkek',5571,65457960260,'ferhat.arslanoglu@gmail.com',5333916321,'�STANBUL','19-08-1988',2010,215),
(65 ,'Feride ','Arslan','Kad�n',6571,21715908610,'feride.arslan@gmail.com',5306246421,'�STANBUL','19-06-1996',2015,2022),
(66 ,'Mine  ','��rek�i','Kad�n',7171,86530043144,'mine.corekci@gmail.com',5326146711,'�STANBUL','19-09-1990',2015,null),
(67 ,'Arda  ','Bi�er','Erkek',6205,60574010430,'arda.bicer@gmail.com',5327948090,'�STANBUL','19-09-1997',2015,null),
(68 ,'Arda  ','G�l','Erkek',7519,82381844794,'arda.g�l@gmail.com',5336499595,'�STANBUL','19-01-1991',2018,null),
(69 ,'�mer  ','G�nday','Erkek',7368,86116547592,'omer.gunday@gmail.com',5325240613,'�STANBUL','15-09-1985',2019,2022),
(70 ,'Alper  ','Top�uo�lu','Erkek',6865,22983126430,'alper.topcuoglu@gmail.com',5323140114,'�STANBUL','12-08-1982',2017,2019),
(71 ,'Ceylan  ','Ozansoy','Kad�n',8119,44290133062,'ceylan.ozansoy@gmail.com',5303946020,'�STANBUL','13-03-1983',2015,null),
(72 ,'Mahir  ','Hamzao�lu','Erkek',7106,28194318848,'mahir.hamzaoglu@gmail.com',5325402091,'�STANBUL','19-02-1983',2013,2016),
(73 ,'Kubilay  ','Sad�klar','Erkek',9107,66596490410,'kubilay.sadiklar@gmail.com',5329914884,'�STANBUL','18-01-1988',2016,null),
(74 ,'G�ne�  ','Sezek','Kad�n',7328,12573014520,'gunes.sezek@gmail.com',5334919092,'�STANBUL','18-04-1984',2015,null),
(75 ,'Serpil  ','Ak�it','Kad�n',6069,57099626970,'serpil.aksit@gmail.com',5326320222,'�STANBUL','12-02-2000',2019,null),
(76 ,'Can ','Koyuncu','Erkek',8356,27723054202,'can.koyuncu@gmail.com',5306946031,'�STANBUL','22-02-2000',2022,null),
(77 ,'Canalp  ','Be�ok','Erkek',6654,74034515076,'canalp.besok@gmail.com',5326946021,'�STANBUL','12-12-2000',2019,null),
(78 ,'Ceylan  ','Ozansoy','Kad�n',6349,71176785114,'ceylan.ozansoy@gmail.com',5334806011,'�STANBUL','18-11-1998',2016,2018),
(79 ,'K�ksal  ','�ztuna','Erkek',9495,15127360678,'koksal.oztuna@gmail.com',5306946633,'�STANBUL','15-09-1995',2015,null),
(80 ,'Nazmi ','Denkel','Erkek',5501,30346161240,'nazmi.denkel@gmail.com',5327243160,'�STANBUL','19-05-1995',2015,2017),
(81 ,'Veli ','KIVRAK','Erkek',7118,64124436336,'veli.kivrak@gmail.com',5316316090,'�STANBUL','02-06-1990',2011,null),
(82 ,'Alperen  ','Ta�l�','Erkek',8091,10100546018,'alperen.tasli@gmail.com',5302593304,'�STANBUL','08-01-1998',2018,null),
(83 ,'Bu�ra  ','Orbay','Erkek',9658,32040016208,'bugra.orbay@gmail.com',5301873970,'�STANBUL','14-04-1995',2017,null),
(84 ,'Mustafa  ','Bolatl�','Kad�n',5664,92090250984,'mustafa.bolatli@gmail.com',5307228186,'�STANBUL','18-11-2000',2021,null),
(85 ,'Jale  ','��rek�i','Kad�n',7035,25079050480,'jale.corekci@gmail.com',5331294810,'�STANBUL','02-01-2000',2021,null),
(86 ,'G�zde ','�ztuna','Kad�n',5956,62782227310,'gozde.oztuna@gmail.com',5323925298,'�STANBUL','22-05-1995',2014,null),
(87 ,'Dilruba  ','�n�r','Kad�n',8112,41621204774,'dilruba.onur@gmail.com',5329989382,'�STANBUL','23-09-1996',2018,null),
(88 ,'Duygu  ','Polat','Kad�n',8959,46112839442,'duygu.polat@gmail.com',5338818506,'�STANBUL','11-01-1980',2000,null),
(89 ,'Halit  ','Adal','Erkek',5433,51613785310,'halit.adal@gmail.com',5308085883,'�STANBUL','02-10-1981',2000,null),
(90 ,'Suat ','Koyuncu','Erkek',7026,94191683630,'suat.koyuncu@gmail.com',5336911818,'�STANBUL','06-04-1982',2000,null),
(91 ,'Melih  ','Korol','Erkek',7791,13465405648,'melih.korol@gmail.com',5329989382,'�STANBUL','07-10-2000',2021,null),
(92 ,'Ceylan ','Kuday','Kad�n',9929,27118350490,'ceylan.kuday@gmail.com',5337161202,'�STANBUL','09-11-1996',2015,null),
(93 ,'Defne  ','Adal','Kad�n',9708,23517733810,'defne.adal@gmail.com',5308995914,'�STANBUL','08-04-2000',2018,null),
(94 ,'Dilara ','G�m��pala','Kad�n',8781,85798227884,'dilara.g�m�spala@gmail.com',5331508303,'�STANBUL','02-06-1980',2014,null),
(95 ,'Mehmet  ','YAR','Erkek',7835,91287446506,'mehmet.yar@gmail.com',5327881605,'�STANBUL','01-09-1880',2000,null),
(96 ,'As�m  ','KAYA','Erkek',6435,24816258882,'asim,kaya@gmail.com',5309972700,'�STANBUL','05-02-2000',2020,null),
(97 ,'Alina  ','BAL','Kad�n',7234,26664824356,'alina.bal@gmail.com',5323418784,'�STANBUL','09-10-1996',2015,null),
(98 ,'Leyla  ','G�L','Kad�n',8345,17113048768,'leyla.gul@gmail.com',5324042510,'�STANBUL','11-02-1989',2016,null),
(99 ,'Ali ','BUDAK','Erkek',7802,96745145472,'ali.budak@gmail.com',5303838189,'�STANBUL','27-10-2000',2020,null),
(100 ,'Asl�  ','�NL�','Kad�n',9999,61135502890,'asli.unlu@gmail.com',5325455691,'�STANBUL','10-07-2000',2021,null)
;
