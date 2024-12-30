use Otel

CREATE TABLE Odalar( 
	OdaID NVARCHAR (50) ,
   Adi NVARCHAR (50),     
   Kapasite  NVARCHAR (50), 
   KatNo  NVARCHAR (50) ,    
   OdaTuru nvarchar (50)
     OdaNo nvarchar (50)
);

CREATE TABLE Musteriler( 
	MusteriID NVARCHAR (50) ,
   Adi NVARCHAR (50),
   Soyadi nvarchar (50),
   Tckn  NVARCHAR (50), 
   Telefon  NVARCHAR (50),
   Cinsiyet nvarchar (50),
   Mail nvarchar(50),
   DogumTarihi nvarchar (50),
   MedeniDurum nvarchar(50),

);

CREATE TABLE Personeller( 
	PersonelID NVARCHAR (50) ,
   Adi NVARCHAR (50),
   Soyadi nvarchar (50),
   Maas nvarchar(50),
   Tckn  NVARCHAR (50), 
   Mail nvarchar(50),
   Telefon  NVARCHAR (50),
   Cinsiyet nvarchar (50),
   Adres nvarchar(50),
   DogumTarihi nvarchar (50),
   �seGirisTarihi nvarchar(50),
   �stenC�k�sTarihi  nvarchar(50),
);

CREATE TABLE Urunler( 
	UrunID NVARCHAR (50) ,
	 TedarikciID  nvarchar(100),
   UrunAdi NVARCHAR (50),
   Fiyat nvarchar (50),
   Miktar nvarchar(50),
   
);

create table Rezervasyon (
 RezervasyonID nvarchar (50),
 Musteriad nvarchar (50),
 MusteriSoyad nvarchar (50),
 Tel nvarchar (50),
 Tc nvarchar (50),
 mail nvarchar (50),
 OdaNo nvarchar (50),
 RezervasyonGun nvarchar(50),

CREATE TABLE Menu( 
	MenuID NVARCHAR (50) ,
	MenuNo NVARCHAR (50) ,
   MenuAdi NVARCHAR (50),
   Fiyat nvarchar (50),
);

CREATE TABLE Tedarikciler( 
	TedarikciID NVARCHAR (100) ,
   Adi NVARCHAR (100),
   Soyadi nvarchar (100),
   SirketAdi  NVARCHAR (100), 
   Telefon  NVARCHAR (100),
   Adres nvarchar (100),
   Mail nvarchar (100), 
      Ulke nvarchar (100), 
	     webSayfas� nvarchar (100), 
   Faks nvarchar (100), 

);

CREATE TABLE Kategoriler( 
	KategoriID NVARCHAR (50) ,
   KategoriAdi NVARCHAR (50), 
);

CREATE TABLE Sat�sDetay�( 
	Sat�sID NVARCHAR (50) ,
	OdaNo nvarchar(50),
	Fiyat nvarchar(50),
	�ndirim nvarchar(50),
   Sat�sTarihi nvarchar(50),
);
CREATE TABLE Servisler( 
	ServisID NVARCHAR (50) ,
	ServisNo NVARCHAR (50),
   Ucreti nvarchar (50),
 OdaNo NVARCHAR (50),
 
);
create table Ara�Gere� (
MalzemeID nvarchar (50),
TemizlikAd nvarchar (50),
Bula��kAd nvarchar (50),
);

CREATE TABLE Odemeler( 
	OdemeID NVARCHAR (50) ,
	  Mu�ID nvarchar (50),
    OdemeTuru NVARCHAR (50),
	OdemeTarihi NVARCHAR (50),
   Tutar nvarchar (50),
);


-- Veriler

INSERT INTO Rezervasyon values ('1','Orhan','Y�lmaz','05445545454','23132345634','orhanylmz@gmail.com','01','2022-07-20 07:02:51')
INSERT INTO Rezervasyon values ('2','Yahya','Kazaz','05643332212','27876567322','yahyacankzz@gmail.com','02','2004-05-30 06:48:52')
INSERT INTO Rezervasyon values ('3','Eren','Kara','05315673272','33128611122','erenkara@gmail.com','03','1998-12-09 09:29:31')
INSERT INTO Rezervasyon values ('4','Kutay','Demircan','05345556948','87656766643','kutaydmrcn@gmail.com','04','2015-01-03 05:09:45')
INSERT INTO Rezervasyon values ('5','Emre','Candemir','05446083644','68754329077','emrecndmr@gmail.com','05','2011-05-30 12:12:15')
INSERT INTO Rezervasyon values ('6','Tuna','Tavus','05324238766','83636836328','tunatvs@gmail.com','06','2010-07-22 10:50:30')
INSERT INTO Rezervasyon values ('7','Muhammet','Talha','05678765522','15278486630','muhammettlh@gmail.com','07','2013-10-05 04:49:41')
INSERT INTO Rezervasyon values ('8','Enes','Bayram','05422805396','93182383658','enesbyrm@gmail.com','08','1999-06-11 22:13:17')
INSERT INTO Rezervasyon values ('9','Ezel','Bayraktar','05423762359','55510725134','ezelbyrktr@gmail.com','09','1971-05-01 21:19:36')
INSERT INTO Rezervasyon values ('10','Polat','Alemdar','05678765432','42012667468','polatalemdar@gmail.com','10','2015-11-20 09:35:05')
INSERT INTO Rezervasyon values ('11','Memati','Ba�','05425974200','67660344264','mematiba�@gmail.com','11','1977-05-14 11:02:00')
INSERT INTO Rezervasyon values ('12','S�leyman','�ak�r','05328765655','60911568242','suleymanckr@gmail.com','12','2009-05-28 03:42:38')
INSERT INTO Rezervasyon values ('13','Ramiz','Karaeski','05429963838','27011549076','ramizkaraeski@gmail.com','13','1992-04-14 11:30:43')
INSERT INTO Rezervasyon values ('14','Behzat','�','05320891221','92116589708','behzatc@gmail.com','14','1992-05-26 11:24:22')
INSERT INTO Rezervasyon values ('15','Harun','Sinano�lu','05443271523','74981079386','harunkomiser@gmail.com','15','1997-12-26 14:20:46')
INSERT INTO Rezervasyon values ('16','Abdulhey','�oban','05425506820','73436452880','ab_dul_hey@gmail.com','16','1984-04-21 08:21:29')
INSERT INTO Rezervasyon values ('17','Aslan','Akbey','05423445654','25551210494','aslanakbey@gmail.com','17','2006-07-22 15:24:25')
INSERT INTO Rezervasyon values ('18','Tefik','Zaim','05449872233','47274051628','tefikzaim@gmail.com','18','1973-02-16 03:54:46')
INSERT INTO Rezervasyon values ('19','Kenan','Birkan','05425433322','83238960582','kenanmirkan@gmail.com','19','2010-11-29 08:44:21')
INSERT INTO Rezervasyon values ('20','Kamil','�al�c�','05328975321','12110046724','kamilcal�c�@gmail.com','20','1974-08-07 01:05:06')
INSERT INTO Rezervasyon values ('21','Selma','H�nel','05422411725','27644367054','selmahunel@gmail.com','21','1995-01-09 07:03:33')
INSERT INTO Rezervasyon values ('22','Elif','Eyl�l','05325111090','49699487938','elifeyl�l@gmail.com','22','2013-03-02 03:02:09')
INSERT INTO Rezervasyon values ('23','Meral','Y�lmaz','05443211234','45893095788','meralyilmaz@gmail.com','23','1997-08-26 19:36:59')
INSERT INTO Rezervasyon values ('24','Derya','�ak�r','05326497716','70732908028','deryacakir@gmail.com','24','1971-02-19 00:21:12')
INSERT INTO Rezervasyon values ('25','Cansel','Ayano�lu','05322323344','35190195878','canselayanoglu@gmail.com','25','2002-06-13 13:55:46')
INSERT INTO Rezervasyon values ('26','Yaren','Sar�','05439877662','84408443768','yarensari@gmail.com','26','1981-12-22 04:17:07')
INSERT INTO Rezervasyon values ('27','Melisa','Demirel','05329874487','23848904446','melisademirel@gmail.com','27','2018-04-14 19:53:45')
INSERT INTO Rezervasyon values ('28','Ahu','Toros','05464567584','48935716924','ahutoros@gmail.com','28','2009-07-10 04:22:05')
INSERT INTO Rezervasyon values ('29','Selin','Ko�','05487632211','25183332120','selinkoc@gmail.com','29','1987-01-20 07:30:27')
INSERT INTO Rezervasyon values ('30','Zeynep','Karahan','05437678292','45541445934','zeynepkarahan@gmail.com','30','2021-06-16 20:59:13')
INSERT INTO Rezervasyon values ('31','Pelin','K�rhan','05643258365','19120777914','pelinkirhan@gmail.com','31','1972-01-03 01:28:49')
INSERT INTO Rezervasyon values ('32','Dilara','�ztuna','05421902377','21242209440','dilaraoztuna@gmail.com','32','2005-07-24 10:17:04')
INSERT INTO Rezervasyon values ('33','Naz','Kahveci','05427252550','73070615504','nazkahveci@gmail.com','33','2010-08-12 04:52:37')
INSERT INTO Rezervasyon values ('34','�zge','Abac�','05426147695','51152250102','ozgeabaci@gmail.com','34','2012-04-13 09:07:46')
INSERT INTO Rezervasyon values ('35','Melis','Kaya','05447868701','80598345158','meliskaya@gmail.com','35','1986-10-06 14:14:26')
INSERT INTO Rezervasyon values ('36','Ece','Abac�','05444123754','76102271860','eceabaci@gmail.com','36','1983-02-05 23:24:50')
INSERT INTO Rezervasyon values ('37','Ela','Kunter','05449457953','44968503098','elakunter@gmail.com','37','1981-10-23 22:39:01')
INSERT INTO Rezervasyon values ('38','Gonca','Yal��n','05445658852','59930222754','goncayalcin@gmail.com','38','1978-07-25 01:50:37')
INSERT INTO Rezervasyon values ('39','Ebru','Kutlay','05444858333','67400942620','ebrukutlay@gmail.com','39','1978-01-14 13:37:36')
INSERT INTO Rezervasyon values ('40','Selma','Kumcuo�lu','05448754164','30001961246','selmakumcuoglu@gmail.com','40','2003-01-01 17:15:20')
INSERT INTO Rezervasyon values ('41','Derin','Balaban','05440491741','96962007706','derinbalaban@gmail.com','41','2017-07-12 03:51:54')
INSERT INTO Rezervasyon values ('42','Birg�l','Y�ld�r�m','05441710249','88576530046','birgulyildirim@gmail.com','42','1980-08-07 08:37:43')
INSERT INTO Rezervasyon values ('43','Zehranur','Arsoy','05442456798','85086845936','zehranurarsoy@gmail.com','43','1996-01-05 22:09:13')
INSERT INTO Rezervasyon values ('44','Selmin','Arslan','05447308057','67254976680','selminarslan@gmail.com','44','2010-12-04 00:42:29')
INSERT INTO Rezervasyon values ('45','Olca','Erg�l','05449627140','49187326336','olcaergul@gmail.com','45','1991-05-02 03:58:55')
INSERT INTO Rezervasyon values ('46','�ebnem','Ferah','05446896867','54935716924','sebnemfrah@gmail.com','46','2008-04-02 21:49:00')
INSERT INTO Rezervasyon values ('47','Seda','Sayan','05448550811','85548835211','sedasayan@gmal.com','47','2020-03-17 11:08:12')
INSERT INTO Rezervasyon values ('48','Nazl�','Bekiro�lu','05328576117','88199653317','nazl�bek�roglu@gmail.com','48','2020-10-27 14:54:24')
INSERT INTO Rezervasyon values ('49','Serpil','Tamur','05326038762','74173053020','serp�ltamur@gmail.com','49','2015-06-04 07:04:05')
INSERT INTO Rezervasyon values ('50','Gaye','G�rsel','05443223680','19216811120','gayegursel@gmail.com','50','2009-09-04 19:07:23')
INSERT INTO Rezervasyon values ('51','�rem','Helvac�','05435448210','53741121030','�remhelvac�@gmail.com','51','2011-04-27 11:55:00')
INSERT INTO Rezervasyon values ('52','Nergiz','Sorak','04305095481','19926018010','nerg�zsorak@gmail.com','52','2010-11-29 02:37:44')
INSERT INTO Rezervasyon values ('53','Seray','Sever','05306039503','16817715050','serasever@gmail.com','53','2002-04-17 22:13:20')
INSERT INTO Rezervasyon values ('54','Vildan','Atasever','05417201410','72053064090','v�ldanatsvr@gmail.com','54','2012-04-26 22:38:19')
INSERT INTO Rezervasyon values ('55','Fatma','Ayayd�n','05367908040','19753033045','fatmaayayd�n@gmail.com','55','2007-10-27 07:21:1')
INSERT INTO Rezervasyon values ('56','Hande','Sar�o�lu','05118801515','80996554348','handesar�@gmail.com','56','2021-03-29 19:57:13')
INSERT INTO Rezervasyon values ('57','Beg�m','K�t�k','05346073140','44856031315','begumkutuk@gmail.com','57','2019-11-05 01:35:5')
INSERT INTO Rezervasyon values ('58','Safiye','Karahanl�','08306073050','45699636650','saf�yekarhn@gmail.com','58','2012-07-18 05:49:48')
INSERT INTO Rezervasyon values ('59','Ay�a','Eren','05706455113','92063041250','aycaeren@gmail.com','59','2016-12-11 14:18:28')
INSERT INTO Rezervasyon values ('60','Canan','Erg�n','05702301180','88816579645','cananergun@gmail.com','60','2001-05-15 11:26:21')
INSERT INTO Rezervasyon values ('61','Seda','Akman','05367903510','88663531420','sedaakmn@gmail.com','61','2004-01-23 14:55:24')
INSERT INTO Rezervasyon values ('62','Zeynep','Koltuk','05368703090','69178019650','zeynepkoltuk@gmail.com','62','2008-07-23 14:30:24')
INSERT INTO Rezervasyon values ('63','Pelinsu','Pir','05407506031','74565732047','pel�nsup�r@gmail.com','63','2010-05-23 14:50:24')
INSERT INTO Rezervasyon values ('64','Seda','Bayram','02126074526','54196014160','sedabyrm@gmail.com','64','2022-12-18 17:42:24')
INSERT INTO Rezervasyon values ('65','Hazal','Kaya','05967451560','55463217690','hazalkaya@gmail.com','65','2015-06-23 19:55:24')
INSERT INTO Rezervasyon values ('66','Eda','Nur','05658474433','24540422306','edanur@gmail.com','66','1996-09-11 22:27:41')
INSERT INTO Rezervasyon values ('67','Serhat','Bal','05659093192','85544136286','serhatbal@gmail.com','67','1991-09-30 05:11:02')
INSERT INTO Rezervasyon values ('68','Y�ld�z','Tilbe','05464453032','96207353780','yildiztilbe@gmail.com','68','2022-08-02 02:14:08')
INSERT INTO Rezervasyon values ('69','Sena','Nur','05447667899','86942177420','senanur@gmail.com','69','2001-09-12 19:21:19')
INSERT INTO Rezervasyon values ('70','Azad','Karaeski','05286273381','28582403856','AzadKaraeski@gmail.com','70','2022-01-15 22:32:45')
INSERT INTO Rezervasyon values ('71','Recep','Bas�lm��','05952789215','72957402953','RecepBas�lm�s@gmail.com','71','1986-08-18 16:40:28')
INSERT INTO Rezervasyon values ('72','Ahmet','�akar','05835729632','68264759621','AhmetCakar@gmail.com','72','2002-05-27 16:07:01')
INSERT INTO Rezervasyon values ('73','Sinan','Engin','05737582951','84625861721','SinanEngin@gmail.com','73','2017-03-13 13:28:09')
INSERT INTO Rezervasyon values ('74','Abdulkerim','Durmaz','05256376843','28562966129','AbdulkerimDurmaz@gmail.com','74','2008-09-28 02:35:44')
INSERT INTO Rezervasyon values ('75','Ertem','�ener','05286641022','28465826501','ErtemSener@gmail.com','75','1983-08-16 20:53:24')
INSERT INTO Rezervasyon values ('76','Rasim','Ozan','05485662946','68462475182','RasimOzan@gmail.com','76','1973-08-06 12:32:59')
INSERT INTO Rezervasyon values ('77','Fatih','Terim','05683265911','72856195732','FatihTerim@gmail.com','77','2005-01-11 05:16:34')
INSERT INTO Rezervasyon values ('78','�smail','Kartal','05586926481','28624957218','�smailKartal@gmail.com','78','1975-03-26 02:28:21')
INSERT INTO Rezervasyon values ('79','�enol','G�ne�','05863925019','59275828259','SenolGunes@gmail.com','79','1988-10-27 10:15:12')
INSERT INTO Rezervasyon values ('80','Necip','Uysal','05967296015','76381246962','NecipUysal@gmail.com','80','1992-03-13 08:33:14')
INSERT INTO Rezervasyon values ('81','Tayyip','Talha','05586249617','58612956712','TayyipTalha@gmail.com','81','2012-07-10 10:17:10')
INSERT INTO Rezervasyon values ('82','Serdar','Aziz','05768492578','63882227621','SerdarAziz@gmail.com','82','2011-11-30 21:29:05')
INSERT INTO Rezervasyon values ('83','G�khan','G�n�l','05854629662','86265824561','GokhanGonul@gmail.com','83','2016-01-14 12:48:13')
INSERT INTO Rezervasyon values ('84','Naz�m','Sangare','05859859127','69244816214','Naz�mSangare@gmail.com','84','1997-11-06 09:03:02')
INSERT INTO Rezervasyon values ('85','R�za','�al�mbay','05683138591','48569159278','R�zaCal�mbay@gmail.com','85','1990-02-25 23:59:32')
INSERT INTO Rezervasyon values ('86','Mert','G�nok','05865924814','69352381259','MertGunok@gmail.com','86','1980-12-03 01:23:44')
INSERT INTO Rezervasyon values ('87','Ersin','Destano�lu','05686482618','86357248691','ErsinDestano�lu@gmail.com','87','1998-06-08 19:40:18')
INSERT INTO Rezervasyon values ('88','Ahmet','Kaz�m','05586953821','82758284962','AhmetKaz�m@gmail.com','88','2006-07-26 10:22:19')
INSERT INTO Rezervasyon values ('89','Nam�k','Kemal','05852947121','48524957126','Nam�kKemal@gmail.com','89','1992-07-15 12:54:11')
INSERT INTO Rezervasyon values ('90','Emirhan','Uzunhan','05827528612','65835294712','EmirhanUzunhan@gmail.com','90','1993-12-02 03:21:29')




INSERT INTO Tedarikciler values ('1','Ayd�n','G�kt�rk','GLOBAL HORECA �� VE DI� T�CARET L�M�TED ��RKET�','+90 212 885 80 85','Yenimahalle mah. E5 Kuzey Yanyol cad. Fahrettin �� Merkezi No:65 Kat:1 B�y�k�ekmece /�stanbul','info@globalhoreca.com.tr','T�rkiye','globalhoreca.com.tr','+90 242 502 90 10')
INSERT INTO Tedarikciler values ('2','Nisanur','Parlak','OTEL �R�NLER� TEKST�L SAN. VE T�C. LTD. �T�.','+90 212 580 1 590','YEN� MAHALLE E5 KUZEY YANYOL CADDES� NO: 65  34530 KUMBURGAZ / B�Y�K�EKMECE / �STANBUL','info@otelurunleri.com.tr','T�rkiye','otelurunleri.com.tr','+90 212 580 1 581')
INSERT INTO Tedarikciler values ('3','H�seyin','Nural�n','Ekipmer Otel Ekipmanlar� Kozmetik San. ve Tic. Ltd. �ti.','+90 507 250 32 12','Mahmutbey Mah. �sto� Ticaret Merkezi, 35.Ada No:1, 34218 Ba�c�lar/�stanbul','info@ekipmer.com','T�rkiye','ekipmer.com','+90 212 909 52 74')
INSERT INTO Tedarikciler values ('4','Cemre','Salik','Polat Hastane ve Otel Teks. �r�n. �malat� G�d. Tur. San. Tic. Ltd. �ti.','+90 212 489 40 80','Ba�lar Mah. Yavuz Sultan Selim Cad. 9. Sk. Kat: 1 A-Blok No:6 G�ne�li','destek@polattibbitekstil.com.tr','T�rkiye','polattibbitekstil.com.tr','+90 212 474 90 15')






INSERT INTO Urunler values ('1','1','��p Kovas�','100','150')
INSERT INTO Urunler values ('2','1','Klozet F�r�as�','75','150')
INSERT INTO Urunler values ('3','1','Raf Havluluk','50','150')
INSERT INTO Urunler values ('4','1','Sabunluk','30','150')
INSERT INTO Urunler values ('5','1','Ka��tl�k','40','150')
INSERT INTO Urunler values ('6','1','El Y�z Havlusu','40','150')
INSERT INTO Urunler values ('7','1','Banyo Havlusu','100','150')
INSERT INTO Urunler values ('8','1','Ayak Havlusu','50','150')
INSERT INTO Urunler values ('9','1','Terlik','25','150')
INSERT INTO Urunler values ('10','1','Sa� Kurutma Makinas�','350','150')
INSERT INTO Urunler values ('11','2','�ama��r Toplama Arabas�','500','50')
INSERT INTO Urunler values ('12','2','Kat Temizlik Arabas�','500','50')
INSERT INTO Urunler values ('13','2','Temizlik Seti','750','50')
INSERT INTO Urunler values ('14','2','Mini Bar Arabas�','350','50')
INSERT INTO Urunler values ('15','3','Elektrikli S�p�rge','800','50')
INSERT INTO Urunler values ('16','2','Kar��lama Tepsisi','70','150')
INSERT INTO Urunler values ('17','2','Kasa','2000','100')
INSERT INTO Urunler values ('18','2','Minibar','3000','100')
INSERT INTO Urunler values ('19','3','Banyo Telefonu','300','150')
INSERT INTO Urunler values ('20','3','Oda Telefonu','300','150')
INSERT INTO Urunler values ('21','3','Televizyon','10000','100')
INSERT INTO Urunler values ('22','4','Nevresim Tak�m�','600','150')
INSERT INTO Urunler values ('22','1','Oda Kokusu','150','150')
INSERT INTO Urunler values ('23','4','Yatak Baza','10000','100')
INSERT INTO Urunler values ('24','1','�ampuan','100','150')
INSERT INTO Urunler values ('25','1','Sabun','30','150')
INSERT INTO Urunler values ('26','4','Bornoz','200','150')
INSERT INTO Urunler values ('27','4','Battaniye','300','150')
INSERT INTO Urunler values ('28','4','Yorgan','300','150')
INSERT INTO Urunler values ('29','4','�ar�af','100','150')
INSERT INTO Urunler values ('30','4','Yast�k','150','150')
INSERT INTO Urunler values ('31','4','Yast�k K�l�f�','35','150')
INSERT INTO Urunler values ('32','1','��p Torbas�','15','300')
INSERT INTO Urunler values ('33','1','Di� F�r�al�k','100','150')
INSERT INTO Urunler values ('34','1','Pe�temal','50','150')
INSERT INTO Urunler values ('35','3','�t�','1000','150')
INSERT INTO Urunler values ('36','1','�t� Masas�','300','150')
INSERT INTO Urunler values ('37','1','Di� F�r�as�','25','150')
INSERT INTO Urunler values ('38','1','Di� Macunu','75','150')
INSERT INTO Urunler values ('39','1','Lif','40','200')
INSERT INTO Urunler values ('40','1','Islak Mendil','15','300')
INSERT INTO Urunler values ('41','1','Ka��t Mendil','30','300')
INSERT INTO Urunler values ('42','4','Koltuk','5000','100')
INSERT INTO Urunler values ('43','4','Dolap','1000','150')






INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (1, '2' ,1 ,'SU�T',01);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (2, '4' ,1 ,'D�rt Ki�ilik',02);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (3, '6' ,4 ,'Aile Odas�',03);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (4, '3' ,2 ,'�� Ki�ilik',04);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (5, '1' ,2 ,'Tek Ki�ilik',05);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (6, '2' ,7 ,'Junior Suite',06);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (7, '4' ,9 ,'Dubleks Oda',07);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (8, '1' ,5 ,'Kral Dairesi',08);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (9, '5' ,10 ,'Kral Dairesi',09);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (10, '1' ,3 ,'Suit Oda',10);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (11, '2' ,3 ,'Suit Oda',11);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (12, '1' ,3 ,'Suit Oda',12);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (13, '6' ,10 ,'Aile Odaa�',13);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (14, '2' ,7 ,'Kral Dairesi',14);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (15, '1' ,7 ,'Tek Ki�ilik Oda',15);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (16, '5' ,10 ,'Dubleks Oda',16);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (17, '3' ,10 ,'K��e Oda',17);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (18, '1' ,10 ,'Junior Suite',18);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (19, '1' ,6 ,'Suit Oda',19);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (20, '2', 6 ,'Ba�lant�l� Oda' ,20);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (21, '6', 1, 'Dubleks Oda',21);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (22, '4' ,4 ,'Ba�lant�l� Oda',22);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (23, '4' ,4 ,'Dubleks',23);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (24, '3' ,4 ,'Suite Oda',24);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (25, '1' ,3,'K��e Oda',25);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (26, '1' ,2,'Kral Dairesi',26);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (27, '4' ,8 ,'Standart Oda',27);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (28, '3' ,8 ,'Aile Odas�',28);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (29, '2' ,6,'Tek ki�ilik Standart Oda',29);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (30, '3' ,5,'�� ki�ilik Standart Oda',30);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (31, '2',5, 'Studio Room',31);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (32, '4', 3, 'K��e Oda',32);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (33, '1', 2, 'Kral Dairesi', 33);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (34, '7', 5, 'Aile Odas�',34);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (35, '2', 9, 'K��e Oda',5);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (36, '1', 3, 'Suit Oda',36);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (37, '4', 8, 'Dubleks Oda',37);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (38, '1', 7, 'Tek ki�ilik Standart Oda',38);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (39, '3', 2, 'Ba�lant�l� Oda',39);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (40, '4', 3, 'K��e Oda',40);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (41, '4', 3, 'K��e Oda',41);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (42, '4', 3, 'K��e Oda',42);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (43, '2', 8, 'K��e Oda',43);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (44, '4', 6, 'K��e Oda',44);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (45, '4', 8, 'K��e Oda',45);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (46, '1', 1, 'Engelli Odas�',46);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (47, '1', 2, 'Engelli Odas�',47);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (48, '2', 1, 'Aile Odas�',48);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (49, '3', 8, 'Studio Room',49);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (50, '8', 8, 'Aile Odas�',50);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (51, '5', 7, 'V�P Oda',51);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (52, '6', 3, 'Klasik Oda',52);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (53, '9', 4, 'Extra Yatakl� �zel Oda',53);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (54, '6', 1, 'Tek Ki�ilik �zel Oda',54);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (55, '3', 2, 'Aile Odas�',55);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (56, '1', 10, 'Kral Dairesi',56);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (57, '1', 9, 'Standart Oda',57);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (58, '2', 10, 'Suite Oda',58);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (59, '8', 8, 'Dubleks Oda',59);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (60, '1', 9, 'Stud�o Room',60);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (61, '4', 10, 'D�rt Ki�ilik �zel Oda',61);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (62, '3', 8, 'Extra Yatakl� Oda',62);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (63, '1', 6, 'Stud�o Room',63);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (64, '5', 8, 'Aile Odas�',64);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (65, '6', 6, 'Aile Odas�',65);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (66, '1', 6, '�zel Oda',66);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (67, '5', 8, 'Aile Odas�',67);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (68, '3', 10, 'Standart Oda',68);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (69, '1', 7, 'Stud�o Room',69);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (70, '5', 8, 'Aile Odas�',70);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (71, '1', 2, 'Tek Ki�ilik Vip Oda',71);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (72, '4', 3, 'Aile Odas�',72);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (73, '5', 8, 'Extra Yatakl� Dubleks Oda',73);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (74, '2', 8, 'Aile Odas�',74);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (75, '1', 8, 'Standart Oda',75);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (76, '3', 10, 'Extra Yatakl� Oda',76);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (77, '3', 1, 'Ba�lant�l� Oda',77);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (78, '5', 8, 'Aile Odas�',78);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (79, '8', 8, 'Vip Dubleks Oda',79);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (80, '4', 10, 'D�rt Ki�ilik Standart Oda',80);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (81, '1', 3, 'Standart Oda',81);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (82, '2', 10, '�ki Ki�ilik Standart Oda',82);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (83, '5', 8, 'Dubleks Oda',83);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (84, '2', 5, '�ki Ki�ilik Standart Oda',84);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (85, '4', 3, 'D�rt Ki�ilik Vip Oda',85);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (86, '6', 1, 'Standart Dubleks Oda',86);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (87, '1', 8, 'Suit Oda',87);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (88, '3', 3, '�ki Ki�ilik Extra Yatakl� Oda',88);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (89, '4', 4, 'D�rt Ki�ilik Standart Oda',89);

INSERT INTO Odalar (OdaID, Kapasite, KatNo, OdaTuru, OdaNo)
VALUES (90, '2', 4, '�ki Ki�ilik Vip Oda',90);




INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('1', '1', '01', '100');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('2', '1', '02', '100');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('3', '2', '03', '75');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('4', '3', '04', '80');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('5', '3', '06', '80');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('6', '6', '05', '120');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('7', '6', '12', '120');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('8', '7', '18', '150');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('9', '8', '10', '250');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('10', '11', '13', '300');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('11', '12', '14', '375');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('12', '14', '17', '400');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('13', '16', '18', '225');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('14', '17', '19', '450');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('15', '18', '20', '500');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('16', '19', '21', '125');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('17', '20', '22', '750');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('18', '21', '23', '1000');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('19', '22', '23', '750');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('20', '23', '24', '750');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('21', '24', '25', '800');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('22', '25', '26', '430');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('23', '26', '27', '120');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('24', '27', '28', '750');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('25', '28', '29', '750');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('26', '29', '29', '750');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('27', '30', '31', '600');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('28', '31', '32', '460');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('29', '32', '33', '750');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('30', '33', '34', '820');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('31', '34', '35', '480');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('32', '35', '36', '1500');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('33', '36', '37', '1200');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('34', '37', '38', '1400');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('35', '38', '39', '750');

INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('36', '39', '40', '1600'); 
 
INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('37', '40', '41', '750'); 
 
INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('38', '41', '42', '300'); 
 
INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('39', '42', '43', '350'); 
 
INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('40', '43', '44', '375'); 
 
INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('41', '44', '45', '280'); 
  
INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('42', '45', '46', '365'); 
  
INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('43', '46', '47', '1250'); 
  
INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('44', '47', '48', '1375'); 
  
INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('45', '48', '49', '1550'); 
  
INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('46', '49', '50', '1275'); 
  
INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('47', '50', '07', '900'); 
  
INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('48', '51', '08', '200'); 
  
INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('49', '52', '09', '375');
  
INSERT INTO Servisler (ServisID, ServisNo, OdaNo, Ucreti)
VALUES ('50', '53', '11', '1500'); 
 
 insert into Sat�sDetay� values(1,01,200,'%5','2005-08-08 12:59:24')
insert into Sat�sDetay� values(2,02,350,'%5','1979-10-11 12:03:31')
insert into Sat�sDetay� values(3,03,250,'%10','1981-05-04 02:47:15')
insert into Sat�sDetay� values(4,04,350,'%5','1996-01-29 10:40:26')
insert into Sat�sDetay� values(5,05,450,'%5','2007-10-25 00:12:38')
insert into Sat�sDetay� values(6,06,150,'%10','2009-04-17 09:24:09')
insert into Sat�sDetay� values(7,07,500,'%10','2002-11-11 17:49:12')
insert into Sat�sDetay� values(8,08,550,'%5','1978-11-03 05:44:29')
insert into Sat�sDetay� values(9,09,450,'%10','2021-01-04 20:51:54')
insert into Sat�sDetay� values(10,10,350,'%5','1996-03-10 23:15:18')
insert into Sat�sDetay� values(11,11,550,'%5','2016-04-24 18:25:51')
insert into Sat�sDetay� values(12,12,450,'%10','2018-05-21 15:37:27')
insert into Sat�sDetay� values(13,13,400,'%10','1990-01-25 02:51:43')
insert into Sat�sDetay� values(14,14,400,'%10','2012-10-07 22:52:25')
insert into Sat�sDetay� values(15,15,500,'%5','2020-03-20 15:01:08')
insert into Sat�sDetay� values(16,16,300,'%5','2016-05-20 07:37:54')
insert into Sat�sDetay� values(17,17,450,'%5','2021-05-06 06:21:01')
insert into Sat�sDetay� values(18,18,550,'%10','2020-07-28 21:43:02')
insert into Sat�sDetay� values(19,19,300,'%10','2021-01-09 17:14:57')
insert into Sat�sDetay� values(20,20,400,'%5','2020-12-04 06:54:43')
insert into Sat�sDetay� values(21,21,350,'%10','2021-11-24 23:07:26')
insert into Sat�sDetay� values(22,22,400,'%5','2020-06-13 18:39:59')
insert into Sat�sDetay� values(23,23,550,'%10','2021-12-07 14:07:38')
insert into Sat�sDetay� values(24,24,450,'%10','2021-12-21 08:16:12')
insert into Sat�sDetay� values(25,25,450,'%5','2020-01-29 04:10:12')
insert into Sat�sDetay� values(26,26,550,'%10','2020-02-29 11:39:54')
insert into Sat�sDetay� values(27,27,250,'%10','2021-07-04 15:30:48')
insert into Sat�sDetay� values(28,28,350,'%10','2021-03-19 01:40:4')
insert into Sat�sDetay� values(29,29,450,'%5','2020-02-12 15:20:35')
insert into Sat�sDetay� values(30,30,200,'%5','2021-09-02 19:52:59')
insert into Sat�sDetay� values(31,31,350,'%5','2021-09-20 14:15:23')
insert into Sat�sDetay� values(32,32,300,'%10','2021-12-14 19:26:32')
insert into Sat�sDetay� values(33,33,300,'%10','2020-06-27 15:07:29')
insert into Sat�sDetay� values(34,34,550,'%10','2022-05-31 10:53:21')
insert into Sat�sDetay� values(35,35,350,'%5','2022-04-03 04:39:05')
insert into Sat�sDetay� values(36,36,450,'%10','2020-11-25 17:54:21')
insert into Sat�sDetay� values(37,37,300,'%5','2020-02-11 09:56:09')
insert into Sat�sDetay� values(38,38,200,'%5','2021-09-20 10:11:4')
insert into Sat�sDetay� values(39,39,400,'%5','2022-12-01 06:20:04')
insert into Sat�sDetay� values(40,40,500,'%5','2021-07-09 06:24:52')
insert into Sat�sDetay� values(41,41,350,'%10','2020-01-12 20:15:03')
insert into Sat�sDetay� values(42,42,350,'%10','2022-10-18 21:33:22')
insert into Sat�sDetay� values(43,43,450,'%10','2021-05-13 14:18:02')
insert into Sat�sDetay� values(44,44,550,'%5','2021-04-01 19:24:29')
insert into Sat�sDetay� values(45,45,250,'%5','2021-10-13 13:50:29')
insert into Sat�sDetay� values(46,46,350,'%10','2020-04-03 03:15:08')
insert into Sat�sDetay� values(47,47,400,'%5','2021-08-13 16:14:14')
insert into Sat�sDetay� values(48,48,500,'%10','2020-10-24 00:28:46')
insert into Sat�sDetay� values(49,49,300,'%10','2021-09-30 23:45:31')
insert into Sat�sDetay� values(50,50,350,'%5','2021-03-03 10:58:10')
insert into Sat�sDetay� values(51,51,200,'%10','2021-02-12 04:25:43')
insert into Sat�sDetay� values(52,52,200,'%10','2022-04-05 20:52:48')
insert into Sat�sDetay� values(53,53,200,'%10','2020-04-01 15:04:05')
insert into Sat�sDetay� values(54,54,400,'%5','2022-04-05 20:52:48')
insert into Sat�sDetay� values(55,55,500,'%10','2022-04-05 20:52:48')
insert into Sat�sDetay� values(56,56,200,'%5','2022-04-05 20:52:48')
insert into Sat�sDetay� values(57,57,300,'%10','2022-04-05 20:52:48')
insert into Sat�sDetay� values(58,58,300,'%5','2021-07-22 22:44:55')
insert into Sat�sDetay� values(59,59,500,'%10','2020-12-12 18:36:40')
insert into Sat�sDetay� values(60,60,350,'%5','2020-09-13 19:36:09')
insert into Sat�sDetay� values(61,61,450,'%10','2021-06-25 09:34:49')
insert into Sat�sDetay� values(62,62,200,'%5','2021-04-28 23:20:41')
insert into Sat�sDetay� values(63,63,550,'%5','2020-03-11 17:29:43')
insert into Sat�sDetay� values(64,64,350,'%10','2021-03-03 05:45:06')
insert into Sat�sDetay� values(65,65,450,'%5','2021-06-28 15:49:04')
insert into Sat�sDetay� values(66,66,350,'%5','2020-01-31 18:36:31')
insert into Sat�sDetay� values(67,67,250,'%10','2021-08-13 11:14:29')
insert into Sat�sDetay� values(68,68,200,'%10','2020-04-11 04:00:40')
insert into Sat�sDetay� values(69,69,400,'%5','2020-10-14 22:31:44')
insert into Sat�sDetay� values(70,70,500,'%5','2022-03-12 03:33:46')
insert into Sat�sDetay� values(71,71,550,'%10','2022-02-19 04:53:42')
insert into Sat�sDetay� values(72,72,250,'%5','2022-06-21 11:05:37')
insert into Sat�sDetay� values(73,73,300,'%10','2022-12-14 16:20:13')
insert into Sat�sDetay� values(74,74,300,'%10','2021-12-17 00:01:36')
insert into Sat�sDetay� values(75,75,300,'%5','2021-04-04 11:17:42')
insert into Sat�sDetay� values(76,76,400,'%10','2021-07-03 19:53:56')
insert into Sat�sDetay� values(77,77,450,'%5','2022-03-15 03:46:59')
insert into Sat�sDetay� values(78,78,500,'%10','2021-03-18 11:06:35')
insert into Sat�sDetay� values(79,79,350,'%10','2021-09-20 14:57:16')
insert into Sat�sDetay� values(80,80,250,'%5','2020-07-30 19:45:41')
insert into Sat�sDetay� values(81,81,300,'%10','2022-08-29 12:06:39')
insert into Sat�sDetay� values(82,82,400,'%5','2021-07-30 10:41:44')
insert into Sat�sDetay� values(83,83,200,'%5','2020-09-02 00:22:44')
insert into Sat�sDetay� values(84,84,450,'%5','2021-08-12 02:08:30')
insert into Sat�sDetay� values(85,85,200,'%5','2020-10-23 11:07:31')
insert into Sat�sDetay� values(86,86,350,'%10','2022-03-17 15:03:31')
insert into Sat�sDetay� values(87,87,400,'%5','2021-03-04 06:54:02')
insert into Sat�sDetay� values(88,88,400,'%10','2022-01-10 00:09:27')
insert into Sat�sDetay� values(89,89,450,'%5','2020-10-31 03:09:44')
insert into Sat�sDetay� values(90,90,200,'%10','2022-04-14 23:31:57')









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


insert into Odemeler values (1,45,'B.kart','2022-05-09 05:14:51','350.TL')
insert into Odemeler values (2,44,'K.kart','2020-12-03 03:23:01','450.TL')
insert into Odemeler values (3,43,'Nakit','2021-11-27 10:29:42','550.TL')
insert into Odemeler values (4,42,'K.kart','2021-06-06 05:35:07','350.TL')
insert into Odemeler values (5,41,'Nakit','2021-09-20 15:22:40','250.TL')
insert into Odemeler values (6,40,'B.kart','2020-08-28 02:22:05','200.TL')
insert into Odemeler values (7,39,'K.kart','2021-01-29 12:49:27','350.TL')
insert into Odemeler values (8,38,'K.kart','2021-02-04 12:48:03','300.TL')
insert into Odemeler values (9,37,'B.kart','2022-01-21 03:53:01','300.TL')
insert into Odemeler values (10,36,'K.kart','2022-01-12 02:02:29','350.TL')
insert into Odemeler values (11,35,'B.kart','2020-02-24 08:22:11','400.TL')
insert into Odemeler values (12,34,'Nakit','2020-04-01 14:40:49','350.TL')
insert into Odemeler values (13,33,'K.kart','2020-12-29 03:27:24','350.TL')
insert into Odemeler values (14,32,'B.kart','2020-06-24 19:54:02','500.TL')
insert into Odemeler values (15,31,'B.kart','2022-06-04 07:38:33','350.TL')
insert into Odemeler values (16,30,'Nakit','2020-09-16 19:53:15','450.TL')
insert into Odemeler values (17,29,'K.kart','2021-01-11 09:25:06','500.TL')
insert into Odemeler values (18,28,'B.kart','2021-05-20 14:01:33','450.TL')
insert into Odemeler values (19,27,'Nakit','2021-11-21 18:18:50','450.TL')
insert into Odemeler values (20,26,'Nakit','2019-08-24 12:47:02','500.TL')
insert into Odemeler values (21,25,'B.kart','2020-09-23 13:49:01','450.TL')
insert into Odemeler values (22,24,'Nakit','2022-03-03 09:25:44','450.TL')
insert into Odemeler values (23,23,'K.kart','2019-12-29 06:02:35','450.TL')
insert into Odemeler values (24,22,'B.kart','2022-04-30 11:23:20','500.TL')
insert into Odemeler values (25,21,'Nakit','2019-12-24 11:30:32','400.TL')
insert into Odemeler values (26,20,'B.kart','2020-07-13 08:35:29','450.TL')
insert into Odemeler values (27,19,'B.kart','2022-12-10 11:06:24','500.TL')
insert into Odemeler values (28,18,'Nakit','2020-09-10 12:40:08','450.TL')
insert into Odemeler values (29,17,'K.kart','2019-09-25 12:54:26','450.TL')
insert into Odemeler values (30,16,'Nakit','2022-09-04 03:19:58','300.TL')
insert into Odemeler values (31,15,'B.kart','2021-02-27 00:29:59','450.TL')
insert into Odemeler values (32,14,'K.kart','2020-07-18 12:26:01','500.TL')
insert into Odemeler values (33,13,'Nakit','2019-07-16 23:48:54','400.TL')
insert into Odemeler values (34,12,'B.kart','2020-02-20 03:22:53','450.TL')
insert into Odemeler values (35,11,'Nakit','2020-04-27 10:19:28','450.TL')
insert into Odemeler values (36,10,'Nakit','2022-10-12 17:56:00','300.TL')
insert into Odemeler values (37,9,'K.kart','2021-02-25 01:42:24','300.TL')
insert into Odemeler values (38,8,'Nakit','2021-05-06 05:20:35','400.TL')
insert into Odemeler values (39,7,'B.kart','2022-08-15 19:55:13','400.TL')
insert into Odemeler values (40,6,'B.kart','2022-10-26 07:25:52','500.TL')
insert into Odemeler values (41,5,'K.kart','2020-05-21 07:11:36','450.TL')
insert into Odemeler values (42,4,'Nakit','2021-10-17 23:58:26','450.TL')
insert into Odemeler values (43,3,'B.kart','2019-11-15 23:13:01','400.TL')
insert into Odemeler values (44,2,'B.kart','2022-11-08 07:46:46','300.TL')
insert into Odemeler values (45,1,'Nakit','2020-05-18 08:41:11','450.TL')
insert into Odemeler values (46,90,'B.kart','2022-05-30 09:40:11','450.TL')
insert into Odemeler values (47,89,'K.kart','2021-04-07 03:40:25','450.TL')
insert into Odemeler values (48,88,'Nakit','2019-09-23 01:41:03','300.TL')
insert into Odemeler values (49,87,'B.kart','2021-04-17 14:43:48','450.TL')
insert into Odemeler values (50,86,'K.kart','2022-09-13 17:09:21','300.TL')
insert into Odemeler values (51,85,'B.kart','2022-07-22 17:48:37','500.TL')
insert into Odemeler values (52,84,'K.kart','2021-04-10 01:29:03','500.TL')
insert into Odemeler values (53,83,'Nakit','2020-03-07 13:54:40','450.TL')
insert into Odemeler values (54,82,'B.kart','2021-07-05 07:18:11','300.TL')
insert into Odemeler values (55,81,'Nakit','2019-09-24 12:18:30','450.TL')
insert into Odemeler values (56,80,'K.kart','2019-07-17 16:24:56','500.TL')
insert into Odemeler values (57,79,'Nakit','2020-08-10 06:17:10','300.TL')
insert into Odemeler values (58,78,'B.kart','2021-06-27 02:34:43','450.TL')
insert into Odemeler values (59,77,'Nakit','2021-07-07 07:46:18','450.TL')
insert into Odemeler values (60,76,'B.kart','2022-07-03 11:36:55','350.TL')
insert into Odemeler values (61,75,'B.kart','2021-08-08 14:17:37','500.TL')
insert into Odemeler values (62,74,'K.kart','2021-02-14 02:09:28','450.TL')
insert into Odemeler values (63,73,'K.kart','2020-11-01 12:28:27','300.TL')
insert into Odemeler values (64,72,'B.kart','2021-08-23 17:38:23','500.TL')
insert into Odemeler values (65,71,'B.kart','2022-10-03 22:36:30','450.TL')
insert into Odemeler values (66,70,'Nakit','2020-10-08 00:08:04','300.TL')
insert into Odemeler values (67,69,'B.kart','2022-08-24 02:04:53','450.TL')
insert into Odemeler values (68,68,'B.kart','2021-02-05 18:58:23','500.TL')
insert into Odemeler values (69,67,'Nakit','2021-07-18 16:32:59','500.TL')
insert into Odemeler values (70,66,'K.kart','2022-11-05 09:56:37','300.TL')
insert into Odemeler values (71,65,'K.kart','2020-10-20 14:40:19','450.TL')
insert into Odemeler values (72,64,'Nakit','2021-05-26 02:17:43','300.TL')
insert into Odemeler values (73,63,'B.kart','2019-02-28 03:03:13','450.TL')
insert into Odemeler values (74,62,'B.kart','2021-01-11 13:54:46','500.TL')
insert into Odemeler values (75,61,'K.kart','2022-11-17 10:41:23','450.TL')
insert into Odemeler values (76,60,'B.kart','2019-05-01 04:31:33','300.TL')
insert into Odemeler values (77,59,'Nakit','2020-12-20 14:08:51','500.TL')
insert into Odemeler values (78,58,'K.kart','2019-09-25 20:15:26','450.TL')
insert into Odemeler values (79,57,'B.kart','2020-08-20 14:47:39','300.TL')
insert into Odemeler values (80,56,'Nakit','2021-12-08 00:38:39','500.TL')
insert into Odemeler values (81,55,'B.kart','2019-04-30 09:04:51','450.TL')
insert into Odemeler values (82,54,'K.kart','2019-09-03 20:37:10','300.TL')
insert into Odemeler values (83,53,'Nakit','2019-08-10 03:50:18','450.TL')
insert into Odemeler values (84,52,'B.kart','2019-03-31 16:22:06','500.TL')
insert into Odemeler values (85,51,'Nakit','2021-08-13 15:10:11','300.TL')
insert into Odemeler values (86,50,'Nakit','2019-06-05 19:53:16','450.TL')
insert into Odemeler values (87,49,'K.kart','2019-08-10 15:58:50','450.TL')
insert into Odemeler values (88,48,'B.kart','2021-05-23 20:46:09','500.TL')
insert into Odemeler values (89,47,'K.kart','2020-06-01 07:14:58','450.TL')
insert into Odemeler values (90,46,'Nakit','2019-04-17 03:42:15','300.TL')




insert into Musteriler values (1,'YAREN','�ZEK',34974016712,'90(505)050-81-50','KIZ','yozek3@gmail.com','2001-08-16-23:27:18','Bekar')
insert into Musteriler values (2,'MUSTAFA ULA� ','OZAT',79720326264,'90(532)882-01-94','ERKEK','msuozat0@gmail.com','1975-10-13 12:56:54','Bekar')
insert into Musteriler values (3,'F�L�Z','B�K�M',35936075402,'90(532)134-35-78','KIZ','ffbkm99@gmail.com','1994-07-25 01:54:30','Evli')
insert into Musteriler values (4,'SUDEM','BUDAK�I',63086072620,'90(532)853-26-18','KIZ','sudem09@gmail.com','1982-06-17 04:01:39','Evli')
insert into Musteriler values (5,'L�TF�','ERDEN',12604658754,'90(532)304-91-27','ERKEK','ltf4@gmail.com','2007-01-27 14:08:05','Bekar')
insert into Musteriler values (6,'DORUK','CUMAO�LU',58944183686,'90(545)641-61-73','ERKEK','dorukc71@gmail.com','1993-08-17 03:58:15','Evli')
insert into Musteriler values (7,'ATACAN ','TEMEL',39124073010,'90(545)949-81-41','ERKEK','atcn2233@gmail.com','1979-02-06 01:08:10','Bekar')
insert into Musteriler values (8,'SEVG�N','AK�AKAYA',79046344164,'90(545)529-65-98','KIZ','ssevgn39@gmail.com','2004-01-28 10:42:28','Bekar')
insert into Musteriler values (9,'AY�EN','BERK',49409161004,'90(545)613-16-61','KIZ','aysen9@gmail.com','2010-11-18 02:07:13','Bekar')
insert into Musteriler values (10,'YUSUF','G�NC�',89445107154,'90(545)129-30-33','ERKEK','ysfff9@gmail.com','1996-05-09 08:47:13','Evli')
insert into Musteriler values (11,'TOYAN�','AY�EN',53332178596,'90(545)739-97-02','ERKEK','tyonc8222@gmail.com','1994-06-06 19:03:03','Evli')
insert into Musteriler values (12,'KASIM','DURUM',86018267918,'90(545)318-90-76','ERKEK','kasdrm1221@gmail.com','1980-04-03 18:08:24','Evli')
insert into Musteriler values (13,'ALPEREN','G�NE�',58590215724,'90(545)290-32-43','ERKEK','kalpren@gmail.com','1975-01-06 04:27:22','Evli')
insert into Musteriler values (14,'B�ROL','AYDIN',94183443792,'90(545)720-43-27','ERKEK','b�rola300@gmail.com','2014-10-28 09:52:28','Bekar')
insert into Musteriler values (15,'BADE','YE��LKAYA',30909988758,'90(505)171-64-90','KIZ','byeslky00@gmail.com','1980-11-20 06:45:39','Evli')
insert into Musteriler values (16,'TAHS�N','BATUHAN EZER',90506693660,'90(505)353-90-45','ERKEK','tahs�nbe@gmail.com','1985-12-19 11:18:17','Evli')
insert into Musteriler values (17,'G�LHANIM','TEM�Z',31585587822,'90(505)509-50-29','KIZ','gltemz55@gmail.com','1999-06-22 00:58:37','Evli')
insert into Musteriler values (18,'MUSTAFA ERSAGUN','�ZU�U',17674081228,'90(505)288-56-76','ERKEK','meozug33@gmail.com','1990-01-14 00:45:22','Bekar')
insert into Musteriler values (19,'KAM�L','KURAN',88585482930,'90(505)575-07-58','ERKEK','kam�l21@gmail.com','1972-10-21 05:05:28','Evli')
insert into Musteriler values (20,'AY�IN','K���KBEYAZ�T',59089111756,'90(505)120-26-66','KIZ','ays�nkc@gmail.com','2017-10-09 14:11:28','Evli')
insert into Musteriler values (21,'BALA BA�AK','YANBOL',35482230546,'90(505)657-68-73','KIZ','bbasakc4@gmail.com','1994-04-14 04:33:12','Evli')
insert into Musteriler values (22,'SEFA','HARATA',55945061814,'90(505)527-19-30','ERKEK','sefa3423@gmail.com','1970-12-16 11:29:03','Evli')
insert into Musteriler values (23,'SEZEN G�LEN','AKK���K',65678096298,'90(505)155-81-48','KIZ','sgakkucuk21@gmail.com','2004-06-17 06:14:07','Bekar')
insert into Musteriler values (24,'TARIK','SAKALLI',63788062370,'90(530)873-97-44','ERKEK','stsakall91@gmail.com','1989-07-18 20:25:48','Evli')
insert into Musteriler values (25,'AYSEL','PAK��',19235964896,'90(530)552-63-42','KIZ','ayselll391@gmail.com','1970-05-15 04:22:42','Evli')
insert into Musteriler values (26,'I�IL','MAYDA',22699141734,'90(530)200-44-09','KIZ','�s�lm1@gmail.com','1995-03-15 19:34:20','Bekar')
insert into Musteriler values (27,'EYYUP','SABR� MOR',87937587194,'90(530)347-83-80','ERKEK','eyyp31@gmail.com','2008-03-06 11:32:25','Bekar')
insert into Musteriler values (28,'AL� RIZA','�AKAR',20649219250,'90(530)532-28-68','ERKEK','earcakar431@gmail.com','1994-07-18 08:52:42','Evli')
insert into Musteriler values (29,'G�RKEM','G�LSOY',25584182522,'90(530)100-55-31','ERKEK','eagrkg41@gmail.com','1994-08-23 09:37:59','Evli')
insert into Musteriler values (30,'BAHAR','G�K�E',31847532980,'90(530)413-92-28','KIZ','bgokce1@gmail.com','1976-08-17 02:45:38','Evli')
insert into Musteriler values (31,'AHMET B�LGEHAN','K���KDEM�RTA�',48647420768,'90(530)755-03-53','ERKEK','abkucuk58@gmail.com','1981-09-07 04:36:44','Evli')
insert into Musteriler values (32,'B�NNUR','EVKURAN',17188520114,'90(530)852-62-00','KIZ','b�nnur508@gmail.com','1996-03-27 13:51:40','Bekar')
insert into Musteriler values (33,'HA��E','KARAALP',13400527732,'90(530)119-64-05','KIZ','hacce8@gmail.com','2001-11-11 14:53:22','Bekar')
insert into Musteriler values (34,'M�RSEL�N','��MEN',57520503412,'90(540)693-50-83','ERKEK','mrsc9485@gmail.com','1970-02-13 03:53:44','Evli')
insert into Musteriler values (35,'OKTAY','AKKAN',66291303572,'90(540)739-49-00','ERKEK','moakkn893@gmail.com','1979-11-18 04:26:43','Evli')
insert into Musteriler values (36,'FATMANUR','PAMUK�UO�LU',99485026698,'90(540)713-72-07','KIZ','fatmannur32@gmail.com','1989-09-16 09:14:04','Bekar')
insert into Musteriler values (37,'ONUR SAL�H','�NAN�',78712253656,'90(540)288-41-37','ERKEK','unurs59@gmail.com','1970-06-14 01:17:31','Evli')
insert into Musteriler values (38,'RIFAT','ARDOR',85125392544,'90(540)303-48-72','ERKEK','urfat539@gmail.com','1987-04-24 16:03:03','Evli')
insert into Musteriler values (39,'�ZNUR','OLGA�',89058724496,'90(540)011-91-13','KIZ','oznuro23@gmail.com','1977-04-28 10:16:03','Evli')
insert into Musteriler values (40,'ECECAN','TANRIKULU',79411063966,'90(540)377-68-43','KIZ','etanr�k843@gmail.com','2006-11-10 06:35:17','Bekar')
insert into Musteriler values (41,'Z�BEYDE','SAYDAM',91075738370,'90(540)325-46-32','KIZ','zubeydes594@gmail.com','1997-08-04 03:53:18','Evli')
insert into Musteriler values (42,'HASRET','K�YL�O�LU',82398939742,'90(540)353-23-59','KIZ','hasretk4@gmail.com','1975-04-12 00:47:02','Evli')
insert into Musteriler values (43,'MUHAMMED RIZA','HAKYOL',33791127250,'90(540)603-82-77','ERKEK','mrhakyol23@gmail.com','1995-08-19 08:30:59','Evli')
insert into Musteriler values (44,'NEF�SE','ELMAA�A�',88043649226,'90(555)272-68-18','KIZ','nef�se433@gmail.com','1996-02-15 13:36:41','Bekar')
insert into Musteriler values (45,'MEHMET D�R�M','AKYILDIZ',19284809292,'90(555)441-82-64','ERKEK','mdaky�ldz3@gmail.com','1983-02-06 08:21:12','Evli')
insert into Musteriler values (46,'FIRAT','�NALDI',59214618310,'90(555)957-42-99','ERKEK','funald�930@gmail.com','1975-08-10 18:15:39','Evli')
insert into Musteriler values (47,'REFAETT�N','EK�NC�O�LU',95978393834,'90(555)412-02-45','ERKEK','rek�nc�20@gmail.com','1971-05-28 13:17:27','Evli')
insert into Musteriler values (48,'MARAL','B�Y�KKAL',79233174130,'90(555)181-00-07','KIZ','mrlbyk234@gmail.com','1990-10-21 00:01:31','Bekar')
insert into Musteriler values (49,'SEL�UK','TE��N',33891050212,'90(555)592-75-68','ERKEK','steg�n9004@gmail.com','1998-06-13 23:40:27','Evli')
insert into Musteriler values (50,'AZ�Z','KARAKI�LA',80772404282,'90(555)260-45-92','ERKEK','saz�z24@gmail.com','1978-07-18 22:33:32','Evli')
insert into Musteriler values (51,'�HSAN','PA�AO�LU',63577817846,'90(555)050-39-68','ERKEK','�hsanp457@gmail.com','1971-04-01 12:06:24','Evli')
insert into Musteriler values (52,'OKYAR','SA�IRKAYA',24379381546,'90(555)591-50-90','ERKEK','osag�rky02@gmail.com','1979-05-29 19:17:21','Bekar')
insert into Musteriler values (53,'VASF�YE','ARIKBO�A',24379381546,'90(555)504-55-90','KIZ','vasfiar563@gmail.com','1972-12-01 10:51:32','Evli')
insert into Musteriler values (54,'DERMAN','OKUDAN',96218766746,'90(539)697-88-98','ERKEK','dermn783@gmail.com','1975-05-14 10:09:59','Evli')
insert into Musteriler values (55,'HACI','�LKER',10407429298,'90(539)782-14-76','ERKEK','hac�ul4@gmail.com','1988-03-14 06:44:47','Evli')
insert into Musteriler values (56,'NEVAL','DA�LI',19800305444,'90(539)436-46-79','KIZ','nevald0344@gmail.com','1971-01-14 00:49:18','Bekar')
insert into Musteriler values (57,'F�SUN','CO�KUN',52887833936,'90(539)183-41-99','KIZ','nf�suncc3@gmail.com','1970-11-20 05:23:31','Bekar')
insert into Musteriler values (58,'FAT�H MEHMET','G�RPINAR',83162749178,'90(539)867-76-50','ERKEK','fathmg673@gmail.com','1989-05-18 23:40:10','Bekar')
insert into Musteriler values (59,'SALMANT','�AVU�',14723799158,'90(539)324-79-11','ERKEK','salmantc�483@gmail.com','2009-12-18 18:41:01','Bekar')
insert into Musteriler values (60,'USLU','APA',57229888100,'90(539)588-15-85','ERKEK','suslu678@gmail.com','1987-01-30 11:37:44','Evli')
insert into Musteriler values (61,'HAB�BE','OZAN',67365850268,'90(539)781-88-07','KIZ','hab�be328@gmail.com','1973-02-06 14:55:14','Evli')
insert into Musteriler values (62,'ARDA','GEN�',82474668566,'90(539)754-30-47','ERKEK','garda48@gmail.com','1992-02-03 15:09:29','Evli')
insert into Musteriler values (63,'NA�L','BOZDEM�R',74540710378,'90(539)621-63-20','ERKEK','na�le34@gmail.com','1999-05-18 08:04:07','Bekar')
insert into Musteriler values (64,'ANDA�','�EB�T',40271050694,'90(537)631-23-13','ERKEK','andacs43@gmail.com','1991-07-03 14:36:13','Bekar')
insert into Musteriler values (65,'MAHSUM','AYA�',94929983148,'90(537)656-63-07','ERKEK','mahsuma783@gmail.com','1993-05-09 01:35:53','Bekar')
insert into Musteriler values (66,'PER�HAN','ALTIN',85849176086,'90(537)731-90-14','KIZ','per�hanaa1@gmail.com','1973-09-16 00:45:02','Evli')
insert into Musteriler values (67,'�SMA�L','AYTEK',29848114670,'90(537)801-32-32','ERKEK','�sma�la02@gmail.com','1973-01-24 04:27:49','Evli')
insert into Musteriler values (68,'FER�T','�IVGIN',11449741348,'90(537)731-15-41','ERKEK','�fer�t2@gmail.com','1985-10-15 10:28:14','Evli')
insert into Musteriler values (69,'BUSE','B�LB�L',95883732308,'90(537)089-48-66','KIZ','busebb4@gmail.com','1972-07-05 05:53:38','Evli')
insert into Musteriler values (70,'AY�ENUR','DAYLAK',65303982736,'90(537)075-08-90','KIZ','aysenurd30@gmail.com','1996-03-31 22:38:42','Evli')
insert into Musteriler values (71,'�KRAM','G�LSEREN',42865153330,'90(537)020-25-31','KIZ','�kramg00@gmail.com','1977-09-22 17:38:28','Bekar')
insert into Musteriler values (72,'��KRAN','G�RM��',89501515206,'90(537)624-27-54','KIZ','sukrang100@gmail.com','1973-08-18 01:46:44','Bekar')
insert into Musteriler values (73,'VEHB�','KAYLAN',67170166936,'90(537)432-20-98','ERKEK','vehb�kyln2@gmail.com','1983-11-24 11:39:11','Evli')
insert into Musteriler values (74,'NUH','P�R�M',49120303530,'90(554)080-33-95','ERKEK','nuhprm58@gmail.com','1990-05-09 05:28:06','Evli')
insert into Musteriler values (75,'AY�E G�L','ANADOLU',49120303530,'90(554)289-84-43','KIZ','aysegula98@gmail.com','1993-08-04 18:49:05','Bekar')
insert into Musteriler values (76,'BAK�','H�KE',67465860754,'90(554)765-74-41','ERKEK','abak�83@gmail.com','1976-02-23 06:47:23','Evli')
insert into Musteriler values (77,'AYLA','G�KTA�',56045183260,'90(554)915-89-24','KIZ','aygokts73@gmail.com','1996-03-14 07:20:31','Bekar')
insert into Musteriler values (78,'D�LBER','�NVER',91118791614,'90(554)143-44-97','KIZ','ad�lber5@gmail.com','1982-05-18 07:26:17','Evli')
insert into Musteriler values (79,'MERJEN','SEV�ML�',94243723284,'90(554)775-21-90','KIZ','merjen42@gmail.com','1997-08-21 07:11:33','Bekar')
insert into Musteriler values (80,'SENAN','USLUBA�',21363580930,'90(554)566-91-81','ERKEK','senan92@gmail.com','1971-09-13 11:52:45','Evli')
insert into Musteriler values (81,'BARKIN','USLUBA�',87848663550,'90(554)979-99-39','ERKEK','bark�nu92@gmail.com','1993-12-10 14:14:58','Bekar')
insert into Musteriler values (82,'RU�EN','KA�IKCI',70532278352,'90(554)836-22-39','KIZ','rusen83@gmail.com','1988-02-20 11:52:14','Bekar')
insert into Musteriler values (83,'ES�N','BOLA�',57101835482,'90(554)042-13-30','KIZ','esinbo45@gmail.com','1984-11-06 07:28:41','Evli')
insert into Musteriler values (84,'CEMRE','SAKALLIO�LU',87134107584,'90(536)121-45-91','KIZ','ecemre75@gmail.com','1994-06-07 12:52:43','Bekar')
insert into Musteriler values (85,'BEDR�','BALCIO�LU',82601575712,'90(536)129-73-43','ERKEK','bedribb73@gmail.com','1994-05-11 06:57:01','Bekar')
insert into Musteriler values (86,'�ULE','ILGIN',13539515372,'90(536)504-99-21','KIZ','bsule�lh3@gmail.com','1980-10-12 13:13:17','Evli')
insert into Musteriler values (87,'ZEK�','BARAN',19673778536,'90(536)739-97-83','ERKEK','bzek�83@gmail.com','1984-11-02 23:16:42','Evli')
insert into Musteriler values (88,'BERF�N','�AKAR',64987433756,'90(536)053-54-44','KIZ','bberfin93@gmail.com','1990-11-18 03:47:51','Evli')
insert into Musteriler values (89,'SIDDIKA','ORTA',30489261340,'90(536)733-07-73','KIZ','bssdka09@gmail.com','1973-01-04 10:22:57','Bekar')
insert into Musteriler values (90,'LALE','BALIK',27132134632,'90(536)783-60-49','KIZ','llale85@gmail.com','2000-10-04 06:43:11','Bekar')





INSERT INTO Menu 
VALUES ('1', 45, 'Mant�', '100'); 
 
INSERT INTO Menu 
VALUES ('2',44, 'Hamburger,Patates,Kola', '175'); 

INSERT INTO Menu 
VALUES ('3', 43,'Ton Bal�kl� Sandvi�, Salata', '150'); 

INSERT INTO Menu 
VALUES ('4', 42,'Tavuklu Wrap', '200'); 
 
INSERT INTO Menu 
VALUES ('5',41, 'Biftekli Wrap', '220'); 

INSERT INTO Menu
VALUES ('6',40, 'Tavuklu Wrap,Makarna,Patates,Kola', '320'); 
 
INSERT INTO Menu
VALUES ('7', 39,'Biftekli Wrap,Makarna,Patates,Kola', '400'); 
 
INSERT INTO Menu
VALUES ('8',38, 'Milano Usul� Tagliatella', '150'); 
 
INSERT INTO Menu 
VALUES ('9',37, 'Spagetti Bolonez', '180'); 
 
INSERT INTO Menu
VALUES ('10',36, 'Viyana Usul� Tavuk �initzel', '250'); 

INSERT INTO Menu 
VALUES ('11',35, 'Tavuk K�lbast�', '180'); 
 
INSERT INTO Menu 
VALUES ('12',34, 'Izgara K�fte', '200'); 
 
INSERT INTO Menu
VALUES ('13', 33,'Viyana Usul� Et �initzel', '300'); 
 
INSERT INTO Menu
VALUES ('14', 32,'Kar���k Izgara Taba��', '450'); 
 
INSERT INTO Menu 
VALUES ('15', 31,'Dana Bonfile', '300'); 
 
INSERT INTO Menu 
VALUES ('16', 30,'Izgara Somon', '320'); 

INSERT INTO Menu 
VALUES ('17', 29,'Mevsim Bal���', '400'); 

INSERT INTO Menu 
VALUES ('18', 28,'Zeytinya�l� Taba��', '200'); 

INSERT INTO Menu 
VALUES ('19',27, 'Izgara Dana Bonfile', '375'); 

INSERT INTO Menu 
VALUES ('20', 26,'G�n�n �orbas�', '50'); 

INSERT INTO Menu 
VALUES ('21',25 ,'G�n�n Mezesi', '65'); 

INSERT INTO Menu 
VALUES ('22', 24,'Patates Tava', '35'); 

INSERT INTO Menu 
VALUES ('23',23, 'Kuzu Yaprak Ci�er', '135'); 

INSERT INTO Menu 
VALUES ('24',22, 'S�ryani Usul� ��li K�fte', '75'); 

INSERT INTO Menu 
VALUES ('25',21, 'Paneli ��t�r Tavuk', '125'); 

INSERT INTO Menu 
VALUES ('26', 20,'Serpme Meze Taba�', '220'); 

INSERT INTO Menu 
VALUES ('27',19, 'S���� Taba���', '55'); 

INSERT INTO Menu 
VALUES ('28', 18,'�oban Salata', '65'); 

INSERT INTO Menu 
VALUES ('29', 17,'Gavurda�� Salata', '85'); 

INSERT INTO Menu 
VALUES ('30',16, 'Bonfile Salata', '165'); 

INSERT INTO Menu 
VALUES ('31',15, 'Venn Burger', '135');

INSERT INTO Menu 
VALUES ('32',14, 'Kaburga Burger', '150');

INSERT INTO Menu 
VALUES ('33', 13,'Mini Burger', '90');

INSERT INTO Menu
VALUES ('34',12, 'Tavuk Kanat', '135');

INSERT INTO Menu 
VALUES ('35',11, 'Tavuk ��kertme', '150');

INSERT INTO Menu
VALUES ('36', 10,'Tavuklu Noodle', '150');

INSERT INTO Menu 
VALUES ('37', 9,'Tavuk K�lbast�', '155');

INSERT INTO Menu 
VALUES ('38',8, 'Venn Kasap K�fte', '140');

INSERT INTO Menu 
VALUES ('39', 7,'Adana Kebap', '145');

INSERT INTO Menu 
VALUES ('40', 6,'Adana Yo�urtlu', '165');

INSERT INTO Menu
VALUES ('41', 5,'Urfa Kebap', '145');

INSERT INTO Menu 
VALUES ('42', 4,'Beyti Kebap', '160');

INSERT INTO Menu 
VALUES ('43',3, 'Kuzu ��p �i�', '220');

INSERT INTO Menu
VALUES ('44', 2,'Ali Nazik', '230');

INSERT INTO Menu
VALUES ('45', 1,'Kuzu K�lbast�', '230');

INSERT INTO Menu 
VALUES ('46',90 ,'Kuzu Kafes', '650');

INSERT INTO Menu 
VALUES ('47', 89,'Dana �adra', '225');

INSERT INTO Menu 
VALUES ('48', 87,'Dana Lokum', '235');

INSERT INTO Menu 
VALUES ('49', 86,'Dana Bonfile:', '240');

INSERT INTO Menu 
VALUES ('50', 85,'Bonfile ��kertme', '215');

INSERT INTO Menu 
VALUES ('51', 84,'Ac�l� Venn Tava', '215');

INSERT INTO Menu 
VALUES ('52', 83,'Etli Noodle Tava ', '220');

INSERT INTO Menu 
VALUES ('53', 82,'Newyork Steak ', ' 315');

INSERT INTO Menu 
VALUES ('54', 81,'Ottaman Steak ', '370');

INSERT INTO Menu 
VALUES ('55', 80,'Kabak Tatl�s� ', '80');

INSERT INTO Menu 
VALUES ('56', 79,'Cevizli Burma ', '80');

INSERT INTO Menu 
VALUES ('57', 78,'Trile�e ', '85');

INSERT INTO Menu
VALUES ('58', 77,'Sebastian ', '85');

INSERT INTO Menu
VALUES ('59', 76,'Meyve Taba�� ', '85');

INSERT INTO Menu 
VALUES ('60', 75,'Dondurma Cup ', '80');

INSERT INTO Menu 
VALUES ('61', 74,'Kahvalt� Taba�� ', '175');

INSERT INTO Menu 
VALUES ('62', 73,'T�rk Kahvalt�s� ', '200');

INSERT INTO Menu 
VALUES ('63',72, 'Sade Omlet ', '80');

INSERT INTO Menu 
VALUES ('64', 71,'Peynirli Omlet ', '100');

INSERT INTO Menu
VALUES ('65', 70,'Vejeteryan Omlet', '100');

INSERT INTO Menu 
VALUES ('66', 69,'Kar���k Omlet ', '100');

INSERT INTO Menu 
VALUES ('67', 68,'Izgara Hellim Taba��', '120');

INSERT INTO Menu 
VALUES ('68', 67,'Kuymak ', '80');

INSERT INTO Menu 
VALUES ('69', 66,'Anne Pi�isi ', '85');

INSERT INTO Menu 
VALUES ('70', 64,'Sahanda Yumurta', '45');

INSERT INTO Menu 
VALUES ('71', 63,'Demleme �ay', '15');

INSERT INTO Menu 
VALUES ('72', 62,'T�rk Kahvesi', '30');

INSERT INTO Menu 
VALUES ('73', 61,'Espresso', '35');

INSERT INTO Menu 
VALUES ('74', 60,'Cafe Latte', '45');

INSERT INTO Menu 
VALUES ('75',59, 'Cappuccino', '45');

INSERT INTO Menu
VALUES ('76', 58,'Mocha', '50');

INSERT INTO Menu 
VALUES ('77', 57,'S�cak �ikolata', '50');

INSERT INTO Menu 
VALUES ('78', 56,'Ihlamur', '45');

INSERT INTO Menu 
VALUES ('79',55, 'Ku�burnu', '45');

INSERT INTO Menu 
VALUES ('80',54, 'Nane Limon', '45');

INSERT INTO Menu 
VALUES ('81', 53,'Coca Cola', '30');

INSERT INTO Menu 
VALUES ('82', 52,'Fanta', '30');

INSERT INTO Menu 
VALUES ('83', 51,'Schweppes', '33');

INSERT INTO Menu 
VALUES ('84', 50,'Meyveli Soda', '22');

INSERT INTO Menu 
VALUES ('85', 49,'Su', '25');

INSERT INTO Menu
VALUES ('86', 48,'Ayran', '20');

INSERT INTO Menu 
VALUES ('87', 47,'Red Bull', '50');

INSERT INTO Menu 
VALUES ('88', 46,'Ev Yap�m� Limonata', '45');

INSERT INTO Menu 
VALUES ('89', 45,'S�kma Portakal', '45');

INSERT INTO Menu 
VALUES ('90', 44,'Milkshake', '50');
insert into Ara�Gere�values(1,'Elektrikli s�p�rge',null),(2,'Kova','Bula��k Bezi'),(3,'Toz f�r�as�',null),(4,'��p torbas�','Bula��kl�k'),(5,'Mikrofiber bezler','Bula��k deterjan�'),(6,'Paspas',null),(7,'K���t havlu',null),(8,'Temizlik f�r�as�','Bula��k F�r�as�'),(9,'Temizlik s�ngeri (sadece mutfak i�in)','Bula��k S�ngeri'),(10,'Portatif merdiven (gerekiyorsa)',null),(11,'Tuvalet f�r�as�',null),(12,'�ok ama�l� y�zey temizleyici','Bula��k Le�eni'),(13,'�ok ama�l� y�zey dezenfektan�','Ya� ��z�c�'),(14,'Cam temizleyici','Bula��k makinesi parlat�c�'),(15,'�ama��r leke ��kar�c�',null),(16,'Bula��k deterjan�','S�nger'),(17,'Hal� temizleyici (gerekiyorsa)',null),(18,'Zemin temizleyici',null),(19,'Mobilya/ah�ap cilas�',null),(20,'F�r�n temizleyici (yaln�zca mutfak)',null),(21,'F�r�n i�in ya� s�k�c� (yaln�zca mutfak)',null),(22,'K�f temizleyici (gerekiyorsa)',null),(23,'K���t havlu','Mutfak Bezi'),(24,'�ok ama�l� y�zey temizleyici',null),(25,'Dezenfektan mendil veya sprey',null),(26,'Antibakteriyel el dezenfektan�',null),(27,'Fazladan el sabunu',null),(28,'Galo� (iste�e ba�l�)','Bula��k Eldiveni');



insert into Kategorilervalues(1,'��ecekler'),(2,'Et/Tavuk �r�nleri'),(3, '�e�niler'),(4,'Tatl�lar'),(5,'S�t �r�nleri'),(6,'Tah�l �r�nleri'),(7,'El yap�m� �r�nler'),(8,'Deniz �r�nleri');






