using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Garage_Data
{
    public class EventoEntity
    {
        public string Id { get; set; } = Guid.NewGuid().ToString();
        public string Nombre {  get; set; }
        public DateTime Fecha { get; set; }
        public string Direccion {  get; set; }
        public int precion {  get; set; }
    }
}
