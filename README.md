# Multi-Label Image Classification of Tropical Cyclone Satellite Data
Saramoira Shields

## Abstract
I built and tuned two CNN multi-label image classifiers (trained on different datasets) to compare their performance at identifying windspeed category and storm structure type for tropical cyclones in the Eastern Pacific and Atlantic. I then compared the use of binary cross-entropy vs. soft F1 score as a metric.  

## Design 

I downloaded two different image datasets for comparison: [GOES 4km Remapped Color Enhanced Infrared Imagery](), and [GOES 2km Relative IR Imagery with BD Enhancement Curve](). The 4km dataset uses an earth-fixed coordinate system, and the 2km dataset uses a storm-fixed coordinate system:

<table>
  <tr>
    <td>Hurricane Dorian 4km Color Enhanced</td>
     <td>Hurricane Dorian 2km with BD Enhancement Curve</td>
  </tr>
  <tr>
    <td><img src="https://github.com/saramoira/deep_learning/blob/main/images/Dorian_4km_small.gif"></td>
    <td><img src="https://github.com/saramoira/deep_learning/blob/main/images/Dorian_2km_small.gif"></td>
  </tr>
 </table>

In order to obtain datasets that included labels for each image, I first downloaded the Advanced Dvorak Technique (ADT) history files for all the storms. I used this text dataset to download only those satellite images with matching timestamps to the ADT calculations.

I chose to compare these datasets in particular because they are produced in real-time during the life of a storm, and I am interested in testing my selected trained model against official NOAA information on storms in the 2022 Hurricane season. 

## Data

* NOAA’s [Advanced Dvorak Technique (ADT) history files](https://www.ssd.noaa.gov/PS/TROP/2021/adt/archive.html) for Atlantic and Eastern Pacific storms between 2012-2021. [Example history file](https://www.ssd.noaa.gov/PS/TROP/DATA/2021/adt/text/01L-list.txt)
* [Satellite Imagery Archives](https://rammb-data.cira.colostate.edu/tc_realtime/storm_satellite.asp?storm_identifier=al072021) hosted at Colorado State University’s Cooperative Institute for Research in the Atmosphere.

## Outcome

* The 4km color image dataset was noisier, and the models didn't perform as consistently as the ones using the 2km images. 
* The final training set was quite large and I had to downsample the images quite a bit. I also used tf.data.AUTOTUNE to try to manage memory usage during training so that my machine didn't crash.
* Soft F1 was cool! See this plot as a function of the threshold between 10 and 1:![comparison](https://user-images.githubusercontent.com/1490364/160144383-34496e54-5143-4837-a6ca-902aa792addf.png)

* I need a lot more training time to be able to implement more complex models. My GPU was maxed out.

Soft-F1 vs Binary Cross Entropy on 10 epochs:
<table>
  <tr>
    <td>Soft F1 Training History</td>
     <td>Binary Cross Entropy Training History</td>
  </tr>
  <tr>
    <td><img src="https://github.com/saramoira/deep_learning/blob/main/images/10_epochs_soft_f1_plot.png"></td>
    <td><img src="https://github.com/saramoira/deep_learning/blob/main/images/10_epochs_bce_plot.png"></td>
  </tr>
 </table>


## Algorithms/Tools
This project used BeautifulSoup and Perl for data collection and initial preprocessing, pandas for data cleaning, and Keras for CNN model building. Matplotlib was used for data visualization. 

I also implemented a transfer learning pipeline using tf.data. 
