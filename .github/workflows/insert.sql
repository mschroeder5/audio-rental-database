INSERT INTO Products VALUES ("WA87","Warm Audio","Microphone",454),
    ("NT1","Rode","Microphone",154),
    ("SM58","Shure","Microphone",99),
    ("AT2020","Audio-Technica","Microphone",99),
    ("GI10","Mogami","Cable",68),
    ("GCW","Gator","Cable",16),
    ("EXM15","Pro Co","Cable",17),
    ("Aurora 32TB3","Lynx","Interface",6439),
    ("Scarlett 2i2","Focusrite","Interface",200),
    ("XTouch","Behringer","Mixer",539),
    ("Faderport","PreSonus","Mixer",800),
    ("K12","QSC","Speaker",900),
    ("EON715","JBL","Speaker",599),
    ("HS8","Yamaha","Speaker",399);

INSERT INTO Microphones VALUES ("WA87","Dynamic","Warm Audio","Cardioid",NULL,454),
    ("NT1","Condensor","Rode","Cardioid",25,154),
    ("SM58","Dynamic","Shure","Cardioid",NULL,99),
    ("AT2020","Condensor","Audio-Technica","Cardioid",16,99);

INSERT INTO Cables VALUES ("GI10","Mogami","Instrument",10,68),
    ("GCW","Gator","Patch",6,16),
    ("EXM15","Pro Co","XLR",15,17);

INSERT INTO Interfaces VALUES ("Aurora 32TB3","Lynx","Thunderbolt","Rackmount",4,6439),
    ("Scarlett 2i2","Focusrite","USB","Desktop",2,200);

INSERT INTO Mixers VALUES ("XTouch","Behringer",9,"USB",539),
    ("Faderport","PreSonus",16,"USB",800);

INSERT INTO Speakers VALUES ("K12","QSC","Bi-Amped",12,1.4,900),
    ("EON715","JBL","Bi-Amped",15,1,599),
    ("HS8","Yamaha","Bi-Amped",8,1,399);
