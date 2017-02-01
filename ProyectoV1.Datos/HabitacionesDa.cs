namespace Hotel.Datos
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Linq;
    using Entidades;

    /// <summary>
    /// Clase de datos para Habitaciones
    /// </summary>
    public class HabitacionesDa
    {
        /// <summary>
        /// Entidades de SisRes
        /// </summary>
        private readonly HotelEntities _HotelEntities;

        /// <summary>
        /// Método que inicializa las entidades
        /// </summary>
        public HabitacionesDa()
        {
            if (_HotelEntities == null)
                _HotelEntities = new HotelEntities();
        }

        /// <summary>
        /// Método que almacena una Habitación
        /// </summary>
        /// <param name="habitacion">Datos de la Habitación</param>
        /// <returns>Id de ingreso</returns>
        public int CrearHabitacion(HAB_Habitaciones habitacion)
        {
            var idRetorno = 0;
            try
            {
                _HotelEntities.HAB_Habitaciones.AddObject(habitacion);
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
        /// Método que obtiene un Habitación
        /// </summary>
        /// <param name="idHabitacion">Id del Habitación</param>
        /// <returns>Habitación</returns>
        public HAB_Habitaciones ObtenerHabitacion(int idHabitacion)
        {
            var retorno = new HAB_Habitaciones();
            try
            {
                retorno = _HotelEntities.HAB_Habitaciones.Single(tc => tc.IdHabitacion == idHabitacion);
                _HotelEntities.Dispose();
                return retorno;
            }
            catch (Exception)
            {
                return retorno;
            }
        }

        /// <summary>
        /// Método que obtiene todas las Habitaciones
        /// </summary>
        /// <returns>Lista de Habitaciones</returns>
        public List<HAB_Habitaciones> ObtenerHabitaciones()
        {
            var listaRetorno = new List<HAB_Habitaciones>();
            try
            {
                listaRetorno = _HotelEntities.HAB_Habitaciones.ToList();
                _HotelEntities.Dispose();
                return listaRetorno;
            }
            catch (Exception)
            {
                return listaRetorno;
            }
        }

        /// <summary>
        /// Método que actualiza una Habitación
        /// </summary>
        /// <param name="habitacion">Datos de la Habitación</param>
        /// <returns>Id de actualización</returns>
        public int ActualizarHabitacion(HAB_Habitaciones habitacion)
        {
            var idRetorno = 0;
            try
            {
                _HotelEntities.HAB_Habitaciones.Attach(habitacion);
                _HotelEntities.ObjectStateManager.ChangeObjectState(habitacion, EntityState.Modified);
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
        /// Método que elimina una Habitación
        /// </summary>
        /// <param name="idHabitacion">Id de la Habitación</param>
        /// <returns>Id de confirmación</returns>
        public int EliminarHabitacion(int idHabitacion)
        {
            var idRetorno = 0;
            try
            {
                object objetoEliminar;
                _HotelEntities.TryGetObjectByKey(new EntityKey("SisResEntities.HAB_Habitaciones", "IdHabitacion", idHabitacion), out objetoEliminar);
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
