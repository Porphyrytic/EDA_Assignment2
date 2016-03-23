# National Emissions Inventory Data
# 

# Download code:

if(!file.exists("./data")){
        print("Directory not found.  Creating Data Directory")
        dir.create("./data")}

if(!file.exists("./data/PM25.rds")){
        print("Data file not found.  Downloading File...")
        fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
        download.file(fileUrl,destfile = "./data/NEI.zip")
        unzip("./data/NEI.zip",exdir = "./data")
        file.rename("./data/summarySCC_PM25.rds","./data/PM25.rds")
        file.remove("./data/NEI.zip")     }

# if(!exists("HPC")){
#         print("Reading Household Power Consumption file")
#         n1 <-read.table("./data/HPC.txt",sep=";",header = TRUE,nrows=1,stringsAsFactors=FALSE)
#         HPC <-read.table("./data/HPC.txt",sep = ";",stringsAsFactors=FALSE, na.strings = "?",skip=grep("1/2/2007", readLines("./data/HPC.txt"))[[1]],nrows=2880)
#         names(HPC)<-names(n1)
#         rm(n1)        }
