## Goal:

Build a CNN classifier to label satellite images of tropical cyclones with correct wind speeds. 

## Data Profile:

The dataset consists of 70,000+ satellite images that are cropped to 366x366. [Example image here](). The images are organized into folders by wind speed at the time the image was taken. 

## Done So Far:

* Cropped raw dataset and matched timestamped images to wind speeds from the Advanced Dvorak Technique outputs using a combination of perl scripts and pandas
* built a basic CNN using keras to predict wind speed 

## Next Steps: 

I would like to set up transfer learning, but I'm not sure what pretrained model would be a good fit for this dataset. I'd also like to test this dataset against the enhanced infrared image dataset: [example image here](https://github.com/saramoira/deep_learning/blob/main/images/2019al10_4kmirimg_201909182300.gif).
