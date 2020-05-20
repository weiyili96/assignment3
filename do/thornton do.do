*************************************************************
* name: Assignment 3
* author: Weiyi Li
* description: redo the thornton example
* date: may 19, 2020
*************************************************************

use "/Users/weiyi/Desktop/BU/summer 2020/assignment 3/data/thornton_hiv.dta"
tempfile hiv
save "`hiv'", replace

* run regression
regress got any male
gen bany = _b[any]
gen bmale = _b[male]
tempfile iter1
save "`iter1'", replace
