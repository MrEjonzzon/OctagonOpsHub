-- +migrate Up
CREATE TABLE athletes (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    nationality TEXT NOT NULL,
    record_wins INTEGER NOT NULL DEFAULT 0,
    record_losses INTEGER NOT NULL DEFAULT 0,
    weight_class TEXT NOT NULL,
    age INTEGER NOT NULL,
    height_metric REAL NOT NULL,
    height_imperial REAL NOT NULL,
    reach_metric REAL NOT NULL,
    reach_imperial REAL NOT NULL,
    stance TEXT NOT NULL,
    weight_metric REAL NOT NULL,
    weight_imperial REAL NOT NULL,
    octagon_debut DATE NOT NULL
);

CREATE UNIQUE INDEX idx_athletes_name ON athletes (name);

-- +migrate Down
DROP TABLE IF EXISTS athletes;
