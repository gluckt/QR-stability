fid1=fopen('out_qrfactor_wc.txt','w');
fid2=fopen('out_qrmatlab_wc.txt', 'w');
fid3=fopen('out_qrfactor_ic.txt', 'w');
fid4=fopen('out_qrmatlab_ic.txt', 'w');
% testing qrfactor.m well-conditioned
fprintf(fid1, "Testing (qrfactor.m) 10 x 10:\n");
qrtest(10, 10, 0, true, fid1)

fprintf(fid1, "Test (qrfactor.m) 100 x 100:\n");
qrtest(10, 100, 0, true, fid1)

fprintf(fid1, "Test (qrfactor.m) 500 x 500:\n");
qrtest(10, 500, 0, true, fid1)

% testing qrfactor.m ill-conditioned
fprintf(fid3, "Testing (qrfactor.m) 10 x 10:\n");
qrtest(10, 10, 0, false, fid3)

fprintf(fid3, "Test (qrfactor.m) 100 x 100:\n");
qrtest(10, 100, 0, false, fid3)

fprintf(fid3, "Test (qrfactor.m) 500 x 500:\n");
qrtest(10, 500, 0, false, fid3)

% testing qr() well-conditioned
fprintf(fid2, "Testing (qr()) 10 x 10:\n");
qrtest(10, 10, 1, true, fid2)

fprintf(fid2, "Test (qr()) 100 x 100:\n");
qrtest(10, 100, 1, true, fid2)

fprintf(fid2, "Test (qr()) 500 x 500:\n");
qrtest(10, 500, 1, true, fid2)

% testing qr() ill-conditioned
fprintf(fid4, "Testing (qr()) 10 x 10:\n");
qrtest(10, 10, 1, false, fid4)

fprintf(fid4, "Test (qr()) 100 x 100:\n");
qrtest(10, 100, 1, false, fid4)

fprintf(fid4, "Test (qr()) 500 x 500:\n");
qrtest(10, 500, 1, false, fid4)