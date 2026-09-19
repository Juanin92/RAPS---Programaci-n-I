using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Garage_Data
{
    public static class EventoCollection
    {
        private static List<EventoEntity> _eventoCollection;
        public static List<EventoEntity> Eventos
        {
            get
            {
                if(_eventoCollection == null)
                {
                    _eventoCollection = new List<EventoEntity>();
                }
                return _eventoCollection;
            }
            set
            {
                _eventoCollection = value;
            }
        }
    }
}
