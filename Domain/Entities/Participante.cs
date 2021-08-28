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
    public string Nome { get; private set; }
    public string Cpf { get; private set; }
    public string Telefone { get; private set; }
    public string Email { get; private set; }
    public DateTime DataNascimento { get; private set; }
    public DateTime DataCadastro { get; private set; }

}