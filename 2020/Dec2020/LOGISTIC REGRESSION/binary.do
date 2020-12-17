clear
set more off
clear mata

*change directory
cd "E:\Self_GitKraken\Working_Repo_GitHub\TCB\2020\Dec2020\LOGISTIC REGRESSION"

*downloading dataset
use https://stats.idre.ucla.edu/stat/stata/dae/binary.dta, clear

*saving dataset 
save binary.dta , replace
