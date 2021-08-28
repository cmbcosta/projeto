using projeto.Domain.Repositories;
using projeto.Domain.Services;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace projeto.Services
{
    public class CarteiraServico : ICarteiraServico
    {
        private readonly ICarteiraRepositorio _carteiraRepositorio;
        public CarteiraServico(ICarteiraRepositorio carteiraRepositorio)
        {
            _carteiraRepositorio = carteiraRepositorio;
        }
        public async Task AdicionaCarteira(List<Carteira> carteira)
        {
            await _carteiraRepositorio.SalvarCarteira(carteira);
        }
        public async Task<List<Carteira>> BuscarTodasCarteiras()
        {
            return await _carteiraRepositorio.RetornaTodasCarteiras();
        }
    }
}