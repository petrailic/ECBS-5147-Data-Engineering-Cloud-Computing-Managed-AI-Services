-- Replace <username> with your username (same as used in the notebook)

-- DROP VIEW IF EXISTS <username>.views;

CREATE VIEW petra.views AS
    SELECT
        title,
        views,
        rank,
        date,
        cast(from_iso8601_timestamp(retrieved_at) AS TIMESTAMP) as retrieved_at
    FROM petra.raw_views
    ORDER BY date ASC, rank ASC
