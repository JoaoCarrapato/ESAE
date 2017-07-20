using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using XESAE.API;

namespace XESAE.Controllers
{
    class DisciplinaController
    {
        private WS servidor; //ligação ao servidor
        public List<Disciplina> ListaDisciplinas; //lista de objetos do model

        public DisciplinaController()
        {
            servidor = new WS();
            ListaDisciplinas = JsonConvert.DeserializeObject<List<Disciplina>>(servidor.PedidoServidor("http://esae.x10host.com/disciplinas").ReadLine());
        }
    }
}
