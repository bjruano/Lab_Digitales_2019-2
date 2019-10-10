module digit_separator(
    input [6:0] N,
    output reg [3:0] decena, unidad
    );
    
    always @ (*)
        begin       
        if (N>=0 & N<10)
            begin
            decena = 4'd0;
            unidad = N;
            end
        else if (N>=10 & N<20)
            begin
            decena = 4'd1;
            unidad = N-10;
            end
        else if (N>=20 & N<30)
            begin
            decena = 4'd2;
            unidad = N-20;
            end
        else if (N>=30 & N<40)
            begin
            decena = 4'd3;
            unidad = N-30;
            end
        else if (N>=40 & N<50)
            begin
            decena = 4'd4;
            unidad = N-40;
            end
        else if (N>=50 & N<60)
            begin
            decena = 4'd5;
            unidad = N-50;
            end
        else if (N>=60 & N<70)
            begin
            decena = 4'd6;
            unidad = N-60;
            end
        else if (N>=70 & N<80)
            begin
            decena = 4'd7;
            unidad = N-70;
            end
        else if (N>=80 & N<90)
            begin
            decena = 4'd8;
            unidad = N-80;
            end
        else if (N>=90 & N<100)
            begin
            decena = 4'd9;
            unidad = N-90;
            end
        end
endmodule
