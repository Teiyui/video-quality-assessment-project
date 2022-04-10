% Create a recorder object
recObj = audiorecorder;
% Start speaking
disp('Start speaking.');
% Terminate the recording
recordblocking(recObj,5);
% Show info
disp('End of Recording.');
% Replaying
play(recObj);