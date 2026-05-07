CREATE TABLE athletes (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    nationality TEXT NOT NULL,
    record_wins INTEGER NOT NULL DEFAULT 0,
    record_losses INTEGER NOT NULL DEFAULT 0,
    weight_class TEXT NOT NULL,  -- e.g., Lightweight, Middleweight, etc.
    age INTEGER NOT NULL,
    height_metric REAL NOT NULL,   -- in meters
    height_imperial REAL NOT NULL, -- in feet and inches (e.g., 5.9)
    reach_metric REAL NOT NULL,    -- in centimeters
    reach_imperial REAL NOT NULL,  -- in inches
    stance TEXT NOT NULL,          -- e.g., Orthodox, Southpaw, Switch
    weight_metric REAL NOT NULL,   -- in kilograms
    weight_imperial REAL NOT NULL, -- in pounds
    octagon_debut DATE NOT NULL   -- Date of first octagon appearance
);

CREATE UNIQUE INDEX idx_athletes_name ON athletes (name);
