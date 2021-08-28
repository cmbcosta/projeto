using System;

public class Carteira
{
    public Carteira(string nomeAcao, decimal valorComprado, decimal valorRentabilidade, DateTime dataCadastro)
    {
        NomeAcao = nomeAcao;
        ValorComprado = valorComprado;
        ValorRentabilidade = valorRentabilidade;
        DataCadastro = dataCadastro;
    }
    public string NomeAcao { get; private set; }
    public decimal ValorComprado { get; private set; }
    public decimal ValorRentabilidade { get; private set; }
    public DateTime DataCadastro { get; private set; }

}