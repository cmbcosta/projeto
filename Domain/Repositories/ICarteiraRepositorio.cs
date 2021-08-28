using System.Collections.Generic;
using System.Threading.Tasks;

namespace projeto.Domain.Repositories
{
    public interface ICarteiraRepositorio
    {
        Task SalvarCarteira(List<Carteira> carteira);
        Task<List<Carteira>> RetornaTodasCarteiras();
    }
}