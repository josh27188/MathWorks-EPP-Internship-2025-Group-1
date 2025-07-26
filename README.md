**EPP Final Drone Report \- Group 1**  
By: Charles Oh, Glenna Lustina, Joshua Chan, & Omar Lizarraga

**Project description**  
The final project consists of a drone design that can adequately carry payloads without having to compromise any stability or control when flying. This is thanks to the lightweight but strong structural frames design of our drone that were created through various statics and physics calculations, as well as through the verification of tools such as MATLAB. Included in the deliverable is the drone designed in Solidworks with all the appropriate measurements, hand-calculations for the drone’s internal reactions, MATLAB code that verifies and further explores the internal reactions of the drone, as well as a video that shows the movement of the drone. The drone arm is modeled as a simplified cantilever beam to maximize payload. Finally, the design created allows for a payload lift for the drone of 2.09 kg. 

**Methodology and Results**   
We first had to get a general understanding of a drone, so we started by analyzing a 1-dimensional line with a given length and with four motor forces upward and one downward force due to gravity. It was sufficient in getting the general idea but not rigorous enough for drone arm analysis. To obtain more rigor, we turned the 1D line into a general 3D object with four arms connected to one disk-like center volume. We assumed the connections were fixed (i.e., a cantilever connection). This is a sufficient assumption due to the rigid connection of our drone arms to our main center body. We need only to analyze two objects, one drone arm and the center body. This is because there are two unique objects; the other three arms are identical to the one we are focusing on. When applying knowledge from our statistics course, we get an equivalent system to our crude 1-D system, which lets us know we are in the right direction with our current advanced system. Our singular drone arm has three forces and one moment. The reaction moment, reaction force, motor force, and force due to gravity. Lastly, before we analyze the internal forces, we consider a constant load due to air resistance to get a general case for static equilibrium. (This will prove to be very similar to V=0, showing that air resistance can be neglected.) Once analyzed and creating our shear moment diagram in MATLAB, we can see that our drone arm has negligible loading due to air friction (under speeds less than 100 mph or 45 m/s) and that the highest moment occurs at the point on the arm closest to the base, and it has the highest shear at the point closest to the motor. Lastly, for the material for the drone, we chose carbon fiber for the arms, aluminium for the center base, and plastic for everything not vital. This maximizes the strength of our weak points and payload capacity while also minimizing our cost and weight constraints. The material strength of carbon fiber is well within the range to handle the forces acting on the drone arm and is unlikely to deform in action.

**Layout**

* Individual parts and assembly of drone design in Solidworks 2024  
* .m MATLAB file for drone calculations and graphs   
* GIF of drone animation

**How to interact with the code**  
(NOTE: NEEDS THE SYMS TOOLBOX TO FUNCTION PROPERLY) The given parameters in the MATLAB code are our values for the drone. It includes generic values for air resistance, which can be changed (the most significant value being the speed of the drone). The drag coefficient is approximate and can be changed if needed (although it will still be negligible compared to the force produced by the motors). Simply run the script, and it will produce the max shear value and the max bending moment value on our drone arm and supply accurate shear/moment diagrams.

**Role breakdown**  
CAD Sub-Team

- Joshua Chan: Assisted CAD and hand calculations and material analysis for manufacturing  
- Omar Lizarraga: Created and developed CAD model of drone along with the assistance of hand calculations

Analysis Sub-Team

- Glenna Lustina: Assisted with hand calculations and developed a large part of the MATLAB code, as well as created progress report for each team meeting  
- Charles Oh: Created the physical model for our drone and applied the model to MATLAB code for a general calculator for shear/moment diagrams.

**Drone Figures:**  Also found in [https://drive.google.com/drive/folders/10lNNwxoHOJNpBDjOo5zbXNCLQpnn-jCL?usp=sharing](https://drive.google.com/drive/folders/10lNNwxoHOJNpBDjOo5zbXNCLQpnn-jCL?usp=sharing)

Figure 1: Isometric view of drone

Figure 2: Top-down view of drone

Figure 3: Side view of drone

Figure 4: Mass Properties & Center of Mass

**Additional information drone information**

* Drone design mass breakdown  
  * Top base: 0.22 kg  
  * Bottom base: 0.49 kg  
  * 1 Arm: 0.13 kg  
  * 1 Leg: 0.12 kg  
  * 1 Motor: 0.09 kg  
  * 1 Propellor: 0.02 kg  
  * Total mass of drone: 1.91 kg   
* Materials of Drone  
  * Hexcel AS4C (3000 filaments) Carbon Fiber:  
    * Arms  
  * 6061-T6 Aluminum   
    * Top frame  
    * Bottom frame  
  * PE Low/Medium Density Plastic:  
    * Motor  
    * Propellors  
    * Legs

**Hand Calculations**   
https://drive.google.com/drive/folders/10lNNwxoHOJNpBDjOo5zbXNCLQpnn-jCL?usp=sharing

**MATLAB Produced Shear/Moment Diagrams under Team’s Parameters**  
