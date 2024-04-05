-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+


select
t.name,
p.first_name,
p.last_name,
max(s.home_runs)

from players p

inner join stats s
    on p.id = s.player_id

inner join teams t 
    on s.team_id = t.id

where t.year = 2019;