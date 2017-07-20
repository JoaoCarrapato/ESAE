using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace XESAE
{
    public class Curso
    {
        public int id { get; set; }
        public string name { get; set; }
        public string type { get; set; }
        public List<User> users { get; set; }
    }
}
