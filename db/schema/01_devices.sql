--drop existing tables
DROP TABLE IF EXISTS tasks CASCADE;
--create tables
CREATE TABLE tasks (
  id SERIAL PRIMARY KEY NOT NULL,
  description VARCHAR(255) NOT NULL,
  status BOOLEAN DEFAULT FALSE,
  location_id INTEGER NOT NULL REFERENCES locations(id) ON DELETE CASCADE,
  device_id INTEGER NOT NULL REFERENCES devices(id) ON DELETE CASCADE
);
