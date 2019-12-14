create database EmlakJetProject
GO 
use EmlakJetProject
GO
CREATE TABLE City_Table(
	CityID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	CityName nvarchar(50) NOT NULL)
GO
CREATE TABLE Distinct_Table(
	DistinctID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	DistinctName nvarchar(50) NOT NULL,
	CityID int FOREIGN KEY(CityID) REFERENCES City_Table (CityID) NOT NULL)
GO
CREATE TABLE Neighborhood_Table(
	NeighborhoodID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	NeighborhoodName nvarchar(50) NOT NULL,
	DistinctID int FOREIGN KEY(DistinctID)REFERENCES Distinct_Table (DistinctID) NOT NULL)
GO
CREATE TABLE Bath_Total_Type(
	BathID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	BathName nvarchar(50) NOT NULL)
GO
CREATE TABLE COMPANY_TABLE(
	CompanyID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	CompanyName nvarchar(100) NOT NULL,
	CompanyPhone bigint NOT NULL,
	CompanyDescription text NOT NULL,
	CompanyAdress nvarchar(100) NOT NULL,
	CompanyWebsite nvarchar(100) NOT NULL,
	CityID int FOREIGN KEY(CityID) REFERENCES City_Table (CityID) NOT NULL,
	DistrictID int FOREIGN KEY(DistrictID)REFERENCES Distinct_Table (DistinctID) NOT NULL,
	NeighborhoodID int FOREIGN KEY(NeighborhoodID) REFERENCES Neighborhood_Table (NeighborhoodID) NOT NULL) 
GO
CREATE TABLE Project_Table(
	ProjectID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	CompanyID int FOREIGN KEY(CompanyID) REFERENCES COMPANY_TABLE (CompanyID) NOT NULL,
	MinPrice money NOT NULL,
	MaxPrice money NOT NULL,
	CityID int FOREIGN KEY(CityID) REFERENCES City_Table (CityID) NOT NULL,
	DistrictID int FOREIGN KEY(DistrictID)REFERENCES Distinct_Table (DistinctID) NOT NULL,
	NeighborhoodID int FOREIGN KEY(NeighborhoodID) REFERENCES Neighborhood_Table (NeighborhoodID) NOT NULL,
	ProjectDeliveryDate date NOT NULL,
	ProjectAdvertising text NOT NULL,
	ProjectDescription text NOT NULL,
	ProjectTitle nvarchar(50) not null,
	ProjectWebSite nvarchar(100) NOT NULL,
	ProjectPhone bigint NOT NULL)
GO
CREATE TABLE InformationForm_Table(
	InformationID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	CustomerFullName nvarchar(100) NOT NULL,
	CustomerPhone bigint NOT NULL,
	CustomerEmail nvarchar(100) NOT NULL,
	CompanyID int FOREIGN KEY(CompanyID) REFERENCES COMPANY_TABLE (CompanyID) NOT NULL,
	ProjectID int FOREIGN KEY(ProjectID) REFERENCES Project_Table (ProjectID) NULL)
GO
CREATE TABLE Property_Table(
	PropertyID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	PropertyName nvarchar(100) NULL)
GO
CREATE TABLE Property_Project_Table(
	ProID int IDENTITY(1,1) NOT NULL,
	ProjectID int FOREIGN KEY(ProjectID) REFERENCES Project_Table (ProjectID) NOT NULL,
	PropertyID int FOREIGN KEY(PropertyID) REFERENCES Property_Table (PropertyID) NOT NULL)
GO
CREATE TABLE Advert_Type_Table(
	AdvertTypeID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	AdvertTypeName nvarchar(100) NOT NULL)
GO
CREATE TABLE Advert_Category_Table(
	AdvertCategoryID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	AdvertCategoryName nvarchar(100) NOT NULL)
GO
CREATE TABLE Advert_Estate_Table(
	AdvertEstateID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	AdvertEstateName nvarchar(100) NOT NULL)
GO
CREATE TABLE Floor_Type_Table(
	FloorID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	FloorName nvarchar(50) NOT NULL)
GO
CREATE TABLE Heater_Type_Table(
	HeaterID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	HeaterName nvarchar(50) NOT NULL)
GO
CREATE TABLE Room_Type_Table(
	RoomID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	RoomType nvarchar(10) NOT NULL)
GO
CREATE TABLE Build_Age_Table(
	BuildAgeID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	AgeType nvarchar(20) NOT NULL)
GO
CREATE TABLE Ware_Type_Table(
	WareID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	WareType nvarchar(50) NOT NULL)
GO
CREATE TABLE IsHomeFull_Table(
	HomeFullID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	HomeSituation nvarchar(50) NOT NULL)
GO
CREATE TABLE Investment_Type_Table(
	InvestmentID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	InvestmentName nvarchar(50) NOT NULL)
GO
CREATE TABLE ConstructionState_Table(
	ConstructionStateID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	ConstructionState nvarchar(50) NOT NULL)
GO
CREATE TABLE Credit_Type_Table(
	CreditID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	CreditName nvarchar(50) NOT NULL)
GO
CREATE TABLE ConstructionType_Table(
	ConstructionTypeID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	ConstructionType nvarchar(50) NOT NULL)
GO
CREATE TABLE TradeState_Table(
	TradeStateID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	TradeState nvarchar(50) NOT NULL)
GO
CREATE TABLE Kitchen_Type_Table(
	KitchenID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	KitchenType nvarchar(50) NOT NULL)
GO
CREATE TABLE Decoration_Type_Table(
	DecorationID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	DecorationType nvarchar(50) NOT NULL)
GO
CREATE TABLE Bath_Type_Table(
	BathID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	BathType nvarchar(50) NOT NULL)
GO
CREATE TABLE Balcony_Type_Table(
	BalconyID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	BalconyType nvarchar(50) NOT NULL)
GO
CREATE TABLE Infrastructure_Type_Table(
	InfrastructureID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	InfrastructureType nvarchar(50) NOT NULL)
GO
CREATE TABLE SocialArea_Type_Table(
	SocialAreaID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	SocialAreaType nvarchar(50) NOT NULL)
GO
CREATE TABLE BuildProp_Type_Table(
	BuildPropID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	BuildPropType nvarchar(50) NOT NULL)
GO
CREATE TABLE Side_Type_Table(
	SideID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	SideType nvarchar(50) NOT NULL)
GO
CREATE TABLE Transportation_Type_Table(
	TransportationID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	TransportationType nvarchar(50) NOT NULL)
GO
CREATE TABLE View_Type_Table(
	ViewID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	ViewType nvarchar(50) NOT NULL)
GO
CREATE TABLE Money_Type_Table(
	MoneyID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	MoneyName nvarchar(50) NOT NULL)
GO
CREATE TABLE BringToFront_Table(
	BringToFrontID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	BringToFrontName nvarchar(50) NOT NULL,
	BringToFrontMoney money NOT NULL)
GO
CREATE TABLE BringToMainPage_Table(
	BringToMainPageID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	BringToMainPageName nvarchar(50) NOT NULL,
	BringToMainPageMoney money NOT NULL)

GO
CREATE TABLE WC_Total_Table(
	WcID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	WcTotal nvarchar(5) NOT NULL)
GO
CREATE TABLE Advert_Table(
	AdvertID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	AdvertCreatedDate datetime NULL,
	AdvertUpdatedDate datetime NULL,
	AdvertTypeID int FOREIGN KEY(AdvertTypeID) REFERENCES Advert_Type_Table (AdvertTypeID)   NOT NULL,
	AdvertCategoryID int FOREIGN KEY(AdvertCategoryID) REFERENCES Advert_Category_Table (AdvertCategoryID)  NOT NULL,
	AdvertEstateID int FOREIGN KEY(AdvertEstateID) REFERENCES Advert_Estate_Table (AdvertEstateID) NOT NULL,
	AdvertNetSquareMeter int NOT NULL,
	AdvertArea int NOT NULL,
	ConstructionTypeID int FOREIGN KEY(ConstructionTypeID) REFERENCES ConstructionType_Table (ConstructionTypeID) NOT NULL,
	TradeID int FOREIGN KEY(TradeID) REFERENCES TradeState_Table (TradeStateID) NULL,
	HomeSituationID int FOREIGN KEY(HomeSituationID) REFERENCES IsHomeFull_Table (HomeFullID) NOT NULL,
	ConstructionStateID int  FOREIGN KEY(ConstructionStateID) REFERENCES ConstructionState_Table (ConstructionStateID) NULL,
	SaloonSquareMeter int NULL,
	TotalRoomNumberID int  FOREIGN KEY(TotalRoomNumberID) REFERENCES Room_Type_Table (RoomID) NOT NULL,
	BuildAgeID int  FOREIGN KEY(BuildAgeID) REFERENCES Build_Age_Table (BuildAgeID) NOT NULL,
	FloorHomeID int FOREIGN KEY(FloorHomeID) REFERENCES Floor_Type_Table (FloorID) NOT NULL,
	TotalFloor int NOT NULL,
	HeaterID int FOREIGN KEY(HeaterID) REFERENCES Heater_Type_Table (HeaterID) NOT NULL,
	Due money NULL,
	Deposit money NULL,
	TotalBathID int  FOREIGN KEY(TotalBathID) REFERENCES Bath_Total_Type (BathID) NOT NULL,
	AdvertTitle nvarchar(100) NOT NULL,
	AdvertDescription text NOT NULL,
	AdvertAddress nvarchar(100) NOT NULL,
	Photo image NOT NULL,
	Price money NOT NULL,
	MoneyTypeID int FOREIGN KEY(MoneyTypeID) REFERENCES Money_Type_Table (MoneyID) NOT NULL,
	RentIncome int NULL,
	CreditSituationID int FOREIGN KEY(CreditSituationID) REFERENCES Credit_Type_Table (CreditID) NOT NULL,
	TotalWCID int FOREIGN KEY(TotalWCID) REFERENCES WC_Total_Table (WcID) NOT NULL,
	WareSituationID int FOREIGN KEY(WareSituationID) REFERENCES Ware_Type_Table (WareID) NOT NULL,
	InvestmentSituationID int FOREIGN KEY(InvestmentSituationID) REFERENCES Investment_Type_Table (InvestmentID) NOT NULL,
	CityID int FOREIGN KEY(CityID) REFERENCES City_Table (CityID) NOT NULL,
	DistinctID int FOREIGN KEY(DistinctID)REFERENCES Distinct_Table (DistinctID) NOT NULL,
	NeighborhoodID int FOREIGN KEY(NeighborhoodID) REFERENCES Neighborhood_Table (NeighborhoodID) NOT NULL,
	InSites bit NOT NULL,
	SitesName nvarchar(50) NULL,
	AdvertNote text NULL,
	BringToFrontID int FOREIGN KEY(BringToFrontID) REFERENCES BringToFront_Table (BringToFrontID) NULL,
	BringToMainPageID int FOREIGN KEY(BringToMainPageID) REFERENCES BringToMainPage_Table (BringToMainPageID) NULL,
	InActive bit not null)

	GO
	CREATE TABLE Balcony_Advert_Table(
	BalcAdvertID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	BalconyID int FOREIGN KEY(BalconyID) REFERENCES Balcony_Type_Table (BalconyID) NOT NULL,
	AdvertID int FOREIGN KEY(AdvertID) REFERENCES Advert_Table (AdvertID) NOT NULL)
	GO
	CREATE TABLE Infrastructure_Advert_Table(
	InfraAdvertID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	InfrastructureID int FOREIGN KEY(InfrastructureID) REFERENCES Infrastructure_Type_Table (InfrastructureID) NOT NULL,
	AdvertID int FOREIGN KEY(AdvertID) REFERENCES Advert_Table (AdvertID) NOT NULL)
	GO
	CREATE TABLE Kitchen_Advert_Table(
	KitchenAdvertID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	KitchenID int FOREIGN KEY(KitchenID) REFERENCES Kitchen_Type_Table (KitchenID) NOT NULL,
	AdvertID int FOREIGN KEY(AdvertID) REFERENCES Advert_Table (AdvertID) NOT NULL)
	GO
CREATE TABLE Decoration_Advert_Table(
	DecoAdvertID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	DecorationID int FOREIGN KEY(DecorationID) REFERENCES Decoration_Type_Table (DecorationID) NOT NULL,
	AdvertID int FOREIGN KEY(AdvertID) REFERENCES Advert_Table (AdvertID) NOT NULL)
	GO
	CREATE TABLE Bath_Advert_Table(
	BathAdvertID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	BathID int FOREIGN KEY(BathID) REFERENCES Bath_Type_Table (BathID) NOT NULL,
	AdvertID int FOREIGN KEY(AdvertID) REFERENCES Advert_Table (AdvertID) NOT NULL)
	GO
	CREATE TABLE BuildProp_Advert_Table(
	BuildAdvertID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	BuildPropID int FOREIGN KEY(BuildPropID) REFERENCES BuildProp_Type_Table (BuildPropID) NOT NULL,
	AdvertID int FOREIGN KEY(AdvertID) REFERENCES Advert_Table (AdvertID) NOT NULL)
	GO
	CREATE TABLE Side_Advert_Table(
	SideAdvertID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	SideID int FOREIGN KEY(SideID) REFERENCES Side_Type_Table (SideID) NOT NULL,
	AdvertID int FOREIGN KEY(AdvertID) REFERENCES Advert_Table (AdvertID) NOT NULL)
	GO
	CREATE TABLE SocialArea_Advert_Table(
	SocialAdvertID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	SocialAreaID int FOREIGN KEY(SocialAreaID) REFERENCES SocialArea_Type_Table (SocialAreaID) NOT NULL,
	AdvertID int FOREIGN KEY(AdvertID) REFERENCES Advert_Table (AdvertID) NOT NULL)
	GO
	CREATE TABLE Transportation_Advert_Table(
	TransportationAdvertID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	TransportationID int FOREIGN KEY(TransportationID) REFERENCES Transportation_Type_Table (TransportationID) NOT NULL,
	AdvertID int FOREIGN KEY(AdvertID) REFERENCES Advert_Table (AdvertID) NOT NULL)
	GO
	CREATE TABLE View_Advert_Table(
	ViewAdvertID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	ViewID int FOREIGN KEY(ViewID) REFERENCES View_Type_Table (ViewID) NOT NULL,
	AdvertID int FOREIGN KEY(AdvertID) REFERENCES Advert_Table (AdvertID) NOT NULL)
	GO
	CREATE TABLE Photos_Table(
	PhotoID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Photo image NOT NULL,
	ProjectID int  FOREIGN KEY(ProjectID) REFERENCES Project_Table (ProjectID) NULL,
	AdvertID int FOREIGN KEY(AdvertID) REFERENCES Advert_Table (AdvertID) NULL)
	GO
	CREATE TABLE Register_Corporate_Table(
	CorporateID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	CorporateName nvarchar(100) NOT NULL,
	ContactFullName nvarchar(100) NOT NULL,
	CorporateMobilePhone bigint NOT NULL,
	CorporateMail nvarchar(100) NOT NULL,
	CorporatePassword nvarchar(20) NOT NULL,
	Veritify bit NOT NULL,
	IsAgent bit NOT NULL,
	CityID int NULL,
	NeighborhoodID int NULL,
	DistrictID int NULL,
	CorporatePhone nvarchar(100) NULL,
	CorporateBirthdate date NULL,
	CorporateGender char(5) NULL,
	CorporateAddress nvarchar(100) NULL,
	PhotoID int  FOREIGN KEY(PhotoID) REFERENCES Photos_Table (PhotoID) NULL,
	AdvertID int FOREIGN KEY(AdvertID) REFERENCES Advert_Table (AdvertID) NULL)
	GO
	CREATE TABLE Register_Personal_Table(
	PersonalID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	PersonalFullName nvarchar(100) NOT NULL,
	PersonalMobilePhone bigint NOT NULL,
	PersonalMail nvarchar(100) NOT NULL,
	PersonalPassword nvarchar(12) NOT NULL,
	Veritify bit NOT NULL,
	CityID int NULL,
	NeighborhoodID int NULL,
	DistrictID int NULL,
	PersonalPhone bigint NULL,
	PersonalBirthdate date NULL,
	PersonalGender char(5) NULL,
	PersonelAddress nvarchar(100) NULL,
	PhotoID int FOREIGN KEY(PhotoID) REFERENCES Photos_Table (PhotoID) NULL,
	AdvertID int FOREIGN KEY(AdvertID) REFERENCES Advert_Table (AdvertID) NULL)
	GO
	
CREATE TABLE Message_Table(
	MessageID int IDENTITY(1,1) NOT NULL,
	ReceiverID int FOREIGN KEY(ReceiverID)REFERENCES Register_Corporate_Table (CorporateID),FOREIGN KEY(ReceiverID)
REFERENCES Register_Personal_Table (PersonalID),
	MessageText text NOT NULL)
	go
	CREATE TABLE Estate_News_Table(
	NewsID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	NewsTitle nvarchar(50) NOT NULL,
	PhotoID int FOREIGN KEY(PhotoID) REFERENCES Photos_Table (PhotoID) NOT NULL,
	NewsDate datetime NULL,
	NewsText text NULL,
	NewsTopic nvarchar(100) NULL)
	GO
ALTER TABLE Register_Personal_Table  WITH CHECK ADD  CONSTRAINT CK_Age_Control CHECK  ((datediff(year,PersonalBirthDate,getdate())>=(18)))
GO
ALTER TABLE Register_Personal_Table CHECK CONSTRAINT CK_Age_Control
GO
ALTER TABLE Register_Personal_Table  WITH CHECK ADD  CONSTRAINT CK_Email_Check CHECK  ((PersonalMail like '%@%' AND PersonalMail like '%.com'))
GO
ALTER TABLE Register_Personal_Table CHECK CONSTRAINT CK_Email_Check
GO
ALTER TABLE Register_Personal_Table  WITH CHECK ADD  CONSTRAINT CK_Gender_Check CHECK  ((PersonalGender='Kadin' OR PersonalGender='Erkek'))
GO
ALTER TABLE Register_Personal_Table CHECK CONSTRAINT CK_Gender_Check
GO
ALTER TABLE Register_Personal_Table  WITH CHECK ADD  CONSTRAINT CK_Password CHECK  ((PersonalPassword like '%0-9%'))
GO
ALTER TABLE Register_Personal_Table CHECK CONSTRAINT CK_Password
GO
ALTER TABLE Register_Personal_Table  WITH CHECK ADD  CONSTRAINT CK_Phone_Len_Control CHECK  ((len(PersonalMobilePhone)=(10)))
GO
ALTER TABLE Register_Personal_Table CHECK CONSTRAINT CK_Phone_Len_Control
GO
ALTER TABLE Advert_Table ADD  CONSTRAINT DF_Advert_Table_AdvertCreatedDate  DEFAULT (getdate()) FOR AdvertCreatedDate
GO
ALTER TABLE Advert_Table ADD  CONSTRAINT DF_Advert_Table_Deposit  DEFAULT ((0)) FOR Deposit
GO
ALTER TABLE Advert_Table ADD  CONSTRAINT DF_Advert_Table_Due  DEFAULT ((0)) FOR Due
GO
ALTER TABLE Advert_Table ADD  CONSTRAINT DF_Advert_Table_RentIncome  DEFAULT ((1)) FOR RentIncome
GO
ALTER TABLE Advert_Table ADD  CONSTRAINT DF_Advert_Table_SaloonSquareMeter  DEFAULT ((0)) FOR SaloonSquareMeter
GO
ALTER TABLE Advert_Table ADD  CONSTRAINT DF_Advert_Active  DEFAULT ((1)) FOR InActive
go

INSERT   Heater_Type_Table  (HeaterName) 
VALUES ('Doðalgaz Sobalý')
,('Güneþ Enerjisi')
,('Merkezi Doðalgaz')
,('Sobalý')
,('Yerden Isýtma')

go

INSERT   Infrastructure_Type_Table  (InfrastructureType ) 
VALUES ('ADSL')
,('Fiber')
,('Intercom')
,('KabloTV-Uydu')
,('Wi-Fi')

go

INSERT   Investment_Type_Table  (InvestmentName ) 
VALUES ('Bilinmiyor')
,('Yatýrýma Uygun')
,('Yatýrýma Uygun Deðil')

go

INSERT   IsHomeFull_Table  (HomeSituation ) 
VALUES ('Boþ')
,('Kiracý Oturuyor')
,('Mal Sahibi Oturuyor')

go

INSERT   Kitchen_Type_Table 
VALUES ('Amerikan Mutfak')
,('Ankastre Mutfak')
,('Bulaþýk Makinesi')
,('Dolaplý Mutfak')
,('Fýrýn')
,('Hazýr Mutfak')
,('Ýtalyan Mutfak')
,('Kiler')
,('Setüstü Ocak')
,('Mutfak Mobilyasý')

go

INSERT   Money_Type_Table 
VALUES ('TRY')
,('USD')
,('EUR')
,('GBP')

go

INSERT   Photos_Table  (Photo ,  ProjectID ,  AdvertID ) 
VALUES (0x696E6469722E6A7067, NULL, NULL)

go

INSERT   Property_Table  (PropertyName ) 
VALUES ('24 Saat Güvenlik')
,('Sauna')
,('Jeneratör')
,('Açýk Otopark')
,('Buhar Odasý')
,('Çoçuk Oyun Alaný')
,('Basketbol Sahasý')
,('Voleybol Sahasý')
,('Açýk Yüzme Havuzu')
,('Fitness Salonu')

go

INSERT   Room_Type_Table  (RoomType ) 
VALUES ('Stüdyo')
,('1')
,('1+1')
,('2+1')
,('2+2')
,('3+1')
,('3+2')
,('4+1')
,('5+1')
,('8+')

go

INSERT   Side_Type_Table  (SideType ) 
VALUES ('Batý Cepheli')
,('Doðu Cepheli')
,('Güney Cepheli')
,('Kuzey Cepheli')

go

INSERT   SocialArea_Type_Table  (SocialAreaType ) 
VALUES ('Açýk Havuz')
,('Açýk Otopark')
,('Bahçe')
,('Çoçuk Parký')
,('Fitness')
,('Futbol Sahasý')
,('Tenis Kortu')
,('Yürüyüþ Parkuru')
,('Engelliye Uygun')
,('Kapalý Havuz')

go

INSERT   TradeState_Table  (TradeState ) 
VALUES ('Var')
,('Yok')

go

INSERT   Transportation_Type_Table  (TransportationType ) 
VALUES ('Caddeye Yakýn')
,('Denize Sýfýr')
,('Otoban')
,('Metro')
,('Metrobüs')
,('Tramvay')

go

INSERT   View_Type_Table  (ViewType ) 
VALUES ('Deniz Manzarali')
,('Göl Manzarali')
,('Þehir Manzarali')
,('Yeþil Alan Manzarali')

go

INSERT   Ware_Type_Table  (WareType ) 
VALUES ('Boþ')
,('Eþyalý')

go

INSERT   WC_Total_Table  (WcTotal ) VALUES ('Yok')
,('1')
,('2')
,('3')
,('4')
,('5')
,('6+')

go

INSERT   Advert_Type_Table   VALUES ( 'Satýlýk')
, ( 'Kiralýk'), ( 'Günlük Kiralýk'), ( 'Devren'), ( 'Kat Karþýlýðý'), ( 'Satilik')
,( 'Kiralik'), ( 'Günlük Kiralik'), ( 'Devren'), ( 'Kat Karsiligi')
go

INSERT   Balcony_Type_Table  VALUES ( 'Açýk Balkon'), ( 'Açýk Teras'),( 'Barbekü'),( 'Fransýz Balkon'),( 'Kapalý Balkon')
go

INSERT   Bath_Total_Type  VALUES ( 'Yok'), ( '1'), ( '2'), ( '3'), ( '4'), ( '5'),( '6+')
GO

INSERT   Bath_Type_Table  VALUES ( 'Çamaþýr Makinesi'), ( 'Duþakabinli'), ( 'EbeveynBanyo'), ( 'Jakuzi'), ( 'Küvet'), ( 'Þofben')
go
INSERT   BringToFront_Table   VALUES ( 'TekliVitrinPaketi', 199.0000), ( '5 Al 4 Öde', 796.0000) ,( '10 Al 7 Öde', 1393.0000)
 ,( '20 Al 12 Öde', 2388.0000), ( '50 al 25 Öde', 4975.0000)
 go

INSERT   BringToMainPage_Table   VALUES ( 'Tekli Vitrin Paketi', 149.0000) ,( '5 Al 4 Öde', 597.0000)
 ,( '10 Al 7 Öde', 1045.0000) ,( '20 Al 12 Öde', 1791.0000), ( '50 Al 25 Öde', 3731.0000)
 go

INSERT   Build_Age_Table  VALUES ( '0(Yeni)'),('1'), ( '2'), ( '3'), ( '4'), ( '5-10'), ( '11-20'), ( '20 ve Üzeri')
go
INSERT   BuildProp_Type_Table   VALUES ( 'Ahþap Doðrama'),
 ( 'Asansör'),( 'Apartman Görevlisi'), ('Bahçe-Müstakil'),( 'Görüntülü Diafon'),
 ( 'Güvenlik'), ( 'Isý Yalýtýmý'),( 'Su Deposu'), ( 'Yangýn Alarmý')
 go

INSERT   City_Table   VALUES ( 'Ýstanbul'),
 ('Ankara'), ( 'Ýzmir'), ( 'Çanakkale'),( 'Eskiþehir')
 go

INSERT   Distinct_Table   VALUES ( 'Bakýrköy', 1)
, ( 'Ümraniye', 1),( 'Kadýköy', 1), ( 'Altýndað', 2), ( 'Elmadað', 2)
, ( 'Sincan', 2),( 'Çeþme', 3), ( 'Bergama', 3), ( 'Bornova', 3), ('Merkez', 4)
,('Lapseki', 4), ( 'Bozcaada', 4),( 'Mahmudiye', 5),( 'Han', 5) ,('Sarýcakaya', 5)
go

INSERT   Neighborhood_Table  (NeighborhoodName ,  DistinctID ) 
VALUES ('Yeþilköy', 1)
,('Cevizlik', 1)
,('Necip Fazýl', 2)
,('Çakmak', 2)
,('Bostancý', 3)
,('Fenerbahçe', 3)
,('Alemdað', 4)
,('Alpaslan', 4)
,('Lalabel', 6)
,('Yenice', 6)
,('Atatürk', 7)
,('Çiçektepe', 7)
,('Dalyan', 8)
,('Germiyan', 8)
,('Katrancý', 9)
,('Hisarköy', 9)
,('Beþyol', 10)
,('Kayadibi', 10)
,('Barbaros', 11)
,('Cumhuriyet', 11)
,('Alaybey', 13)
,('Cumhuriyet', 13)
,('Dalyan', 12)
,('Tekke', 12)
,('Güllüce', 14)
,('Doðanca', 14)
,('Erten', 15)
,('Kayý', 15)


go

INSERT   ConstructionState_Table   VALUES ( 'Sýfýr'),( 'Ýkinci El'), ( 'Yapým Aþamasýnda')
go

INSERT   ConstructionType_Table  VALUES ( 'Ahþap'),
 ( 'Betonarme'), ( 'Çelik'), ( 'Kagir'), ('Kütük'),( 'Prefabrik'), ( 'Yýðma')
 go

INSERT   Credit_Type_Table   VALUES ( 'Bilinmiyor'), ( 'Krediye Uygun'), ( 'Krediye Uygun Deðil')
go

INSERT   Decoration_Type_Table VALUES ( 'Beyaz Eþya')
,( 'Çamaþýr Odasý'),( 'Çelik Kapý'),( 'Duvar Kaðýdý'),( 'Giyinme Odasý'), ( 'Gömme Dolap')
,( 'Kartonpiyer') ,( 'Klima') ,( 'Laminant'),( 'Panel Kapý')
go

INSERT   Floor_Type_Table VALUES ( 'Bahçe Dublex')
,( 'Bahçe Katý'), ( 'Çatý Katý'),( 'Tam Bodrum'), ('Villa Tipi')
, ( '1'), ( '2'), ( '3'),( '4'), ( '5'), ( '6'),( '7')
, ( '8'), ( '9'),( '10'), ( '40+'), ( '10-20'),( '20-30')
go

INSERT   Advert_Category_Table   VALUES ( 'Konut')
, ('Ýþyeri'), ('Arsa'),('Turistik Tesis')
go
INSERT   Advert_Estate_Table   VALUES ( 'Daire'), ('Bina')
, ( 'Devremülk'), ('Köþk'), ( 'Yazlýk'), ('Atölye')
,( 'Depo'), ( 'Bahçe'), ( 'Konut Ýmarlý'), ( 'Muhtelif Arsa')
, ( 'Otel'), ('Pansiyon') ,( 'Apart Otel')
 go

INSERT   Advert_Table   VALUES ('2019-10-06T17:17:37.717','2019-10-07T01:21:03.800', 
 1, 1, 1, 5, 15, 1, 1, 1, 1, 5, 1, 1, 1, 5, 1, 5.0000, 
 5.0000, 1, 'sad', 'sdf', 'sdf', '0x696E6469722E6A7067', 232.0000,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 'notlaaaaaaaarrrrr', 1, 2,1)

go

INSERT Photos_Table VALUES ('0x696E6469722E6A7067',null,null),('0x696E6469722E6A7067',null,null)

INSERT   Estate_News_Table   VALUES ('Ömgen Ýnþaattan Yeni Proje', 2,'2019-05-20T00:00:00.000','sadibglwqhvbdkjavdhvasgkhvdugvqwucdvghkasv jgd jsa vdgvqkwgkcvdghkv asjdajsdbvqwuyv','Ýnþaat')
go

INSERT   Transportation_Advert_Table  (TransportationID ,  AdvertID ) 
VALUES (1, 1)
,(2, 1)
,(6, 1)
go

INSERT Balcony_Advert_Table(BalconyID ,  AdvertID ) 
VALUES (1, 1)
go

INSERT Bath_Advert_Table(BathID ,  AdvertID ) 
VALUES (1, 1)
go

INSERT BuildProp_Advert_Table(BuildPropID ,  AdvertID ) 
VALUES (7, 1)
,(2, 1)
,(6, 1)
go

INSERT  Decoration_Advert_Table(DecorationID ,  AdvertID ) 
VALUES (9, 1)
,(3, 1)
,(6, 1)
go

INSERT  Infrastructure_Advert_Table(InfrastructureID ,  AdvertID ) 
VALUES (2, 1)
,(5, 1)
go

INSERT  Kitchen_Advert_Table(KitchenID ,  AdvertID ) 
VALUES (9, 1)
,(2, 1)
go

INSERT  Side_Advert_Table(SideID ,  AdvertID ) 
VALUES
(2, 1)
go

INSERT  SocialArea_Advert_Table(SocialAreaID ,  AdvertID ) 
VALUES (4, 1)
,(2, 1),
(5,1)
go

INSERT  View_Advert_Table(ViewID ,  AdvertID ) 
VALUES
(1, 1)
go


create proc SP_AdvertInsert(
@AdvertType nvarchar(50),
@AdvertCategory nvarchar(50),
@AdvertEstate nvarchar(50),
@NetSquareMeter int,
@Area int,
@ConstructionType nvarchar(50),
@Trade nvarchar(50),
@HomeSituation nvarchar(50),
@ConstructionState nvarchar(50),
@SaloonSquareMeter int,
@TotalRoomNumber nvarchar(10),
@BuildAge nvarchar(10),
@FloorHome nvarchar(50),
@TotalFloor nvarchar(10),
@Heater nvarchar(50),
@Due money,
@Deposit money,
@TotalBath nvarchar(10),
@AdvertTitle nvarchar(100),
@AdvertDescription text,
@AdvertAddress nvarchar(100),
@Photo image, 
@Price money,
@MoneyType nvarchar(10),
@RentIncome int,
@CreditSituation nvarchar(50),
@TotalWC nvarchar(10),
@WareSituation nvarchar(50),
@InvestmentSituation nvarchar(50),
@City nvarchar(50),
@Distinct nvarchar(50),
@Neighborhood nvarchar(50),
@InSites bit,
@SitesName nvarchar(50),
@AdvertNote text,
@BringToFront nvarchar(50),
@BringToMainPage nvarchar(50)
)
as
begin
declare @AdvertTypeID int =(select AdvertTypeID from Advert_Type_Table where AdvertTypeName=@AdvertType)
declare @AdvertCategoryID int=(select AdvertCategoryID from Advert_Category_Table where AdvertCategoryName=@AdvertCategory)
declare @AdvertEstateID int=(select AdvertEstateID from Advert_Estate_Table where AdvertEstateName=@AdvertEstate)
declare @ConstructionTypeID int=(select ConstructionTypeID from ConstructionType_Table where ConstructionType=@ConstructionType)
declare @TradeID int=(select TradeStateID from TradeState_Table where TradeState=@Trade)
declare @HomeSituationID int=(select HomeFullID from IsHomeFull_Table where HomeSituation=@HomeSituation)
declare @ConstructionStateID int=(select ConstructionStateID from ConstructionState_Table where ConstructionState=@ConstructionState)
declare @TotalRoomNumberID int=(select RoomID from Room_Type_Table where RoomType=@TotalRoomNumber)
declare @BuildAgeID int=(select BuildAgeID from Build_Age_Table where BuildAgeID=@BuildAge)
declare @FloorHomeID int=(select FloorID from Floor_Type_Table where FloorName=@FloorHome)
declare @HeaterID int=(select HeaterID from Heater_Type_Table where HeaterName=@Heater)
declare @TotalBathID int=(select BathID from Bath_Total_Type where BathName=@TotalBath)
declare @MoneyTypeID int=(select MoneyID from Money_Type_Table where MoneyName=@MoneyType)
declare @CreditSituationID int=(select CreditID from Credit_Type_Table where CreditName=@CreditSituation)
declare @TotalWCID int=(select WcID from WC_Total_Table where WcTotal=@TotalWC)
declare @WareSituationID int=(select WareID from Ware_Type_Table where WareType=@WareSituation)
declare @InvestmentSituationID int=(select InvestmentID from Investment_Type_Table where InvestmentName=@InvestmentSituation)
declare @CityID int=(select CityID from City_Table where CityName=@City)
declare @DistinctID int=(select DistinctID from Distinct_Table where DistinctName=@Distinct)
declare @NeighborhoodID int=(select NeighborhoodID from Neighborhood_Table where NeighborhoodName=@Neighborhood)
declare @BringToFrontID int=(select BringToFrontID from BringToFront_Table where BringToFrontName=@BringToFront)
declare @BringToMainPageID int=(select BringToMainPageID from BringToMainPage_Table where BringToMainPageName=@BringToMainPage)

insert into Advert_Table values 
(getdate(),null,@AdvertTypeID,@AdvertCategoryID,@AdvertEstateID,@NetSquareMeter,@Area,@ConstructionTypeID,@TradeID,@HomeSituationID,@ConstructionStateID,
@SaloonSquareMeter,@TotalRoomNumberID,@BuildAgeID,@FloorHomeID,@TotalFloor,@HeaterID,@Due,@Deposit,@TotalBathID,@AdvertTitle,@AdvertDescription,@AdvertAddress,
@Photo,@Price,@MoneyTypeID,@RentIncome,@CreditSituationID,@TotalWCID,@WareSituationID,@InvestmentSituationID,@CityID,@DistinctID,@NeighborhoodID,@InSites,@SitesName,@AdvertNote,@BringToFrontID,@BringToMainPageID,1)

end

go

create proc SP_AdvertUpdate(
@AdvertID int,
@AdvertType nvarchar(50) null,
@AdvertCategory nvarchar(50)null,
@AdvertEstate nvarchar(50)null,
@NetSquareMeter int null,
@Area int null,
@ConstructionType nvarchar(50)null,
@Trade nvarchar(50)null,
@HomeSituation nvarchar(50)null,
@ConstructionState nvarchar(50)null,
@SaloonSquareMeter int null,
@TotalRoomNumber nvarchar(10)null,
@BuildAge nvarchar(10)null,
@FloorHome nvarchar(50)null,
@TotalFloor nvarchar(10)null,
@Heater nvarchar(50)null,
@Due money null,
@Deposit money null,
@TotalBath nvarchar(10)null,
@AdvertTitle nvarchar(100)null,
@AdvertDescription text null,
@AdvertAddress nvarchar(100)null,
@Photo image null, 
@Price money null,
@MoneyType nvarchar(10) null,
@RentIncome int null,
@CreditSituation nvarchar(50) null,
@TotalWC nvarchar(10) null,
@WareSituation nvarchar(50) null,
@InvestmentSituation nvarchar(50) null,
@City nvarchar(50) null,
@Distinct nvarchar(50) null,
@Neighborhood nvarchar(50) null,
@InSites bit null,
@SitesName nvarchar(50) null,
@AdvertNote text null,
@BringToFront nvarchar(50) null,
@BringToMainPage nvarchar(50)null
)
as
begin

declare @AdvertTypeID int =(select AdvertTypeID from Advert_Table where AdvertID=@AdvertID)
declare @AdvertCategoryID int=(select AdvertCategoryID from Advert_Table where AdvertID=@AdvertID)
declare @AdvertEstateID int=(select AdvertEstateID from Advert_Table where AdvertID=@AdvertID)
declare @ConstructionTypeID int=(select ConstructionTypeID from Advert_Table where AdvertID=@AdvertID)
declare @TradeID int=(select TradeID from Advert_Table where AdvertID=@AdvertID)
declare @HomeSituationID int=(select HomeSituationID from Advert_Table where AdvertID=@AdvertID)
declare @ConstructionStateID int=(select ConstructionStateID from Advert_Table where AdvertID=@AdvertID)
declare @TotalRoomNumberID int=(select TotalRoomNumberID from Advert_Table where AdvertID=@AdvertID)
declare @BuildAgeID int=(select BuildAgeID from Advert_Table where AdvertID=@AdvertID)
declare @FloorHomeID int=(select FloorHomeID from Advert_Table where AdvertID=@AdvertID)
declare @HeaterID int=(select HeaterID from Advert_Table where AdvertID=@AdvertID)
declare @TotalBathID int=(select TotalBathID from Advert_Table where AdvertID=@AdvertID)
declare @MoneyTypeID int=(select MoneyTypeID from Advert_Table where AdvertID=@AdvertID)
declare @CreditSituationID int=(select CreditSituationID from Advert_Table where AdvertID=@AdvertID)
declare @TotalWCID int=(select TotalWCID from Advert_Table where AdvertID=@AdvertID)
declare @WareSituationID int=(select WareSituationID from Advert_Table where AdvertID=@AdvertID)
declare @InvestmentSituationID int=(select InvestmentSituationID from Advert_Table where AdvertID=@AdvertID)
declare @CityID int=(select CityID from Advert_Table where AdvertID=@AdvertID)
declare @DistinctID int=(select DistinctID from Advert_Table where AdvertID=@AdvertID)
declare @NeighborhoodID int=(select NeighborhoodID from Advert_Table where AdvertID=@AdvertID)
declare @BringToFrontID int=(select BringToFrontID from Advert_Table where AdvertID=@AdvertID)
declare @BringToMainPageID int=(select BringToMainPageID from Advert_Table where AdvertID=@AdvertID)
declare @NetSquareMeterTemp int=(select AdvertNetSquareMeter from Advert_Table where AdvertID=@AdvertID)
declare @AreaTemp int=(select AdvertArea from Advert_Table where AdvertID=@AdvertID)
declare @SaloonSquareMeterTemp int=(select SaloonSquareMeter from Advert_Table where AdvertID=@AdvertID)
declare @TotalFloorTemp int=(select TotalFloor from Advert_Table where AdvertID=@AdvertID)
declare @DueTemp int=(select Due from Advert_Table where AdvertID=@AdvertID)
declare @DepositTemp int=(select Deposit from Advert_Table where AdvertID=@AdvertID)
declare @AdvertTitleTemp nvarchar(50)=(select AdvertTitle from Advert_Table where AdvertID=@AdvertID)
declare @AdvertDescriptionTemp nvarchar(max)=(select AdvertDescription from Advert_Table where AdvertID=@AdvertID)
declare @AdvertAddressTemp nvarchar(100)=(select AdvertAddress from Advert_Table where AdvertID=@AdvertID)
declare @PriceTemp int=(select Price from Advert_Table where AdvertID=@AdvertID)
declare @RentIncomeTemp int=(select RentIncome from Advert_Table where AdvertID=@AdvertID)
declare @InSitesTemp bit=(select InSites from Advert_Table where AdvertID=@AdvertID)
declare @siteNameTemp nvarchar(50)=(select SitesName from Advert_Table where AdvertID=@AdvertID)
declare @AdvertNoteTemp nvarchar(max)=(select AdvertNote from Advert_Table where AdvertID=@AdvertID)


if(@AdvertType is not null)  
set @AdvertTypeID=(select AdvertTypeID from Advert_Type_Table where AdvertTypeName=@AdvertType) 

if(@AdvertCategory is not null) 
set @AdvertCategoryID=(select AdvertCategoryID from Advert_Category_Table where AdvertCategoryName=@AdvertCategory)

if(@AdvertEstate is not null) 
set @AdvertEstateID =(select AdvertEstateID from Advert_Estate_Table where AdvertEstateName=@AdvertEstate)

if(@ConstructionType is not null) 
set @ConstructionTypeID =(select ConstructionTypeID from ConstructionType_Table where ConstructionType=@ConstructionType)

if(@Trade is not null) 
set @TradeID =(select TradeStateID from TradeState_Table where TradeState=@Trade)

if(@HomeSituation is not null) 
set @HomeSituationID =(select HomeFullID from IsHomeFull_Table where HomeSituation=@HomeSituation)

if(@ConstructionState is not null) 
set @ConstructionStateID =(select ConstructionStateID from ConstructionState_Table where ConstructionState=@ConstructionState)

if(@TotalRoomNumber is not null) 
set @TotalRoomNumberID =(select RoomID from Room_Type_Table where RoomType=@TotalRoomNumber)

if(@BuildAge is not null) 
set @BuildAgeID =(select BuildAgeID from Build_Age_Table where BuildAgeID=@BuildAge)

if(@FloorHome is not null) 
set @FloorHomeID =(select FloorID from Floor_Type_Table where FloorName=@FloorHome)

if(@Heater is not null) 
set @HeaterID =(select HeaterID from Heater_Type_Table where HeaterName=@Heater)

if(@TotalBath is not null) 
set @TotalBathID =(select BathID from Bath_Total_Type where BathName=@TotalBath)

if(@MoneyType is not null) 
set @MoneyTypeID =(select MoneyID from Money_Type_Table where MoneyName=@MoneyType)

if(@CreditSituation is not null) 
set @CreditSituationID =(select CreditID from Credit_Type_Table where CreditName=@CreditSituation)

if(@TotalWC is not null) 
set @TotalWCID =(select WcID from WC_Total_Table where WcTotal=@TotalWC)

if(@WareSituation is not null) 
set @WareSituationID =(select WareID from Ware_Type_Table where WareType=@WareSituation)

if(@InvestmentSituation is not null) 
set @InvestmentSituationID =(select InvestmentID from Investment_Type_Table where InvestmentName=@InvestmentSituation)

if(@City is not null) 
set @CityID =(select CityID from City_Table where CityName=@City)

if(@Distinct is not null) 
set @DistinctID =(select DistinctID from Distinct_Table where DistinctName=@Distinct)

if(@Neighborhood is not null) 
set @NeighborhoodID =(select NeighborhoodID from Neighborhood_Table where NeighborhoodName=@Neighborhood)

if(@BringToFront is not null) 
set @BringToFrontID =(select BringToFrontID from BringToFront_Table where BringToFrontName=@BringToFront)

if(@BringToMainPage is not null) 
set @BringToMainPageID =(select BringToMainPageID from BringToMainPage_Table where BringToMainPageName=@BringToMainPage)

if(@NetSquareMeter is not null) 
set @NetSquareMeterTemp =@NetSquareMeter

if(@Area is not null) 
set @AreaTemp = @Area

if(@SaloonSquareMeter is not null) 
set @SaloonSquareMeterTemp = @SaloonSquareMeter

if(@TotalFloor is not null) 
set @TotalFloorTemp = @TotalFloor

if(@Due is not null) 
set @DueTemp = @Due

if(@Deposit is not null) 
set @DepositTemp = @Deposit

if(@AdvertTitle is not null) 
set @AdvertTitleTemp = @AdvertTitle

if(@AdvertDescription is not null) 
set @AdvertDescriptionTemp = @AdvertDescription

if(@AdvertAddress is not null) 
set @AdvertAddressTemp = @AdvertAddress

if(@Price is not null) 
set @PriceTemp = @Price

if(@RentIncome is not null) 
set @RentIncomeTemp = @RentIncome

if(@InSites is not null) 
set @InSitesTemp = @InSites

if(@SitesName is not null) 
set @siteNameTemp = @SitesName

if(@AdvertNote is not null) 
set @AdvertNoteTemp= @AdvertNote

update Advert_Table 
set AdvertTypeID=@AdvertTypeID,AdvertCategoryID=@AdvertCategoryID,AdvertEstateID=@AdvertEstateID,AdvertNetSquareMeter=@NetSquareMeterTemp,
AdvertArea=@AreaTemp,ConstructionTypeID=@ConstructionTypeID,TradeID=@TradeID,HomeSituationID=@HomeSituationID,ConstructionStateID=@ConstructionStateID,
SaloonSquareMeter=@SaloonSquareMeterTemp,TotalRoomNumberID=@TotalRoomNumberID,BuildAgeID=@BuildAgeID,FloorHomeID=@FloorHomeID,TotalFloor=@TotalFloorTemp,HeaterID=@HeaterID,
Due=@DueTemp,Deposit=@DepositTemp,TotalBathID=@TotalBathID,AdvertTitle=@AdvertTitleTemp,AdvertDescription=@AdvertDescriptionTemp,AdvertAddress=@AdvertAddressTemp,Price=@PriceTemp,
MoneyTypeID=@MoneyTypeID,RentIncome=@RentIncomeTemp,CreditSituationID=@CreditSituationID,TotalWCID=@TotalWCID,WareSituationID=@WareSituationID,InvestmentSituationID=@InvestmentSituationID,
CityID=@CityID,DistinctID=@DistinctID,NeighborhoodID=@NeighborhoodID,InSites=@InSitesTemp,SitesName=@siteNameTemp,AdvertNote=@AdvertNoteTemp,BringToFrontID=@BringToFrontID,
BringToMainPageID=@BringToMainPageID where AdvertID=@AdvertID

end

go

create proc SP_AdvertSearch(
@AdvertType nvarchar(50) null,
@AdvertCategory nvarchar(50)null,
@AdvertEstate nvarchar(50)null,
@NetSquareMeter int null,
@Area int null,
@ConstructionType nvarchar(50)null,
@Trade nvarchar(50)null,
@HomeSituation nvarchar(50)null,
@ConstructionState nvarchar(50)null,
@SaloonSquareMeter int null,
@TotalRoomNumber nvarchar(10)null,
@BuildAge nvarchar(10)null,
@FloorHome nvarchar(50)null,
@TotalFloor nvarchar(10)null,
@Heater nvarchar(50)null,
@Due money null,
@Deposit money null,
@TotalBath nvarchar(10)null,
@AdvertTitle nvarchar(100)null,
@AdvertDescription text null,
@AdvertAddress nvarchar(100)null,
@Photo image null, 
@Price money null,
@MoneyType nvarchar(10) null,
@RentIncome int null,
@CreditSituation nvarchar(50) null,
@TotalWC nvarchar(10) null,
@WareSituation nvarchar(50) null,
@InvestmentSituation nvarchar(50) null,
@City nvarchar(50) null,
@Distinct nvarchar(50) null,
@Neighborhood nvarchar(50) null,
@InSites bit null,
@SitesName nvarchar(50) null,
@AdvertNote text null,
@BringToFront nvarchar(50) null,
@BringToMainPage nvarchar(50)null
)
as
begin

declare @AdvertTypeID int =(select AdvertTypeID from Advert_Type_Table where AdvertTypeName=@AdvertType)
declare @AdvertCategoryID int=(select AdvertCategoryID from Advert_Category_Table where AdvertCategoryName=@AdvertCategory)
declare @AdvertEstateID int=(select AdvertEstateID from Advert_Estate_Table where AdvertEstateName=@AdvertEstate)
declare @ConstructionTypeID int=(select ConstructionTypeID from ConstructionType_Table where ConstructionType=@ConstructionType)
declare @TradeID int=(select TradeStateID from TradeState_Table where TradeState=@Trade)
declare @HomeSituationID int=(select HomeFullID from IsHomeFull_Table where HomeSituation=@HomeSituation)
declare @ConstructionStateID int=(select ConstructionStateID from ConstructionState_Table where ConstructionState=@ConstructionState)
declare @TotalRoomNumberID int=(select RoomID from Room_Type_Table where RoomType=@TotalRoomNumber)
declare @BuildAgeID int=(select BuildAgeID from Build_Age_Table where BuildAgeID=@BuildAge)
declare @FloorHomeID int=(select FloorID from Floor_Type_Table where FloorName=@FloorHome)
declare @HeaterID int=(select HeaterID from Heater_Type_Table where HeaterName=@Heater)
declare @TotalBathID int=(select BathID from Bath_Total_Type where BathName=@TotalBath)
declare @CreditSituationID int=(select CreditID from Credit_Type_Table where CreditName=@CreditSituation)
declare @TotalWCID int=(select WcID from WC_Total_Table where WcTotal=@TotalWC)
declare @WareSituationID int=(select WareID from Ware_Type_Table where WareType=@WareSituation)
declare @InvestmentSituationID int=(select InvestmentID from Investment_Type_Table where InvestmentName=@InvestmentSituation)
declare @CityID int=(select CityID from City_Table where CityName=@City)
declare @DistinctID int=(select DistinctID from Distinct_Table where DistinctName=@Distinct)
declare @NeighborhoodID int=(select NeighborhoodID from Neighborhood_Table where NeighborhoodName=@Neighborhood)

select * from Advert_Table where 
AdvertTypeID=ISNULL(@AdvertTypeID,AdvertTypeID) and
AdvertCategoryID=ISNULL(@AdvertCategoryID,AdvertCategoryID) and
AdvertEstateID=ISNULL(@AdvertEstateID,AdvertEstateID) and
ConstructionTypeID=ISNULL(@ConstructionTypeID,ConstructionTypeID) and
TradeID=ISNULL(@TradeID,TradeID) and
HomeSituationID=ISNULL(@HomeSituationID,HomeSituationID) and
ConstructionStateID=ISNULL(@ConstructionStateID,ConstructionStateID) and
TotalRoomNumberID=ISNULL(@TotalRoomNumberID,TotalRoomNumberID) and
BuildAgeID=ISNULL(@BuildAgeID,BuildAgeID) and
FloorHomeID=ISNULL(@FloorHomeID,FloorHomeID) and
HeaterID=ISNULL(@HeaterID,HeaterID) and
TotalBathID=ISNULL(@TotalBathID,TotalBathID) and
CreditSituationID=ISNULL(@CreditSituationID,CreditSituationID) and
TotalWCID=ISNULL(@TotalWCID,TotalWCID) and
WareSituationID=ISNULL(@WareSituationID,WareSituationID) and
InvestmentSituationID=ISNULL(@InvestmentSituationID,InvestmentSituationID) and
CityID=ISNULL(@CityID,CityID) and
DistinctID=ISNULL(@DistinctID,DistinctID) and
NeighborhoodID=ISNULL(@NeighborhoodID,NeighborhoodID) 

end

go

create proc SP_Transportation(@advertID int)
as
begin
select tt.TransportationType from Transportation_Type_Table TT,Transportation_Advert_Table TA
where TA.TransportationID=TT.TransportationID and
TA.AdvertID=@advertID
end

go

create proc SP_NewsDate(@Date date)
as
begin
select * from Estate_News_Table where NewsDate=@Date
end

go

create view VW_FullTable
as 

select AdvertTypeName,AdvertCategoryName,AdvertEstateName,AdvertNetSquareMeter,AdvertArea,ConstructionType,TradeState,HomeSituation,ConstructionState,
SaloonSquareMeter,RoomType,AgeType,FloorName,TotalFloor,HeaterName,Due,Deposit,BathName,AdvertTitle,AdvertDescription,AdvertAddress,Price,MoneyName,
RentIncome,CreditName,WcTotal,WareType,InvestmentName,CityName,DistinctName,NeighborhoodName,InSites,SitesName,AdvertNote,BringToFrontName,BringToMainPageName
from Advert_Table ad,Advert_Type_Table,Advert_Category_Table,Advert_Estate_Table,ConstructionState_Table,ConstructionType_Table,IsHomeFull_Table,
TradeState_Table,Room_Type_Table,Build_Age_Table,Floor_Type_Table,Heater_Type_Table,Bath_Total_Type,WC_Total_Table,Money_Type_Table,Credit_Type_Table,
Ware_Type_Table,Investment_Type_Table,City_Table,Distinct_Table,Neighborhood_Table,BringToFront_Table,BringToMainPage_Table
where
ad.AdvertTypeID=Advert_Type_Table.AdvertTypeID and
ad.AdvertCategoryID=Advert_Category_Table.AdvertCategoryID and
ad.AdvertEstateID=Advert_Estate_Table.AdvertEstateID and
ad.ConstructionStateID=ConstructionState_Table.ConstructionStateID and
ad.ConstructionTypeID=ConstructionType_Table.ConstructionTypeID and
ad.TradeID=TradeState_Table.TradeStateID and
ad.HomeSituationID=IsHomeFull_Table.HomeFullID and
ad.TotalRoomNumberID=Room_Type_Table.RoomID and
ad.BuildAgeID=Build_Age_Table.BuildAgeID and
ad.FloorHomeID=Floor_Type_Table.FloorID and
ad.HeaterID=Heater_Type_Table.HeaterID and
ad.TotalBathID=Bath_Total_Type.BathID and
ad.TotalWCID=WC_Total_Table.WcID and
ad.MoneyTypeID=Money_Type_Table.MoneyID and
ad.CreditSituationID=Credit_Type_Table.CreditID and
ad.WareSituationID=Ware_Type_Table.WareID and
ad.InvestmentSituationID=Investment_Type_Table.InvestmentID and
ad.CityID=City_Table.CityID and
ad. DistinctID=Distinct_Table.DistinctID and
ad. NeighborhoodID=Neighborhood_Table.NeighborhoodID and
ad.BringToFrontID=BringToFront_Table.BringToFrontID and
ad. BringToMainPageID=BringToMainPage_Table.BringToMainPageID

go

create View VW_ProjectsOfCompany
as
Select C.CompanyName,C.CompanyPhone,C.CompanyWebsite,P.ProjectTitle,P.ProjectDeliveryDate,P.ProjectPhone,P.ProjectDescription,P.ProjectWebSite 
From Project_Table P , COMPANY_TABLE C 
Where P.CompanyID = C.CompanyID

go

CREATE VIEW VW_Register_Corporate
AS
SELECT        CorporateID, CorporateName, ContactFullName, CorporateMobilePhone, CorporateMail, Veritify, CorporatePassword
FROM            Register_Corporate_Table

go

CREATE VIEW VW_Register_Personal
AS
SELECT        PersonalID, PersonalFullName, PersonalMail, PersonalMobilePhone, PersonalPassword, Veritify
FROM            Register_Personal_Table

go

create View VW_SortByCountOfCity
as
Select C.CityName,COUNT(A.AdvertID) as CountOfCity From Advert_Table A,City_Table C Where A.CityID = C.CityID Group By C.CityName

go

----Ýlk aylýk ücret hesaplanýr----------
create function fnc_First_Month_Money(@AdvertID	INT)
RETURNS INT
BEGIN 
    declare @FirstMoney int=0
	select @FirstMoney=a.Deposit+a.Due+a.Price  from Advert_Table a where a.AdvertID =@AdvertID 
	return @FirstMoney 
END 

go

------Girilen þehrin ilçelerini listeler----------
create function fnc_Districts_Of_City(@CityID INT)
returns table 
as 
return 
(
select d.DistinctName as Ilceler from City_Table c , Distinct_Table d where c.CityID=@CityID and d.CityID=c.CityID
)

go

-------Sectiði kategoriye göre fiyat aralýðýnda Arama------
create function fnc_Advert_Price_Range(@AdvertCategoryID int,@MinMoney money,@MaxMoney money)
returns table
as 
return 
(
select * from Advert_Table where AdvertCategoryID=@AdvertCategoryID and Price between @MinMoney and @MaxMoney
)

go 

-------Kullanýcýnýn fullname name ve surname olarak ayýran ----------------
create function fnc_Register_Personal_Fullname_Reserve(@RegisterID int)
returns table
as 
return (
select Left(PersonalFullName,LEN(PersonalFullName)-CHARINDEX(' ',REVERSE(PersonalFullName))) AS "Adý" ,
RIGHT(PersonalFullName, ISNULL(NULLIF(CHARINDEX(' ', REVERSE(PersonalFullName)) - 1, -1),LEN(PersonalFullName))) AS "Soyadý"
from Register_Personal_Table   where PersonalID=@RegisterID
)

go

----------------Aratýlan Kayýdýn Geçerliliði--------------
create function fnc_Advert_Update(@AdvertID int)
returns nvarchar(max)
as 
begin 
    declare @getdate date=GETDATE()
	declare @PastYear int;
	declare @message nvarchar(max);
	select @PastYear=(year(AdvertUpdatedDate)-year(@getdate)) from Advert_Table where AdvertID=@AdvertID
	if(@PastYear>2)
	begin
	   set @message ='Silinmeye yakýn'
	  end
   else 
   begin 
     set @message ='Silinmeye daha var'	   
   end
   return @message
end 

go

--------Ýlan tablosunda silme iþlemi yapýnca çalýþýr--------
create trigger tr_Delete_Active
on Advert_Table
instead of  delete
as
begin 
 
 Update Advert_Table set InActive='0'  where AdvertID=(select d.AdvertID from deleted d)
end

go

--------Ýlan tablosunda deðiþiklik yapýnca çalýþýr--------
create trigger tr_Update_DateTime
on Advert_Table
instead of update 
as 
begin 
 Update  Advert_Table set AdvertUpdatedDate=GETDATE() where AdvertID=(select i.AdvertID from inserted i)
end
