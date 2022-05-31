using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class vista : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Definición del evento PageIndex CHanging
        GridView1.PageIndexChanging += GridView1_PageIndexChanging;
        // Ejecutar la creación del servicio
        conexiones.ConexionesSoapClient obj = new conexiones.ConexionesSoapClient();
        DataSet ds = new DataSet();

        // Ejecutar método de la consulta (qryinfoalumno)
        ds = obj.qryinfoalumno();

        //Configurar el GridView para que visualice los datos
        GridView1.DataSource = ds;
        GridView1.DataMember = "InfoAlumno";
        GridView1.DataBind();
    }
    private void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        // Actualizar el    GridView1 para que se vialualicen los datos de la pagina nueva
        GridView1.DataBind();
        //throw new NotImplementedException();
    }
}