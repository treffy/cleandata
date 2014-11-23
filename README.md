Clean Data course project
=========

## Setup
* Go to your project folder
* Run git clone https://github.com/treffy/cleandata.git 
* This will create cleandata folder
* Copy the Samsung data folder "UCI HAR Dataset" into cleandata folder
* Go to the cleandata folder
* A previously generated file cleanData.txt will present (you can read it)
* CodeBook will contain instructions on what was done

## Run
* To generate the file again
* Start RStudio
* Set working directory <your project folder>/cleandata
* Run these commands:
* source("run_analysis.R")
* data <- run_analysis()
* This will create the new cleanData.txt file
* To see the data in R run View(data) command

