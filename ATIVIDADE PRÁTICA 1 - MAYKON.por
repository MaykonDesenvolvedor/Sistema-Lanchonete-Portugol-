programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
				//36. Ler o pedido de um cliente de fast food, baseado no menu abaixo, e imprimir o preﾃｧo total e a opﾃｧﾃ｣o que ele escolher. 

		//Exercicio lanchonete

		inteiro codigo=999, quantidade, dinheiro=999, debito=999, credito=999, parcelas       //\nDigite o codigo do produto: 
		real valor=0.0
		cadeia pagamentoForma //cadeia = conjunto de caracter

											//TABELA DE PRODUTOS -- CONTEUDO --  PREÇO
			escreva ("__________________________________________________________________________________________________________\n")
			escreva ("CODIGO  |       PROMOÇÃO           |                      ESPECIFICÃO                         |    PREÇO(R$)\n")
			escreva ("   1    |   Big Super Sanduba      |   2 hamburgueres, queijo, batata fritas e refrigerante   |      22,70\n")
			escreva ("   2    |   Quase Super Sanduba    |   1 hamburguer, batata fritas e refrigerante             |      17,50\n")
			escreva ("   3    |   Mirradus Sanduba       |   1 misto quente e refrigerante                          |      11,90\n")
			escreva ("   4    |   Mega Super Big Sanduba |   3 hamburguer, batata frita e refrigerante 2L           |      29,80\n")
			escreva ("__________________________________________________________________________________________________________\n")

						escreva ("QUANDO FINALIZAR A SELEÇÃO, DIGITE QUALQUER Nº E CONFIRME PARA FINALIZAR.\n")

					enquanto (codigo != 0) 
					{ // inicio bloco enquanto
								
						escreva ("\n	Digite o codigo do produto: ") //código refente a cada produto da tabela
							leia (codigo)

							se (codigo == 0) //usuario deve digitar qualquer numero exceto "1-2-3-4" para finalizar a seleção
								pare

								escreva ("\n	Quantidade do produto: ") //quantidade do produto selecionado
									leia (quantidade)

									se (codigo == 1) 	//codigo de referencia			//valor unitario do produto 5
										valor = quantidade * 22.70 + valor

							senao

									se (codigo == 2) 	//codigo de referencia			//valor unitario do produto 5
										valor = quantidade * 17.50 + valor

							senao

									se (codigo == 3) 	//codigo de referencia			//valor unitario do produto 5
										valor = quantidade * 11.90 + valor

							senao

									se (codigo == 4) 	//codigo de referencia			//valor unitario do produto 5
										valor = quantidade * 29.80 + valor 

							senao

								escreva ("\nCódigo Invalido\n	Tente novamente...") //caso o codigo selecionaddo nao exista, deve voltar para o inicio da seleção

					} // final bloco enquanto

						escreva ("\n___________________________________\n")
						escreva ("\nDINHEIRO - Desconto 5%\nDÉBITO   - Desconto 3% \nCRÉDITO  - Parcelado em até 4x na compra acima de R$200,00\n\n")
								//cliente terá desconto dependendo da forma de pagamento, como também a opção de parcelar quando passar de um certo valor

							escreva ("TOTAL = R$", valor, "\n") //total de todos os produtos selecionados
 
							escreva("Escolha forma de pagamento: ") //dinheiro, debito ou credito
								leia(pagamentoForma) 

						escreva ("\n__________________________________\n")

									se (pagamentoForma == "dinheiro")	//pagamento dinheior = 5% de desconto							
										escreva ("\n - 0 = à vista\n\nTotal final: R$", valor, "\nTOTAL COM DESCONTO: R$", (valor - (valor /100) * 5))	
										
							senao

 									se (pagamentoForma == "debito") // pagamento debito = 3% desconto
										escreva ("\n - 0 = à vista\nTotal final: R$", valor, "\nTOTAL COM DESCONTO: R$", (valor - (valor / 100) * 3),"\n")//valor * 0,03 = descont			

							senao

									se (pagamentoForma == "credito" e (valor >= 200))		// caso o valor total seja maior que 200, pode ser parcelado em duas vezes 
										escreva ("\nTotal: R$", valor, "\n - 1 PARCELA \n - 2 PARCELAS\n - 3 PARCELAS \n - 4 PARCELAS (1,5% de juros)\n	= R$", valor + ((valor /100) * 1.5))	
												escreva ("\nQUANTIDADE DE PARCELAS: ")
													leia (parcelas)																					

												enquanto (parcelas == 0) // valido para dinheiro e debito '0' = pagamento a vista
												{ //ícinio do bloco
													escreva ("\nPagamento realizado.\n")
													pare
												}//final do bloco

														se (parcelas == 1) 
															escreva ("\nCompra realiaza a vista: R$", valor, "\n") //valor total sera pago em uma unica vez

												senao

														se (parcelas == 2)
															escreva ("\nValor total: R$", valor, "\nParcelado em 2x de: R$", valor / 2, "\n") //valor total sera dividido/parcelado em 2 vezes	

												senao

														se (parcelas == 3) 
															escreva ("\nValor total: R$", valor, "\nParcelado em 3x de: R$", valor / 3, "\n") //valor total sera dividido/parcelado em 3 vezes	

												senao

														se (parcelas == 4) //parcelar em 4 vezes tem juros aplicadoa valor total
															escreva ("\nValor total (com juros): R$", valor + ((valor /100) * 1.5), "\nParcelado em 4x de: R$", (valor + ((valor /100) * 1.5)) / 4, "\n") //valor total sera dividido/parcelado em 3 vezes				

														senao

															se (parcelas != 0 e parcelas != 1 e parcelas != 2 e parcelas != 3 e parcelas != 4)
																escreva ("\nNÚMERO DE PARCELAS INVALIDO.\n	Tente novamente...\n")



	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 424; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */