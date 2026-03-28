function problem_5(filenm)
% problem_5(filenm)
% Read BMP or PNG header and print image width and height.

fid = fopen(filenm, 'r');
if fid < 0
    disp(['Error opening ', filenm]);
    return;
end

A = fread(fid, 32, 'uint8');
fclose(fid);

if length(A) < 24
    disp('File too small.');
    return;
end

% ===== BMP =====
if A(1) == hex2dec('42') && A(2) == hex2dec('4D')   % 'BM'
    width  = A(19) + A(20)*256 + A(21)*256^2 + A(22)*256^3;
    height = A(23) + A(24)*256 + A(25)*256^2 + A(26)*256^3;

    fprintf('File name : %s\n', filenm);
    fprintf('File type : BMP\n');
    fprintf('Width     : %d pixels\n', width);
    fprintf('Height    : %d pixels\n', height);

% ===== PNG =====
elseif A(1) == 137 && A(2) == 80 && A(3) == 78 && A(4) == 71 ...
    && A(5) == 13 && A(6) == 10 && A(7) == 26 && A(8) == 10

    width  = A(17)*256^3 + A(18)*256^2 + A(19)*256 + A(20);
    height = A(21)*256^3 + A(22)*256^2 + A(23)*256 + A(24);

    fprintf('File name : %s\n', filenm);
    fprintf('File type : PNG\n');
    fprintf('Width     : %d pixels\n', width);
    fprintf('Height    : %d pixels\n', height);

else
    disp('Unsupported file format. Only BMP and PNG are supported.');
end
end