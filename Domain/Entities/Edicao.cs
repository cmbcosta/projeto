using System;

public class Edicao
{
    // Constructor that takes one argument:
    public Edicao(int numEdicao, DateTime dataInicial, DateTime dataFinal, string status)
    {
        NumEdicao = numEdicao;
        DataInicial = dataInicial;
        DataFinal = dataFinal;
        Status = status;


    }

    // Auto-implemented readonly property:
    public int NumEdicao { get; private set; }
    public DateTime DataInicial { get; private set; }
    public DateTime DataFinal { get; private set; }
    public string Status { get; private set; }

}