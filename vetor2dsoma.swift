struct Vetor2D {
    
    var x = 0.0, y = 0.0
}

extension Vetor2D {
    static func + (left: Vetor2D, right: Vetor2D) -> Vetor2D {
        return Vetor2D(x: left.x + right.x, y: left.y + right.y)//atribui um processo desejado a um operador especifico para os objetos nesse caso os vetores
    }
}

let a = 1
let b = 2
let vetor = Vetor2D(x: 3.0, y: 1.0)
let outroVetor = Vetor2D(x: 2.0, y: 4.0)
let vetorCombinado = vetor + outroVetor
let z = a + b
print(vetorCombinado)
print(z)//sem alterar o operador + para outros tipos
