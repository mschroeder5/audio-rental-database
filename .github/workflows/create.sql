CREATE TABLE Products (
	model VARCHAR(50) NOT NULL PRIMARY KEY, --Model is a determinant for all other values
    	-- model -> manufacturer, model -> prod_type, model -> price
	manufacturer TEXT NOT NULL,
	prod_type TEXT NOT NULL,
	price INTEGER NOT NULL
);

CREATE TABLE Microphones (
	model VARCHAR(50) NOT NULL PRIMARY KEY, --Model is a determinant for all other values
    	-- model -> mic_type, model -> manufacturer, model -> polar_pattern, model -> diaphragm_size, model -> price
   	mic_type TEXT NOT NULL,
   	manufacturer TEXT NOT NULL,
	polar_pattern TEXT NOT NULL,
	diaphragm_size INTEGER,
	price INTEGER NOT NULL,
	FOREIGN KEY(model, manufacturer, price) REFERENCES "Products"
);

CREATE TABLE Cables (
	model VARCHAR(50) NOT NULL PRIMARY KEY, --Model is a determinant for all other values
   	-- model -> manufacturer, model -> cable_type, model -> length, model -> price
   	manufacturer TEXT NOT NULL,
	cable_type TEXT NOT NULL,
	length INTEGER,
	price INTEGER NOT NULL,
	FOREIGN KEY(model, manufacturer, price) REFERENCES "Products"
);

CREATE TABLE Interfaces (
	model VARCHAR(50) NOT NULL PRIMARY KEY, --Model is a determinant for all other values
    	-- model -> manufacturer, model -> connectivity, model -> form_factor, model -> preamps, model -> price
    	manufacturer TEXT NOT NULL,
	connectivity TEXT NOT NULL,
	form_factor TEXT NOT NULL,
	preamps INTEGER NOT NULL,
	price INTEGER NOT NULL,
	FOREIGN KEY(model, manufacturer, price) REFERENCES "Products"
);

CREATE TABLE Mixers (
	model VARCHAR(50) NOT NULL PRIMARY KEY, --Model is a determinant for all other values
    	-- model -> manufacturer, model -> channels, model -> connectivity, model -> price
    	manufacturer TEXT NOT NULL,
	channels INTEGER NOT NULL,
	connectivity TEXT NOT NULL,
	price INTEGER NOT NULL,
	FOREIGN KEY(model, manufacturer, price) REFERENCES "Products"
);

CREATE TABLE Speakers (
	model	VARCHAR(50) NOT NULL PRIMARY KEY, --Model is a determinant for all other values
    	-- model -> manufacturer, model -> power_config, model -> lf_driver, model -> hf_driver, model -> price
    	manufacturer TEXT NOT NULL,
	power_config TEXT,
	lf_driver INTEGER NOT NULL,
    	hf_driver INTEGER NOT NULL,
	price INTEGER NOT NULL,
	FOREIGN KEY(model, manufacturer, price) REFERENCES "Products"
);
