using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Garage_Business
{
    public class Concierto : Evento
    {
        public string Artista {  get; set; }
        public string Estilo { get; set; }
    }
}
