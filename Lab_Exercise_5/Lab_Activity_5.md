Laboratory Activity 5: To find the FFT of a given sequence

Name			: April Sheen M. Domingo
Course and Year	: BSCpE 4



I.	OBJECTIVES:

In this laboratory exercise, the students are expected to:
•	find the FFT of a given sequence

II.	MATERIALS:

•	Software: MATLAB	

III.	PROCEDURES:

THEORY: 
DFT of a sequence 
![image](https://github.com/user-attachments/assets/463ea02a-5d54-4ac2-b6ab-3f6460ca0e08)

Where N= Length of sequence. 
K= Frequency Coefficient. 
n = Samples in time domain.
 
FFT: -Fast Fourier transform. 
There are two methods. 
1. Decimation in time (DIT ) FFT. 
2. Decimation in Frequency (DIF) FFT. 
Why we need FFT? 
The no of multiplications in DFT = N2. 
The no of Additions in DFT = N (N-1). 
For FFT. 
The no of multiplication = N/2 log 2N. 
The no of additions = N log2 N.

Algorithm: 
Step I : Give input sequence x[n]. 
Step II : Find the length of the input sequence using length command. 
Step III : Find FFT and IFFT using matlab commands fft and ifft. 
Step IV : Plot magnitude and phase response 
Step V : Display the results

Flow Chart: ![image](https://github.com/user-attachments/assets/5b171224-7737-4ba7-8218-c50345b8dd06)

Output:
 
Enter the sequence: [1 2 3 4 5] 

Output Waveform: 

![Screenshot 2024-12-01 191722](https://github.com/user-attachments/assets/02a591c4-f8cf-4096-8f07-fb0e868dd777)

VIVA QUESTIONS: 
1. Define transform. What is the need for transform? 
- A transform is a way to change a signal from one form to another, like converting a song from time-based vibrations into its musical notes (frequencies).

Why we need it:
To understand signals better (e.g., identify their frequency content).
To make tasks like filtering or compression easier.

2. Differentiate Fourier transform and discrete Fourier transform. 
 - Fourier Transform: Works for continuous signals (like a smooth sine wave). It gives us all the frequencies present in a signal.
Discrete Fourier Transform (DFT): Works for discrete (sampled) signals, like digital audio or images. It turns a list of numbers into a list of frequencies.

3. Differentiate DFT and DTFT. 
 - DFT: Looks at only a finite set of samples and gives specific frequencies.
DTFT: Looks at an infinite sequence (like a repeated signal) and gives a continuous frequency range.

4. What are the advantages of FFT over DFT? 
- The Fast Fourier Transform (FFT) is just a super-efficient way to do the DFT. It’s faster because it skips unnecessary calculations. This is why FFT is used in real-time tasks like audio and video processing.

5. Differentiate DITFFT and DIFFFT algorithms. 
 - DITFFT (Decimation in Time): It breaks the signal into smaller chunks in the time domain before analyzing it.
DIFFFT (Decimation in Frequency): It works backward, focusing on the frequency domain first.
Both are just strategies for organizing the FFT calculations.

6. What is meant by radix? 
 - Radix is like a "base" for the FFT algorithm. For example:

Radix-2 FFT: Splits the data into 2 parts at every step.
Radix-4 FFT: Splits the data into 4 parts.
Choosing the radix depends on the size of the data and the required speed.

7. What is meant by twiddle factor and give its properties? 
 - The twiddle factor is a small mathematical term in FFT that helps handle the rotation (or phase shifting) of frequency components.

Properties of the Twiddle Factor:

It repeats itself periodically.
It’s symmetric, meaning it mirrors itself in some ways.
It can be broken into smaller, simpler pieces for faster calculations.

8. How FFT is useful to represent a signal? 
- FFT breaks a signal into its "building blocks" of frequencies, like separating a song into its notes. This makes it easier to analyze, filter, or compress the signal.
  
9. Compare FFT and DFT with respect to number of calculations required? 
- DFT: Takes a lot of time because it calculates every combination of inputs and frequencies.
FFT: Is much faster (cuts down time from (cuts down time from ![image](https://github.com/user-attachments/assets/c9beb455-85e2-4ee0-91dc-e14e0f92cf0c) ) which is why it’s used in practical applications.

10. How the original signal is reconstructed from the FFT of a signal?
    - We use the Inverse FFT (IFFT) to turn the frequency data back into the original signal. It’s like reversing the process: from the list of notes (frequencies), we recreate the original melody (signal).

As long as we don’t lose any frequency data, we can perfectly reconstruct the signal.

Exercise: 
1. Find 8-point DFT of sequence x(n)=[1 2 1 2 3 4 4 3] using FFT algorithm.
   - 
We used the Fast Fourier Transform (FFT) to compute the 8-point Discrete Fourier Transform (DFT) for the sequence  x(n)=[1,2,1,2,3,4,4,3]. Here's what we got:

Results:
X[0]=20: This is the DC (zero-frequency) component, showing the average value of the sequence.
X[1]=−2.71+5.12j: A complex number representing the contribution of the first frequency. Its magnitude and angle tell us the strength and phase.
X[2]=−1−1j: Another frequency contribution, with both real and imaginary parts.
X[3]=−1.29−0.88j: A weaker frequency contribution.
X[4]=−2: A real value, meaning no phase shift.
X[5]=−1.29+0.88j: Symmetric to X[3], as expected in FFT results.
X[6]=−1+1j: Symmetric to  X[2]. X[7]=−2.71−5.12j:
Symmetric to X[1].
These values describe how much of each frequency is present in the original sequence and include both magnitude (strength) and phase (timing shift). For instance:

The large value X[0]=20 shows a strong constant (average) component.
The symmetry across indices (e.g.,  X[7]) is a typical property of FFTs for real sequences.
In simpler terms, this process tells us what "notes" (frequencies) make up our "music" (the sequence) and how loud or shifted they are.
