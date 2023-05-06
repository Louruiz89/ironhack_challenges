SELECT player_name,
games,
CAST(round (( CAST(hits as decimal) / CAST(at_bats as decimal) ), 3) AS TEXT) AS batting_average
FROM yankees
WHERE at_bats >= 100
ORDER BY batting_average DESC
