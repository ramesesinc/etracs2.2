[list]
select objid, tdno, pin, state, taxpayername, dtfiled, filedby, approvedby 
from faasupdate order by dtfiled desc  

[list-by-state]
select objid, tdno, pin, state, taxpayername, dtfiled, filedby, approvedby 
from faasupdate 
where state = $P{state}
order by dtfiled desc  
 
[list-by-pin]
select  
	objid, tdno, pin, state, taxpayername,  dtfiled, filedby, approvedby  
from faasupdate   
where pin like $P{searchtext} order by dtfiled desc   
 
[list-by-pin-state]
select 
	objid,tdno,  pin, state, taxpayername, dtfiled, filedby, approvedby  
from faasupdate  
where pin like $P{searchtext} and state = $P{state} order by dtfiled desc  

[list-by-tdno]
select  
	objid, tdno, pin, state, taxpayername,  dtfiled, filedby, approvedby  
from faasupdate   
where tdno like $P{searchtext} order by dtfiled desc  
 
[list-by-tdno-state]
select 
	objid,tdno,  pin, state, taxpayername, dtfiled, filedby, approvedby  
from faasupdate  
where tdno like $P{searchtext} and state = $P{state} order by dtfiled desc  

[getRealPropertyByPin]
select objid as realpropertyid from realproperty where pin=$P{pin}

[updateRealProperty]
update realproperty set
	cadastrallotno=$P{cadastrallotno},
	blockno=$P{blockno},
	surveyno=$P{surveyno},
	houseno=$P{houseno},
	street=$P{street},
	purok=$P{purok},
	north=$P{north},
	east=$P{east},
	south=$P{south},
	west=$P{west}
where objid=$P{realpropertyid}

[updateFaas]
update faas set 
	info=$P{info}, 
	rp=$P{rp}
where objid=$P{faasid} 

[updateFaasList]
 update faaslist set  
	titleno=$P{titleno}, 
	titletype=$P{titletype}, 
	titledate=$P{titledate}, 
	taxpayerid=$P{taxpayerid},
	taxpayerno=$P{taxpayerno},
	taxpayername=$P{taxpayername},
	taxpayeraddress=$P{taxpayeraddress},
	administratorname=$P{administratorname},
	administratoraddress=$P{administratoraddress},
	cadastrallotno=$P{cadastrallotno},
	blockno=$P{blockno},
	surveyno=$P{surveyno}, 
	restriction=$P{restriction}, 
	backtaxyrs=$P{backtaxyrs},
	prevtdno=$P{prevtdno},
	prevowner=$P{prevowner},
	prevpin=$P{prevpin}, 
	prevav=$P{prevav}, 
	prevmv=$P{prevmv} 	
 where objid=$P{faasid} 
 
 
 [updateRPTLedger]
 update rptledger set 
	taxpayerid=$P{taxpayerid},
	taxpayerno=$P{taxpayerno},
	taxpayername=$P{taxpayername},
	taxpayeraddress=$P{taxpayeraddress},
	administratorname=$P{administratorname},
	administratoraddress=$P{administratoraddress},
	cadastrallotno=$P{cadastrallotno},
	blockno=$P{blockno},
	prevtdno=$P{prevtdno} 
where faasid=$P{faasid} 

[getImprovements]
 select f.objid, f.rp, f.info, fl.fullpin as pin from faaslist fl
 inner join faas f on f.objid = fl.objid
 where fl.landfaasid = $P{faasid} and f.docstate <> 'CANCELLED'
 
 [updateImprovementsLandfaasid]
 update faaslist set landfaastaxpayerid=$P{lanfaastaxpayerid} where objid=$P{objid}
 
 [updateRPTLedgerImprovement]
 update rptledger
 set cadastrallotno=$P{cadastrallotno}, blockno=$P{blockno}
 where faasid=$P{faasid}

 