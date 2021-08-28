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
    public string NomeAcao { get; set; }
    public decimal ValorComprado { get; set; }
    public DateTime DataCadastro { get; set; }

}