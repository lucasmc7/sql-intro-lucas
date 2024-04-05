-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935


SELECT
sum(hits)
FROM players p
inner join stats s
    on p.id = s.player_id

where p.first_name = "Barry"
    and p.last_name = "Bonds"