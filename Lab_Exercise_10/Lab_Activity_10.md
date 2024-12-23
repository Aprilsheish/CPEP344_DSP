Lab Activity 10: Implementation of HP IIR filter

Name			: April Sheen M. Domingo
Course and Year	: BSCpE 4


IV.	OBJECTIVES:

In this laboratory exercise, the students are expected to:
•	implement HP IIR filter for a given sequence.
V.	MATERIALS:

•	Software: MATLAB

VI.	PROCEDURES:

Algorithm:
Step I : Enter the pass band ripple (rp) and stop band ripple (rs). 
Step II : the pass band frequency (wp) and stop band frequency (ws). 
Step III : Get the sampling frequency (fs).
Step IV		: Calculate normalized pass band frequency, and normalized stop band 
frequency w1 and w2 respectively. w1 = 2 * wp /fs w2 = 2 * ws /fs

Step V : Make use of the following function to calculate order of filter 
Butterworth filter order
[n,wn]=buttord(w1,w2,rp,rs ) 
Chebyshev filter order 
[n,wn]=cheb1ord(w1,w2,rp,rs)

Step VI 	: Design an nth order digital high pass Butterworth or Chebyshev filter 
using the following statement.
Butterworth filter 
[b,a]=butter (n, wn,’high’)
Chebyshev filter
[b,a]=cheby1 (n, 0.5, wn,'high')

Step VII : Find the digital frequency response of the filter by using ‘freqz( )’  function

Step VIII : Calculate the magnitude of the frequency response in decibels (dB) 
mag=20*log10 (abs (H))

Step IX : Plot the magnitude response [magnitude in dB Vs normalized frequency] 

Step X : Calculate the phase response using angle (H)

Step XI : Plot the phase response [phase in radians Vs normalized frequency (Hz)].


Flowchart: 
![image](https://github.com/user-attachments/assets/99d65442-90db-46a7-87a5-acf6124715c9)

INPUT:
enter the IIR filter design specifications 
enter the passband ripple15
enter the stopband ripple60 
enter the passband freq1500 
enter the stopband freq3000 
enter the sampling freq7000

Expected Waveforms: 
![Screenshot 2024-12-24 002046](https://github.com/user-attachments/assets/92164af3-0898-4d41-8229-0fb1439a0101)


VIVA QUESTIONS:

1. List some advantages of digital filters over analog filters.
 - Flexibility: Can adapt to changing requirements via software changes.
 - Precision: Avoids component drift and tolerances seen in analog filters.
 - Complexity: Easily implementable for higher-order filters.
 - Stability: Performance is consistent and not affected by temperature or aging.
 - Non-physical implementation: Allows implementation of filters that are impossible in the analog domain.

2. Write some differences between FIR and IIR filters.
 - Finite Impulse Response (FIR):
 Non-recursive: FIR filters do not use feedback.
 Finite impulse response: FIR filters have a finite response to an impulse.
  - Infinite Impulse Response (IIR):
 Recursive: IIR filters use feedback.
 Infinite impulse response: IIR filters have an infinite response to an impulse.

3. What are the different methods to design IIR filters?
- Butterworth approximation: A method that uses a polynomial to approximate the filter response.
- Chebyshev approximation: A method that uses a polynomial to approximate the filter response, with a focus on minimizing the maximum error.
- Elliptic approximation: A method that uses a polynomial to approximate the filter response, with a focus on minimizing the maximum error and passband ripple.

4. Why IIR filters are not reliable?
 - IIR filters can be unreliable due to:
 - Numerical instability:
IIR filters can be prone to numerical instability, especially when using floating-point arithmetic.
 - Sensitivity to coefficient values:
IIR filters can be sensitive to the values of their coefficients, which can affect the filter's performance.

5. What are different applications of IIR filters?
- Noise suppression in communication systems.
- Audio signal equalization.
- Biomedical signal processing (e.g., EEG, ECG filtering).
- Radar signal processing.

6. What are advantages of IIR filters?
 - IIR filters have several advantages, including:
Compact implementation: IIR filters can be implemented using a small number of coefficients.
Fast computation: IIR filters can be computed quickly, especially when using specialized hardware.

7. What are disadvantages of IIR filters?
 - IIR filters have several disadvantages, including:
Numerical instability: IIR filters can be prone to numerical instability.
Sensitivity to coefficient values: IIR filters can be sensitive to the values of their coefficients.

8. Differentiate Butterworth and Chebyshev approximations.
 - Butterworth Filter: Flat passband response, smooth transition, but slower cutoff.
Chebyshev Filter: Sharper cutoff with ripples in either the passband (Type I) or stopband (Type II).

9. What is meant by impulse response?
 - The impulse response of a system is the output when an impulse (a signal with all-zero values except one sample at a magnitude of 1) is input. It fully describes the system’s behavior.
 - 
10. Difference between IIR low pass and High pass filters.
 - Low-Pass Filter: Passes frequencies below the cutoff frequency while attenuating higher frequencies.
High-Pass Filter: Passes frequencies above the cutoff frequency while attenuating lower frequencies.

Exercise:
1. Design low pass IIR filter using Chebyshev filter.

Design Process:
 - Specifications:
Sampling frequency (𝑓𝑠): Example: 1000Hz.
Passband frequency (𝑓𝑝 ): Example: 200Hz.
Stopband frequency (𝑓𝑠): Example: 300Hz.
Passband ripple (𝐴𝑝): Example: 1dB.
Stopband attenuation (𝐴𝑠): Example: 40dB.

 - Calculate the filter order (𝑁): Use the formula for Chebyshev filter design:
   ![image](https://github.com/user-attachments/assets/8c1c75ce-3ae0-4ba9-9c82-294c55307d0d)
 - Determine poles and coefficients: Use Chebyshev polynomial expressions to compute poles and gain.
 - Transform to Digital Filter: Apply bilinear transformation to convert the analog design to digital.
- Implementation: Use software tools like MATLAB, Python, or Octave.
Functions such as scipy.signal.cheby1 (Python) or butter (MATLAB) can simplify the process.
