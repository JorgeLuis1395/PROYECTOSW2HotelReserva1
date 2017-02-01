namespace Hotel.Datos
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Linq;
    using Entidades;

    /// <summary>
    /// Clase de datos para roles
    /// </summary>
    public class RolesDa
    {
        /// <summary>
        /// Entidades de SisRes
        /// </summary>
        private readonly HotelEntities _HotelEntities;

        /// <summary>
        /// Método que inicializa las entidades
        /// </summary>
        public RolesDa()
        {
            if (_HotelEntities == null)
                _HotelEntities = new HotelEntities();
        }

        /// <summary>
        /// Método que almacena un rol
        /// </summary>
        /// <param name="rol">Datos del role</param>
        /// <returns>Id de ingreso</returns>
        public int CrearRol(GEN_Rol rol)
        {
            var idRetorno = 0;
            try
            {
                _HotelEntities.GEN_Rol.AddObject(rol);
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
        /// Método que obtiene un rol
        /// </summary>
        /// <param name="idRol">Id del role</param>
        /// <returns>Role</returns>
        public GEN_Rol ObtenerRol(int idRol)
        {
            var retorno = new GEN_Rol();
            try
            {
                retorno = _HotelEntities.GEN_Rol.Single(tc => tc.IdRol == idRol);
                _HotelEntities.Dispose();
                return retorno;
            }
            catch (Exception)
            {
                return retorno;
            }
        }

        /// <summary>
        /// Método que obtiene todos los roles
        /// </summary>
        /// <returns>Lista de roles</returns>
        public List<GEN_Rol> ObtenerRoles()
        {
            var listaRetorno = new List<GEN_Rol>();
            try
            {
                listaRetorno = _HotelEntities.GEN_Rol.ToList();
                _HotelEntities.Dispose();
                return listaRetorno;
            }
            catch (Exception)
            {
                return listaRetorno;
            }
        }

        /// <summary>
        /// Método que actualiza un rol
        /// </summary>
        /// <param name="rol">Datos del rol</param>
        /// <returns>Id de actualización</returns>
        public int ActualizarRol(GEN_Rol rol)
        {
            var idRetorno = 0;
            try
            {
                _HotelEntities.GEN_Rol.Attach(rol);
                _HotelEntities.ObjectStateManager.ChangeObjectState(rol, EntityState.Modified);
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
        /// Método que elimina un rol
        /// </summary>
        /// <param name="idRol">Id del rol</param>
        /// <returns>Id de confirmación</returns>
        public int EliminarRol(int idRol)
        {
            var idRetorno = 0;
            try
            {
                object objetoEliminar;
                _HotelEntities.TryGetObjectByKey(new EntityKey("SisResEntities.GEN_Roles", "IdRol", idRol), out objetoEliminar);
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
