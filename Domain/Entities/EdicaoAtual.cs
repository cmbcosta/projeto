using System;

public class EdicaoAtual
{
    // Constructor that takes one argument:
    public EdicaoAtual(DateTime dataCadastro)
    {
        DataCadastro = dataCadastro;

    }
    // Auto-implemented readonly property:
    public DateTime DataCadastro { get; private set; }

}