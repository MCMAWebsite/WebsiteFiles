What I did:
1. Convert all absolute paths to relative ones.
	- path.expand('~') expands to the user's documents dir.
	- inside the batch script use %UserProfile%
2. Install any packages that are missing by going into the file and adding this to the top
	- install.packages("package-name", repos="http://cran.us.r-project.org")
