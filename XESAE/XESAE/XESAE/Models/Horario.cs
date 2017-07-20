using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace XESAE
{
    public class Horario
    {
        public int id { get; set; }
        public string weekday { get; set; }
        public DateTime timebegin { get; set; }
        public DateTime timeend { get; set; }
        public string classroom { get; set; }
        public List<Disciplina> disciplinas { get; set; }
    }
}
