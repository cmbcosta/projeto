using System.Collections.Generic;
using System.Threading.Tasks;
using projeto.Domain.Repositories;
using MySql.Data.MySqlClient;
using Dapper;
using System.Linq;


namespace projeto.Repositories
{
    public class CarteiraRepositorio : ICarteiraRepositorio
    {
        private readonly string _connectionString;
        public CarteiraRepositorio(string connectionString)
        {
            _connectionString = connectionString;
        }
        public async Task<List<Carteira>> RetornaTodasCarteiras()
        {
            using(MySqlConnection connection = new MySqlConnection(_connectionString))
            {
                var result = await connection.QueryAsync<List<Carteira>>("SELECT * FROM carteira");
                if (result.Count() == 0)
                    return null;
                return null;//result;
            }
        }
        public async Task SalvarCarteira(List<Carteira> carteira)
        {

            using(MySqlConnection connection = new MySqlConnection(_connectionString))
            {
                string sql = "INSERT INTO carteira (Name, Email,PasswordHash,PasswordSalt) VALUES(@Name, @Email, @PasswordHash, @PasswordSalt)";
                await connection.ExecuteAsync(sql, new {/*Name = user.Name, Email = user.Email.ToLower(), PasswordHash = user.PasswordHash, PasswordSalt =user.PasswordSalt*/});
            }

        }
    }
}