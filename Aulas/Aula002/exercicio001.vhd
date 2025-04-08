LIBRARY std; -- opcional
USE std.textio.all; -- utilizado para manipulação de texto 

-- entity.
ENTITY exercicio001 IS
END ENTITY;

ARCHITECTURE temporizacao OF exercicio001 IS
BEGIN
    PROCESS
        VARIABLE L: line;
    BEGIN
	-- report "Start!"
        write(L, string'("Start!"));
        writeline(output, L);

        WAIT FOR 1 sec;

	-- report "End!"
	write(L, string'("End!"));
        writeline(output, L);

        WAIT; -- O testbench para aqui, aguardando indefinidamente.
    END PROCESS;
END ARCHITECTURE temporizacao;
