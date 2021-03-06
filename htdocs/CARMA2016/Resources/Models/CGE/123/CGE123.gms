$TITLE CGE123 MODEL IN GAMS

$Ontext
         This file presents a GAMS-based implementation of the 123 CGE model
         developed at the World Bank and involving papers by Jaime de Melo,
         Sherman Robinson, Jeff Lewis, Delfin Go, Pekka Sinko, and
         Shanta Devarajan (in various combinations of authors).
         The basic theory is spelled out in the paper:

           de Melo, J. and S. Robinson, (1989).  "Product Differentiation
           and the Treatment of Foreign Trade in Computable General
           Equilibrium Models of Small Open Economies,"  Journal of
           International Economics 27: 47-67.

         This application is based on the description of the 123 model in
         Applied Methods for Trade Policy Analysis:  A Handbook.

           Devarajan, S., D.S. Go, J.D. Lewis, S. Robinson, and P.
           Sinko (1997), "Simple General Equilibrium Modeling,"
           Chapter 6 in J.F. Francois and K.A. Reinert eds.,
           Applied Methods for Trade Policy Analysis:  A Handbook,
           Cambridge University Press: Cambridge UK:  156-188.

         Last Modification: David Roland-Holst, July 2009

         The Equation numbers match those in the chapter, as do variable
         definitions.  The core data also follow from the example provided
         by Devarajan et al and circulated in spreadsheet form -- the
         macro-economic accounts for Sri Lanka in 1991.  All values
         have been scaled relative to GDP.  These data are listed below.

                                Rs Billion      Output=1

        National Accounts

        Output (Value Added)    324.6940        1.0000
          Wages                 163.3200        0.5030

        GDP at  market prices   375.3390        1.1560
          Private Consumption   291.6940        0.8984
          Public Consumption     35.5830        0.1096
          Investment             86.3760        0.2660
          Exports               106.3860        0.3277
          Imports               144.7010        0.4457

        Tax Revenue
          Sales & Excise Tax     32.0270        0.0986
          Import Tariffs         18.6170        0.0573
          Export Duties           1.1370        0.0035
          Payroll Tax             0.0000        0.0000
          Personal Income Tax     3.5390        0.0109
          Capital Income Tax     12.8370        0.0395
        Total                    68.1570        0.2099

        Fiscal Account
        Revenue                  76.1790        0.2346
          NonTax                  8.0220        0.0247
        Current Expenditure      83.7560        0.2580
          Goods & Services       35.5830        0.1096
          Interest Payments      22.0730        0.0680
          Transfers & Subsidies  26.1000        0.0804
        Capital Expenditure      35.7710        0.1102
        Fiscal Balance          -43.3480       -0.1335


        Balance of Payments
        Exports - Imports       -38.3150       -0.1180
        Net Profits & Dividends  -0.7830       -0.0024
        Interest Payments        -8.8200       -0.0272
        Net Private Transfers    11.6000        0.0357
        Net Official Transfers    7.9000        0.0243
        Current Account Balance -28.4180       -0.0875

        External Debt           260.5000        0.8023
        Debt Service Payments    20.2100        0.0622


$Offtext

set vars /E, M, Ds, Dd, Qs, Qd, Pe
           Pm, Pd, Pt, Px, Pq, T, R, Sg, Y, C, S, Z, ts/ ;

$OnText
           These are the definitions of our endogenous variable set
           E        export good quantity
           M        import good quantity
           Ds       supply of domestic good
           Dd       demand for domestic good
           Qs       supply of composite good
           Qd       demand for composite good
           Pe       domestic price of export good
           Pm       dometic price of import good
           Pd       producer price of domestic good
           Pt       sales price of composite good
           Px       price of aggregate output
           Pq       price of composite good
           T        tax revenue
           R        exchange rate
           Sg       government savings
           Y        total income
           C        aggregate consumption
           S        aggregate savings
           Z        aggregate real investment
           ts       a variable for endogenizing taxes
$OffText

set exp / benchmark, fcap, tot /;

Parameters
* Here we define a mix of policy and functional parameters
           PWm      world price of import good
           PWe      world price of export good
           tm       import tariff
           te       export subsidy rate
           ts       sales or excise of VAT tax rate
           ty       direct income tax rate
           tr       government transfers
           ft       foreign transfers to government
           re       foreign remittances to private sector
           sr       average savings rate
           X        aggregate output
           G        government demand
           B        balance of trade
           at       technical shift term for CET expression
           OMEGA    export transformation elasticity
           rt       the CET exponential term
           aq       technical shift term for CES expression
           sigma    import substitution elasticity
           rq       the CES exponential term
           bq   the CES weight term in the Armington function
           bt   the CET weight term in the national product function
           values(vars,exp) a table to hold experiment values
           pchg(vars,exp) comparative static percent changes
           ;

*Initialization of parameters

           PWm    = 0.8860;
           PWe    = 1.0107;
           tm     = 0.1287;
           te     = 0.0107;
           ts     = 0.0839;
           ty     = 0.0350;
           tr     = 0.1237;
           ft     = 0.0243;
           re     = 0.0062;
           sr     = 0.1699;
           X      = 1.0000;
           G      = 0.1011;
           B      = 0.0840;
           OMEGA  = 0.6000;
           sigma  = 0.6000;
           at     = 2.2173;
           aq     = 1.9659;
           bq     = 0.3814;
           bt     = 0.7682;
           rt     = 1 + (1/OMEGA);
           rq     = (1/sigma) -1;

Variables
* These are our 19 endogenous variables
           endog(vars)   our endogenous variables
           GDP           our objective function
           ;

*Initialization of variables
Parameter initial(vars)  /
             E           0.3277
             M           0.5030
             Ds          0.6723
             Dd          0.6723
             Qs          1.1753
             Qd          1.1753
             Pe          1.1753
             Pm          1.0000
             Pd          1.0000
             Pt          1.0000
             Px          1.0839
             Pq          1.0000
             R           1.0000
             T           0.1990
             Sg         -0.0099
             Y           1.1298
             C           0.8288
             S           0.2660
             Z           0.2454
             ts          0.0839
                         /;
           endog.l(vars) = initial(vars);
            GDP.l = endog.l("Y");

         values(vars,"benchmark") = endog.l(vars);

$Stitle equation definitions

Equations

*Real flow equations with numbering following Devarajan et al
           EQ621    definition of the product transformation surface
           EQ622    definition of the Armingon aggregation function
           EQ623    expenditure definition of national income
           EQ624    supply ratios based on EQ621
           EQ625    supply ratios based on EQ622

*Nominal flows
           EQ626    government tax income definition
           EQ627    value added definition of national income
           EQ628    savings definition
           EQ629    consumption definition

*Price equations
           EQ630    internal import prices
           EQ631    internal export prices
           EQ632    consumer prices
           EQ633    national product price index
           EQ634    producer prices for the composite good
           EQ635    real exchange rate

*Market clearing Equations
           EQ636    domestic good excess demand
           EQ637    Armington composite excess demand
           EQ638    capital and current account relationship
           EQ639    savings investment linkage

*Objective function
           OBJ      This is the fake objective function for GAMS
           ;

*Note that all equations are defined as implicit functions
 EQ621..  X  -
          (at * (bt*endog("E")**rt + (1-bt)*endog("Ds")**rt)**(1/rt))   =e= 0;
 EQ622..  endog("Qs")
 - (aq * (bq*endog("M")**(-rq) + (1-bq)*endog("Dd")**(-rq))**(-1/rq))   =e= 0;
 EQ623..     endog("Qd")
 - (endog("C") + endog("Z") + G)                                        =e= 0;
 EQ624..     endog("E")
 - (endog("Ds") * (((1-bt)*endog("Pe"))/(bt*endog("Pd")))**OMEGA)       =e= 0;
 EQ625..     endog("M")
 - (endog("Dd") * ((bq*endog("Pd"))/((1-bq)*endog("Pm")))**sigma)       =e= 0;
 EQ626..     endog("T")
 - (tm*endog("R")*PWm*endog("M")  + endog("ts")*endog("Pq")*endog("Qd")
 + ty*endog("Y") - te*endog("R")*PWe*endog("E"))                        =e= 0;
 EQ627..     endog("Y")
 - (endog("Px")*X + tr*endog("Pq") + re*endog("R"))                     =e= 0;
 EQ628..     endog("S")
 - (sr * endog("Y") + endog("R") * B + endog("Sg"))                     =e= 0;
 EQ629..     endog("C")
 - ((1/endog("Pt")) * (1 - sr - ty) * endog("Y"))                       =e= 0;
 EQ630..     endog("Pm")
 - ((1 + tm) * endog("R") * PWm)                                        =e= 0;
 EQ631..     endog("Pe")
 - (endog("R") * PWe / (1 + te))                                        =e= 0;
 EQ632..     endog("Pt") 
 - ((1 + endog("ts")) * endog("Pq"))                                    =e= 0;
 EQ633..     endog("Px")
 - ((endog("Pe")*endog("E") + endog("Pd")*endog("Dd"))/X)               =e= 0;
 EQ634..     endog("Pq")
 - ((endog("Pm")*endog("M") + endog("Pd")*endog("Ds"))/endog("Qs"))     =e= 0;
 EQ635..     endog("R")
 - 1                                                                    =e= 0;
 EQ636..     endog("Ds")
 - endog("Dd")                                                          =e= 0;
 EQ637..     endog("Qs")
 - endog("Qd")                                                          =e= 0;
 EQ638..     B
 - (PWm*endog("M") -PWe*endog("E") - ft - re)                           =e= 0;
 EQ639..     endog("Z")
 - ((1/endog("Pt")) * endog("S"))                                       =e= 0;
 OBJ..
             GDP
 - endog("Y")                                                           =e= 0;

Model model1 / EQ621, EQ622, EQ623, EQ624, EQ625, EQ626, EQ627,
               EQ628, EQ629, EQ630, EQ631, EQ632, EQ633, EQ634,
               EQ635, EQ636, EQ637, EQ638, EQ639, OBJ / ;

option nlp=minos5;
options solprint=off ;
*model1.iterlim = 1000; 
*model1.optfile=4;
Solve model1 using mcp;

values(vars,exp) = endog.l(vars);

$Ontext

     Here we implement a foreign capital inflow experiment by increasing foreign
         remittances tenfold.

$Offtext


re = 10*re ;

option nlp=minos5;
*model1.iterlim = 1000; 
*model1.optfile=4;
Solve model1 using mcp;

values(vars,"fcap") = endog.l(vars);


$Ontext

     In this next conduct an adverse terms-of-trade experiment by reducing
         export prices 20 percent.

$Offtext

           re     = 0.0062;
           pwe    = 0.80*pwe ;

option nlp=minos5;
*model1.iterlim = 1000; 
*model1.optfile=4;
Solve model1 using mcp;

option nlp = minos5;
*model1.iterlim = 1000;
Solve model1 using mcp;

values(vars,"tot") = endog.l(vars);
pchg(vars,"benchmark") = 0 ;
pchg(vars,exp)$values(vars,"benchmark") = 100*(values(vars,exp)/values(vars,"benchmark") - 1) ;
option decimals=4;
Display values, pchg ;
