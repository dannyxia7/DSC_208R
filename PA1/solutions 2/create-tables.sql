CREATE TABLE FLIGHTS (
    fid INTEGER PRIMARY KEY,
    month_id INTEGER CHECK (month_id BETWEEN 1 AND 12),
    day_of_month INTEGER CHECK (day_of_month BETWEEN 1 AND 31),
    day_of_week_id INTEGER CHECK (day_of_week_id BETWEEN 1 AND 7),
    carrier_id TEXT NOT NULL,
    flight_num INTEGER NOT NULL,
    origin_city TEXT NOT NULL,
    origin_state TEXT NOT NULL,
    dest_city TEXT NOT NULL,
    dest_state TEXT NOT NULL,
    departure_delay INTEGER,
    taxi_out INTEGER,
    arrival_delay INTEGER,
    canceled INTEGER CHECK (canceled IN (0, 1)),
    actual_time INTEGER,
    distance INTEGER NOT NULL,
    capacity INTEGER NOT NULL,
    price INTEGER NOT NULL,
    FOREIGN KEY (carrier_id) REFERENCES Carriers(cid),
    FOREIGN KEY (month_id) REFERENCES Months(mid),
    FOREIGN KEY (day_of_week_id) REFERENCES Weekdays(did)
);

CREATE TABLE CARRIERS (
    cid TEXT PRIMARY KEY,
    name TEXT
);

CREATE TABLE MONTHS (
    mid INTEGER PRIMARY KEY,
    month TEXT
);

CREATE TABLE WEEKDAYS (
    did INTEGER PRIMARY KEY,
    day_of_week TEXT
);