Lesson 1 Blink Led on VHDL


Dear Amazing Reader,

In this moment, I want to tell you how to synthesis the blink led on VHDL. The basic how to make blink led is to turn on and turn off the led on peridoc time.
This example used 1 second as peridoc tme to change the led status. We alredy know that FPGA used clock as heartbeat. Usually, FPGA used 50 Mhz oscillator. 
That mean, there is 50.000.000 cycle clock in 1 second. The idea of this project is to count 0 up to 49.999.999 and let the led status to 1, then count 50.000.000 down to 1 and led the led status to 0.
To make it, we need a flag. Flag to tell the count proses, is from 0 to 49.999.999 or from 500.000.000 to 1. 

I do the best to tell to you how this project. Please contact me if you confused or hard to understand this explanation.

Thank You,

Sincerely, Rizka Reza Pahlevi.