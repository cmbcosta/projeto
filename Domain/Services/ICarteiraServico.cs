using System.Collections.Generic;
using System.Threading.Tasks;

namespace projeto.Domain.Services
{
    public interface ICarteiraServico
    {
        Task AdicionaCarteira(List<Carteira> carteira);

        Task<List<Carteira>> BuscarTodasCarteiras();
    }
}