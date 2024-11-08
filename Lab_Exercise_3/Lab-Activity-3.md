Laboratory Activity 3: Auto Correlation
Name			: April Sheen M. Domingo
Course and Year	: BSCpE 4



I.	OBJECTIVES:

In this laboratory exercise, the students are expected to:
•	compute auto correlation between two sequences
II.	MATERIALS:

•	Software: MATLAB

III.	PROCEDURES:

THEORY: 

Auto Correlation Function 
Auto correlation function is a measure of similarity between a signal & its time delayed version. It is represented with R(k). 
The auto correlation function of x(n) is given by 
R11(k)=R(k)= ![image](https://github.com/user-attachments/assets/757c2053-7f4c-4594-9d34-a62b5665666f)

Algorithm: 
Step I : Give input sequence x[n]. 
Step II : Give impulse response sequence h (n) 
Step III: Find auto correlation using the matlab command xcorr. 
Step IV: Plot x[n], h[n], z[n]. 
Step V: Display the results

Flow Chart: 
![image](https://github.com/user-attachments/assets/d7faba04-c939-427c-a66d-34965ccfdb84)

Output: 

enter input sequence [1 2 3 4]
z = [3.99, 11, 20, 30, 20, 11, 3.99]
![Screenshot 2024-11-08 233019](https://github.com/user-attachments/assets/be1cb875-5aa2-4ba1-8d87-43fbc13e160f)

RESULT: 

VIVA QUESTIONS: 
1. Write mathematical formula to find auto correlation?
   - To calculate autocorrelation, you take a signal, shift it by a certain amount, and then multiply it with itself at each shift. Mathematically, this looks like:
     Rxx(k)=∑x[n]⋅x[n+k]
     where k is how much you're shifting the signal. This tells you how similar the signal is to itself at different shifts.

2. Define auto correlation?
   - Autocorrelation checks how similar a signal is to itself if you shift it over time. Imagine clapping your hands repeatedly; autocorrelation shows if there’s a pattern in those claps over time.
   
3. Define correlation
   - Correlation measures how two signals (or sets of data) relate to each other. For example, if you walk and clap, correlation can tell if your footsteps match up with your claps or how much they lag behind.

4. Difference between Auto correlation and convolution?
   - Autocorrelation, This measures how a signal matches up with itself, revealing patterns or repeating features in the signal.
   - Convolution, This is more about blending two signals to see how one "modifies" the other, which is very useful in filtering or adjusting signals.

5. Difference between Auto correlation and cross correlation?
   - Autocorrelation, Looks at how a signal matches up with itself.
   - Cross-Correlation, Looks at how one signal matches with another, helping to find timing or similarity between them, like comparing a spoken word to a known pattern to check for matches.

6. Write mathematical formula to find cross correlation?
   - For cross-correlation, the formula is similar to autocorrelation, but now you’re using two different signals. You shift one of them and check how well it aligns with the other:
   - Rxy(k)=∑x[n]⋅y[n+k]
     
7. What is the length of the resultant sequence of auto correlation?
   - When you do autocorrelation on a signal of length 𝑁, you end up with a result that’s almost double that, or 2N−1. This happens because you’re looking at both positive and negative shifts.

8. List few applications of correlation.
   - Pattern Recognition: Like finding familiar faces in photos.
   - Signal Detection: Used in radar to detect objects
   - Image Processing: Helps in feature detection, such as finding edges in images.
   - Speech and Audio Processing: Used to cancel echoes in calls.
   - DNA Analysis: Helps in matching DNA sequences.
     
9. Give the properties of auto correlation.
    - Symmetry: Autocorrelation is the same forwards and backwards, like a mirror.
    - Peak at Zero Lag: The similarity is usually strongest when there’s no shift.
    - Non-negativity: For real signals, autocorrelation values are typically positive.
    - Periodicity: If a signal repeats, its autocorrelation will show that pattern too.
      
10. Define cross correlation?
    - Cross-correlation measures how similar two signals are to each other as you shift one signal over the other. It’s like checking how well two musical beats align as one is slightly delayed or moved.
      

Exercise: 
1.	Find the auto correlation function of ramp sequence for 0≤n≤6.
   - To find the autocorrelation function of a ramp sequence for 0≤n≤6, we need to first define the ramp sequence and then apply the autocorrelation formula.
      to  Define the Ramp Sequence: A ramp sequence is a sequence where each element increases linearly.
     For 0≤n≤6, the ramp sequence x[n] can be written as: x[n]=n
This gives us x={0,1,2,3,4,5,6}.

   - For Autocorrelation Formula:
     The autocorrelation function 𝑅𝑥𝑥(k) for a discrete-time sequence x[n] is defined as:
     ![image](https://github.com/user-attachments/assets/a7bf53ef-4d03-4362-afb9-3ffd2b85166b)
     - Here, k is the lag, and N is the length of the sequence, which in this case is 7.

  - Compute the Autocorrelation Values:
     We calculate 𝑅xx(k) for each lag k from 0 to 6.
     Let's calculate the autocorrelation values for each lag 𝑘.
    The autocorrelation function 𝑅xx​(k) of the ramp sequence x[n]=
    {0,1,2,3,4,5,6} for 0≤n≤6 is:
          Rxx(k)={91,70,50,32,17,6,0}
 - This sequence represents the autocorrelation values for each lag 𝑘 from 0 to 6.
   
