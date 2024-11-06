Laboratory 2: Linear Convolution of Two Sequences

Name : April SHeen M. Domingo Course and Year : BSCpE 4

I. OBJECTIVES:

In this laboratory exercise, the students are expected to: • obtain Linear Convolution of two finite length sequences

II. MATERIALS:

• Software: MATLAB

III. PROCEDURES:

THEORY: Convolution is a mathematical operation used to express the relation between input and output of an LTI system. It relates input, output and impulse response of an LTI system as

y(n)=x(n)∗h(n)

Where y (n) = output of LTI

x (n) = input of LTI

h (n) = impulse response of LTI

Discrete Convolution

y(n)=x(n)∗h(n)

![image](https://github.com/user-attachments/assets/b5778fca-3219-4760-81fb-80d37deebf4d)

By using convolution we can find zero state response of the system.

Algorithm: Step I: Give input sequence x[n]. Step II: Give impulse response sequence h(n) Step III: Find the convolution y[n] using the matlab command conv. Step IV: Plot x[n],h[n],y[n]

![image](https://github.com/user-attachments/assets/cfc8beaf-1d25-4b86-8607-de739db80ed0)


Output: 
Enter the first sequence x1(n) = [1 2 3 4 5] 
Enter the second sequence x2(n) = [5 8 3 5 4 6] 
The values of yn are= 

5	18	34	55	80	81	59	59	44	30

Output Waveform:
![Screenshot 2024-11-06 112028](https://github.com/user-attachments/assets/84b327c4-753e-4d4b-b26b-a45fdc928af7)


RESULT:

VIVA QUESTIONS:

1.Explain the significance of convolution.
  - Pad one set of ingredients (the shorter one) with more of the same ingredient (in this case, zeros) so both sets have the same number of items.

2.Define linear convolution.
  - Mix the padded spicy salsa with the guacamole, multiplying each pair of ingredients that overlap and summing them up.

3.Why linear convolution is called as a periodic convolution?
  - Repeat the mixing by sliding the padded salsa over the guacamole until you've mixed everything.

4. Why zero padding is used in linear convolution?
  - Zero padding is used in linear convolution to prevent circular effects when performing the convolution of two finite sequences using the DFT. By padding sequences with zeros to a length that is at least the sum of the original sequence lengths minus one, we ensure that the result represents the true linear convolution.

5. What are the four steps to find linear convolution?
  - Reverse one of the sequences (typically the impulse response).
  - Shift the reversed sequence across the input sequence.
  - Multiply overlapping elements for each shift position.
  - Sum the products at each shift to obtain the output sequence.

6. What is the length of the resultant sequence in linear convolution?
  - The length of the resultant sequence in linear convolution is given by the formula (L+M-1), where L is the length of the first signal and M is the length of the second signal.

7. How linear convolution will be used in calculation of LTI system response?
  - Linear convolution is used in the calculation of LTI (Linear Time-Invariant) system response by convolving the input signal with the system's impulse response. This gives the output signal of the system.

8.List few applications of linear convolution in LTI system design.
  - Digital filtering to process audio, images, and signals.
  - Signal smoothing and noise reduction.
  - Image processing for edge detection and sharpening.
  - Echo and reverb effects in audio processing.

9.Give the properties of linear convolution.
  - Key properties include:
    Commutative: 𝑥(𝑛)∗ℎ(𝑛)=ℎ(𝑛)∗𝑥(𝑛)
    Associative: (𝑥(𝑛)∗ℎ(𝑛))∗𝑔(𝑛)=𝑥(𝑛)∗(ℎ(𝑛)∗(𝑛))
    Distributive: 𝑥(𝑛)∗(ℎ(𝑛)+𝑔(𝑛))=𝑥(𝑛)∗ℎ(𝑛)+𝑥(𝑛)∗𝑔(𝑛)
    Shift Invariance: If 𝑦(𝑛)=𝑥(𝑛)∗ℎ(𝑛), then 𝑥(−𝑘)∗ℎ(𝑛)=𝑦(𝑛−𝑘) 
    Identity: Convolution with a delta function 𝛿(𝑛) leaves the sequence unchanged.

10.How the linear convolution will be used to calculate the DFT of a signal?
  - Linear convolution in the time domain corresponds to multiplication in the frequency domain. To calculate the DFT using linear convolution, zero-padding is applied to both sequences to avoid aliasing in the frequency domain. This approach is commonly used in fast convolution algorithms and filtering.
Exercise:

Step 1.Find the linear convolution of x(n)=[7 5 4 0] and h(n)=[0 3 6 2 9]
  - Length of Resultant Sequence: Since 𝑥(𝑛) has 4 elements and ℎ(𝑛) has 5, the result will have 4+5−1=8 4+5−1=8 elements.

Step 2.Step-by-Step Calculation:
  - Shift and Multiply each element, summing up the products for each shift: Let's proceed with this in Python for accuracy.

The linear convolution of 𝑥(𝑛)=[7,5,4,0] x(n)=[7,5,4,0] and ℎ(𝑛)=[0,3,6,2,9] is:

[0,21,57,56,97,53,36,0].

