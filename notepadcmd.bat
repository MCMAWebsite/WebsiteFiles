@echo off
set RPath=%UserProfile%\Documents\R\R-4.0.2\bin\Rscript.exe
echo Rscript path: %RPath%
set WebPath=%UserProfile%\Documents\Website
echo Website Path: %WebPath%

:: Change this branch to master or whichever you desire
set Branch=james-mcdougall

echo ***********************************Running Daily Update***********************************
%RPath% %WebPath%\WebsiteFiles\daily_update1.R
echo ***********************************Running Complete Cluster Setup***********************************
%RPath% %WebPath%\WebsiteFiles\complete_cluster_setup.R
echo ***********************************Running Pure Cluster Setup***********************************
%RPath% %WebPath%\WebsiteFiles\pure_cluster_setup.R
echo ***********************************Running breakdown by country***********************************
%RPath% %WebPath%\Country_breakdown\by_country.Rmd

echo ***********************************Pushing By-Country data to GitHub***********************************
ren %UserProfile%\Documents\Website\Country_breakdown\by_country.html index.html
move %UserProfile%\Documents\Website\Country_breakdown\index.html %UserProfile%\Documents\Website\Country_breakdown\docs\index.html
cd %UserProfile%\Documents\Website\Country_breakdown\docs
git add .
git commit -m "By country daily"
git push origin %Branch%


echo ***********************************Running Cumulative Conjuntion***********************************
%RPath% %WebPath%\Cumulative_conjunction_complete\complete_cumnum.Rmd

echo ***********************************Pushing Cumulative conjution data to GitHub***********************************
ren %WebPath%\Cumulative_conjunction_complete\complete_cumnum.html index.html
move %WebPath%\Cumulative_conjunction_complete\index.html %WebPath%\Cumulative_conjunction_complete\docs\index.html
cd %WebPath%\Cumulative_conjunction_complete\docs
git add .
git commit -m "Cumulative conjunction complete cluster daily"
git push origin %Branch%


echo ***********************************Running Risk Algorithms on Top 50 List***********************************
%RPath% %WebPath%\Risk_algorithms\top50_list.Rmd

echo ***********************************Pushing Risk Algorithms to GitHub***********************************
ren %WebPath%\Risk_algorithms\top50_list.html index.html
move %WebPath%\Risk_algorithms\index.html %WebPath%\Risk_algorithms\docs\index.html
cd %WebPath%\Risk_algorithms\docs
git add .
git commit -m "Risk algorithms daily"
git push origin %Branch%


echo ***********************************Running Conjunction Pure Cluster***********************************
%RPath% %WebPath%\Conjunction_pure_cluster\pure_cumnum.Rmd

echo ***********************************Pushing Cumulative Conjunction to GitHub***********************************
ren %WebPath%\Conjunction_pure_cluster\pure_cumnum.html index.html
move %WebPath%\Conjunction_pure_cluster\index.html %WebPath%\Conjunction_pure_cluster\docs\index.html
cd %WebPath%\Conjunction_pure_cluster\docs
git add .
git commit -m "Cumulative Conjunction Pure Cluster daily"
git push origin %Branch%


echo ***********************************Running Pure By Country***********************************
%RPath% %WebPath%\pure_by_country\pure_by_country.Rmd

echo ***********************************Pushing Pure By Country to GitHub***********************************
ren %WebPath%\pure_by_country\pure_by_country.html index.html
move %WebPath%\pure_by_country\index.html %WebPath%\pure_by_country\docs\index.html
cd %WebPath%\pure_by_country\docs
git add .
git commit -m "By Country Pure Cluster daily"
git push origin %Branch%

:: This RMD file is not in the repository
::echo ***********************************Running Pure Top 50***********************************
::%RPath% %WebPath%\pure_top50\pure_top50.Rmd
::
::echo ***********************************Pushing Pure Top 50 to GitHub***********************************
::ren %WebPath%\pure_top50\pure_top50.html index.html
::move %WebPath%\pure_top50\index.html %WebPath%\pure_top50\docs\index.html
::cd %WebPath%\pure_top50\docs
::git add .
::git commit -m"Statistically Most Concerning Pure Cluster daily"
::git push origin james-mcdougall