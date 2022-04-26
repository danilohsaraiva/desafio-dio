/*Considerando que o hotel tenha 20 quartos, desenvolva um algoritmo 
para marcar a ocupação de cada quarto. No início todos os quartos estão 
livres. O usuário informará então o número do quarto (de 1 a 20); o 
sistema questionará “O quarto está livre ou ocupado? (L/O)”; o usuário 
informará L ou O e o sistema registrará essa escolha para o quarto. Caso 
o usuário informe “O”, mas o quarto já está marcado como ocupado, 
mostre na tela “Quarto já está ocupado”. Pergunte ao usuário se ele 
deseja continuar e caso positivo, repita a operação. Ao fim, mostre o 
status de cada quarto.*/

programa
{	cadeia quartos [20]= {"| 1 |"," 2 |"," 3 |"," 4 |"," 5 |"," 6 |"," 7 |"," 8 |"," 9 |"," 10 |"," 11 |"," 12 |"," 13 |"," 14 |"," 15 |"," 16 |"," 17 |"," 18 |"," 19 |"," 20 |"} 
	cadeia quartosReferencia [20] = {"| 1 |"," 2 |"," 3 |"," 4 |"," 5 |"," 6 |"," 7 |"," 8 |"," 9 |"," 10 |"," 11 |"," 12 |"," 13 |"," 14 |"," 15 |"," 16 |"," 17 |"," 18 |"," 19 |"," 20 |"}

	funcao logico ocupado(cadeia quarto)
	{	inteiro operador = 0
		se(quartos[operador] == "| \b | "  ou quartos[operador] == " \b |")
		{
			retorne verdadeiro
		}senao{
		retorne falso
		}
	}

	funcao espere()
	{
		cadeia _
		escreva("Digite ENTER para continuar...")
		leia(_)
	}

	funcao verStatus()
	{
		escreva("---------------------------------------STATUS DOS QUARTOS-----------------------------------\n")
		escreva("Considere:\nQuarto livre    | 1 | <<< Com numeração.\nQuarto ocupado: | \b | <<< Símbolo.\n")
	
		escreva("============================================================================================\n")
	
		para(inteiro i = 0; i<=19;i++){
			escreva(quartos[i])
		}
		escreva("\n============================================================================================\n")
		escreva("--------------------------------------------------------------------------------------------\n")
	}
	
	funcao inicio()
	{	

		inteiro opcao = 9
		inteiro numero 
		inteiro operador 
		caracter check
		logico continuar = verdadeiro
		
		enquanto(continuar){
		escreva("-------------------------------------------\n")
		escreva("                 Bem vindo                 \n")
		escreva("    Sistema de gerenciamento de quartos    \n")
		escreva("-------------------------------------------\n")
		escreva("                  Digite:\n\n1 - Registrar entrada/saida de hóspedes.\n2 - Verificar status dos quartos.\n3 - Sair.\n>>> ")
		opcao = 0
		enquanto(opcao != 1 e opcao!=2 e opcao!=3)
		{
		leia(opcao)
		limpa()
		se(opcao !=1 e opcao!=2 e opcao!=3)
		{
			limpa()
			escreva("Insira um número válido\n")
			escreva("Digite:\n1 - Verificar status dos quartos.\n2 - Sair.\n>>>")
		}
		}

		escolha(opcao){
			caso 1: 
			escreva("                   CHECK-IN/CHECK-OUT                   \n")
			escreva("-------------------------------------------------------\n")
			escreva("Informe o número do quarto (1-20): ")
			leia(numero)
			enquanto(numero<1 ou numero>20)
			{
				escreva("Entrada de dados inválida.\n")
				escreva("Digite um número válido (1-20): \n")
				leia(numero)
				
			}


			operador = numero -1
			escreva("Informe se o quarto está o ocupado.\nConsidere: \nL - Livre e O - Ocupado.\nEscreva: ")
			leia(check)

			se(check == 'L'){
				se(check=='L' e (quartos[operador] == "| \b | " ou quartos[operador]== " \b |")){
					escreva("Check-out realizado com sucesso!.\n")
					quartos[operador]=quartosReferencia[operador]
				}senao{
					escreva("Quarto vazio.\n")
				}
			}
			se(check == 'O'){
				se(check == 'O' e (quartos[operador] =="| \b | " ou quartos[operador]== " \b |")){
					escreva("Quarto já está ocupado.\n")
				}senao{
					escreva("Check-in relizado com sucesso!\n")
					se(operador == 0){
						quartos[operador] = "| \b | "
					}senao{
						quartos[operador] = " \b |"
					}
				}
			}
				
			espere()
			limpa()
			pare

			caso 2: //ver status
			verStatus()
			espere()
			limpa()
			
			pare

			caso contrario:
			continuar = falso
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 589; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */