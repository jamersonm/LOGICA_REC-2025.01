-- Desenvolva um testbench em VHDL que calcule e imprima os números primos.
--  A sequência deve ser gerada e reportada sequencialmente, começando pelo número 2,
--  até que o próximo número a ser gerado seja igual ou superior a uma constante pré-definida,
-- `PRIME_LIMIT`, que você deverá definir como 100. 

entity a003h_exercicio_2 is
    end entity;
    
    architecture sim of a003h_exercicio_2 is
    begin
    
        process
            constant PRIME_LIMIT : integer := 100;
            variable a : integer := 2;
            variable aux : integer := 2;

        begin
            -- Report inicial para indicar o in�cio da simula��o.
            report "Start!";
    
            -- Estrutura de loop que continuar� a executar at� que uma condi��o de sa�da 
            -- seja satisfeita.
            -- de_2_a_100: while a < PRIME_LIMIT loop 
            --    acrescenta: while a < PRIME_LIMIT loop
            --        exit acrescenta when a mod a = 0;
            --        a := a + 1;
            --    end loop acrescenta
            --    report "Primo: " &integer'image(a);
            -- end loop de_2_a_100;

            de_2_a_100: while a < PRIME_LIMIT loop
                aux := a;
                decrescenta: for aux in a downto 2 loop
                    next decrescenta when a mod aux = 0;
                    report "Primo: " &integer'image(a);
                end loop decrescenta;
                -- report "Primo: " &integer'image(a);
                a := a + 1;
            end loop de_2_a_100;


            -- Mensagem final reportada ap�s a conclus�o do loop.
            report "Ateh!";
            
            -- O comando wait sem especifica��o de tempo faz com que o processo aguarde indefinidamente.
            -- Isso impede que o processo reinicie automaticamente.
            wait;
    
        end process;
    
    end architecture;