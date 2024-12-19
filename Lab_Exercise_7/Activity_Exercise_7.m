% Filter specifications
N = 50; % Order of the filter
fc = 200; % Cutoff frequency (Hz)
fs = 1000; % Sampling frequency (Hz)
normalized_fc = fc / (fs / 2); % Normalize the cutoff frequency

% Design FIR filters using Bartlett and Hamming windows
bartlett_filter = fir1(N, normalized_fc, 'low', bartlett(N+1));
hamming_filter = fir1(N, normalized_fc, 'low', hamming(N+1));

% Plot the frequency response of the filters
figure;
freqz(bartlett_filter, 1, 1024, fs);
title('Frequency Response of Low-Pass FIR Filter (Bartlett Window)');

figure;
freqz(hamming_filter, 1, 1024, fs);
title('Frequency Response of Low-Pass FIR Filter (Hamming Window)');
