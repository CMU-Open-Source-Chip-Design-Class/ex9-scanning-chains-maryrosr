module tb_fault();

logic a, b, c, d, x;

fault dut (.a, .b, .c, .d, .x);



initial begin
    
    // Wire U Tests:
        #10;
        a = 0;
        b = 0;
        c = 0;
        d = 1;
        #10;
        if(x != 1) $display("Fault detected Wire U is stuck at 0, vector {%b, %b, %b, %b}", a, b, c, d);

        a = 1;
        b = 1;
        c = 0;
        d = 1;
        #10;
        if(x != 1) $display("Fault detected Wire U is stuck at 1, vector {%b, %b, %b, %b}", a, b, c, d);
    
    // Wire W Tests:

        a = 0;
        b = 0;
        c = 0;
        d = 0;
        #10;
        if(x != 1) $display("Fault detected Wire W is stuck at 0, vector {%b, %b, %b, %b}", a, b, c, d);

        a = 1;
        b = 1;
        c = 0;
        d = 0;
        #10;
        if(x != 1) $display("Fault detected Wire W is stuck at 0, vector {%b, %b, %b, %b}", a, b, c, d);

        a = 0;
        b = 0;
        c = 1;
        d = 1;
        #10;
        if(x != 1) $display("Fault detected Wire W is stuck at 1, vector {%b, %b, %b, %b}", a, b, c, d);

        a = 1;
        b = 1;
        c = 1;
        d = 1;
        #10;
        if(x != 1) $display("Fault detected Wire W is stuck at 1, vector {%b, %b, %b, %b}", a, b, c, d);

    // Wire X tests:

        a = 0;
        b = 0;
        c = 0;
        d = 1;
        #10;
        if(x != 1) $display("Fault detected Wire X is stuck at 0, vector {%b, %b, %b, %b}", a, b, c, d);
        
        a = 1;
        b = 1;
        c = 0;
        d = 1;
        #10;
        if(x != 1) $display("Fault detected Wire X is stuck at 0, vector {%b, %b, %b, %b}", a, b, c, d);

        a = 1;
        b = 0;
        c = 0;
        d = 1;
        #10;
        if(x != 0) $display("Fault detected Wire X is stuck at 1, vector {%b, %b, %b, %b}", a, b, c, d);
        
        a = 0;
        b = 1;
        c = 0;
        d = 1;
        #10;
        if(x != 0) $display("Fault detected Wire X is stuck at 1, vector {%b, %b, %b, %b}", a, b, c, d);

    // Wire Y:

        a = 0;
        b = 0;
        c = 0;
        d = 1;
        #10;
        if(x != 1) $display("Fault detected Wire Y is stuck at 0, vector {%b, %b, %b, %b}", a, b, c, d);
        
        a = 1;
        b = 1;
        c = 0;
        d = 1;
        #10;
        if(x != 1) $display("Fault detected Wire Y is stuck at 0, vector {%b, %b, %b, %b}", a, b, c, d);

        a = 0;
        b = 0;
        c = 1;
        d = 0;
        #10;
        if(x != 0) $display("Fault detected Wire Y is stuck at 1, vector {%b, %b, %b, %b}", a, b, c, d);
        
        a = 1;
        b = 1;
        c = 1;
        d = 0;
        #10;
        if(x != 0) $display("Fault detected Wire Y is stuck at 1, vector {%b, %b, %b, %b}", a, b, c, d);

    #10;
    $finish();

end

endmodule