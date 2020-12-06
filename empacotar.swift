  
//programa que verifica se a objeto pode ser empacotado, um exemplo real do uso:



struct Dimensoes 
{
    var peso: Float//peso do objeto e peso que a caixa suporta
    var formato: String// pode ser esferico, quadrado ou liquido
    var larg: Float//no caso de esfera seria o diametro 
    var alt: Float//no caso de esfera seria o diametro 

}

extension caixa
{
    //verifica se o peso da caixa suporta o do objeto, e se o objeto se encaixa em algum dos casos 
    static func - (left: caixa, right: objeto)-> Bool{//retornma um booleano verdadeiero ou falso
        return (( left._Dimensoes.peso > right._Dimensoes.peso ) && ( right._Dimensoes.formato == "liquido") ||
        ( left._Dimensoes.peso > right._Dimensoes.peso ) && ( right._Dimensoes.formato == "esferico") &&  ( left._Dimensoes.larg >= right._Dimensoes.larg+(right._Dimensoes.larg*0.2) ) &&  ( left._Dimensoes.alt >= right._Dimensoes.alt+(right._Dimensoes.alt*0.2) ) ||//
        ( left._Dimensoes.peso > right._Dimensoes.peso ) && ( right._Dimensoes.formato == "quadrado")  &&  ( left._Dimensoes.larg >= right._Dimensoes.larg+(right._Dimensoes.larg*0.1) )  &&  ( left._Dimensoes.alt >= right._Dimensoes.alt+(right._Dimensoes.alt*0.1) ))
    }
}
class caixa
{
    var _Dimensoes: Dimensoes
    init(peso: Float, larg: Float, alt: Float)
    {
        _Dimensoes = Dimensoes(peso: peso, formato: "quadrado", larg: larg, alt: alt)
    }
}
class objeto // é uma implementação pra ser simples, o jeito mais certo seria fazer a extensão para os 3 tipos  de formato
{
    var _Dimensoes: Dimensoes
    init(peso: Float, tipo: String, larg: Float, alt: Float)// é uma implementação pra ser simples, o jeito mais
    {
        if tipo == "liquido"{//se for liquido ele ignora a largura e altura na construção do objeto 
            _Dimensoes = Dimensoes(peso: peso, formato: tipo, larg: 0, alt: 0)
        }
        else if tipo == "esferico"{
         _Dimensoes = Dimensoes(peso: peso, formato: tipo, larg: larg, alt: larg)// se for esferico ele usa a largura em ambos, representando 
        }
        else{
            _Dimensoes = Dimensoes(peso: peso, formato: tipo, larg: larg, alt: alt)// quadrado
        }

        
    
        
    }
}

let caixa1 = caixa(peso: 3.0, larg: 130, alt: 900)//cria um objeto da classe caixa 
let objeto1 = objeto(peso: 2.0, tipo: "esferico", larg: 100, alt: 700)//cria um objeto da classe objeto
let validado = caixa1 - objeto1// usa o operando menos para verificar se as propriedades dos 2 objetos estão dentro dos parametros
print(validado)
