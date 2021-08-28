using System;

public class PreEdicao
{
    // Constructor that takes one argument:
    public PreEdicao(DateTime dataCadastro)
    {
        DataCadastro = dataCadastro;

    }
    // Auto-implemented readonly property:
    public DateTime DataCadastro { get; private set; }

}