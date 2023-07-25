import UIKit //permite ter linguagens associadas ao programa

var mensagem = "Olá Mundo!"
var numero = 10 //automaticamente assume que é um valor decimal
//Nao preciso de usar ponto e virgula, tal como no kotlin

numero = 15

var calculo = 10*4+3

print(mensagem)
print(numero)

//let = constante, depois de o instanciar, nao podemos alterar

//Arrays

var vazio: [Int] = []

var idades = [20, 14, 15, 6, 20, 15, 5]

vazio.count //conta quantos elementos tem no array
idades.count

idades.last //diz o último elemento do array, neste caso 6
vazio.last //nil = nulo

idades.shuffle() //desordena os números
idades.shuffle()

var idadesSet = Set(idades)

print(idades)
print(idadesSet) //tira duplicados

print(idadesSet.contains(10)) //false
print(idadesSet.contains(15)) //true

//Dicionários

let pessoas : [String:Int] = [
    "Ana" : 10,
    "Bruno" : 20,
    "Carlos" : 30
]

print(pessoas)

print(pessoas["Ana"]!) //optional 10; se colocar ! deixa de ser opcional

//Funçoes

func soma(primeiroNumero:Int, mais segundoNumero:Int) -> Int {
    return primeiroNumero + segundoNumero
}

soma(primeiroNumero: 10, mais: 5)

//Como chamar uma variavel

var nome = "Maria"

print("Olá \(nome)")

//Optionals - é um valor que pode assumir o valor nulo

var idades1 : [Int] = [10]
idades1.sort()

//let maisVelho = idades1.last

//if let
/*
 if let maisVelho = idades1.last {
 print("O mais velho é \(maisVelho)")
 } else {
 print("Nao foram definidas idades")
 }
 */

//nil coalescing - esta forma é mais simples e mais comum
//let maisVelho = idades1.last ?? 999

//guard statement
/*
func getMaisVelho() {
    guard let maisVelho = idades1.last else { return }
    
    print("O mais velho é: \(maisVelho)")
}
getMaisVelho() //posso chamar sempre o mesmo bloco de código sem o repetir
*/

//force unwrap
let maisVelho = idades1.last!
