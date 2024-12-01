Lab Activity 4: To find Frequency Response of a 
given system given in (Transfer Function/ Differential Equation Form)

Name			: April Sheen M. Domingo
Course and Year	: BSCpE 4


I.	OBJECTIVES:

In this laboratory exercise, the students are expected to:
•	find frequency response of a given system in differential equation form. 
II.	MATERIALS:

•	Software: MATLAB	

III.	PROCEDURES:

THEORY: 
Systems respond differently to inputs of different frequencies. Some systems may amplify components of certain frequencies, and attenuate components of other 
frequencies. The way that the system output is related to the system input for different frequencies is called the frequency response of the system. 

Since the frequency response is a complex function, we can convert it to polar notation in the complex plane. This will give us a magnitude and an angle. We call the angle the phase. 
Amplitude Response: 
For each frequency, the magnitude represents the system's tendency to amplify or 
attenuate the input signal.

![image](https://github.com/user-attachments/assets/fcae8c89-ef62-4cd9-83ab-27da591a9f40)

Phase Response: 
The phase represents the system's tendency to modify the phase of the input sinusoids

![image](https://github.com/user-attachments/assets/547807b8-37da-4aa6-b11c-62c34da139b9)


The phase response, or its derivative the group delay, tells us how the system delays the input signal as a function of frequency.

Given Difference equation is ![image](https://github.com/user-attachments/assets/142cedcc-83fe-4356-9b7e-6e6a2f5ee1b5)

Algorithm: 
Step I : Give numerator coefficients of the given transfer function or difference 
equation. 
Step II : Give denominator coefficients of the given transfer function or difference 
equation 
Step III : Pass these coefficients to matlab command freqz to find frequency response. 
Step IV : Find magnitude and phase response using matlab commands abs and angle. 
Step V : Plot magnitude and phase response.

Flow Chart: ![image](https://github.com/user-attachments/assets/c0ba2338-a7c3-4da9-82f3-4b72a2410010)


Output: 
Enter the numerator coefficients: [1] 
Enter the denominator coefficients: [1 -1/6 -1/6] 

Output Waveforms:
![Screenshot 2024-12-01 174525](https://github.com/user-attachments/assets/0beb3b5c-511b-459a-8159-bad9aefcb4f4)

RESULT: 

QUESTIONS: 
1. Define Frequency response?
   - The way a system reacts to various input signal frequencies is referred to as its frequency response. It illustrates how the output signal's phase and magnitude change with frequency and is expressed as a function of frequency.
     
2. Define magnitude response?
   - This is like checking how loud the system makes a sound for each frequency. It’s the "strength" part of the frequency response, showing whether the system boosts or reduces the signal at specific frequencies.
     
3. Define Phase response?
   - This tells us how the system shifts the timing of the waves at different frequencies, like how a sound might feel slightly delayed for higher pitches. It's the "timing" part of the frequency response.
     
4. Define transfer function.
   - Think of this as a formula or recipe that tells us exactly how a system turns an input into an output. It's like knowing the exact instructions to bake a cake with specific ingredients.

5. State the significance of difference equations.
   - They’re the step-by-step instructions for understanding how a system processes signals in the digital world. For example, they help in designing things like equalizers in music players or noise filters.

6. What are the classifications of system based on unit sample response?
   - We look at what happens when we feed the system a quick, sharp input:

 FIR (Finite Impulse Response): The system stops reacting after a short time.
 IIR (Infinite Impulse Response): The system keeps reacting, but its response fades over time.

7. What is zero input response?
   - This is what the system does on its own when no new input is given. Imagine a bell that keeps ringing after you’ve stopped hitting it—that’s its "natural behavior."

8. Define impulse response?
   - This is how the system reacts to a quick, one-time input, like clapping your hands in an empty room and listening to how the echo fades.

9. Define System.
    - A system is like a machine or a process that takes something in, does something to it, and gives you a result. For example, a coffee machine is a system: you put in water and coffee grounds, and it gives you coffee.
    
10. Write mathematical formula to find response of any given system.
    - For a system, the output is like mixing the input signal with the system’s memory (impulse response) over time. It’s summarized by:
    y[n]=∑h[k]⋅x[n−k]
This means the current output depends on the input and how the system has behaved before.

Exercise: 
1. Find the frequency response of the system described by the difference equation 
y(n)-3/4 y(n-1)+1/8y(n-3)=x(n)+2x(n-1).

The frequency response of the system is: ![image](https://github.com/user-attachments/assets/948d9035-9f50-461d-8927-31d64ff58a4d)

