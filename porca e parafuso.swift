//programa que verifica se a porca casa com o parafuso, um exemplo real do uso:




struct Dimensoes 
{
    var bitola: Float
    var passo: Float
}

extension Parafuso
{
    static func * (left: Parafuso, right: Porca)-> Bool
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
class Porca
{
    var _Dimensoes: Dimensoes
    init(a: Float, b: Float)
    {
        _Dimensoes = Dimensoes(bitola: a, passo: b)
    }
}

let parafuso04CBF = Parafuso(a: 3.0, b: 2.0)
let porca3876_34 = Porca(a: 3.0, b: 2.0)
let validado = parafuso04CBF * porca3876_34
print(validado)