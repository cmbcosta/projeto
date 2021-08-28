using System;

public class CarteiraHistorico
{
    // Constructor that takes one argument:
    public CarteiraHistorico(string nomeAcao, decimal valorComprado, decimal valorRentabilidade, DateTime dataCadastro)
    {
        NomeAcao = nomeAcao;
        ValorComprado = valorComprado;
        ValorRentabilidade = valorRentabilidade;
        DataCadastro = dataCadastro;


    }

    // Auto-implemented readonly property:
    public string NomeAcao { get; private set; }
    public decimal ValorComprado { get; private set; }
    public decimal ValorRentabilidade { get; private set; }
    public DateTime DataCadastro { get; private set; }

}