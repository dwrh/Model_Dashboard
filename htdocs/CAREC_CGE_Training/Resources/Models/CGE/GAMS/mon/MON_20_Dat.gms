*##
*## This file creates an aggregated dataset from the 2000 China SAM
*## Also included are a variety of set declarations and initial data for the model
*##

*## Define the aggregate SAM institution sets and subsets

set s /
ACrops
ALivestoc
AOthAg
AOilGas
ACoal
AMining
AProdFd
ATextApp
AChem
AMetMinPd
AMachin
AOthMfg
AElecPwr
AConst
ATrade
ATransp
AComm
APrvSrv
ATourism
APubSrv
CCrops
CLivestoc
COthAg
COilGas
CCoal
CMining
CProdFd
CTextApp
CChem
CMetMinPd
CMachin
COthMfg
CElecPwr
CConst
CTrade
CTransp
CComm
CPrvSrv
CTourism
CPubSrv
UnSkLab
SkLab
Capital
Land
Water
Itax
DTax
TTax
Margin
ENT
HH
Govt
CapAcct
ROW

Total

/

i(s) /
ACrops
ALivestoc
AOthAg
AOilGas
ACoal
AMining
AProdFd
ATextApp
AChem
AMetMinPd
AMachin
AOthMfg
AElecPwr
AConst
ATrade
ATransp
AComm
APrvSrv
ATourism
APubSrv
/

k(s) /
CCrops
CLivestoc
COthAg
COilGas
CCoal
CMining
CProdFd
CTextApp
CChem
CMetMinPd
CMachin
COthMfg
CElecPwr
CConst
CTrade
CTransp
CComm
CPrvSrv
CTourism
CPubSrv
/

v(s) /
UnSkLab
SkLab
Capital

land
water
/

l(v) /
UnSkLab
SkLab
/

   ul(l) Unskilled labor /
UnSkLab
   /

   sl(l) Skilled labor /
SkLab
   /

   lt(v) Land types 
   /
      Land      Land remuneration
   /

   kt(v) Capital types /
      Capital      Capital remuneration
   /
   nr(v) Natural resources      /
    Water
                /

   e(s)  Enterprises /
ENT
   /

   fd(s) Final demand accounts /
HH
ENT
GOVT
*ITax
*TTax
*DTax
CapAcct
   /

   h(fd) Households /
HH/

   f(fd) Other final demand accounts /
GOVT
*ITax
*TTax
*DTax
CapAcct
   /

   r(s) Regions /
ROW
   /

mapik(i,k) /
ACrops    .         CCrops
ALivestoc .         CLivestoc
AOthAg    .         COthAg
AOilGas   .         COilGas
ACoal     .         CCoal
AMining   .         CMining
AProdFd   .         CProdFd
ATextApp  .         CTextApp
AChem     .         CChem
AMetMinPd .         CMetMinPd
AMachin   .         CMachin
AOthMfg   .         COthMfg
AElecPwr  .         CElecPwr
AConst    .         CConst
ATrade    .         CTrade
ATransp   .         CTransp
AComm     .         CComm
APrvSrv   .         CPrvSrv
ATourism  .         CTourism
APubSrv   .         CPubSrv
/

;

*sl(l) = not ul(l) ;



*## Define the institution sets and subsets     for the complete 2000 Vietnam SAM

set s0 /
ACrops
ALivestoc
AAgServ
AFish
AForestry
AOilProd
AGasProd
ACoalCoke
AFerOre
ANFOre
AOthMin
ACement
AMeatProd
AVegOil
ADairy
ASugar
AMilling
ABaking
AOthFood
ABevTob
ATextile
AApparel
ALeather
AWoodProd
APapPub
APetRef
AChemical
APlastic
APharma
AMinProd
AFerMet
AOthMet
AMetProd
AVehicle
ATransEQ
AElectEQ
APrecInst
AMachinry
AOthMfg
AElectDist
AConst
ATrade
ATransp
AComm
AFinsrv
ABusSrv
AHotRest
ATourism
APubAdmin
ADwellings
CCrops
CLivestoc
CAgServ
CFish
CForestry
COilProd
CGasProd
CCoalCoke
CFerOre
CNFOre
COthMin
CCement
CMeatProd
CVegOil
CDairy
CSugar
CMilling
CBaking
COthFood
CBevTob
CTextile
CApparel
CLeather
CWoodProd
CPapPub
CPetRef
CChemical
CPlastic
CPharma
CMinProd
CFerMet
COthMet
CMetProd
CVehicle
CTransEQ
CElectEQ
CPrecInst
CMachinry
COthMfg
CElectDist
CConst
CTrade
CTransp
CComm
CFinsrv
CBusSrv
CHotRest
CTourism
CPubAdmin
CDwellings
Capital
Itax
Margin
HH
Govt
CapAcct
ROW

UnSkLab
SkLab
ENT
DTax
TTax
Total

Land
Water
/

i0(s0) /
ACrops
ALivestoc
AAgServ
AFish
AForestry
AOilProd
AGasProd
ACoalCoke
AFerOre
ANFOre
AOthMin
ACement
AMeatProd
AVegOil
ADairy
ASugar
ABaking
AOthFood
ABevTob
ATextile
AApparel
ALeather
AWoodProd
APapPub
APetRef
AChemical
APharma
AMinProd
AFerMet
AOthMet
AMetProd
AVehicle
ATransEQ
AElectEQ
APrecInst
AMachinry
AOthMfg
AElectDist
APlastic
AConst
ATrade
ATransp
AComm
AFinsrv
AMilling
ABusSrv
AHotRest
ATourism
APubAdmin
ADwellings
/

set ag0(i0) /
ACrops
ALivestoc
AAgServ
/ 

k0(s0) /
CCrops
CLivestoc
CAgServ
CFish
CForestry
COilProd
CGasProd
CCoalCoke
CFerOre
CNFOre
COthMin
CCement
CMeatProd
CVegOil
CDairy
CSugar
CBaking
COthFood
CBevTob
CTextile
CApparel
CLeather
CWoodProd
CPapPub
CPetRef
CChemical
CPharma
CMinProd
CFerMet
COthMet
CMetProd
CVehicle
CTransEQ
CElectEQ
CPrecInst
CMachinry
COthMfg
CElectDist
CPlastic
CConst
CTrade
CTransp
CComm
CFinsrv
CMilling
CBusSrv
CHotRest
CTourism
CPubAdmin
CDwellings
/

v0(s0) /
UnSkLab
SkLab
Capital

land
water
/

l0(v0) /
UnSkLab
SkLab
/

   ul0(l0) Unskilled labor /
UnSkLab
   /

   sl0(l0) Skilled labor /
SkLab
   /

   lt0(v0) Land types 
  /
      Land      Land remuneration
   /

   kt0(v0) Capital types /
      Capital      Capital remuneration
   /
   nr0(v0) Natural resources      /
    Water
                /

   e0(s0)  Enterprises /
ENT
   /

   fd0(s0) Final demand accounts /
HH
ENT
GOVT
*ITax
*TTax
*DTax
CapAcct
   /

   h0(fd0) Households /
HH/

   f0(fd0) Other final demand accounts /
GOVT
*ITax
*TTax
*DTax
CapAcct
   /

   r0(s0) Regions /
ROW
   /

set food0(k0) Food Commodities /
CCrops
CLivestoc
CFish
/ ;

set manufac0(k0) Manufactured Commodities /
CMeatProd
CVegOil
CDairy
CSugar
CBaking
COthFood
CBevTob
CTextile
CApparel
CLeather
CWoodProd
CPapPub
CPetRef
CChemical
CPlastic
CPharma
CMinProd
CFerMet
COthMet
CMetProd
CVehicle
CTransEQ
CElectEQ
CPrecInst
CMachinry
COthMfg
/ ;

set services0(k0) Service Commodities /
CElectDist
CConst
CTrade
CTransp
CComm
CFinsrv
CMilling
CBusSrv
CHotRest
CTourism
CPubAdmin
CDwellings
/ ;


Alias(i0,j0) ;

set hs0(fd0) Subsistence Consumption for Households /
HH/ ;


        alias (s0,ss0), (s,ss), (v0,vv0), (j0,jj0), (r0,rr0), (k0,kk0), (fd0,ffd0) ;




*## Define the aggregation mapping sets and subsets

set map(s0,s)  Aggregation mapping /
ACrops    .         ACrops
ALivestoc .         ALivestoc
AAgServ   .         AOthAg
AFish     .         AOthAg
AForestry .         AOthAg
AOilProd  .         AOilGas
AGasProd  .         AOilGas
ACoalCoke .         ACoal
AFerOre   .         AMining
ANFOre    .         AMining
AOthMin   .         AMining
ACement   .         AMetMinPd
AMeatProd .         AProdFd
AVegOil   .         AProdFd
ADairy    .         AProdFd
ASugar    .         AProdFd
AMilling  .         AProdFd
ABaking   .         AProdFd
AOthFood  .         AProdFd
ABevTob   .         AProdFd
ATextile  .         ATextApp
AApparel  .         ATextApp
ALeather  .         ATextApp
AWoodProd .         AOthMfg
APapPub   .         AOthMfg
APetRef   .         AOilGas
AChemical .         AChem
APlastic  .         AChem
APharma   .         AChem
AMinProd  .         AMetMinPd
AFerMet   .         AMetMinPd
AOthMet   .         AMetMinPd
AMetProd  .         AMetMinPd
AVehicle  .         AMachin
ATransEQ  .         AMachin
AElectEQ  .         AMachin
APrecInst .         AMachin
AMachinry .         AMachin
AOthMfg   .         AOthMfg
AElectDist          .         AElecPwr
AConst    .         AConst
ATrade    .         ATrade
ATransp   .         ATransp
AComm     .         AComm
AFinsrv   .         APrvSrv
ABusSrv   .         APrvSrv
AHotRest  .         APrvSrv
ATourism  .         ATourism
APubAdmin .         APubsrv
ADwellings          .         APrvSrv
CCrops    .         CCrops
CLivestoc .         CLivestoc
CAgServ   .         COthAg
CFish     .         COthAg
CForestry .         COthAg
COilProd  .         COilGas
CGasProd  .         COilGas
CCoalCoke .         CCoal
CFerOre   .         CMining
CNFOre    .         CMining
COthMin   .         CMining
CCement   .         CMetMinPd
CMeatProd .         CProdFd
CVegOil   .         CProdFd
CDairy    .         CProdFd
CSugar    .         CProdFd
CMilling  .         CProdFd
CBaking   .         CProdFd
COthFood  .         CProdFd
CBevTob   .         CProdFd
CTextile  .         CTextApp
CApparel  .         CTextApp
CLeather  .         CTextApp
CWoodProd .         COthMfg
CPapPub   .         COthMfg
CPetRef   .         COilGas
CChemical .         CChem
CPlastic  .         CChem
CPharma   .         CChem
CMinProd  .         CMetMinPd
CFerMet   .         CMetMinPd
COthMet   .         CMetMinPd
CMetProd  .         CMetMinPd
CVehicle  .         CMachin
CTransEQ  .         CMachin
CElectEQ  .         CMachin
CPrecInst .         CMachin
CMachinry .         CMachin
COthMfg   .         COthMfg
CElectDist          .         CElecPwr
CConst    .         CConst
CTrade    .         CTrade
CTransp   .         CTransp
CComm     .         CComm
CFinsrv   .         CPrvSrv
CBusSrv   .         CPrvSrv
CHotRest  .         CPrvSrv
CTourism  .         CTourism
CPubAdmin .         CPubsrv
CDwellings          .         CPrvSrv
UnSkLab   .         UnSkLab
SkLab     .         SkLab
Capital   .         Capital
Land      .         Land
Water     .         Water
Itax      .         Itax
DTax      .         DTax
TTax      .         TTax
Margin    .         Margin
ENT       .         ENT
HH        .         HH
Govt      .         Govt
CapAcct   .         CapAcct
ROW       .         ROW
Total     .         Total
/ ;

set mapi(i0,i)  Aggregation mapping for sectors 
;
mapi(i0,i)$map(i0,i) = yes ;
set mapk(k0,k)  Aggregation mapping for sectors 
;
mapk(k0,k)$map(k0,k) = yes ;

set mapc0(i0,k0)  Aggregation mapping for sectors /
ACrops    .         CCrops
ALivestoc .         CLivestoc
AAgServ   .         CAgServ
AFish     .         CFish
AForestry .         CForestry
AOilProd  .         COilProd
AGasProd  .         CGasProd
ACoalCoke .         CCoalCoke
AFerOre   .         CFerOre
ANFOre    .         CNFOre
AOthMin   .         COthMin
ACement   .         CCement
AMeatProd .         CMeatProd
AVegOil   .         CVegOil
ADairy    .         CDairy
ASugar    .         CSugar
AMilling  .         CMilling
ABaking   .         CBaking
AOthFood  .         COthFood
ABevTob   .         CBevTob
ATextile  .         CTextile
AApparel  .         CApparel
ALeather  .         CLeather
AWoodProd .         CWoodProd
APapPub   .         CPapPub
APetRef   .         CPetRef
AChemical .         CChemical
APlastic  .         CPlastic
APharma   .         CPharma
AMinProd  .         CMinProd
AFerMet   .         CFerMet
AOthMet   .         COthMet
AMetProd  .         CMetProd
AVehicle  .         CVehicle
ATransEQ  .         CTransEQ
AElectEQ  .         CElectEQ
APrecInst .         CPrecInst
AMachinry .         CMachinry
AOthMfg   .         COthMfg
AElectDist          .         CElectDist
AConst    .         CConst
ATrade    .         CTrade
ATransp   .         CTransp
AComm     .         CComm
AFinsrv   .         CFinsrv
ABusSrv   .         CBusSrv
AHotRest  .         CHotRest
ATourism  .         CTourism
APubAdmin .         CPubAdmin
ADwellings          .         CDwellings
/ ;

set mapc(i,k)   Aggregation mapping from activities to commodities /
ACrops    .         CCrops
ALivestoc .         CLivestoc
AOthAg    .         COthAg
AOilGas   .         COilGas
ACoal     .         CCoal
AMining   .         CMining
AProdFd   .         CProdFd
ATextApp  .         CTextApp
AChem     .         CChem
AMetMinPd .         CMetMinPd
AMachin   .         CMachin
AOthMfg   .         COthMfg
AElecPwr  .         CElecPwr
AConst    .         CConst
ATrade    .         CTrade
ATransp   .         CTransp
AComm     .         CComm
APrvSrv   .         CPrvSrv
ATourism  .         CTourism
APubSrv   .         CPubSrv
/ ;

set mapv(v0,v)  Aggregation mapping for value added /
UnSkLab   .         UnSkLab
SkLab     .         SkLab
Capital   .         Capital
/ ;

set mape(e0,e)  Aggregation mapping for enterprises /
ENT	.	ENT
/ ;

set maph(h0,h)  Aggregation mapping for households /
HH        .         HH
/ ;

set mapf(f0,f)  Aggregation mapping for other final demand accounts /
GOVT		.	GOVT
*ITax		.	ITax
*TTax		.	TTax
*DTax		.	DTax
CapAcct		.	CapAcct
/ ;

set mapr(r0,r)  Aggregation mapping for regions /
ROW       .	ROW
/ ;

set ittt0(i0)/
ATrade
ATransp
AComm
/ ;

set ittt(i) /
ATrade
ATransp
AComm
/ ;

set kttt0(k0)/
CTrade
CTransp
CComm
/ ;

set kttt(k) /
CTrade
CTransp
CComm
/ ;

set mapittt(i0,i)/
ATrade    .         ATrade
ATransp   .         ATransp
AComm     .         AComm
/ ;

set mapkttt(k0,k)/
CTrade    .         CTrade
CTransp   .         CTransp
CComm     .         CComm
/ ;


*## Define and load the Original SAM

 parameter sam11(s0,ss0), sam12(s0,ss0), sam21(s0,ss0), sam22(s0,ss0) ;
 parameter chk, chk1 ;
 parameter nsam(s,ss) ;

$onempty
$include MON_SAM08.dat
$offempty
sam0("total",s0) = 0 ;
sam0(s0,"total") = 0 ;
sam0("total",s0) = sum(ss0,sam0(ss0,s0)) ;
sam0(s0,"total") = sum(ss0,sam0(s0,ss0)) ;

sam0("ent","ent") = 0 ;

parameter beta ;
beta = .5 ;
*sam0(kttt0,k0) = beta*sum(i0$mapc0(i0,k0),sam0(kttt0,i0)) ;
*sam0(kttt0,i0) = (1-beta)*sam0(kttt0,i0) ;
*sam0(i0,k0)$mapc0(i0,k0) = sam0(i0,k0) - sum(kttt0,sam0(kttt0,k0)) ;

*sam0("land",ag0) = beta*sam0("capital",ag0) ;
*sam0("capital",ag0) = (1-beta)*sam0("capital",ag0) ;
*sam0("ent","land") = sum(i0,sam0("land",i0)) ;

nsam(s,ss)= sum(s0$map(s0,s),sum(ss0$map(ss0,ss),sam0(s0,ss0))) ;
nsam("total",s) = 0 ;
nsam(s,"total") = 0 ;
nsam("total",s) = sum(ss,nsam(ss,s)) ;
nsam(s,"total") = sum(ss,nsam(s,ss)) ;
display nsam ;

*$ontext
* ------------------------------------------------------------------------------
*
* Write out the SAM in CSV format
*
* ------------------------------------------------------------------------------

put samfile ;
samfile.pc   = 5 ;
samfile.pw = 10000 ;
samfile.nj =   1 ;
samfile.nw =  15 ;
samfile.nd =   9 ;
samfile.nz =   0 ;
samfile.nr =   0 ;


*loop(s,loop(ss$(sam(s,ss) ne 0),
*   put system.title,t.tl,s.tl,ss.tl,(sam(s,ss)/scale) / ;
*)) ;

put ' '; loop (s, put s.tl ) ; put / ;
loop(s,
put  s.tl, loop(ss, put nsAM(s,ss)) ; put / ; 

 ) ;
*$offtext

*## Correct for diagonal household to nonmarket consumption transfers
*sam0(hs0,hr0) = 0 ;

* Initialize Margins
parameter marg00(i0) ;
marg00(i0) = 0 ;

parameter marg0(i) ;

parameter marg(i) ;
marg00(i0) = 4*marg00(i0)/(100 - marg00(i0)) ;
marg0(i) = sum(i0$mapi(i0,i),marg00(i0)*sam0("Total",i0)/sum(j0,sam0("Total",j0))) ;


*## Initialize border price trade valuations

Parameter wtf_pe0(r0,k0) Base trade flows at pre FOB export price 
*/
*/ 
;
wtf_pe0(r0,k0)$(sum(rr0,sam0(k0,rr0)) ne 0) = sam0(k0,r0) ;
*wtf_pe0(r0,k0)$(sum(rr0,sam0(k0,rr0)) ne 0) = sam0(k0,r0) - sam0("t06etax",k0)*sam0(k0,r0)/sum(rr0,sam0(k0,rr0)) ;

Parameter wtf_wpe0(r0,k0) Base trade flows at FOB export price 
*/
*/
;

wtf_wpe0(r0,k0) = sam0(k0,r0) ;

Parameter wtf_wpm0(r0,k0) Base trade flows at CIF import price 
*/
*/ 
;
wtf_wpm0(r0,k0) = sam0(r0,k0);

Parameter wtf_pm0(r0,k0) Base trade flows at post CIF import price 
*/
*/ 
;
wtf_pm0(r0,k0)$(sum(rr0,sam0(rr0,k0)) ne 0) = sam0(r0,k0) + sam0("ttax",k0)*sam0(r0,k0)/sum(rr0,sam0(rr0,k0)) ;


*## Initialize a variety of tax instruments

Parameter patax0(k0,j0) Base taxes on intermediate consumption 
*/
*/ 
;
*patax0(k0,j0)$sam0(k0,j0) = sam0("govt",j0)*sam0(k0,j0)/sum(kk0,sam0(kk0,j0)) ;
patax0(k0,j0) = 0 ;

Parameter vatax0(v0,j0) Base taxes on factors of production 
*/
*/ 
;

*vatax0(v0,j0)$sum(vv0,sam0(vv0,j0)) = (sam0("t02ptax",j0)+sam0("t01vat",j0))*sam0(v0,j0)/sum(vv0,sam0(vv0,j0)) ;

*vatax0("f13land",j0) = vatax0("f13land",j0) + sam0("t05ftax","f13land")*sam0("f13land",j0)/sum(jj0,sam0("f13land",jj0)) ;

*sam0(v0,j0) = sam0(v0,j0) + vatax0(v0,j0) ;

*vatax0("f14capital",j0) = vatax0("f14capital",j0)
*                        + sam0("t05ftax","f14capital")*sam0("f14capital",j0)/sum(jj0,sam0("f14capital",jj0)) ;

vatax0(l0,j0) = sam0("govt",l0)*sam0(l0,j0)/sum(jj0,sam0(l0,jj0)) ;
                        
Parameter fdtax0(k0,fd0) Base taxes on final demand consumption 
*/
*/ 
;

*fdtax0(k0,fd0)$sum(ffd0,sam0(k0,ffd0)) = sam0("itax",k0)*sam0(k0,fd0)/sum(ffd0,sam0(k0,ffd0)) ;
fdtax0(k0,fd0) =0 ;

*## Initialized miscellaneous exogenous data

Parameter tk0 Base capital stock /
        1.00E+3
/ ;

tk0 = sum(i0,sum(k0,sam0(k0,i0))) ;

Parameter tpop0 Base population in millions /
        77.000
/ ;

Parameter popsh0(h0) Base population shares 
*/
*/ 
;
        popsh0(h0) = 100 ;


Parameter labvol0(i0,l0) Initial labor demand volumes 
*// 
;

labvol0(i0,l0) = sam0(l0,i0) ;


Parameter ppp0 Base PPP exchange rate /
    1.00
/ ;

Parameter eta0(k0,h0) Base income elasticities 
*/
*/ 
;

        eta0(food0,h0) = .7 ;
        eta0(manufac0,h0) = 1.0 ;
        eta0(services0,h0) = 1.5 ;

*        eta0("CTrAir",h0) = .5 ;


scalar scale Scaling factor for initial data   / .001 / ;
scalar pscale Scaling factor for labor volumes / .001 / ;

sam0(s0,ss0)    = scale*sam0(s0,ss0) ;
patax0(k0,j0)   = scale*patax0(k0,j0) ;
vatax0(v0,j0)   = scale*vatax0(v0,j0) ;
fdtax0(k0,fd0)  = scale*fdtax0(k0,fd0) ;
tk0             = scale*tk0 ;
wtf_pe0(r0,k0)  = scale*wtf_pe0(r0,k0) ;
wtf_wpe0(r0,k0) = scale*wtf_wpe0(r0,k0) ;
wtf_wpm0(r0,k0) = scale*wtf_wpm0(r0,k0) ;
wtf_pm0(r0,k0)  = scale*wtf_pm0(r0,k0) ;
labvol0(i0,l0)  = pscale*labvol0(i0,l0) ;

*## Structural parameters for the new aggregation
set ipar / sigmap,    sigmav,   sigmakl,   sigmaks,    sigmau,    sigmas,    sigmak,    sigmat / ;
set kpar / sigmac,    sigmam,    sigmaw,    sigmax,    sigmaz,      etae / ;

table KeySect(i,ipar) Key sectoral parameters 

          sigmap    sigmav    sigmakl   sigmaks   sigmau    sigmas    sigmak    sigmat

ACrops    0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
ALivestoc 0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
AOthAg    0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
AOilGas   0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
ACoal     0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
AMining   0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
AProdFd   0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
ATextApp  0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
AChem     0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
AMetMinPd 0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
AMachin   0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
AOthMfg   0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
AElecPwr  0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
AConst    0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
ATrade    0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
ATransp   0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
AComm     0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
APrvSrv   0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
ATourism  0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
APubSrv   0.0       0.8       0.8       0.8       0.8       0.8       0.8       0.8
;

*keysect(i,"sigmav") = .85 ;
*keysect("ATAir",ipar) = .7 ;
*keysect(i,"sigmap") = 0 ;

table KeyComm(k,kpar) Key commodity parameters 

          sigmac    sigmam    sigmaw    sigmax    sigmaz    etae

CCrops    4.0       4.0       4.0       4.0       4.0       5.0
CLivestoc 4.0       4.0       4.0       4.0       4.0       5.0
COthAg    4.0       4.0       4.0       4.0       4.0       5.0
COilGas   4.0       4.0       4.0       4.0       4.0       5.0
CCoal     4.0       4.0       4.0       4.0       4.0       5.0
CMining   4.0       4.0       4.0       4.0       4.0       5.0
CProdFd   4.0       4.0       4.0       4.0       4.0       5.0
CTextApp  4.0       4.0       4.0       4.0       4.0       5.0
CChem     4.0       4.0       4.0       4.0       4.0       5.0
CMetMinPd 4.0       4.0       4.0       4.0       4.0       5.0
CMachin   4.0       4.0       4.0       4.0       4.0       5.0
COthMfg   4.0       4.0       4.0       4.0       4.0       5.0
CElecPwr  4.0       4.0       4.0       4.0       4.0       5.0
CConst    4.0       4.0       4.0       4.0       4.0       5.0
CTrade    4.0       4.0       4.0       4.0       4.0       5.0
CTransp   4.0       4.0       4.0       4.0       4.0       5.0
CComm     4.0       4.0       4.0       4.0       4.0       5.0
CPrvSrv   4.0       4.0       4.0       4.0       4.0       5.0
CTourism  4.0       4.0       4.0       4.0       4.0       5.0
CPubSrv   4.0       4.0       4.0       4.0       4.0       5.0
;

*keycomm(k,"etae") = inf ;

parameter Frisch(h) ;
Frisch(h) = -1 ;

parameter sigmaf(f) Final demand expenditure elasticities /
        govt   	0
        capacct        0
   / ;

scalar omegakt Capital mobility across types                 / 0.0 / ;
parameter omegak(kt) Capital mobility across sectors ;
omegak(kt) = 0 ;

scalar omegatl Land mobility across type of land             / 0.0 / ;
parameter omegat(lt) Land mobility across sectors ;
omegat(lt) = 0 ;

set gz Geographic zone / Rur, Urb, Tot / ;
set gz2(gz) / Rur, Urb / ;

set mapg(i,gz2) ;

mapg(i,"rur") = yes ;
mapg("apubsrv","rur") = no ;
mapg("apubsrv","urb") = yes ;

parameter migr0(l) Base year migration ;

migr0(l) = 0 ;
migr0(l) = pscale*migr0(l) ;

parameter glab0(l,gz) Base year labor supply growth rates ;
glab0(l,gz) = 1 ;

parameter omegal(l,gz)  Labor supply elasticities ;
omegal(l,gz) = 0 ;

parameter omegar(i) Sector specific factor supply elasticity ;
omegar(i) = 1 ;

parameter omegam(l) Migration elasticity ;
omegam(l) = inf ;
*omegam("unskl") = 1 ;


$offempty

* ----- Declare some additional subsets

set ip(i) Sectors with endogenous labor productivity ;
set np(i) Sectors with exogenous labor productivity ;

set mg different types of margins / d, m, x / ;

* ----- Create set aliases

alias(s,ss) ;
alias(i0,j0) ;
alias(h0,hh0) ;
alias(i,j) ;
alias(h,hh) ;

alias(k0,kk0) ;
alias(k,kk) ;


set ag(i) /
ACrops
ALivestoc
AOthAg
/ ;


np(i) = yes$(ag(i)) ;
*np(i) = no ;
ip(i) = not np(i) ;
display ip, np ;

set manu(i) /
AOilGas
ACoal
AMining
AProdFd
ATextApp
AChem
AMetMinPd
AMachin
AOthMfg
/

set srv(i) /
AElecPwr
AConst
ATrade
ATransp
AComm
APrvSrv
ATourism
APubSrv
/ ;

set ttt(i) /
ATrade
ATransp
AComm
/ ;

manu(i) = not(ag(i)+srv(i)) ;
display ag, manu, srv ;
