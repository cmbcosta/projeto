using System;

public class EdicaoHistorico
{
    // Constructor that takes one argument:
    public EdicaoHistorico(DateTime dataCadastro)
    {
        DataCadastro = dataCadastro;

    }
    // Auto-implemented readonly property:
    public DateTime DataCadastro { get; set; }

}