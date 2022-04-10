fid = fopen('pcmFiles/f1779ats-chu-thin_downlink-22_09_2021_06_20_08_normal_1.pcm'); % Open raw pcm file
audio = int16(fread(fid, Inf, 'int16'));      % Convert data into 16 bit
fclose(fid);                                  % Close pcm file
audiowrite('wavFiles/audioFile2.wav', audio, 48000,'BitsPerSample', 16); % Write wav