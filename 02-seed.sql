-- Sample data created with help of ChatGPT. 

PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

INSERT INTO Books (id, title, genre, publication_year) VALUES
    (1, 'The Lantern House', 'Mystery', 2018),
    (2, 'A Map of Winter', 'Adventure', 2020),
    (3, 'The Paper Garden', 'Fiction', 2019),
    (4, 'Under the Copper Sky', 'Fantasy', 2021),
    (5, 'Letters from the Coast', 'Fiction', 2017),
    (6, 'The Last Ferry', 'Mystery', 2022),
    (7, 'A Room for Rain', 'Fiction', 2023),
    (8, 'The Smallest Orbit', 'Science fiction', 2024),
    (9, 'Where the Pines End', 'Adventure', 2025),
    (10, 'The Quiet Archive', 'Mystery', 2026);

INSERT INTO Authors (id, name, country, birth_year) VALUES
    (1, 'Nora Vale', 'Norway', 1986),
    (2, 'Elias Rowan', 'Ireland', 1979),
    (3, 'Mina Park', 'South Korea', 1990),
    (4, 'Sofia Reed', 'Canada', 1984),
    (5, 'Tariq Ellis', 'United Kingdom', 1988);

INSERT INTO Quotes (quote_text, book_id, author_id) VALUES
    ('The lantern was still warm when we found it.', 1, 1),
    ('Someone had dusted every shelf except the highest one.', 1, 1),
    ('At dawn, the footprints led away from the sea.', 1, 1),
    ('We marked the frozen lake in blue pencil.', 2, 1),
    ('By morning, the snow had covered our trail.', 2, 1),
    ('She folded the paper stem around a wire.', 3, 2),
    ('We planted the real seeds by the kitchen door.', 3, 2),
    ('The copper roofs caught the last of the light.', 4, 2),
    ('The gate opened when Mira returned the bell.', 4, 2),
    ('Your letter arrived on the first clear day in weeks.', 5, 3),
    ('I kept the envelope because you had drawn a boat on it.', 5, 3),
    ('The ferry left with three passengers and a bicycle.', 6, 3),
    ('At the dock, the ticket booth was already closed.', 6, 3),
    ('We set a bowl beneath the leak and went back to bed.', 7, 4),
    ('She opened the window when the rain eased.', 7, 4),
    ('The station passed over our old landing site at noon.', 8, 4),
    ('I counted six minutes before the radio came back.', 8, 4),
    ('The pines ended at a narrow stream.', 9, 4),
    ('We stopped to refill our bottles before the climb.', 9, 4),
    ('From the ridge, we could see the road home.', 9, 4);

COMMIT;