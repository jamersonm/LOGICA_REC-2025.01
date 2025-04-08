LIBRARY std;

-- entity.
ENTITY exercicio002 IS
END ENTITY;

ARCHITECTURE semaforo OF exercicio002 IS

CONSTANT delayVerde : time := 30 sec;
CONSTANT delayAmarelo : time := 5 sec;
CONSTANT delayVermelho : time := 30 sec;

BEGIN
    PROCESS
    BEGIN
	REPORT "VERDE!";
        WAIT FOR delayVerde;

	REPORT "AMARELO!";
        WAIT FOR delayAmarelo;

	REPORT "VERMELHO!";
        WAIT FOR delayVermelho;

        -- WAIT;
    END PROCESS;
END ARCHITECTURE semaforo;
