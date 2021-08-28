using System;

public class PreCarteira
{
    // Constructor that takes one argument:
    public PreCarteira(string nomeAcao, decimal valorComprado, decimal valorRentabilidade, DateTime dataCadastro)
    {
        NomeAcao = nomeAcao;
        ValorComprado = valorComprado;
        DataCadastro = dataCadastro;


    }

    // Auto-implemented readonly property:
    public string NomeAcao { get; private set; }
    public decimal ValorComprado { get; private set; }
    public DateTime DataCadastro { get; private set; }

}