# Mini Weather Station

**Project Description:**

Mini weather station and  calibration/testing application using MATLAB’s “App Designer” software and an Arduino Grove board with additional sensors. In addition to MATLAB’s App Designer software, I also used MATLAB’s modelling software Simulink in order to reliably capture live data from the boards sensors and use that data in my application. This project’s focus was to create a user-friendly application that allows the user to test some of the supported actuators on the grove board and to calibrate the board’s sensors in such a way that any user would be able to collect meaningful data from the sensors as well as interact with that data.  

<p align="center">
  <img src="https://user-images.githubusercontent.com/89855894/152086180-2dd04897-d3d1-4073-9eff-f64e133a01a4.png" />
 </p>
 
<p align="center"><b> Figure 1: Arduino Grove Board </b></p>


<p align="center">
  <img src="https://user-images.githubusercontent.com/89855894/152275606-eab546c6-c3a3-41bb-a8cb-c112efe97fa8.png" />
 </p>
 
<p align="center"><b> Figure 2: Graphing UI </b></p>

**TECHNICAL REQUIREMENTS/SPECIFICATIONS:**

The system/application is broken into four distinct sections: testing, calibration, data collection and graphing, and data manipulation, each with their own specifications:  

1.	Testing: Allow the user to test the actuators connected to their board like the green and red LEDs and the buzzer as well as give the user the ability to change the intensity of actuators that use the pulse with modulation function.

2.	Calibration: Give the user a choice of two different calibration methods: the first method is to start using the application right away with a calibration that I have tested in my environment and I know gives correct information. The second choice is for the user to input their environments sound level (dB), light level (LUX), and temperature (°C) in order to calibrate the data, they are getting from their sensors. This allows the user to be sure that the data is accurate and is not altered because of external factors (like having a lot of background noise or many different sources of light in their room.) The user can also return to the basic calibration from their manual calibration using an auto calibrate button to compare both results.

3.	Data Collection and Graphing: Allow the user to collect accurate data from 5 different sensors (sound sensor, light sensor, temperature sensor (LM35), humidity sensor (DHT11), and a moisture sensor). The user has the ability to choose the duration of the live data collection (through an external graph) and after the live data collection reaches the specified duration the data is then plotted directly in the application. In the application the data that the user sees has the specified units labelled in the graph and the data is calibrated based the user’s choice. 

4.	Data Manipulation: Once the data is plotted in the application the user then has 5 different graph manipulations/calculations that they can do with the data that is on the graph. These include clearing the noise of the data, calculating the rate of change/derivative of the data (limited function) and plotting it on the graph, calculating and plotting the mean of the data, and plotting the line/polynomial of best fit and calculating the residual error. The clear noise and polynomial of best fit also allow the user to choose the respective filter size and the degree of the polynomial.

**COMPONENTS LIST:**	
For the hardware I mainly use the Arduino board with two extra sensors, overall, all of the components I used in this project are as follows (from Grove documentation of the board): 
*	Red LED: Simple LED module. 
*	Green LED: Simple LED built into the board.
*	Piezo Buzzer: a device that can generate basic beeps and tones.
*	Light Sensor: Detects surrounding light intensity. 
*	Sound Sensor: Detects surrounding sound intensity.
*	DHT11 Humidity Sensor: Detects surrounding humidity values
*	(External) LM35 Temperature Sensor: Detects surrounding temperature values.
*	(External) Moisture Sensor: Detects the moisture values of where it is placed.


**TESTING:**

In the testing part of my project, I made sure that I was getting precise data as I ran live plots multiple times under one condition and then changed the condition and compared the data and made sure that I could see the difference between each case. I used white box testing methods also as I tested all the components of my application by running small unit tests on the individual components of the application and ensured that I was getting expected results using specific input data like playing music with a specific noise level and comparing the graphed data to the expected results (picture below for reference). 
  
<p align="center">
  <img src="https://user-images.githubusercontent.com/89855894/152275788-50b921bc-f5f9-441e-b779-b9913598c14c.png" />
  <img src="https://user-images.githubusercontent.com/89855894/152275803-757e5001-41b6-424a-a4f9-ea0fc00528f7.png" />

 </p>
  
  <p align="center"><b> Figure 3: Sound Data (Using MATLAB and Arduino and the sound sensor and my application) vs. Sound Data (Using phone microphone and an app)  </b></p>

**CONCLUSION:**

Overall, my goal in this project was to develop a user-friendly application that allows the user to interact and test their grove board as well as capture accurate data from the sensors on the board and relay that data onto meaningful graphs. 


