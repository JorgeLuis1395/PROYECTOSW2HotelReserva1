namespace Hotel.Datos
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Linq;
    using Entidades;

    /// <summary>
    /// Clase de datos para usuarios
    /// </summary>
    public class UsuariosDa
    {
        /// <summary>
        /// Entidades de SisRes
        /// </summary>
        private readonly HotelEntities _HotelEntities;

        /// <summary>
        /// Método que inicializa las entidades
        /// </summary>
        public UsuariosDa()
        {
            if (_HotelEntities == null)
                _HotelEntities = new HotelEntities();
        }

        /// <summary>
        /// Método que almacena un usuario
        /// </summary>
        /// <param name="usuario">Datos del usuario</param>
        /// <returns>Id de ingreso</returns>
        public int CrearUsuario(GEN_Usuarios usuario)
        {
            var idRetorno = 0;
            try
            {
                _HotelEntities.GEN_Usuarios.AddObject(usuario);
                idRetorno = _HotelEntities.SaveChanges();
                return idRetorno;
            }
            catch (Exception)
            {
                return idRetorno;
            }
            finally
            {
                _HotelEntities.Dispose();
            }
        }

        /// <summary>
        /// Método que obtiene un usuario
        /// </summary>
        /// <param name="rutUsuario">RUT del usuario</param>
        /// <returns>Usuario</returns>
        public GEN_Usuarios ObtenerUsuario(int rutUsuario)
        {
            var retorno = new GEN_Usuarios();
            try
            {
                retorno = _HotelEntities.GEN_Usuarios.Single(tc => tc.RUT == rutUsuario);
                _HotelEntities.Dispose();
                return retorno;
            }
            catch (Exception)
            {
                return retorno;
            }
        }

        /// <summary>
        /// Método que obtiene todos los usuarios
        /// </summary>
        /// <returns>Lista de usuarios</returns>
        public List<GEN_Usuarios> ObtenerUsuarios()
        {
            var listaRetorno = new List<GEN_Usuarios>();
            try
            {
                listaRetorno = _HotelEntities.GEN_Usuarios.ToList();
                _HotelEntities.Dispose();
                return listaRetorno;
            }
            catch (Exception)
            {
                return listaRetorno;
            }
        }

        /// <summary>
        /// Método que actualiza un usuario
        /// </summary>
        /// <param name="usuario">Datos del usuario</param>
        /// <returns>Id de actualización</returns>
        public int ActualizarUsuario(GEN_Usuarios usuario)
        {
            var idRetorno = 0;
            try
            {
                _HotelEntities.GEN_Usuarios.Attach(usuario);
                _HotelEntities.ObjectStateManager.ChangeObjectState(usuario, EntityState.Modified);
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
        /// Método que elimina un usuario
        /// </summary>
        /// <param name="rutUsuario">RUT del usuario</param>
        /// <returns>Id de confirmación</returns>
        public int EliminarUsuario(int rutUsuario)
        {
            var idRetorno = 0;
            try
            {
                object objetoEliminar;
                _HotelEntities.TryGetObjectByKey(new EntityKey("SisResEntities.GEN_Usuarios", "RUT", rutUsuario), out objetoEliminar);
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
