install.packages("RDCOMClient", repos="http://www.omegahat.net/R")
install.packages("rmarkdown", repos="http://cran.us.r-project.org")
install.packages("fs", repos="http://cran.us.r-project.org")
library(RDCOMClient)
library(fs)
library(rmarkdown)

print("In daily_update1.R")

# the documents folder...
user_folder <- path.expand('~')

search.phrase <- 'Conjunction Reports'

save.fldr <- paste0(user_folder, '/Website/Website_files/conj_data') # Set a root folder to save attachments into
print(save.fldr)

outlook_app <- COMCreate("Outlook.Application")
search <- outlook_app$AdvancedSearch(
  "Inbox",
  paste0("http://schemas.microsoft.com/mapi/proptag/0x0037001E ci_phrasematch '", search.phrase, "'")
)

Sys.sleep(40) # Wait some time to allow search to complete

results <- search[['Results']]
print(paste("Results:", results))

index = c(results[['Count']])

attachments.obj <- results[[index]][['attachments']]
      save.path <- file.path(save.fldr, attachments.obj[[1]][['FileName']]) # Set the save path
      print(save.path)
      attachments.obj[[1]]$SaveAsFile(save.path) # Save the attachment
