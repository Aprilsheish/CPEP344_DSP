Lab Activity 9: Implementation of LP IIR filter
Name			: April Sheen M. Domingo
Course and Year	: BSCpE 4


I.	OBJECTIVES:

In this laboratory exercise, the students are expected to:
•	implement LP IIR filter for a given sequence.
II.	MATERIALS:

•	Software: MATLAB

III.	PROCEDURES:

THEORY: 
IIR filters are digital filters with infinite impulse response. Unlike FIR filters, they have the feedback (a recursive part of a filter) and are known as recursive digital filters therefore. 
For this reason, IIR filters have much better frequency response than FIR filters of the same order. Unlike FIR filters, their phase characteristic is not linear which can cause a problem to the systems which need phase linearity. For this reason, it is not preferable to use IIR filters in digital signal processing when the phase is of the essence. Otherwise, when the linear phase characteristic is not important, the use of IIR filters is an excellent solution. 
There is one problem known as a potential instability that is typical of IIR filters only.  FIR filters do not have such a problem as they do not have the feedback. For this reason, it is always necessary to check after the design process whether the resulting IIR filter is stable or not. 

IIR FILTER DESIGN 
For the given specifications to Design a digital IIR filter, first we need to design analog filter (Butterworth or chebyshev). The resultant analog filter is transformed to digital filter by using either “Bilinear transformation or Impulse Invariant transformation”.
Algorithm:
Step I : Enter the pass band ripple (rp) and stop band ripple (rs)
.
Step II : Enter the pass band frequency (wp) and stop band frequency (ws). 

Step III : Get the sampling frequency (fs).

Step IV : Calculate normalized pass band frequency, and normalized stop band frequency w1 and w2 respectively. w1 = 2 * wp /fs w2 = 2 * ws /fs
Step V : Make use of the following function to calculate order of filter 
Butterworth filter order [n,wn]=buttord(w1,w2,rp,rs ) 
Chebyshev filter order 
[n,wn]=cheb1ord(w1,w2,rp,rs)

Step VI: Design an nth order digital low pass Butterworth or Chebyshev filter using the following statements.

Butterworth filter 
[b, a]=butter (n, wn)

Chebyshev filter 
[b,a]=cheby1 (n, 0.5, wn)

Step VII : Find the digital frequency response of the filter by using ‘freqz( )’ function

Step VIII : Calculate the magnitude of the frequency response in decibels (dB) mag=20*log10 (abs (H))

Step IX : Plot the magnitude response [magnitude in dB Vs normalized frequency] 

Step X : Calculate the phase response using angle (H)

Step XI : Plot the phase response [phase in radians Vs normalized frequency (Hz)].

Flow Chart:

![image](https://github.com/user-attachments/assets/e00aed04-3583-466b-bd56-3734af28c6cb)

Expected waveforms:
enter the IIR filter design specifications 
enter the passband ripple:15
enter the stopband ripple:60 
enter the passband freq:1500 
enter the stopband freq:3000 
enter the sampling freq:7000

Output Waveform:
![image](https://github.com/user-attachments/assets/105e8513-684f-4705-a34d-5e9b58050fde)

VIVA QUESTIONS:

1. List some advantages of digital filters over analog filters.
 - Programmability and reconfigurability.
No aging or drift of components.
High precision with floating-point operations.
Easier to implement complex and adaptive filtering techniques.
Consistent performance across different conditions.

2. Write some differences between FIR and IIR filters.
 - FIR Filters
  Finite impulse response
  No feedback loops
  Less sensitive to coefficient quantization
  More complex to implement
 - IIR Filters
  Infinite impulse response
  Feedback loops
  More sensitive to coefficient quantization
  Less complex to implement

3. What are the different methods to design IIR filters?
 - Approximation methods (e.g., Butterworth, Chebyshev, Elliptic)
Impulse invariant transformation
Bilinear transformation

4. Why IIR filters are not reliable?
 - They can become unstable if the feedback coefficients are not properly designed.
Sensitive to rounding and quantization errors.
Non-linear phase response may distort signals.

5. What are different applications of IIR filters?
 - Audio equalization and noise reduction.
Biomedical signal processing (e.g., ECG filtering).
Communication systems (e.g., channel filtering).
Radar and sonar signal processing.

6. What are advantages of IIR filters?
 - Simpler Implementation: IIR filters are less complex to implement than FIR filters.
Lower Computational Complexity: IIR filters require less computational resources than FIR filters.
Better Stopband Attenuation: IIR filters can achieve a better stopband attenuation than FIR filters.

7. What are disadvantages of IIR filters?
 - Potential instability due to feedback.
  Non-linear phase response.
  More susceptible to numerical precision issues.

8. Differentiate Butterworth and Chebyshev approximations.
 - Butterworth Filter: Flat frequency response in the passband; no ripples. Smoother transition but less sharp.
Chebyshev Filter: Allows ripples in the passband or stopband for sharper transitions at the cost of increased ripple.

9. What is meant by impulse response?
 - The impulse response of a filter is the output of the filter when an impulse (a single spike at 𝑛=0 and zero elsewhere) is applied at its input. It characterizes the filter's behavior completely

10. Difference between IIR low pass and High pass filters.
    - ow-Pass Filter: Allows signals below the cutoff frequency to pass while attenuating higher frequencies.
High-Pass Filter: Allows signals above the cutoff frequency to pass while attenuating lower frequencies.


Exercise:
1. Design low pass IIR filter using Chebyshev filter.
 - Steps to Design:
 - Specifications:
Determine the passband cutoff frequency (𝑓𝑝) and stopband frequency (𝑓𝑠).
Specify passband ripple (𝐴𝑝) and stopband attenuation (𝐴𝑠).
 - Choose the Filter Type:
Chebyshev Type I: Ripple in the passband.
Chebyshev Type II: Ripple in the stopband.
 - Calculate Filter Order (𝑁): Use the formula:
![image](https://github.com/user-attachments/assets/26e8e2a5-f1b2-472b-9091-c55f9ee128e4)
 - Determine Poles and Coefficients: Use Chebyshev polynomial equations to compute poles and filter coefficients.
 - Transform to Digital Domain: Use bilinear transformation to convert the analog design to a digital design.
 - Implementation: Use the derived filter coefficients to filter the input signal.
