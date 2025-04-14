-- Desenvolva um testbench em VHDL que calcule e imprima a sequ�ncia de Fibonacci. 
-- A sequ�ncia deve ser gerada e reportada sequencialmente, come�ando pelos n�meros 0 e 1,
--  at� que o pr�ximo n�mero a ser gerado seja igual ou superior a uma constante pr�-definida,
-- `FIB_LIMIT`, que voc� dever� definir como 100. O objetivo deste exerc�cio � praticar o uso de vari�veis,
--  constantes e loops em VHDL para simular uma sequ�ncia num�rica conhecida.

entity a003g_exercicio_1 is
    end entity;
    
    architecture sim of a003g_exercicio_1 is
    begin
    
        process
            constant FIB_LIMIT : integer := 100;
            variable a : integer := 0;
            variable b : integer := 1;
            -- variable i : integer := 0;
            variable aux : integer := 1;
        begin
            -- Report inicial para indicar o in�cio da simula��o.
            report "Start!";
    
            -- Estrutura de loop que continuar� a executar at� que uma condi��o de sa�da 
            -- seja satisfeita.
            while b < FIB_LIMIT loop
                aux := a + b;
                a := b;
                report "Fibonacci: " &integer'image(b);
                b := aux;
            end loop;
            -- Mensagem final reportada ap�s a conclus�o do loop.
            report "Ateh!";
            
            -- O comando wait sem especifica��o de tempo faz com que o processo aguarde indefinidamente.
            -- Isso impede que o processo reinicie automaticamente.
            wait;
    
        end process;
    
    end architecture;