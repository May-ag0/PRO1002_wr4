-- 1. List all books and the number of quotes for each.
SELECT
    b.title,
    COUNT(q.id) AS quote_count
FROM Books AS b
LEFT JOIN Quotes AS q ON q.book_id = b.id
GROUP BY b.id, b.title
ORDER BY b.title;

-- 2. List all authors and the number of quotes for each.
SELECT
    a.name,
    COUNT(q.id) AS quote_count
FROM Authors AS a
LEFT JOIN Quotes AS q ON q.author_id = a.id
GROUP BY a.id, a.name
ORDER BY a.name;

-- 3. List quotes from book 1, with the author's name.
SELECT
    q.quote_text,
    a.name AS author_name
FROM Quotes AS q
JOIN Authors AS a ON q.author_id = a.id
WHERE q.book_id = 1
ORDER BY q.id;

-- 4. List quotes from author 1, with the book title.
SELECT
    q.quote_text,
    b.title AS book_title
FROM Quotes AS q
JOIN Books AS b ON q.book_id = b.id
WHERE q.author_id = 1
ORDER BY q.id;