using System;

public class Participante
{
    // Constructor that takes one argument:
    public Participante(string nome, string cpf, string telefone, string email, DateTime dataNascimento, DateTime dataCadastro)
    {
        Nome = nome;
        Cpf = cpf;
        Telefone = telefone;
        Email = email;
        DataNascimento = dataNascimento;
        DataCadastro = dataCadastro;


    }

    // Auto-implemented readonly property:
    public string Nome { get; set; }
    public string Cpf { get; set; }
    public string Telefone { get; set; }
    public string Email { get; set; }
    public DateTime DataNascimento { get; set; }
    public DateTime DataCadastro { get; set; }

}