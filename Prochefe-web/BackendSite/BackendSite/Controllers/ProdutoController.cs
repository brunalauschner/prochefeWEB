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
    public class ProdutoController : ApiController
    {
        // GET: api/Produto
        public IEnumerable<dynamic> Get()
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                var produto = from prod in bd.produtos
                              join cat in bd.categoria on prod.id_categoria equals cat.id
                              select new { prod.id, prod.nome, prod.descricao, prod.preco, nomeCategoria = cat.nome };

                return produto.ToList();
            }
        }

        // GET: api/Produto/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Produto
        public string Post([FromBody]produtos prod)
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                bd.produtos.Add(prod);
                bd.SaveChanges();
                return "Salvo com sucesso";
            }
        }

        // PUT: api/Produto/5
        public string Put(int id, [FromBody]produtos prod)
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                produtos alterar = bd.produtos.Find(id);
                alterar.nome = prod.nome;
                alterar.descricao = prod.descricao;
                alterar.preco = prod.preco;
                alterar.id_categoria = prod.id_categoria;
                bd.SaveChanges();
                return "Alterado com sucesso!";
            }
        }

        // DELETE: api/Produto/5
        public string Delete(int id)
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                bd.produtos.Remove(bd.produtos.Find(id));
                bd.SaveChanges();
                return "Deletado com sucesso!";
            }
        }
    }
}
