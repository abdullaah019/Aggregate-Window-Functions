select
	t.*
   , min(t.items_in_trans) over(partition by t.trans_dt) as min_items_in_trans	
from
 transactions t