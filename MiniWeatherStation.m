% Minor Project
% John Yacoub, December 8, 2020
% -------------------------------------------------------------------------
function FeedPlant

clear all % Clears all the variables
clc % Clears the comand window

a = arduino('COM3', 'uno'); % Intialized the a variable and assign to board
stop = false; % boolean for while loop


while(~stop) % stops only when button is pressed
  
  voltage = readVoltage(a, 'A1') % check soil sensor value
    
  if(voltage > 3) % dry plant
      
     writeDigitalPin(a, 'D2', 1) % Turn pump on 
     writeDigitalPin(a, 'D4', 1) % Turn led light d4 on
     pause(2)
     writeDigitalPin(a, 'D2', 0) % Turn pump off
     writeDigitalPin(a, 'D4', 0) % Turn led light d4 off
      
  end
    
    
  pause(2)   % Pause to allow water to soke into the soil
  stop = readDigitalPin(a,'D6') % Allow me to stop it with the button anytime I want
 

end