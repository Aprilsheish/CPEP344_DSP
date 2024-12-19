laboratory Activity 7: Implementation of LP FIR filter

Name			: April Sheen M. Domingo
Course and Year	: BSCpE 4

I.	OBJECTIVES:

In this laboratory exercise, the students are expected to:
•	implement LP FIR filter for a given sequence.
II.	MATERIALS:

•	Software: MATLAB

III.	PROCEDURES:

THEORY: 
FIR filters are digital filters with finite impulse response. They are also known as non-recursive digital filters as they do not have the feedback. 
An FIR filter has two important advantages over an IIR design: 
 Firstly, there is no feedback loop in the structure of an FIR filter. Due to not having a feedback loop, an FIR filter is inherently stable. Meanwhile, for an IIR filter, we need to check the stability. ∙
Secondly, an FIR filter can provide a linear-phase response. As a matter of fact, a linear-phase response is the main advantage of an FIR filter over an IIR design otherwise, for the same filtering specifications; an IIR filter will lead to a lower order. 
FIR FILTER DESIGN 
An FIR filter is designed by finding the coefficients and filter order that meet certain specifications, which can be in the time-domain (e.g., a matched filter) and/or the frequency domain (most common). Matched filters perform a cross-correlation between the input signal and a known pulse-shape. The FIR convolution is a cross-correlation between theinput signal and a time-reversed copy of the impulse-response. Therefore, the matched-filter's impulse response is "designed" by sampling the known pulse-shape and using those samples in reverse order as the coefficients of the filter. 
When a particular frequency response is desired, several different design methods are common: 
1. Window design method 
2. Frequency Sampling method 
3. Weighted least squares design 
WINDOW DESIGN METHOD 
In the window design method, one first designs an ideal IIR filter and then truncates the infinite impulse response by multiplying it with a finite length window function. The result is a finite impulse response filter whose frequency response is modified from that of the IIR filter.
![image](https://github.com/user-attachments/assets/1e719751-8c66-4ad1-905a-2957f19f1d80)

Algorithm:
Step I : Enter the pass band frequency (fp) and stop band frequency (fq). 
Step II : Get the sampling frequency (fs), length of window (n).
Step III : Calculate the cut off frequency, fn
Step IV : Use boxcar, hamming, blackman Commands to design window. 
Step V : Design filter by using above parameters.
Step VI : Find frequency response of the filter using matlab command freqz. 
Step VII : Plot the magnitude response and phase response of the filter.
 
Flow Chart:
![image](https://github.com/user-attachments/assets/a87dedaa-f565-4558-8e7a-7e0942ebcecc)

Expected Wave forms:
![image](https://github.com/user-attachments/assets/cbbd80d3-f0be-4b2a-8f9b-4c50c959f55a)


VIVA QUESTIONS:
1. Define filter.
 - A filter is a system or apparatus that attenuates or blocks some signal frequencies while selectively permitting others to flow through.

2. What are the different types of filters?
 - Filters can be classified based on their frequency response as:

Low-pass filters
High-pass filters
Band-pass filters
Band-stop filters
All-pass filters

3. Why are FIR filters generally preferred over IIR filters in multirate (decimating 
and interpolating) systems/
 - FIR filters are preferred in multirate systems because they do not introduce phase distortion, making them suitable for applications where signal timing is critical.

4. Difference between IIR and FIR filters?
 - IIR (Infinite Impulse Response) filters have an infinite impulse response and can be used for both filtering and signal generation.
 - FIR (Finite Impulse Response) filters have a finite impulse response and are used only for filtering.

5. Differentiate ideal filter and practical filter responses.
 - Ideal filters have a perfect frequency response, while practical filters have some limitations and imperfections in their frequency response.

6. What is the filter specifications required to design the analog filters?
 - To design an analog filter, you need:

-Passband frequency: Frequency range where the signal is passed.
-Stopband frequency: Frequency range where the signal is blocked.
-Passband ripple: How much the signal is allowed to "wiggle" in the passband.
-Stopband attenuation: How much of the signal is blocked in the stopband.
-Order of the filter: Higher order means sharper transitions but more complexity.

7. What is meant by frequency response of filter?
- The frequency response of a filter describes how the filter affects the magnitude and phase of input signals at various frequencies.

8. What is meant by magnitude response?
 - The magnitude response shows how much the filter amplifies or attenuates signals at different frequencies. It’s usually shown as a graph of gain vs. frequency.

9. What is meant by phase response?
 - The phase response shows how much the filter shifts the phase (timing) of input signals at different frequencies. Linear phase means all frequency components are delayed equally.

10. Difference between FIR low pass filter and high pass filter.
 - A low-pass FIR filter allows low-frequency signals to pass through while attenuating high-frequency signals.
 - A high-pass FIR filter allows high-frequency signals to pass through while attenuating low-frequency signals.

Exercise:
1. Design LP FIR filter using Bartlett and hamming window.
   - FIR filters are preferred over IIR filters in multirate systems because they have linear phase, are always stable, and have better control of delay.
Filter design requires key parameters like cutoff frequency, passband ripple, and stopband attenuation.
Bartlett windows give wider transition bands but simpler design, while Hamming windows provide better attenuation of side-lobes.
Filters can be designed and visualized using software like MATLAB or Python (via libraries like scipy.signal).
 - Sampling frequency (𝑓𝑠​) = 1000 Hz
Cutoff frequency (𝑓𝑐) = 200 Hz
Filter order (N) = 50

Output:
   ![image](https://github.com/user-attachments/assets/a2bc734b-a256-46e2-b154-db9e7127fcd7)

