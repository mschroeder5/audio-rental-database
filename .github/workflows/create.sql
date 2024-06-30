CREATE TABLE Products (
	model	VARCHAR(50) NOT NULL PRIMARY KEY, --Model is a determinant for prod_type & price
    -- model -> prod_type & model -> price
	manufacturer	TEXT NOT NULL, --Manufacturer is a determinant for Model (manufacturer -> model)
	prod_type	TEXT NOT NULL,
	price	INTEGER NOT NULL
);

CREATE TABLE Microphones (
	model   VARCHAR(50) NOT NULL PRIMARY KEY, --Model is a determinant for mic_type, polar_pattern, diaphragm_size, & price
    -- model -> mic_type, model -> polar_pattern, model -> diaphragm_size, model -> price
    mic_type	TEXT NOT NULL,
    manufacturer TEXT NOT NULL, --Manufacturer is a determinant for Model (manufacturer -> model)
	polar_pattern	TEXT NOT NULL,
	diaphragm_size	INTEGER,
	price	INTEGER NOT NULL,
	FOREIGN KEY(model, manufacturer, price) REFERENCES "Products"
);

CREATE TABLE Cables (
	model	VARCHAR(50) NOT NULL PRIMARY KEY, --Model is a determinant for cable_type, length, & price
    -- model -> cable_type, model -> length, model -> price
    manufacturer TEXT NOT NULL, --Manufacturer is a determinant for Model (manufacturer -> model)
	cable_type	TEXT NOT NULL,
	length	INTEGER,
	price	INTEGER NOT NULL,
	FOREIGN KEY(model, manufacturer, price) REFERENCES "Products"
);

CREATE TABLE Interfaces (
	model	VARCHAR(50) NOT NULL PRIMARY KEY, --Model is a determinant for connectivity, form_factor, preamps, & price
    -- model -> connectivity, model -> form_factor, model -> preamps, model -> price
    manufacturer TEXT NOT NULL, --Manufacturer is a determinant for Model (manufacturer -> model)
	connectivity	TEXT NOT NULL,
	form_factor	TEXT NOT NULL,
	preamps	INTEGER NOT NULL,
	price	INTEGER NOT NULL,
	FOREIGN KEY(model, manufacturer, price) REFERENCES "Products"
);

CREATE TABLE Mixers (
	model	VARCHAR(50) NOT NULL PRIMARY KEY, --Model is a determinant for channels, connectivity, & price
    -- model -> channels, model -> connectivity, model -> price
    manufacturer TEXT NOT NULL, --Manufacturer is a determinant for Model (manufacturer -> model)
	channels	INTEGER NOT NULL,
	connectivity	TEXT NOT NULL,
	price	INTEGER NOT NULL,
	FOREIGN KEY(model, manufacturer, price) REFERENCES "Products"
);

CREATE TABLE Speakers (
	model	VARCHAR(50) NOT NULL PRIMARY KEY, --Model is a determinant for power_config, lf_driver, hf_driver, & price
    -- model -> power_config, model -> lf_driver, model -> hf_driver, model -> price
    manufacturer TEXT NOT NULL, --Manufacturer is a determinant for Model (manufacturer -> model)
	power_config	TEXT,
	lf_driver	INTEGER NOT NULL,
    hf_driver	INTEGER NOT NULL,
	price	INTEGER NOT NULL,
	FOREIGN KEY(model, manufacturer, price) REFERENCES "Products"
);
