DROP TABLE IF EXISTS greetings;

CREATE TABLE greetings (
    id serial primary key,
    ts timestamp default Now(),
    tx text
)
