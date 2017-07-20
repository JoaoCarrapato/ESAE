using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using XESAE.API;

namespace XESAE.Controllers
{
    public class UserController
    {
        private WS servidor; //ligação ao servidor
        public List<User> ListaUsers; //lista de objetos do model

        public UserController()
        {
            servidor = new WS();
            ListaUsers = JsonConvert.DeserializeObject<List<User>>(servidor.PedidoServidor("http://esae.x10host.com/users").ReadLine());
        }
    }
}
