using Newtonsoft.Json;
using System.Collections.Generic;
using XESAE.API;

namespace XESAE.Controllers
{
    public class CursoController
    {
        private WS servidor; //ligação ao servidor
        public List<Curso> ListaCursos; //lista de objetos do model

        public CursoController()
        {
            servidor = new WS();
            ListaCursos = JsonConvert.DeserializeObject<List<Curso>>(servidor.PedidoServidor("http://esae.x10host.com/cursos").ReadLine());
        }
    }
}
