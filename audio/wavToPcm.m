
% filename='clean_data1.wav';
% [signal,fs] = audioread(filename);%读取wav文件，读完是去除了文件头的采样点，而且归一化了，是浮点数。
precision = 'int16';
n = 3;
while n < 151 
    fidr = fopen(['clean_data', int2str(n), '.wav'], 'r');  % open .wav file to read 
    fidw = fopen(['clean_data', int2str(n), '.pcm'], 'wb'); % open .pcm file to write
    w = int16(fread(fidr, inf, precision));% read .wav file
    fwrite(fidw, w, precision); % write .pcm file
    n = n + 1;
end
% fidr      = fopen('noisy_data2.wav', 'r');  % open .wav file to read 
% fidw      = fopen('noisy_data2.pcm', 'wb'); % open .pcm file to write
% w         = int16(fread(fidr, inf, precision));% read .wav file
% fwrite(fidw, w, precision); % write .pcm file