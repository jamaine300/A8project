--Creates the # of Homes Available table

CREATE TABLE homes_avail (
    RegionID INT PRIMARY KEY,
    size_rank INT,
    region_name VARCHAR(255),
    region_type VARCHAR(255),
    state_name VARCHAR(255),
    month INT,
    number_available_homes INT
);

--Creates the New listings table

CREATE TABLE new_listings (
    RegionID INT,
    size_rank INT,
    region_name VARCHAR(255),
    region_type VARCHAR(255),
    state_name VARCHAR(255),
    month INT,
    number_new_listings INT,
    PRIMARY KEY(RegionID),
    CONSTRAINT fk_homes_avail
    	FOREIGN KEY(RegionID)
    		REFERENCES homes_avail(RegionID)
);

--Creates Home Sales table

CREATE TABLE homes_sales (
    RegionID INT,
    size_rank INT,
    region_name VARCHAR(255),
    region_type VARCHAR(255),
    state_name VARCHAR(255),
    month INT,
    home_sales INT,
    PRIMARY KEY(RegionID),
    CONSTRAINT fk_homes_avail
    	FOREIGN KEY(RegionID)
    		REFERENCES homes_avail(RegionID)
);
