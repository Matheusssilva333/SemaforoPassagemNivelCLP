////////////////////////////////////////////////////////////////////////////////////////////////
//INICIALIZACOES
//////////////////////////////////////////////////////////////////////////////////////////////// 

//Inicializacao a frio (primeira energizacao do CLP ou carga de programa novo)

                aux = !realizouColdStart(programa);

                SEL     (aux)
                ENTAO_EXECUTA_BLOCO {
                        tempoAlternancia = 100; // Parametro padrao: 100 centesimos = 1,00 segundo
                }

//Inicializacao a quente (executado no primeiro ciclo de varredura - cic1)

                SEL     (cic1)
                ENTAO_EXECUTA_BLOCO {                
                        programa = 9000;          // Programa 9000
                        versao = 2;               // Versao 02
                        revisao = 3;              // Revisao 03

                        // Garante que o tempo nunca seja zero ou negativo na partida
                        if (tempoAlternancia <= 0) {
                                tempoAlternancia = 100;
                        }
                }

//Trata alteracao de parametros na IHM

                aux = verificaAlteracaoParametros();

                SEL     (aux)
                ENTAO_EXECUTA_BLOCO {

                }

////////////////////////////////////////////////////////////////////////////////////////////////
//STATUS E POSICIONAMENTO
//////////////////////////////////////////////////////////////////////////////////////////////// 

