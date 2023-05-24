select * 
from public.dean_chirieleison

select 
sum("Chase Yards") as "ChaseYardsSum", 
sum("Boyd Yards") as "BoydYardSum", 
sum("Higgins Yards") as "HigginsYardSum", 
CONCAT(sum(case when "Result" = 'Win' then 1 else 0 end)
, '-' , sum(case when "Result" = 'Loss' then 1 else 0 end)) as "Win/Loss"
from public.dean_chirieleison

