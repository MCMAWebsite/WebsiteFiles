if(!require(rmarkdown)) { install.packages("rmarkdown", repos="http://cran.us.r-project.org")}
if(!require(RDCOMClient)) {install.packages("RDCOMClient", repos="http://www.omegahat.net/R")}
if(!require(fs)) { install.packages("fs", repos="http://cran.us.r-project.org")}

print("In daily_update1.R")

# the documents folder...
search.phrase <- 'Conjunction Reports'
save.fldr <- file.path(path.expand('~'), "Website", "Website_files", "conj_data") # Set a root folder to save attachments into
print(paste("Save Folder:", save.fldr))

outlook_app <- COMCreate("Outlook.Application")
search <- outlook_app$AdvancedSearch("Inbox", paste0("http://schemas.microsoft.com/mapi/proptag/0x0037001E ci_phrasematch '", search.phrase, "'"))
Sys.sleep(20) # Wait some time to allow search to complete

results <- search[['Results']]
print(paste("Results:", results))

index = c(results[['Count']])

attachments.obj <- results[[index]][['attachments']]
save.path <- file.path(save.fldr, attachments.obj[[1]][['FileName']]) # Set the save path
print(paste("Save Path:", save.path))
attachments.obj[[1]]$SaveAsFile(save.path) # Save the attachment
