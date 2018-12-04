select
oo.PARTNUMBER
,oo.REQUESTEDQTY
,oo.COMPLETEDQTY
,oo.ORDERNUMBER
,so.start
,so.stop

from OPS_OpenOrders oo left join vOPS_Seamless so on so.workcenter=ltrim(oo.WORKCENTER) and so.workorder_id=oo.ORDERNUMBER
where ltrim(oo.workcenter)='57601'
and so.stop is null and so.start is not null