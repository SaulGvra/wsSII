using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registro_aspirantes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        conexiones.ConexionesSoapClient obj = new conexiones.ConexionesSoapClient();
        DataSet ds = new DataSet();
        
        ds = obj.updAspirante(Session["user"].ToString(), nombre.Value,paterno.Value,materno.Value,tel.Value,fecha.Value, dir.Value);
        
        
        DataTable dt = ds.Tables["aspirante"];
        String bandera = "";
        if (dt != null)
        {
            foreach (DataRow dr in dt.Rows)
            {
                bandera = dr[0].ToString();
                if (bandera == "1")
                {

                    Response.Write("<script language = 'javascript'>alert('Registro exitoso');</script>");
                    

                }
                else
                {


                    Response.Write("<script language = 'javascript'>alert('Error, No se pudo insertar');</script>");
                }
            }
        }
    }
}