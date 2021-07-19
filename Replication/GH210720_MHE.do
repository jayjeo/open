/******* MHE Replication:
MHE = Joshua D. Angrist, Jorn-Steffen Pischke - Mostly Harmless Econometrics_ An Empiricist's Companion (2008)
Data webpage = http://economics.mit.edu/faculty/angrist/data1/mhe
*/
cd "C:\Users\acube\Dropbox\Study\GitHub\public\Replication\Rep_files\njmin"
******** Card and Krueger (1994)
use "https://raw.githubusercontent.com/jayjeo/public/master/Replication/Rep_files/njmin/public.dat", clear

infix dictionary using public.dat{
    SHEET 1-3
    CHAIN 5-5
    CO_OWNED 7-7
    STATE 9-9
    SOUTHJ 11-11
    CENTRALJ 13-13
    NORTHJ 15-15
    PA1 17-17
    PA2 19-19
    SHORE 21-21
}

save public, replace

First Interview
NCALLS         23       24     2.0   number of call-backs*
EMPFT          26       30     5.2   # full-time employees
EMPPT          32       36     5.2   # part-time employees
NMGRS          38       42     5.2   # managers/ass't managers
WAGE_ST        44       48     5.2   starting wage ($/hr)
INCTIME        50       54     5.1   months to usual first raise
FIRSTINC       56       60     5.2   usual amount of first raise ($/hr)
BONUS          62       62     1.0   1 if cash bounty for new workers
PCTAFF         64       68     5.1   % employees affected by new minimum
MEALS          70       70     1.0   free/reduced price code (See below)
OPEN           72       76     5.2   hour of opening
HRSOPEN        78       82     5.2   number hrs open per day
PSODA          84       88     5.2   price of medium soda, including tax
PFRY           90       94     5.2   price of small fries, including tax
PENTREE        96      100     5.2   price of entree, including tax
NREGS         102      103     2.0   number of cash registers in store
NREGS11       105      106     2.0   number of registers open at 11:00 am

Second Interview
TYPE2         108      108     1.0   type 2nd interview 1=phone; 2=personal
STATUS2       110      110     1.0   status of second interview: see below
DATE2         112      117     6.0   date of second interview MMDDYY format
NCALLS2       119      120     2.0   number of call-backs*
EMPFT2        122      126     5.2   # full-time employees
EMPPT2        128      132     5.2   # part-time employees
NMGRS2        134      138     5.2   # managers/ass't managers
WAGE_ST2      140      144     5.2   starting wage ($/hr)
INCTIME2      146      150     5.1   months to usual first raise
FIRSTIN2      152      156     5.2   usual amount of first raise ($/hr)
SPECIAL2      158      158     1.0   1 if special program for new workers
MEALS2        160      160     1.0   free/reduced price code (See below)
OPEN2R        162      166     5.2   hour of opening
HRSOPEN2      168      172     5.2   number hrs open per day
PSODA2        174      178     5.2   price of medium soda, including tax
PFRY2         180      184     5.2   price of small fries, including tax
PENTREE2      186      190     5.2   price of entree, including tax
NREGS2        192      193     2.0   number of cash registers in store
NREGS112      195      196     2.0   number of registers open at 11:00 am


Code Book for New Jersey-Pennsylvania Data Set
Note: there are 410 observations in the data set

            Column Location
 Name:       Start    End    Format     Explanation
SHEET           1        3     3.0   sheet number (unique store id)
CHAIN           5        5     1.0   chain 1=bk; 2=kfc; 3=roys; 4=wendys
CO_OWNED        7        7     1.0   1 if company owned
STATE           9        9     1.0   1 if NJ; 0 if Pa                      

Dummies for location:
SOUTHJ         11       11     1.0   1 if in southern NJ
CENTRALJ       13       13     1.0   1 if in central NJ
NORTHJ         15       15     1.0   1 if in northern NJ
PA1            17       17     1.0   1 if in PA, northeast suburbs of Phila
PA2            19       19     1.0   1 if in PA, Easton etc
SHORE          21       21     1.0   1 if on NJ shore

First Interview
NCALLS         23       24     2.0   number of call-backs*
EMPFT          26       30     5.2   # full-time employees
EMPPT          32       36     5.2   # part-time employees
NMGRS          38       42     5.2   # managers/ass't managers
WAGE_ST        44       48     5.2   starting wage ($/hr)
INCTIME        50       54     5.1   months to usual first raise
FIRSTINC       56       60     5.2   usual amount of first raise ($/hr)
BONUS          62       62     1.0   1 if cash bounty for new workers
PCTAFF         64       68     5.1   % employees affected by new minimum
MEALS          70       70     1.0   free/reduced price code (See below)
OPEN           72       76     5.2   hour of opening
HRSOPEN        78       82     5.2   number hrs open per day
PSODA          84       88     5.2   price of medium soda, including tax
PFRY           90       94     5.2   price of small fries, including tax
PENTREE        96      100     5.2   price of entree, including tax
NREGS         102      103     2.0   number of cash registers in store
NREGS11       105      106     2.0   number of registers open at 11:00 am

Second Interview
TYPE2         108      108     1.0   type 2nd interview 1=phone; 2=personal
STATUS2       110      110     1.0   status of second interview: see below
DATE2         112      117     6.0   date of second interview MMDDYY format
NCALLS2       119      120     2.0   number of call-backs*
EMPFT2        122      126     5.2   # full-time employees
EMPPT2        128      132     5.2   # part-time employees
NMGRS2        134      138     5.2   # managers/ass't managers
WAGE_ST2      140      144     5.2   starting wage ($/hr)
INCTIME2      146      150     5.1   months to usual first raise
FIRSTIN2      152      156     5.2   usual amount of first raise ($/hr)
SPECIAL2      158      158     1.0   1 if special program for new workers
MEALS2        160      160     1.0   free/reduced price code (See below)
OPEN2R        162      166     5.2   hour of opening
HRSOPEN2      168      172     5.2   number hrs open per day
PSODA2        174      178     5.2   price of medium soda, including tax
PFRY2         180      184     5.2   price of small fries, including tax
PENTREE2      186      190     5.2   price of entree, including tax
NREGS2        192      193     2.0   number of cash registers in store
NREGS112      195      196     2.0   number of registers open at 11:00 am

Codes:

Free/reduced Meal Variable:
0 = none
1 = free meals
2 = reduced price meals
3 = both free and reduced price meals


Second Interview Status
0 = refused second interview (count = 1)
1 = answered 2nd interview (count = 399)
2 = closed for renovations (count = 2)
3 = closed "permanently" (count = 6)
4 = closed for highway construction (count = 1)
5 = closed due to Mall fire (count = 1)


*Note: number of call-backs = 0 if contacted on first call
*/
