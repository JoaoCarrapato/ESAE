using Newtonsoft.Json;
using System.Collections.Generic;
using XESAE.API;

namespace XESAE.Controllers
{
    public class HorarioController
    {
        private WS servidor; //ligação ao servidor
        public List<Horario> ListaHorarios; //lista de objetos do model

        public HorarioController()
        {
            servidor = new WS();
            ListaHorarios = JsonConvert.DeserializeObject<List<Horario>>(servidor.PedidoServidor("http://esae.x10host.com/horarios").ReadLine());
        }
    }
}
