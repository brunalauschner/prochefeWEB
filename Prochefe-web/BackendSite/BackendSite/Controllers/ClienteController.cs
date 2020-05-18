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
    public class ClienteController : ApiController
    {
        // GET: api/Cliente
        public IEnumerable<dynamic> Get()
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                var clientes = from cli in bd.clientes
                               select new { cli.id, cli.nome, cli.cpf, cli.login, cli.senha, cli.telefone, cli.rua, cli.numero, cli.complemento, cli.bairro, cli.cidade };

                return clientes.ToList();
            }
        }

        // GET: api/Cliente/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Cliente
        public string Post([FromBody]clientes cli)
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                bd.clientes.Add(cli);
                bd.SaveChanges();
                return "Salvo com sucesso";
            }
        }

        // PUT: api/Cliente/5
        public string Put(int id, [FromBody]clientes cli)
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                clientes alterar = bd.clientes.Find(id);
                alterar.nome = cli.nome;
                alterar.cpf = cli.cpf;
                alterar.login = cli.login;
                alterar.senha = cli.senha;
                alterar.telefone = cli.telefone;
                alterar.rua = cli.rua;
                alterar.numero = cli.numero;
                alterar.complemento = cli.complemento;
                alterar.bairro = cli.bairro;
                alterar.cidade = cli.cidade;
                bd.SaveChanges();
                return "Alterado com sucesso!";
            }
        }

        // DELETE: api/Cliente/5
        public string Delete(int id)
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                bd.clientes.Remove(bd.clientes.Find(id));
                bd.SaveChanges();
                return "Deletado com sucesso!";
            }
        }
    }
}
