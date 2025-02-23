// Módulo Principal
module sistemaRega(
    input H, M, L, T, Us, Ua, clock,
    output Bs, Vs, Ve, Al, E, working, Ag, segA, segB, segC, segD, segE, segF, segG, led,
    output [3:0] seven_seg_digit,
    output [4:0] column,
    output [6:0] lines
);

    // Instanciando o módulo combinacional
    pbl1 combinational (
        .H(H), .M(M), .L(L), .T(T), .Us(Us), .Ua(Ua), .clock(clock),
        .Bs(Bs), .Vs(Vs), .Ve(Ve), .Al(Al), .E(E), .working(working),
        .segA(segA), .segB(segB), .segC(segC), .segD(segD), .segE(segE), .segF(segF), .segG(segG),
        .seven_seg_digit(seven_seg_digit), .column(column), .lines(lines)
    );

    // Instanciando a máquina de estados
    state_machine mef (
        .H(H), .M(M), .L(L), .Bs(Bs), .Vs(Vs), .Ve(Ve), .Al(Al), .E(E),
        .working(working), .clock(clock), .Ag(Ag), .led(led)
    );
endmodule
