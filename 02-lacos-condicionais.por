// Exerc�cio 1
programa {
  funcao inicio() {
    inteiro numero
    escreva("Digite um n�mero inteiro: ")
    leia(numero)
    se(numero % 2 == 0 e numero != 0){
      se(numero > 0){
        escreva("O n�mero digitado � par e positivo.")
      }
      senao{
        escreva("O n�mero digitado � par e negativo.")
      }
    }
    senao se(numero % 2 != 0){
      se(numero > 0){
        escreva("O n�mero digitado � �mpar e positivo.")
      }
      senao{
        escreva("O n�mero digitado � �mpar e negativo.")
      }
    }
    senao{
      escreva("O n�mero digitado � zero.")
    }
  }
}


//Exerc�cio 2
programa {
  funcao inicio() {
    cadeia nomeProduto
    inteiro codigoProduto, quantidade
    real precoUnitario, valorTotal
    escreva("C�digo do Produto\t\t\t\tProduto\t\t\t\tPre�o Unit�rio\n")
    escreva("\t\t\t\t1\t\t\t\t\t\tCachorro Quente\t\tR$10,00\n")
    escreva("\t\t\t\t2\t\t\t\t\t\t\t\tX-Salada\t\t\tR$15,00\n")
    escreva("\t\t\t\t3\t\t\t\t\t\t\t\tX-Bacon\t\t\t\tR$18,00\n")
    escreva("\t\t\t\t4\t\t\t\t\t\t\t\t Bauru\t\t\t\tR$12,00\n")
    escreva("\t\t\t\t5\t\t\t\t\t\t\tRefrigerante\t\t R$8,00\n")
    escreva("\t\t\t\t6\t\t\t\t\t\tSuco de Laranja\t\tR$13,00\n")
    escreva("Digite o c�digo do produto: ")
    leia(codigoProduto)
    escolha(codigoProduto){
      caso 1:
        precoUnitario = 10.00
        nomeProduto = "Cachorro-Quente(s)"
      pare

      caso 2:
        precoUnitario = 15.00
        nomeProduto = "X-Salada(s)"
      pare

      caso 3:
        precoUnitario = 18.00
        nomeProduto = "X-Bacon(s)"
      pare

      caso 4:
        precoUnitario = 12.00
        nomeProduto = "Bauru(s)"
      pare

      caso 5:
        precoUnitario = 8.00
        nomeProduto = "Refrigerante(s)"
      pare

      caso 6:
        precoUnitario = 13.00
        nomeProduto = "Suco de Laranja(s)"
      pare

      caso contrario:
        escreva("C�digo do produto inv�lido")
    }
    se(precoUnitario > 0){
      escreva("Digite a quantidade: ")
      leia(quantidade)
      valorTotal = precoUnitario * quantidade
      escreva("Foi(ram) comprado(s) ", quantidade, " ", nomeProduto, " e o valor total � de R$",valorTotal)
    }    
  }
}


//Exerc�cio 3
programa {
  funcao inicio() {
    inteiro idade
    escreva("Digite a idade: ")
    leia(idade)
    se(idade >=0 e idade < 16){
      escreva("A pessoa n�o est� apta a votar.")
    }
    senao se((idade >= 16 e idade <18) ou idade >= 65){
      escreva("A pessoa est� apta a votar e o voto � facultativo.")
    }
    senao se(idade >= 18 e idade < 65){
      escreva("A pessoa est� apta a votar e o voto � obrigat�rio.")
    }
    senao{
      escreva("Idade digitada inv�lida.")
    }
  }
}


//Exerc�cio 4
programa {
  inclua biblioteca Matematica
  funcao inicio() {
    real salario, aliquota, imposto
    escreva("Digite o sal�rio: ")
    leia(salario)
    salario = Matematica.arredondar(salario,2)
    se(salario > 0 e salario <= 2000.00){
      escreva("Um sal�rio de ", salario, " reais � isento de imposto de renda.")
    }
    senao se(salario < 0){
      escreva("Sal�rio inv�lido.")
    }
    senao{
      se(salario > 2000.00 e salario <= 3000.00){
        aliquota = 0.08
      }
      senao se(salario > 3000.00 e salario <= 4500.00){
        aliquota = 0.18
      }
      senao se(salario > 4500.00){
        aliquota = 0.28
      }
      imposto = salario * aliquota
      imposto = Matematica.arredondar(imposto,2)
      escreva("Para um sal�rio de ", salario, " reais, o imposto de renda a ser pago � de ", imposto," reais.\n")
    }
  }
}


//Exerc�cio 5
programa {
  funcao inicio() {
    cadeia coluna, classe, alimentacao
    escreva("Digite se � vertebrado ou invertebrado: ")
    leia(coluna)
    se(coluna == "vertebrado"){
      escreva("Digite se � uma ave ou um mam�fero: ")
      leia(classe)
      se(classe == "ave"){
        escreva("Digite se � carn�voro ou on�voro: ")
        leia(alimentacao)
        se(alimentacao == "carn�voro"){
          escreva("O animal escolhido foi �guia.")
        }
        senao se(alimentacao == "on�voro"){
          escreva("O animal escolhido foi pomba.")
        }
        senao{
          escreva("Alimenta��o inv�lida.")
        }
      }
      senao se(classe == "mam�fero"){
        escreva("Digite se � on�voro ou herb�voro: ")
        leia(alimentacao)
        se(alimentacao == "on�voro"){
          escreva("O animal escolhido foi homem.")
        }
        senao se(alimentacao == "herb�voro"){
          escreva("O animal escolhido foi vaca.")
        }
        senao{
          escreva("Alimenta��o inv�lida.")
        }
      }
      senao{
        escreva("Classe inv�lida.")
      }
    }
    senao se(coluna == "invertebrado"){
      escreva("Digite se � um inseto ou um anel�deo: ")
      leia(classe)
      se(classe == "inseto"){
        escreva("Digite se � hemat�fago ou herb�voro: ")
        leia(alimentacao)
        se(alimentacao == "hemat�fago"){
          escreva("O animal escolhido foi pulga.")
        }
        senao se(alimentacao == "herb�voro"){
          escreva("O animal escolhido foi lagarta.")
        }
        senao{
          escreva("Alimenta��o inv�lida.")
        }
      }
      senao se(classe == "anel�deo"){
        escreva("Digite se � hemat�fago ou on�voro: ")
        leia(alimentacao)
        se(alimentacao == "hemat�fago"){
          escreva("O animal escolhido foi sanguessuga.")
        }
        senao se(alimentacao == "on�voro"){
          escreva("O animal escolhido foi minhoca.")
        }
        senao{
          escreva("Alimenta��o inv�lida.")
        }
      }
      senao{
        escreva("Classe inv�lida.")
      }
    }
    senao{
      escreva("Entrada inv�lida.")
    }
  }
}