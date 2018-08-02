# Coursera JHU Programming Assignment Week 1 - Exploratory Data Analysis

This repo contains my programming assignment for week 1 for the JHU course on Exploratory Data Analysis on Coursera.

The purpose of this project is to demonstrate my ability to use exploratory graphs, understand data and develop strategies. The goal is to review the household power consumption dataset from UCI and produce a set of exploratory graphs in png format. 

## Files in this Repo
|Filename           | Description  |
|:---|:---|
|README.md | This file which describes the project|
|Instructions.md | Assignment instructions from forked file|
|CodeBook.md | Describes the variables, data and analysis performed on the data set|
|plot1.png| Histogram of Global Active Power|
|plot1.R| R script used to generate plot1.png|
|plot2.png| Line graph of Global Active Power for the period 01-Feb-2007 to 02-Feb-2007|
|plot2.R| R script used to generate plot2.png|
|plot3.png| Line graph of data from 3 sub-meters for the period 01-Feb-2007 to 02-Feb-2007|
|plot3.R| R script used to generate plot3.png|
|plot4.png| Four charts showing Global Active Power, Voltage, Energy Sub Metering and Global Reactive Power for the same period|
|plot4.R| R script used to generate plot4.png|



## To run the analysis on the data set
1. Download the zipped data from https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
2. Unzip all the files into a ``data`` directory
3. Run the functions from the scripts ``plot1.R``, ``plot2.R``, ``plot3.R`` and ``plot4.R`` from the same ``data`` directory
4. The scripts each outputs a file ``plot1.png``, ``plot2.png``, ``plot3.png`` and ``plot4.png`` in the ``data`` directory



## Data Source
The database was built from the 2075259 measurements of electric power consumption in one household with a one-minute sampling rate over the period December 2006 and November 2010.

The data was originally sourced from ["Individual household electric power consumption Data Set"](https://archive.ics.uci.edu/ml/datasets/individual+household+electric+power+consumption).  

Research is credited to : Georges HÃ©brail (georges.hebrail '@' edf.fr), Senior Researcher, EDF R&D, Clamart, France 
Alice BÃ©rard, TELECOM ParisTech Master of Engineering Internship at EDF R&D, Clamart, France.
