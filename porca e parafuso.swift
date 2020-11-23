//programa que verifica se a porca casa com o parafuso, um exemplo real do uso:




struct Dimensoes 
{
    var bitola: Float
    var passo: Float
}

extension Parafuso
{
    static func * (left: Parafuso, right: Porca)-> Bool//verifica se a bitola e o passo do parafuso são compativeis e retorna verdadeiro ou falso caso o parafuso não case com a porca
    {
        // faz tudo
        return ((( left._Dimensoes.bitola - right._Dimensoes.bitola ) == 0) && (( left._Dimensoes.passo - right._Dimensoes.passo ) == 0))
    }
}
class Parafuso
{
    var _Dimensoes: Dimensoes
    init(a: Float, b: Float)
    {
        _Dimensoes = Dimensoes(bitola: a, passo: b)
    }
}
class Porca// 
{
    var _Dimensoes: Dimensoes
    init(a: Float, b: Float)
    {
        _Dimensoes = Dimensoes(bitola: a, passo: b)
    }
}

let parafuso04CBF = Parafuso(a: 3.0, b: 2.0)//cria um objeto da classe parafuso 
let porca3876_34 = Porca(a: 3.0, b: 2.0)//cria um objeto da classe proca
let validado = parafuso04CBF * porca3876_34// usa o operando * para substiruir uma função 
print(validado)
