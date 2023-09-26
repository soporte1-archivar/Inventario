using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;
using System.Data;
using System.Data.SqlClient;


public partial class ActualizarUnidad : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImgBtnBuscarUnidad_Click(object sender, ImageClickEventArgs e)
    {


        DataTable dt = new DataTable();
        String conStr = @"Data Source=DESKTOP-R2G678A\SQLEXPRESS;Initial Catalog=AlfanetPrueba; User Id=sa;Password=1010";
        SqlConnection con = new SqlConnection(conStr);
        SqlCommand com = new SqlCommand("UnidadDocumentalConsulta1", con);


        com.Parameters.AddWithValue("@RegInventario", TxtBuscarUnidad.Text);


        com.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter(com);
        try
        {
            con.Open();
            da.Fill(dt);
            string FechaExtremaInicial = Convert.ToString(dt.Rows[0].ItemArray[1].ToString().Trim().Substring(0, 10));
            string FechaExtremaFinal = Convert.ToString(dt.Rows[0].ItemArray[2].ToString().Trim().Substring(0, 10));
            string UnidadNombre = Convert.ToString(dt.Rows[0].ItemArray[3].ToString().Trim());
            string UnidadDetalle = Convert.ToString(dt.Rows[0].ItemArray[4].ToString().Trim());
            string DependenciaNombre = Convert.ToString(dt.Rows[0].ItemArray[5].ToString().Trim() + " | " + Convert.ToString(dt.Rows[0].ItemArray[6].ToString().Trim()));
            string UbicacionNombre = Convert.ToString(dt.Rows[0].ItemArray[7].ToString().Trim() + " | " + Convert.ToString(dt.Rows[0].ItemArray[8].ToString().Trim()));
            string FormaNombre = Convert.ToString(dt.Rows[0].ItemArray[9].ToString().Trim() + " | " + Convert.ToString(dt.Rows[0].ItemArray[10].ToString().Trim()));
            string NumeroFolios = Convert.ToString(dt.Rows[0].ItemArray[11].ToString().Trim());
            string SerieNombre = Convert.ToString(dt.Rows[0].ItemArray[12].ToString().Trim() + " | " + Convert.ToString(dt.Rows[0].ItemArray[13].ToString().Trim()));
            string WFAccionNombre = Convert.ToString(dt.Rows[0].ItemArray[14].ToString().Trim() + " | " + Convert.ToString(dt.Rows[0].ItemArray[15].ToString().Trim()));
            string TipologiaNombre = Convert.ToString(dt.Rows[0].ItemArray[16].ToString().Trim() + " | " + Convert.ToString(dt.Rows[0].ItemArray[17].ToString().Trim()));
            string RegistroInventario = Convert.ToString(dt.Rows[0].ItemArray[18].ToString().Trim());
            string UsuarioPrestamo = Convert.ToString(dt.Rows[0].ItemArray[20].ToString().Trim()) + " " + Convert.ToString(dt.Rows[0].ItemArray[21].ToString().Trim());

            TBFechaExtremaInicial.Text = FechaExtremaInicial;
            TBFechaExtremaFinal.Text = FechaExtremaFinal;
            TBNomUnidad.Text = UnidadNombre;
            TBDetUnidad.Text = UnidadDetalle;
            DDLDependencia.SelectedItem.Value = DependenciaNombre;
            DDLUbicacion.SelectedItem.Value = UbicacionNombre;
            DDLForma.SelectedItem.Value = FormaNombre;
            TBNumFolios.Text = NumeroFolios;
            DDLSerie.SelectedItem.Value = SerieNombre;
            DDLAccion.SelectedItem.Value = WFAccionNombre;
            DDLTipologia.SelectedItem.Value = TipologiaNombre;
            TBRegInventario.Text = RegistroInventario;
            DDLUsuarioPrestamo.SelectedItem.Value = UsuarioPrestamo;

            TBFechaExtremaInicial.Enabled = false;
            TBFechaExtremaFinal.Enabled = false;
            TBNomUnidad.Enabled = true;
            TBDetUnidad.Enabled = true;
            DDLDependencia.Enabled = false;
            DDLUbicacion.Enabled = true;
            DDLForma.Enabled = true;
            TBNumFolios.Enabled = false;
            DDLSerie.Enabled = true;
            DDLAccion.Enabled = true;
            DDLTipologia.Enabled = true;
            TBRegInventario.Enabled = false;
            DDLUsuarioPrestamo.Enabled = true;

            lblMessage3.Text = "";
            BtnActualizarUnidad.Enabled = true;
            BtnActualizarUnidad.Visible = true;
        }
        catch (Exception)
        {
            lblMessage3.Text = "No se encuentra el Registro de Inventario Digitado";
            TBFechaExtremaInicial.Text = "";
            TBFechaExtremaFinal.Text = "";
            TBNomUnidad.Text = "";
            TBDetUnidad.Text = "";
            DDLDependencia.SelectedItem.Value = "";
            DDLUbicacion.SelectedItem.Value = "";
            DDLForma.SelectedItem.Value = "";
            TBNumFolios.Text = "";
            DDLSerie.SelectedItem.Value = "";
            DDLAccion.SelectedItem.Value = "";
            DDLTipologia.SelectedItem.Value = "";
            TBRegInventario.Text = "";
            DDLUsuarioPrestamo.SelectedItem.Value = "";

            BtnActualizarUnidad.Enabled = false;
            BtnActualizarUnidad.Visible = false;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }


    }
    protected void BtnActualizarUnidad_Click(object sender, ImageClickEventArgs e)
    {
                DataTable dt = new DataTable();
        String conStr = @"Data Source=DESKTOP-R2G678A\SQLEXPRESS;Initial Catalog=Alfanet; User Id=sa;Password=1010";
        SqlConnection con = new SqlConnection(conStr);
        SqlCommand com = new SqlCommand("UnidadDocumentalConsulta1", con);


        
            


        Class1 cls = new Class1();
        string r;
        lblMessage3.Text = "";
        String Accion = DDLAccion.SelectedItem.Value;
        String[] accioncodigo = Accion.Split('|');
        

        if ((accioncodigo[0] == "16" || accioncodigo[0] == "16 ") & DDLUsuarioPrestamo.SelectedItem.Value != " ")
        {
            com.Parameters.AddWithValue("@RegInventario", TxtBuscarUnidad.Text);


            com.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(com);
            try
            {
                con.Open();
                da.Fill(dt);

                string Accionc = Convert.ToString(dt.Rows[0].ItemArray[14].ToString().Trim());
                if (Accionc.ToString() == "16")
                {
                    string UsuarioPrestamo = Convert.ToString(dt.Rows[0].ItemArray[19].ToString().Trim());
                    DDLUsuarioPrestamo.SelectedItem.Value = UsuarioPrestamo;
                }
            }
            catch
            {

            }

            r = cls.UnidadDocumentalActualizar(DDLDependencia.Text, TBFechaExtremaInicial.Text, TBFechaExtremaFinal.Text, TBNomUnidad.Text, TBDetUnidad.Text, DDLUbicacion.Text, DDLForma.Text, TBNumFolios.Text, DDLSerie.Text, DDLAccion.Text, DDLTipologia.Text, TBRegInventario.Text, DDLUsuarioPrestamo.Text);

            if (r.Contains("N°"))
            {
                TBFechaExtremaInicial.Text = "";
                TBFechaExtremaFinal.Text = "";
                TBNomUnidad.Text = "";
                TBDetUnidad.Text = "";
                DDLDependencia.SelectedItem.Value = "";
                DDLUbicacion.SelectedItem.Value = "";
                DDLForma.SelectedItem.Value = "";
                TBNumFolios.Text = "";
                DDLSerie.SelectedItem.Value = "";
                DDLAccion.SelectedItem.Value = "";
                DDLTipologia.SelectedItem.Value = "";
                TBRegInventario.Text = "";
                DDLUsuarioPrestamo.SelectedItem.Value = "";


                lblMessage2.Text = r;
                //Response.Write("<script language = javascript>alert" + r + ";</script>");
            }
            else
            {

                lblMessage2.Text = r;
                //Response.Write("<script language = javascript>alert" + r + ";</script>");
            }
        }
        else
        {

            lblMessage2.Text = "Favor digite usuario del prestamo";
            
        }
        if (accioncodigo[0] == "12" || accioncodigo[0] == "12 ")
        {
            

            r = cls.UnidadDocumentalActualizar(DDLDependencia.Text, TBFechaExtremaInicial.Text, TBFechaExtremaFinal.Text, TBNomUnidad.Text, TBDetUnidad.Text, DDLUbicacion.Text, DDLForma.Text, TBNumFolios.Text, DDLSerie.Text, DDLAccion.Text, DDLTipologia.Text, TBRegInventario.Text, DDLUsuarioPrestamo.Text);

            if (r.Contains("N°"))
            {
                TBFechaExtremaInicial.Text = "";
                TBFechaExtremaFinal.Text = "";
                TBNomUnidad.Text = "";
                TBDetUnidad.Text = "";
                DDLDependencia.SelectedItem.Value = "";
                DDLUbicacion.SelectedItem.Value = "";
                DDLForma.SelectedItem.Value = "";
                TBNumFolios.Text = "";
                DDLSerie.SelectedItem.Value = "";
                DDLAccion.SelectedItem.Value = "";
                DDLTipologia.SelectedItem.Value = "";
                TBRegInventario.Text = "";
                DDLUsuarioPrestamo.SelectedItem.Value = "";


                lblMessage2.Text = r;
                //Response.Write("<script language = javascript>alert" + r + ";</script>");
            }
            else
            {

                lblMessage2.Text = r;
                //Response.Write("<script language = javascript>alert" + r + ";</script>");
            }
        }        
    }
}