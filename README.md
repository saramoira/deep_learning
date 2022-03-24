# Multi-Label Image Classification of Tropical Cyclone Satellite Data
Saramoira Shields

## Abstract
I built and tuned two CNN multi-label image classifiers (trained on different datasets) to compare their performance at identifying windspeed category and storm structure type for tropical cyclones in the Eastern Pacific and Atlantic. 

## Design 

I downloaded two two different image datasets for comparison: [GOES 4km Remapped Color Enhanced Infrared Imagery](), and [GOES 2km Relative IR Imagery with BD Enhancement Curve](). The 4km dataset uses an earth-fixed coordinate system, and the 2km dataset uses a storm-fixed coordinate system:

![GOES 4km Color Enhanced Infrared: Animation](https://github.com/saramoira/deep_learning/blob/main/images/Dorian_4km_small.gif) ![GOES 2km Infrared with BD Enhancement Curve: Animation](https://github.com/saramoira/deep_learning/blob/main/images/Dorian_2km_small.gif)

In order to obtain datasets that included labels for each image, I first downloaded the [Advanced Dvorak Technique (ADT) history files]() for all the storms. I used this text dataset to download only those satellite images with matching timestamps to the ADT calculations.

I chose to compare these datasets in particular because they are produced in real-time during the life of a storm, and I am interested in testing my selected trained model against official NOAA information on storms in the 2022 Hurricane season. 

## Data

* NOAA’s [Advanced Dvorak Technique (ADT) history files](https://www.ssd.noaa.gov/PS/TROP/2021/adt/archive.html) for Atlantic and Eastern Pacific storms between 2012-2021. [Example history file](https://www.ssd.noaa.gov/PS/TROP/DATA/2021/adt/text/01L-list.txt)
* [Satellite Imagery Archives](https://rammb-data.cira.colostate.edu/tc_realtime/storm_satellite.asp?storm_identifier=al072021) hosted at Colorado State University’s Cooperative Institute for Research in the Atmosphere.

## Outcome

* 

## Algorithms/Tools
This project used BeautifulSoup and Perl for data collection and initial preprocessing, pandas for data cleaning, and Keras for CNN model building. Matplotlib, Tensorboard, and NN-SVG were used for data visualization.
