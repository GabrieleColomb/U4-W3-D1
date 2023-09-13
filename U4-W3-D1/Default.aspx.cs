using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace U4_W3_D1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // All'inizio, nascondi tutte le immagini
                imgAlfaRomeo.Visible = false;
                imgAstonMartin.Visible = false;
                imgJaguar.Visible = false;
                imgFordMustang.Visible = false;
                imgPorsche.Visible = false;
                imgLamborghini.Visible = false;
                imgFerrari.Visible = false;
            }
        }

        protected void ddlModello_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = ddlModello.SelectedValue;

            // Nascondi tutte le immagini
            imgAlfaRomeo.Visible = false;
            imgAstonMartin.Visible = false;
            imgJaguar.Visible = false;
            imgFordMustang.Visible = false;
            imgPorsche.Visible = false;
            imgLamborghini.Visible = false;
            imgFerrari.Visible = false;

            // Imposta l'immagine visibile in base alla selezione
            if (selectedValue == "10000")
            {
                imgAlfaRomeo.Visible = true;
            }
            else if (selectedValue == "12000")
            {
                imgAstonMartin.Visible = true;
            }
            else if (selectedValue == "11000")
            {
                imgJaguar.Visible = true;
            }
            else if (selectedValue == "13000")
            {
                imgFordMustang.Visible = true;
            }
            else if (selectedValue == "14000")
            {
                imgPorsche.Visible = true;
            }
            else if (selectedValue == "10500")
            {
                imgLamborghini.Visible = true;
            }
            else if (selectedValue == "20000")
            {
                imgFerrari.Visible = true;
            }
        }

        protected void btnCalcola_Click(object sender, EventArgs e)
        {
            decimal prezzoBase = Convert.ToDecimal(ddlModello.SelectedValue);
            decimal totaleOptional = 0;
            decimal totaleGaranzia = Convert.ToInt32(ddlGaranzia.SelectedValue) * 120;

            foreach (ListItem item in cblOptional.Items)
            {
                if (item.Selected)
                {
                    totaleOptional += Convert.ToDecimal(item.Value);
                }
            }

            decimal totaleComplessivo = prezzoBase + totaleOptional + totaleGaranzia;

            string risultati = $"Prezzo di partenza: €{prezzoBase}<br>" +
                $"Totale Optional: €{totaleOptional}<br>" +
                $"Totale Garanzia: €{totaleGaranzia}<br>" +
                $"Totale Complessivo: €{totaleComplessivo}";

            lblRisultati.Text = risultati;
        }
    }
}