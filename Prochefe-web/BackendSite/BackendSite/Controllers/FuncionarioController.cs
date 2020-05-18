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
    public class FuncionarioController : ApiController
    {
        // GET: api/Funcionario
        public IEnumerable<dynamic> Get()
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                var funcionario = from func in bd.funcionarios
                                  select new { func.id, func.nome, func.login, func.senha, func.telefone, func.email, func.cpf };

                return funcionario.ToList();
            }
        }

        // GET: api/Funcionario/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Funcionario
        public string Post([FromBody]funcionarios func)
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                bd.funcionarios.Add(func);
                bd.SaveChanges();
                return "Salvo com sucesso";
            }
        }

        // PUT: api/Funcionario/5
        public string Put(int id, [FromBody]funcionarios func)
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                funcionarios alterar = bd.funcionarios.Find(id);
                alterar.nome = func.nome;
                alterar.login = func.login;
                alterar.senha = func.senha;
                alterar.telefone = func.telefone;
                alterar.email = func.email;
                alterar.cpf = func.cpf;
                bd.SaveChanges();
                return "Alterado com sucesso!";
            }
        }

        // DELETE: api/Funcionario/5
        public string Delete(int id)
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                bd.funcionarios.Remove(bd.funcionarios.Find(id));
                bd.SaveChanges();
                return "Deletado com sucesso!";
            }
        }
    }
}
