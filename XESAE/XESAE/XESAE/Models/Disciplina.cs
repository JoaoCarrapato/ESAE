using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace XESAE
{
    public class Disciplina
    {
        public int id { get; set; }
        public string name { get; set; }
        public string semester { get; set; }
        public string prof { get; set; }
        public List<Curso> cursos { get; set; }
        public List<Horario> horarios { get; set; }
    }
}
