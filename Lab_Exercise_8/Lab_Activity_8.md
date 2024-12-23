Lab Activity 8: Implementation of HP FIR filter 
Name			: April Sheen M. Domingo
Course and Year	: BSCpE 4


I.	OBJECTIVES:

In this laboratory exercise, the students are expected to:
•	implement HP FIR filter for a given sequence.
II.	MATERIALS:

•	Software: MATLAB

III.	PROCEDURES:

Algorithm:
Step I : Enter the pass band frequency (fp) and stop band frequency (fq). 
Step II : Get the sampling frequency (fs), length of window (n).
Step III : Calculate cut off frequency
Step IV : Use boxcar, hamming, Blackman Commands to design window. 
Step V : Design filter by using above parameters.
Step VI : Find frequency response of the filter using matlab command freqz. 
Step VII : Plot the magnitude response and phase response of the filter.

Flow Chart: 
![image](https://github.com/user-attachments/assets/4764c4ed-b1fc-4581-a240-163b477bd368)

Output Waveforms:

![Screenshot 2024-12-19 190327](https://github.com/user-attachments/assets/b5a6ce6f-e63a-42b5-874b-1bfbe5e3d238)

VIVA QUESTIONS: 

1. What is a filter?
- A filter is a system or device that processes a signal to remove unwanted components or enhance desired features. Filters are commonly used in signal processing to modify or extract information from signals.

2. Differentiate analog filter and digital filter.
 - Analog Filter: A filter that uses continuous-time signals and operates on a continuous-time signal.
 - Digital Filter: A filter that uses discrete-time signals and operates on a discrete-time signal.

3. Define FIR filter.
 - An FIR (Finite Impulse Response) filter is a type of digital filter whose impulse response is finite, meaning it settles to zero in a finite number of samples.
It is defined by a weighted sum of current and past input samples.

4. What are the differences between recursive and non-recursive systems?
 - Recursive System: A system whose output depends on past outputs, in addition to the current input.
-  Non-Recursive System: A system whose output depends only on the current input.

5. List a few Applications of FIR filters.
 - Audio processing (equalizers, noise reduction)
 - Communication systems (channel equalization, signal shaping)
 - Image processing (edge detection, blurring)
 - Biomedical signal processing

6. Explain advantages of FIR filters over IIR filters.
 - FIR filters are more stable and less prone to instability than IIR filters.
 - FIR filters have a linear phase response.

7. Explain limitations of FIR filters.
 - FIR filters can be computationally expensive to implement.
 - FIR filters can have a large number of coefficients, making them more complex to design.

8. What are the different methods to design FIR filters?
 - Window method (e.g., rectangular, Hamming, Hanning)
 - Frequency sampling method
 - Optimal methods (e.g., Parks-McClellan algorithm)

9. Explain different window functions.
 - Rectangular Window: Simple truncation; sharp cut-off but with high side-lobes.
 - Hamming Window: Reduces side-lobe levels; better spectral leakage performance.
 - Hanning Window: Similar to Hamming but slightly narrower main lobe.

10. Differentiate rectangular, triangular and Kaiser Windows.
 - Rectangular Window: Sudden cut-off; high side-lobe levels.
 - Triangular Window: Smoother transitions; better side-lobe attenuation than rectangular.
 - Kaiser Window: Adjustable parameters for main lobe width and side-lobe levels, offering flexibility in trade-offs.

Exercise:

1. Design HP FIR filter using Rectangular and hamming Window
 - Steps to Design:
Specifications:

Determine the desired cutoff frequency (𝑓𝑐).
Select sampling frequency (𝑓𝑠).

-  Calculate Filter Order (N): Use the formula 𝑁=𝑓𝑠/𝑓𝑐−1, adjusting as needed based on transition width.
-  Generate the Ideal Impulse Response (hd[n]): For a high-pass filter, derive the impulse response using the equation:
![image](https://github.com/user-attachments/assets/4767b0e0-5b96-4572-9ac7-d841687ed0ab)

- Apply Window Function: Multiply ℎ𝑑[𝑛] by the chosen window function (𝑤[𝑛]to get the FIR coefficients:
![image](https://github.com/user-attachments/assets/cae384f9-e5d4-45eb-b8b1-23a6fc945fd7)

Implementation: Convolve the input signal with ℎ[𝑛].
