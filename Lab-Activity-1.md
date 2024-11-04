Laboratory Activity 1: To find DFT/IDFT of given DT signal

Name: April Sheen M. Domingo

Course and Year: BSCpE 4


I.	OBJECTIVES:

In this laboratory exercise, the students are expected to:
•	find Discrete Fourier Transform and Inverse Discrete Fourier Transform of given digital signal..

II.	MATERIALS:

•	Software: MATLAB

III.	PROCEDURE:

THEORY:
Basic equation to find the DFT of a sequence is given below.

![image](https://github.com/user-attachments/assets/5aef2d99-6f70-4306-ab2a-382bc992946c)

Basic equation to find the IDFT of a sequence is given below. 

![image](https://github.com/user-attachments/assets/59e337e0-6318-4098-8b88-5be9975c5dc1)

Algorithm: 
Step I: Get the input sequence.
Step II: Find the DFT of the input sequence using direct equation of DFT. 
Step III: Find the IDFT using the direct equation. 
Step IV: Plot DFT and IDFT of the given sequence using matlab command stem.
Step V: Display the above outputs.

Flow chart:

![image](https://github.com/user-attachments/assets/e4c8efe2-ed5c-4da6-bdee-f532b0442778)

Output Waveforms: 

![image](https://github.com/user-attachments/assets/b57cc9a8-d139-4e15-aa67-6ce12284f966)


RESULT: 

VIVA QUESTIONS: 
1. Define signal, Give Examples for 1-D, 2-D, 3-D signals.
   - A signal is a function that carries information. Examples include 1-D (Audio signals), 2-D (Images), and 3-D (Videos or 3D spatial data).
     
2. Define transform. What is the need for transform?
   - A transform converts a signal from one domain to another (like time to frequency) to analyze different characteristics, such as frequency components.
     
3. Differentiate Fourier transform and discrete Fourier transform.
   - The Fourier Transform is continuous, while DFT is discrete, used for digital signals with finite samples.
     
4. Differentiate DFT and DTFT
   - DFT is computed for a finite number of points and is discrete in both time and frequency. DTFT considers an infinite-length signal, resulting in a continuous frequency spectrum.
     
5. Explain mathematical formula for calculation of DFT.
   - The mathematical formula for DFT is X(k)=∑ n=0 N−1 x(n)e −j N 2πkn , where X(k) computes each frequency component for the sequence.
     
6. Explain mathematical formula for calculation of IDFT.
    - The mathematical formula for IDFT is x(n)= N 1 ​ ∑ k=0 N−1 X(k)e j N 2πkn , it reconstructs the original sequence from its frequency components.
      
7. How to calculate FT for 1-D signal?
   - To find the Fourier Transform (FT) for a 1-D signal, you can use the continuous Fourier Transform formula. However, for numerical computation, we usually use the Discrete Fourier Transform (DFT). The formula transforms a time-domain signal into its frequency components.
     
8. What is meant by magnitude plot, phase plot, power spectrum?
    - Magnitude plot, phase plot, and power spectrum are graphical representations of a signal's frequency components. The magnitude plot shows the absolute values of the complex frequency components, while the phase plot shows the phase angles. The power spectrum displays the power distribution across frequencies and is calculated as the magnitude plot squared.
      
9. Explain the applications of DFT.
   The Discrete Fourier Transform (DFT) has several applications, including:
    * Signal analysis: By decomposing signals into their frequency components, we can understand the signal's underlying structure.
    * Data compression: We can reduce data size by keeping only important frequency components and discarding others.
    * Noise reduction: By removing unwanted frequency components, we can filter noise in signals.
    * Image processing: DFT can be applied for image transformations, such as scaling, rotation, and compression.
      
10. What are separable transforms?
    - Separable transforms, like the 2-D DFT, can be computed as the successive application of transforms to lower-dimensional subspaces. This property leads to efficient algorithms, as you only need to compute the DFT along rows and then along columns.
      

Exercise: 
1. Find 8-point DFT of the sequence x (n) = [1 2 3 4 4 3 2 1]
   - To find the 8-point Discrete Fourier Transform (DFT) of the sequence x(n) = [1 2 3 4 4 3 2 1], you can use the DFT formula or MATLAB's built-in fft function. The DFT formula is:
     X(k) = ∑ n=0 N−1 x(n)e −j N 2πkn
     where N = 8, x(n) is the time-domain sequence, and X(k) is the frequency-domain sequence.
     You'll calculate the DFT for each k (from 0 to N-1) to obtain the 8-point DFT of the given sequence.



