Lab Activity 6: Determination of Power Spectrum of a given signal

Name			: April Sheen M. Domingo
Course and Year	: BSCpE 4


I.	OBJECTIVES:

In this laboratory exercise, the students are expected to:
•	determine the Power Spectrum of a given signal.
II.	MATERIALS:

•	Software: MATLAB

III.	PROCEDURES:

THEORY: 
The power spectrum describes the distribution of signal power over a frequency spectrum. The most common way of generating a power spectrum is by using a discrete Fourier transform, but other techniques such as the maximum entropy method can also be used. The power spectrum can also be defined as the Fourier transform of auto correlation function. 
Algorithm:  
Step I : Give input sequence x 
Step II : Give sampling frequency, input frequency and length of the spectrum. Step III: Find power spectrum of input sequence using MATLAB command spectrum. Step IV: Plot power spectrum using spec plot. 

Flow Chart:
![image](https://github.com/user-attachments/assets/30ba41d9-c931-426f-8298-b5428c6da140)

INPUT: 
Enter the frequency [1 to 5000]: 3000 

Output Waveform:

![Screenshot 2024-12-07 232812](https://github.com/user-attachments/assets/541d4b21-4ed4-4e5e-8c83-843d9e6c0f36)


VIVA QUESTIONS: 
1. Define power signal. 
 - A power signal is a signal that has a constant amount of power, even if you look at it over a long period of time. Think of it like the power used by a fan running forever — it never stops, and it uses the same power the whole time. Examples include radio waves and periodic signals like sine waves.
   
2. Define energy signal.  
 - An energy signal is a signal that has a total amount of energy that you can measure, but it doesn't last forever. Imagine a firework explosion — it happens for a short time but releases a specific amount of energy. Signals like pulses or short bursts of sound are energy signals.
   
3. Define power spectral density of a signal.  
 - The Power Spectral Density (PSD) shows how the power of a signal is spread out over different frequencies. Imagine you’re at a party with music playing — PSD would tell you how much of the sound power comes from the bass, treble, and other frequencies. It helps us "see" which frequencies have the most energy in a signal.
   
4. How the energy of a signal can be calculated?  
 - To calculate the energy of a signal, you measure how strong it is over time. You square the signal's value at every point, add it all up, and you get the energy. For simple signals like pulses, you can think of it as calculating the area under the curve.
   
5. Explain difference between energy spectral density and power spectral density.
- Energy spectral density, It Tells how energy is spread over frequency, It is Used for short, non-repeating signals, and Measured in Joules/Hz (Energy per Hz).
- Power spectral density, It Tells how power is spread over frequency, it's Used for continuous, repeating signals, and Measured in Watts/Hz (Power per Hz).
  
6. Explain the PSD plot. 
 - A PSD plot is a graph that shows how power is spread across different frequencies. The x-axis is frequency (like bass, treble, etc.), and the y-axis is power (how strong each frequency is). If you look at a song's PSD, you’d see where most of the sound power comes from — bass-heavy songs will have big spikes at low frequencies.
   
7. What is the importance of PSD?  
 - The importance of PSD lies in helping us see and understand the "hidden" frequencies in a signal. Some key reasons are:
Filter Design: Helps in designing filters to remove noise.
Noise Analysis: Shows where the noise is strongest in a signal.
Signal Analysis: Helps identify the dominant frequency components.
System Design: Used in communication systems to check if a signal will fit in a specific frequency band.

8. What are the applications of PSD? 
 - We use PSD in many fields:
Communications: To analyze the power of signals like radio, Wi-Fi, and 5G.
Audio and Music: To visualize and modify audio frequencies (like bass and treble).
Noise Analysis: To identify and reduce noise in electrical systems.
Radar and Sonar: To detect the frequency of reflected signals.
Signal Processing: Used in filtering and transforming signals for better quality.

9. Explain MATLAB function randn(size(n)). 
 - The randn(size(n)) function in MATLAB generates random numbers that follow a normal distribution (bell-shaped curve) with a mean of 0 and a standard deviation of 1.
randn(3, 2) will create a 3x2 matrix of random numbers.
It's useful for generating random noise for simulations.

10. What is the need to represent the signal in frequency domain?
    - We convert signals to the frequency domain because it makes certain tasks easier:

Simplicity: Complex operations like convolution become simple multiplication.
Filter Design: Designing filters is easier when we know which frequencies to block or pass.
Noise Reduction: It's easier to identify and remove noise in the frequency domain.
Signal Analysis: We can see which frequencies dominate a signal (like identifying the pitch of a sound).

Exercise: 
1. Find power spectrum of the signal x(n)=cos(2*pi*50*n)
   - The signal is: x(n)=cos(2π⋅50⋅n)
This is a cosine wave that repeats over time. The key number here is 50, which tells us the frequency of the signal.

The power spectrum shows how the power of the signal is spread across different frequencies. For a simple cosine wave like this, all the power is concentrated at two specific frequencies; The positive and negative versions of the frequency.

For x(n)=cos(2π⋅50⋅n), the power is split between:

+50 Hz (positive frequency)
-50 Hz (negative frequency)
Imagine it like this: If you shine white light through a prism, the light splits into multiple colors (frequencies). But for a cosine wave, it's like a prism that only shows two colors at +50 and -50 Hz.

For a signal like a cosine wave, the power spectrum is always a pair of spikes at δ(f+50) part means there is a spike of power at -50 Hz.
The 1/2 means the total power is split equally between the two frequencies (like two people sharing one pizza equally).

The power spectrum tells us which frequencies are in the signal. In this case, it’s telling us that the only important frequencies are -50 Hz and +50 Hz. This kind of analysis is essential in areas like communication systems, music production, and signal filtering, where we need to know which frequencies are present and how strong they are.
