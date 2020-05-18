using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using BackendSite.Models;

namespace BackendSite.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class PedidoController : ApiController
    {
        // GET: api/Pedido
        public IEnumerable<dynamic> Get()
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                var pedido = from ped in bd.pedidos
                             join cli in bd.clientes on ped.id_dono equals cli.id
                             join pro in bd.produtos on ped.id_produto equals pro.id
                             select new { ped.id, nomeCliente = cli.nome, nomeProduto = pro.nome, ped.quantidade };

                return pedido.ToList();
            }
        }

        // GET: api/Pedido/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Pedido
        public string Post([FromBody]pedidos ped)
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                bd.pedidos.Add(ped);
                bd.SaveChanges();
                return "Salvo com sucesso";
            }
        }

        // PUT: api/Pedido/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Pedido/5
        public string Delete(int id)
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                bd.pedidos.Remove(bd.pedidos.Find(id));
                bd.SaveChanges();
                return "Deletado com sucesso!";
            }
        }
    }
}
