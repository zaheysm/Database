-- Inventory-DML.sql
-- script to populate Inventory Database
-- CST 8215

INSERT INTO COUNTRY_T ( Code, Cntry_Name, Cntry_Population ) VALUES ( 'RUS','RussianFederation',144192450 );
INSERT INTO COUNTRY_T ( Code, Cntry_Name, Cntry_Population ) VALUES ( 'MEX','Mexico',119530753  );
INSERT INTO COUNTRY_T ( Code, Cntry_Name, Cntry_Population ) VALUES ( 'DZA','Algeria',40400000  );
INSERT INTO COUNTRY_T ( Code, Cntry_Name, Cntry_Population ) VALUES ( 'CHN','China',1376049000  );
INSERT INTO COUNTRY_T ( Code, Cntry_Name, Cntry_Population ) VALUES ( 'CHL','Chile',18006407  );
INSERT INTO COUNTRY_T ( Code, Cntry_Name, Cntry_Population ) VALUES ( 'CAN','Canada',36155487  );
INSERT INTO COUNTRY_T ( Code, Cntry_Name, Cntry_Population ) VALUES ( 'EGY','Egypt',1001449 );
INSERT INTO COUNTRY_T ( Code, Cntry_Name, Cntry_Population ) VALUES ( 'ISR','Israel',6217000 );
INSERT INTO COUNTRY_T ( Code, Cntry_Name, Cntry_Population ) VALUES ( 'FRA','France',59225700 );
INSERT INTO COUNTRY_T ( Code, Cntry_Name, Cntry_Population ) VALUES ( 'TUR','Turkey',144192450 );

INSERT INTO City_T VALUES (2515,'Ciudad de México','MEX',8591309);
INSERT INTO City_t VALUES (2516,'Guadalajara','MEX',1647720);
INSERT INTO City_t VALUES (2517,'Ecatepec de Morelos','MEX',1620303);
INSERT INTO City_t VALUES (3580,'Moscow','RUS',8389200);
INSERT INTO City_t VALUES (3581,'St Petersburg','RUS',4694000);
INSERT INTO City_t VALUES (3582,'Novosibirsk','RUS',1398800);
INSERT INTO City_t VALUES (35,'Alger','DZA',2168000);
INSERT INTO City_t VALUES (36,'Oran','DZA',609823);
INSERT INTO City_t VALUES (1890,'Shanghai','CHN',9696300);
INSERT INTO City_t VALUES (1891,'Peking','CHN',7472000);
INSERT INTO City_t VALUES (1892,'Chongqing','CHN',6351600);
INSERT INTO City_t VALUES (1893,'Tianjin','CHN',5286800);
INSERT INTO City_t VALUES (554,'Santiago de Chile','CHL',4703954);
INSERT INTO City_t VALUES (555,'Puente Alto','CHL',386236);
INSERT INTO City_t VALUES (556,'Viña del Mar','CHL',312493);
INSERT INTO City_t VALUES (1810,'Montréal','CAN',1016376);
INSERT INTO City_t VALUES (1811,'Calgary','CAN',768082);
INSERT INTO City_t VALUES (1812,'Toronto','CAN',688275);
INSERT INTO City_t VALUES (608,'Cairo','EGY',6789479);
INSERT INTO City_t VALUES (609,'Alexandria','EGY',3328196);
INSERT INTO City_t VALUES (610,'Giza','EGY',2221868);
INSERT INTO City_t VALUES (1450,'Jerusalem','ISR',633700);
INSERT INTO City_t VALUES (1451,'Tel Aviv-Jaffa','ISR',348100);
INSERT INTO City_t VALUES (1452,'Haifa','ISR',265700);
INSERT INTO City_t VALUES (2974,'Paris','FRA',2125246);
INSERT INTO City_t VALUES (2975,'Marseille','FRA',798430);
INSERT INTO City_t VALUES (2976,'Lyon','FRA',445452);
INSERT INTO City_t VALUES (3357,'Istanbul','TUR',8787958);
INSERT INTO City_t VALUES (3358,'Ankara','TUR',3038159);
INSERT INTO City_t VALUES (3359,'Izmir','TUR',2130359);


INSERT INTO Customer_T VALUES ('C001', 'Your first name', 'Your Last Name', '613-727-4723', '1385 Woodroffe Ave', 'Ottawa'   ,'ON','K2G1V8', 0, 'CAN');
INSERT INTO Customer_T VALUES ('C002', 'Your First Name', 'Your Last Name', '613-727-4723', '1385 Woodroffe Ave', 'Ottawa'   ,'ON','K2G1V8', 0, 'EGY');
INSERT INTO Customer_T VALUES ('C003', 'Your First Name', 'Your Last Name', '613-727-4723', '1385 Woodroffe Ave', 'Ottawa'   ,'ON','K2G1V8', 0, 'TUR');
INSERT INTO Customer_T VALUES ('C004', 'Your First Name', 'Your Last Name', '613-727-4723', '854 Younge Street' , 'Toronto'  ,'ON','K2G1V8', 0, 'CHL');
INSERT INTO Customer_T VALUES ('C005', 'Your First Name', 'Your Last Name', '613-727-4723', '264 Main Street'   , 'Kitchener','ON','K2G1V8', 0, 'RUS');
INSERT INTO Customer_T VALUES ('C006', 'Your First Name', 'Your Last Name', '613-727-4723', '357 Rue Catherine' , 'Montreal' ,'ON','K2G1V8', 0, 'CHN');

INSERT INTO Product_T VALUES ('P2011', 'Compac Presario', '2011-02-14', 20, 5, 499.99, 0, 'RUS');
INSERT INTO Product_T VALUES ('P2012', 'HP laptop', '2010-09-25', 40, 5, 529.99, 0, 'CHL');
INSERT INTO Product_T VALUES ('P2013', 'Samsung LCD', '2010-02-15', 22, 8, 329.99, 0, 'CAN');
INSERT INTO Product_T VALUES ('P2014', 'Brother Network All-In-One Laser Printer', '2010-10-10', 50, 10, 159.99, 0, 'EGY');
INSERT INTO Product_T VALUES ('P2015', 'Western Digital External Hard drive', '2010-04-08', 30, 10, 149.99, NULL, 'TUR');
INSERT INTO Product_T VALUES ('P2016', 'Apple iPad 2 with Wi-Fi + 3G', '2011-02-23', 90, 200, 849.00, 0, 'CHN');
INSERT INTO Product_T VALUES ('P2017', 'iPAD 2 Smart Cover', '2011-02-14', 70, 10, 45.00, 10, 'RUS');

INSERT INTO Invoice_T VALUES ('I23001', 'C001', '2011-02-15');
INSERT INTO Invoice_T VALUES ('I23002', 'C001', '2011-04-25');
INSERT INTO Invoice_T VALUES ('I23003', 'C004', '2011-06-12');
INSERT INTO Invoice_T VALUES ('I23004', 'C002', '2011-07-08');
INSERT INTO Invoice_T VALUES ('I23005', 'C005', '2011-08-24');
INSERT INTO Invoice_T VALUES ('I23006', 'C006', '2011-09-07');
INSERT INTO Invoice_T VALUES ('I23007', 'C006', '2010-12-28');
INSERT INTO Invoice_T VALUES ('I23008', 'C006', '2011-12-15');


INSERT INTO Invoice_Line_T VALUES ('I23001', 1, 'P2011', 1, 650.75); 
INSERT INTO Invoice_Line_T VALUES ('I23001', 2, 'P2014', 3, 159.99);
INSERT INTO Invoice_Line_T VALUES ('I23002', 1, 'P2012', 1, 529.99);
INSERT INTO Invoice_Line_T VALUES ('I23003', 1, 'P2015', 3, 140.75);
INSERT INTO Invoice_Line_T VALUES ('I23004', 1, 'P2014', 1, 159.99);
INSERT INTO Invoice_Line_T VALUES ('I23005', 1, 'P2016', 1, 798.99);
INSERT INTO Invoice_Line_T VALUES ('I23006', 1, 'P2011', 1, 499.99);
INSERT INTO Invoice_Line_T VALUES ('I23007', 1, 'P2012', 1, 529.99);
INSERT INTO Invoice_Line_T VALUES ('I23008', 1, 'P2016', 3, 689.00);
INSERT INTO Invoice_Line_T VALUES ('I23008', 2, 'P2017', 3, 35.99);

-- eof: Inventory-DML.sql
