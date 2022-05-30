using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Acceso : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //ejecutar el metodo de acceso
        conexiones.ConexionesSoapClient obj = new conexiones.ConexionesSoapClient();
        DataSet ds = new DataSet();

        ds = obj.qryAcceso(usuarioFloat.Value, contraFloat.Value, tipo.Value);
        //Validar la bandera recibida, envío de mensajes y configuración de 
        //la seguridad
        DataTable dt = ds.Tables["acceso"];
        String bandera = "";
        foreach (DataRow dr in dt.Rows)
        {
            bandera = dr[0].ToString();

            //Actualización de las variables de sesión del usuario
            if (bandera == "1")
            {
                Session["tipo"] = dr[1].ToString();

                Response.Write("<script language = 'javascript'>alert('Bienvenido');</script>");
                //Response.Write("<script language = 'javascript'>document.location.href = 'Default2.aspx';</script>");

            }
            else
            {
                //Cierre de sesión del usuario
                //Session["tipo"] = "";

                Response.Write("<script language = 'javascript'>alert('Error, usuario no encontrado');</script>");
            }
        }
    }
}