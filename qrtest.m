function qrtest(trials, size, fn, wc, file)
    for i = 1:trials
        
        if wc == true
            A = rand(size,size);
        else
            A = randi([0 5], size, size)*0.0000001 - hilb(size);        
        end
        
        condition = cond(A);
        if fn == 0
            t0 = cputime;
            [Q,R] = qrfactor(A);
            t1 = cputime;
        elseif fn == 1
            t0 = cputime;
            [Q,R] = qr(A);
            t1 = cputime;   
        end
        runtime = t1-t0;
        I = eye(size);
        result = norm(I - Q*Q',2)/norm(Q*Q',2);
        fprintf(file, "relative error = %.20f, runtime = %.6f seconds, cond(A) = %f\n", result, runtime, condition);
    end
end