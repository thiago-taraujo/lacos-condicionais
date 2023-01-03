// Exercício 1
programa {
  funcao inicio() {
    inteiro numero
    escreva("Digite um número inteiro: ")
    leia(numero)
    se(numero % 2 == 0 e numero != 0){
      se(numero > 0){
        escreva("O número digitado é par e positivo.")
      }
      senao{
        escreva("O número digitado é par e negativo.")
      }
    }
    senao se(numero % 2 != 0){
      se(numero > 0){
        escreva("O número digitado é ímpar e positivo.")
      }
      senao{
        escreva("O número digitado é ímpar e negativo.")
      }
    }
    senao{
      escreva("O número digitado é zero.")
    }
  }
}


//Exercício 2
programa {
  funcao inicio() {
    cadeia nomeProduto
    inteiro codigoProduto, quantidade
    real precoUnitario, valorTotal
    escreva("Código do Produto\t\t\t\tProduto\t\t\t\tPreço Unitário\n")
    escreva("\t\t\t\t1\t\t\t\t\t\tCachorro Quente\t\tR$10,00\n")
    escreva("\t\t\t\t2\t\t\t\t\t\t\t\tX-Salada\t\t\tR$15,00\n")
    escreva("\t\t\t\t3\t\t\t\t\t\t\t\tX-Bacon\t\t\t\tR$18,00\n")
    escreva("\t\t\t\t4\t\t\t\t\t\t\t\t Bauru\t\t\t\tR$12,00\n")
    escreva("\t\t\t\t5\t\t\t\t\t\t\tRefrigerante\t\t R$8,00\n")
    escreva("\t\t\t\t6\t\t\t\t\t\tSuco de Laranja\t\tR$13,00\n")
    escreva("Digite o código do produto: ")
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
        escreva("Código do produto inválido")
    }
    se(precoUnitario > 0){
      escreva("Digite a quantidade: ")
      leia(quantidade)
      valorTotal = precoUnitario * quantidade
      escreva("Foi(ram) comprado(s) ", quantidade, " ", nomeProduto, " e o valor total é de R$",valorTotal)
    }    
  }
}


//Exercício 3
programa {
  funcao inicio() {
    inteiro idade
    escreva("Digite a idade: ")
    leia(idade)
    se(idade >=0 e idade < 16){
      escreva("A pessoa não está apta a votar.")
    }
    senao se((idade >= 16 e idade <18) ou idade >= 65){
      escreva("A pessoa está apta a votar e o voto é facultativo.")
    }
    senao se(idade >= 18 e idade < 65){
      escreva("A pessoa está apta a votar e o voto é obrigatório.")
    }
    senao{
      escreva("Idade digitada inválida.")
    }
  }
}


//Exercício 4
programa {
  inclua biblioteca Matematica
  funcao inicio() {
    real salario, aliquota, imposto
    escreva("Digite o salário: ")
    leia(salario)
    salario = Matematica.arredondar(salario,2)
    se(salario > 0 e salario <= 2000.00){
      escreva("Um salário de ", salario, " reais é isento de imposto de renda.")
    }
    senao se(salario < 0){
      escreva("Salário inválido.")
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
      escreva("Para um salário de ", salario, " reais, o imposto de renda a ser pago é de ", imposto," reais.\n")
    }
  }
}


//Exercício 5
programa {
  funcao inicio() {
    cadeia coluna, classe, alimentacao
    escreva("Digite se é vertebrado ou invertebrado: ")
    leia(coluna)
    se(coluna == "vertebrado"){
      escreva("Digite se é uma ave ou um mamífero: ")
      leia(classe)
      se(classe == "ave"){
        escreva("Digite se é carnívoro ou onívoro: ")
        leia(alimentacao)
        se(alimentacao == "carnívoro"){
          escreva("O animal escolhido foi águia.")
        }
        senao se(alimentacao == "onívoro"){
          escreva("O animal escolhido foi pomba.")
        }
        senao{
          escreva("Alimentação inválida.")
        }
      }
      senao se(classe == "mamífero"){
        escreva("Digite se é onívoro ou herbívoro: ")
        leia(alimentacao)
        se(alimentacao == "onívoro"){
          escreva("O animal escolhido foi homem.")
        }
        senao se(alimentacao == "herbívoro"){
          escreva("O animal escolhido foi vaca.")
        }
        senao{
          escreva("Alimentação inválida.")
        }
      }
      senao{
        escreva("Classe inválida.")
      }
    }
    senao se(coluna == "invertebrado"){
      escreva("Digite se é um inseto ou um anelídeo: ")
      leia(classe)
      se(classe == "inseto"){
        escreva("Digite se é hematófago ou herbívoro: ")
        leia(alimentacao)
        se(alimentacao == "hematófago"){
          escreva("O animal escolhido foi pulga.")
        }
        senao se(alimentacao == "herbívoro"){
          escreva("O animal escolhido foi lagarta.")
        }
        senao{
          escreva("Alimentação inválida.")
        }
      }
      senao se(classe == "anelídeo"){
        escreva("Digite se é hematófago ou onívoro: ")
        leia(alimentacao)
        se(alimentacao == "hematófago"){
          escreva("O animal escolhido foi sanguessuga.")
        }
        senao se(alimentacao == "onívoro"){
          escreva("O animal escolhido foi minhoca.")
        }
        senao{
          escreva("Alimentação inválida.")
        }
      }
      senao{
        escreva("Classe inválida.")
      }
    }
    senao{
      escreva("Entrada inválida.")
    }
  }
}