using System;

public class Carteira
{
    // Constructor that takes one argument:
    public Carteira(string nomeAcao, decimal valorComprado, decimal valorRentabilidade, DateTime dataCadastro)
    {
        NomeAcao = nomeAcao;
        ValorComprado = valorComprado;
        ValorRentabilidade = valorRentabilidade;
        DataCadastro = dataCadastro;


    }

    // Auto-implemented readonly property:
    public string NomeAcao { get; set; }
    public decimal ValorComprado { get; set; }
    public decimal ValorRentabilidade { get; set; }
    public DateTime DataCadastro { get; set; }

}