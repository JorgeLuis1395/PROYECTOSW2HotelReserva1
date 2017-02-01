namespace Hotel.Datos
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Linq;
    using Entidades;

    /// <summary>
    /// Clase de datos para Reserva de Habitación
    /// </summary>
    public class ReservaHabitacionDa
    {
        /// <summary>
        /// Entidades de SisRes
        /// </summary>
        private readonly HotelEntities _HotelEntities;

        /// <summary>
        /// Método que inicializa las entidades
        /// </summary>
        public ReservaHabitacionDa()
        {
            if (_HotelEntities == null)
                _HotelEntities = new HotelEntities();
        }

        /// <summary>
        /// Método que almacena una Reserva de Habitación
        /// </summary>
        /// <param name="reservaHabitacion">Datos de la Habitación</param>
        /// <returns>Id de ingreso</returns>
        public int CrearReservaHabitacion(RES_ReservaHabitacion reservaHabitacion)
        {
            var idRetorno = 0;
            try
            {
                _HotelEntities.RES_ReservaHabitacion.AddObject(reservaHabitacion);
                idRetorno = _HotelEntities.SaveChanges();
                _HotelEntities.Dispose();
                return idRetorno;
            }
            catch (Exception)
            {
                return idRetorno;
            }
        }

        /// <summary>
        /// Método que obtiene una Reserva de Habitación
        /// </summary>
        /// <param name="idReserva">Id de la reserva</param>
        /// <returns>Reserva de Habitación</returns>
        public RES_ReservaHabitacion ObtenerReservaHabitacion(int idReserva)
        {
            var retorno = new RES_ReservaHabitacion();
            try
            {
                retorno = _HotelEntities.RES_ReservaHabitacion.Single(tc => tc.IdReserva == idReserva);
                _HotelEntities.Dispose();
                return retorno;
            }
            catch (Exception)
            {
                return retorno;
            }
        }

        /// <summary>
        /// Método que obtiene todas las Reservas de Habitaciones
        /// </summary>
        /// <returns>Lista de Reservas</returns>
        public List<RES_ReservaHabitacion> ObtenerReservasHabitaciones()
        {
            var listaRetorno = new List<RES_ReservaHabitacion>();
            try
            {
                listaRetorno = _HotelEntities.RES_ReservaHabitacion.ToList();
                _HotelEntities.Dispose();
                return listaRetorno;
            }
            catch (Exception)
            {
                return listaRetorno;
            }
        }

        /// <summary>
        /// Método que actualiza una Reserva de Habitación
        /// </summary>
        /// <param name="reservaHabitacion">Datos de la Habitación</param>
        /// <returns>Id de actualización</returns>
        public int ActualizarReservaHabitacion(RES_ReservaHabitacion reservaHabitacion)
        {
            var idRetorno = 0;
            try
            {
                _HotelEntities.RES_ReservaHabitacion.Attach(reservaHabitacion);
                _HotelEntities.ObjectStateManager.ChangeObjectState(reservaHabitacion, EntityState.Modified);
                idRetorno = _HotelEntities.SaveChanges();
                _HotelEntities.Dispose();
                return idRetorno;
            }
            catch (Exception)
            {
                return idRetorno;
            }
        }

        /// <summary>
        /// Método que elimina una Reserva de Habitación
        /// </summary>
        /// <param name="idReserva">Id de la Reserva</param>
        /// <returns>Id de confirmación</returns>
        public int EliminarReservaHabitacion(int idReserva)
        {
            var idRetorno = 0;
            try
            {
                object objetoEliminar;
                _HotelEntities.TryGetObjectByKey(new EntityKey("SisResEntities.RES_ReservaHabitacion", "IdReserva", idReserva), out objetoEliminar);
                _HotelEntities.DeleteObject(objetoEliminar);
                idRetorno = _HotelEntities.SaveChanges();
                _HotelEntities.Dispose();
                return idRetorno;
            }
            catch (Exception)
            {
                return idRetorno;
            }
        }
    }
}
