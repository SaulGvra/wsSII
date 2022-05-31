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

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        //ejecutar el metodo de acceso
        conexiones.ConexionesSoapClient obj = new conexiones.ConexionesSoapClient();
        DataSet ds = new DataSet();
        
        ds = obj.qryAcceso(usuarioFloat.Value, contraFloat.Value, tipo.Value);
        
        //Validar la bandera recibida, envío de mensajes y configuración de 
        //la seguridad
        DataTable dt = ds.Tables["acceso"];
        String bandera = "";

        if (dt != null)
        {
            foreach (DataRow dr in dt.Rows)
            {
                bandera = dr[0].ToString();

                //Actualización de las variables de sesión del usuario
                if (bandera == "1")
                {
                    Session["tipo"] = dr[1].ToString();
                    Session["user"] = dr[2].ToString();

                    Response.Write("<script language = 'javascript'>alert('Bienvenido');</script>");

                    if (Session["tipo"].Equals("alumno"))
                    {
                        Response.Write("<script language = 'javascript'>document.location.href = 'Inicio.aspx';</script>");
                    }
                    else if (Session["tipo"].Equals("personal"))
                    {
                        Response.Write("<script language = 'javascript'>document.location.href = 'Inicio.aspx';</script>");
                    }
                    else if (Session["tipo"].Equals("aspirante"))
                    {
                        Response.Write("<script language = 'javascript'>document.location.href = 'registro_aspirantes.aspx';</script>");
                    }


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
}