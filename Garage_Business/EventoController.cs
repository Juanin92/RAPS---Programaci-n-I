using Garage_Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Garage_Business
{
    public static class EventoController
    {
        public static string AddEvento(Evento e)
        {
            try
            {
                if (e is Concierto concierto)
                {
                    ConciertoEntity conciertoEntity = new ConciertoEntity
                    {
                        Id = concierto.Id,
                        Nombre = concierto.Nombre,
                        Fecha = concierto.Fecha,
                        Direccion = concierto.Direccion,
                        Precio = concierto.Precio,
                        Artista = concierto.Artista,
                        Estilo = concierto.Estilo
                    };
                    EventoCollection.Eventos.Add(conciertoEntity);
                }
                else if (e is Exposicion exposicion)
                {
                    ExposicionEntity exposicionEntity = new ExposicionEntity
                    {
                        Id = exposicion.Id,
                        Nombre = exposicion.Nombre,
                        Fecha = exposicion.Fecha,
                        Direccion = exposicion.Direccion,
                        Precio = exposicion.Precio,
                        Expositor = exposicion.Expositor,
                        Categoria = exposicion.Categoria
                    };
                    EventoCollection.Eventos.Add(exposicionEntity);
                }
                return "Evento guardado con éxito.";
            }
            catch(Exception ex)
            {
                return "Error al guardar el evento" + ex.Message;
            }
        }

        public static Evento GetEvento(string id)
        {
            EventoEntity eventoEntity = EventoCollection.Eventos.Find(x => x.Id == id);

            if(eventoEntity == null)
            {
                return null;
            }

            if (eventoEntity is ConciertoEntity conciertoEntity)
            {
                return new Concierto
                {
                    Id = conciertoEntity.Id,
                    Nombre = conciertoEntity.Nombre,
                    Fecha = conciertoEntity.Fecha,
                    Direccion = conciertoEntity.Direccion,
                    Precio = conciertoEntity.Precio,
                    Artista = conciertoEntity.Artista,
                    Estilo = conciertoEntity.Estilo
                };
            }
            else if (eventoEntity is ExposicionEntity exposicionEntity)
            {
                return new Exposicion
                {
                    Id = exposicionEntity.Id,
                    Nombre = exposicionEntity.Nombre,
                    Fecha = exposicionEntity.Fecha,
                    Direccion = exposicionEntity.Direccion,
                    Precio = exposicionEntity.Precio,
                    Expositor = exposicionEntity.Expositor,
                    Categoria = exposicionEntity.Categoria
                };
            }
            return null;
        }

        public static List<Evento> GetEventos()
        {
            List<Evento> listaResultado = new List<Evento>();

            foreach (var entity in EventoCollection.Eventos)
            {
                if(entity is ConciertoEntity conciertoEntity)
                {
                    listaResultado.Add(new Concierto
                    {
                        Id = conciertoEntity.Id,
                        Nombre = conciertoEntity.Nombre,
                        Fecha = conciertoEntity.Fecha,
                        Direccion = conciertoEntity.Direccion,
                        Precio = conciertoEntity.Precio,
                        Artista = conciertoEntity.Artista,
                        Estilo = conciertoEntity.Estilo
                    });
                }
                else if (entity is ExposicionEntity exposicionEntity)
                {
                    listaResultado.Add(new Exposicion
                    {
                        Id = exposicionEntity.Id,
                        Nombre = exposicionEntity.Nombre,
                        Fecha = exposicionEntity.Fecha,
                        Direccion = exposicionEntity.Direccion,
                        Precio = exposicionEntity.Precio,
                        Expositor = exposicionEntity.Expositor,
                        Categoria = exposicionEntity.Categoria
                    });
                }
            }
            return listaResultado;
        }
    }
}
