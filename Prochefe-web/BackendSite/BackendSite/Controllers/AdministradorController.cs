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
    public class AdministradorController : ApiController
    {
        // GET: api/Administrador
        public IEnumerable<dynamic> Get()
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                var administrador = from adm in bd.administradores
                                  select new { adm.id, adm.nome, adm.login, adm.senha, adm.telefone, adm.email, adm.cpf };

                return administrador.ToList();
            }
        }

        // GET: api/Administrador/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Administrador
        public string Post([FromBody]administradores adm)
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                bd.administradores.Add(adm);
                bd.SaveChanges();
                return "Salvo com sucesso";
            }
        }

        // PUT: api/Administrador/5
        public string Put(int id, [FromBody]administradores adm)
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                administradores alterar = bd.administradores.Find(id);
                alterar.nome = adm.nome;
                alterar.login = adm.login;
                alterar.senha = adm.senha;
                alterar.telefone = adm.telefone;
                alterar.email = adm.email;
                alterar.cpf = adm.cpf;
                bd.SaveChanges();
                return "Alterado com sucesso!";
            }
        }

        // DELETE: api/Administrador/5
        public string Delete(int id)
        {
            using (brugaelEntities bd = new brugaelEntities())
            {
                bd.administradores.Remove(bd.administradores.Find(id));
                bd.SaveChanges();
                return "Deletado com sucesso!";
            }
        }
    }
}
