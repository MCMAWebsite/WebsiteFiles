@echo off
set RPath=%UserProfile%\Documents\R\R-4.0.2\bin\Rscript.exe
echo %RPath%

echo "Running Daily Update"
%RPath% C:\Users\james.mcdougall\Documents\Website\WebsiteFiles\daily_update1.R

echo "Running Complete Cluster Setup"
%RPath% C:\Users\james.mcdougall\Documents\Website\WebsiteFiles\complete_cluster_setup.R

echo "Running Pure Cluster Setup"
%RPath% C:\Users\james.mcdougall\Documents\Website\WebsiteFiles\pure_cluster_setup.R

echo "Running breakdown by country"
%RPath% C:/Users/james.mcdougall/Documents/Website/Country_breakdown/by_country.Rmd

ren %UserProfile%\Documents\Website\Country_breakdown\by_country.html index.html
move %UserProfile%\Documents\Website\Country_breakdown\index.html %UserProfile%\Documents\Website\Country_breakdown\docs\index.html
cd %UserProfile%\Documents\Website\Country_breakdown\docs

git add .
git commit -m "By country daily"
git push


C:\Users\james.mcdougall\Documents\R\R-4.0.2\bin\Rscript.exe -e "install.packages('rmarkdown', repos='http://cran.us.r-project.org');library('rmarkdown');render('C:/Users/james.mcdougall/Documents/Website/Cumulative_conjunction_complete/complete_cumnum.Rmd')"
ren "C:\Users\james.mcdougall\Documents\Website\Cumulative_conjunction_complete\complete_cumnum.html" "index.html"
move "C:\Users\james.mcdougall\Documents\Website\Cumulative_conjunction_complete\index.html" "C:\Users\james.mcdougall\Documents\Website\Cumulative_conjunction_complete\docs\index.html"
cd "C:/Users/james.mcdougall/Documents/Website/Cumulative_conjunction_complete/docs"
git add .
git commit -m "Cumulative conjunction complete cluster daily"
git push


C:\Users\james.mcdougall\Documents\R\R-4.0.2\bin\Rscript.exe -e "install.packages('rmarkdown', repos='http://cran.us.r-project.org');library('rmarkdown');render('C:/Users/james.mcdougall/Documents/Website/Risk_algorithms/top50_list.Rmd')"
ren "C:\Users\james.mcdougall\Documents\Website\Risk_algorithms\top50_list.html" "index.html"
move "C:\Users\james.mcdougall\Documents\Website\Risk_algorithms\index.html" "C:\Users\james.mcdougall\Documents\Website\Risk_algorithms\docs\index.html"
cd "C:/Users/james.mcdougall/Documents/Website/Risk_algorithms/docs"
git add .
git commit -m "Risk algorithms daily"
git push


C:\Users\james.mcdougall\Documents\R\R-4.0.2\bin\Rscript.exe -e "install.packages('rmarkdown', repos='http://cran.us.r-project.org');library('rmarkdown');render('C:/Users/james.mcdougall/Documents/Website/Conjunction_pure_cluster/pure_cumnum.Rmd')"
ren "C:\Users\james.mcdougall\Documents\Website\Conjunction_pure_cluster\pure_cumnum.html" "index.html"
move "C:\Users\james.mcdougall\Documents\Website\Conjunction_pure_cluster\index.html" "C:\Users\james.mcdougall\Documents\Website\Conjunction_pure_cluster\docs\index.html"
cd "C:/Users/james.mcdougall/Documents/Website/Conjunction_pure_cluster/docs"
git add .
git commit -m "Cumulative Conjunction Pure Cluster daily"
git push

C:\Users\james.mcdougall\Documents\R\R-4.0.2\bin\Rscript.exe -e "install.packages('rmarkdown', repos='http://cran.us.r-project.org');library('rmarkdown');render('C:/Users/james.mcdougall/Documents/Website/pure_by_country/pure_by_country.Rmd')"
ren "C:\Users\james.mcdougall\Documents\Website\pure_by_country\pure_by_country.html" "index.html"
move "C:\Users\james.mcdougall\Documents\Website\pure_by_country\index.html" "C:\Users\james.mcdougall\Documents\Website\pure_by_country\docs\index.html"
cd "C:/Users/james.mcdougall/Documents/Website/pure_by_country/docs"
git add .
git commit -m "By Country Pure Cluster daily"
git push


C:\Users\james.mcdougall\Documents\R\R-4.0.2\bin\Rscript.exe -e "install.packages('rmarkdown', repos='http://cran.us.r-project.org');library('rmarkdown');render('C:/Users/james.mcdougall/Documents/Website/pure_top50/pure_top50.Rmd')"
ren "C:\Users\james.mcdougall\Documents\Website\pure_top50\pure_top50.html" "index.html"
move "C:\Users\james.mcdougall\Documents\Website\pure_top50\index.html" "C:\Users\james.mcdougall\Documents\Website\pure_top50\docs\index.html"
cd "C:/Users/james.mcdougall/Documents/Website/pure_top50/docs"
git add .
git commit -m"Statistically Most Concerning Pure Cluster daily"
git push

