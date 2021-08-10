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
    public int NumEdicao { get; set; }
    public DateTime DataInicial { get; set; }
    public DateTime DataFinal { get; set; }
    public string Status { get; set; }

}