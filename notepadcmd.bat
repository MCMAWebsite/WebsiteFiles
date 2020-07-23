@echo off
"C:\Users\rarora\Documents\R\R-4.0.2\bin\Rscript.exe" "C:\Users\rarora\Documents\Website\Website_files\daily_update1.R"
"C:\Users\rarora\Documents\R\R-4.0.2\bin\Rscript.exe" "C:\Users\rarora\Documents\Website\Website_files\daily_update1.R" 
"C:\Users\rarora\Documents\R\R-4.0.2\bin\Rscript.exe" "C:\Users\rarora\Documents\Website\Website_files\daily_update1.R"
"C:\Users\rarora\Documents\R\R-4.0.2\bin\Rscript.exe" "C:\Users\rarora\Documents\Website\Website_files\daily_update1.R"
"C:\Users\rarora\Documents\R\R-4.0.2\bin\Rscript.exe" "C:\Users\rarora\Documents\Website\Website_files\complete_cluster_setup.R"
"C:\Users\rarora\Documents\R\R-4.0.2\bin\Rscript.exe" "C:\Users\rarora\Documents\Website\Website_files\pure_cluster_setup.R"

"C:\Users\rarora\Documents\R\R-4.0.2\bin\Rscript.exe" -e "library('rmarkdown');render('C:/Users/rarora/Documents/Website/Country_breakdown/by_country.Rmd')"
ren "C:\Users\rarora\Documents\Website\Country_breakdown\by_country.html" "index.html"
move "C:\Users\rarora\Documents\Website\Country_breakdown\index.html" "C:\Users\rarora\Documents\Website\Country_breakdown\docs\index.html"
cd "C:/Users/rarora/Documents/Website/Country_breakdown/docs"
git add .
git commit -m"by country daily"
git push

"C:\Users\rarora\Documents\R\R-4.0.2\bin\Rscript.exe" -e "library('rmarkdown');render('C:/Users/rarora/Documents/Website/Cumulative_conjunction_complete/complete_cumnum.Rmd')"
ren "C:\Users\rarora\Documents\Website\Cumulative_conjunction_complete\complete_cumnum.html" "index.html"
move "C:\Users\rarora\Documents\Website\Cumulative_conjunction_complete\index.html" "C:\Users\rarora\Documents\Website\Cumulative_conjunction_complete\docs\index.html"
cd "C:/Users/rarora/Documents/Website/Cumulative_conjunction_complete/docs"
git add .
git commit -m"cumulative conjunction complete cluster daily"
git push

"C:\Users\rarora\Documents\R\R-4.0.2\bin\Rscript.exe" -e "library('rmarkdown');render('C:/Users/rarora/Documents/Website/Risk_algorithms/top50_list.Rmd')"
ren "C:\Users\rarora\Documents\Website\Risk_algorithms\top50_list.html" "index.html"
move "C:\Users\rarora\Documents\Website\Risk_algorithms\index.html" "C:\Users\rarora\Documents\Website\Risk_algorithms\docs\index.html"
cd "C:/Users/rarora/Documents/Website/Risk_algorithms/docs"
git add .
git commit -m"Risk algorithms daily"
git push


"C:\Users\rarora\Documents\R\R-4.0.2\bin\Rscript.exe" -e "library('rmarkdown');render('C:/Users/rarora/Documents/Website/Conjunction_pure_cluster/pure_cumnum.Rmd')"
ren "C:\Users\rarora\Documents\Website\Conjunction_pure_cluster\pure_cumnum.html" "index.html"
move "C:\Users\rarora\Documents\Website\Conjunction_pure_cluster\index.html" "C:\Users\rarora\Documents\Website\Conjunction_pure_cluster\docs\index.html"
cd "C:/Users/rarora/Documents/Website/Conjunction_pure_cluster/docs"
git add .
git commit -m"Cumulative Conjunction Pure Cluster daily"
git push

"C:\Users\rarora\Documents\R\R-4.0.2\bin\Rscript.exe" -e "library('rmarkdown');render('C:/Users/rarora/Documents/Website/pure_by_country/pure_by_country.Rmd')"
ren "C:\Users\rarora\Documents\Website\pure_by_country\pure_by_country.html" "index.html"
move "C:\Users\rarora\Documents\Website\pure_by_country\index.html" "C:\Users\rarora\Documents\Website\pure_by_country\docs\index.html"
cd "C:/Users/rarora/Documents/Website/pure_by_country/docs"
git add .
git commit -m"By Country Pure Cluster daily"
git push


"C:\Users\rarora\Documents\R\R-4.0.2\bin\Rscript.exe" -e "library('rmarkdown');render('C:/Users/rarora/Documents/Website/pure_top50/pure_top50.Rmd')"
ren "C:\Users\rarora\Documents\Website\pure_top50\pure_top50.html" "index.html"
move "C:\Users\rarora\Documents\Website\pure_top50\index.html" "C:\Users\rarora\Documents\Website\pure_top50\docs\index.html"
cd "C:/Users/rarora/Documents/Website/pure_top50/docs"
git add .
git commit -m"Statistically Most Concerning Pure Cluster daily"
git push

