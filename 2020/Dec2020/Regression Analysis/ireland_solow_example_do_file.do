*Set the working directory
cd "E:\Dropbox (Gates Institute)\Narendra's\PMA2.0\TCB\Dec2020\Stata"

*Load in the data
use "ireland_solow_growth_model_example.dta", clear

*Open a log file
log using "Ireland Solow Example.log", replace

*Generate the log of the valiables
gen ln_rgdp=ln(rgdp)
gen ln_i=ln(i)

*Label the variables
label variable ln_rgdp "Log of Real GDP"
label variable ln_i "Log of Investment Rate"

*Generate a scatter diagram
scatter ln_rgdp ln_i

*Generate a scater diagram with linear fit
twoway (scatter ln_rgdp ln_i) (lfit ln_rgdp ln_i)

*Run a regression analysis
regress ln_rgdp ln_i

*Generate the predicted value of ln_rgdp
predict ln_rgdp_hat, xb

*Generate the error values
gen error=ln_rgdp-ln_rgdp_hat

*Generate the average value of ln_rgdp
summarize ln_rgdp
gen ln_rgdp_bar=r(mean)

*Generate the part explaind by the model (deterministic component)
gen explained=ln_rgdp_hat-ln_rgdp_bar

