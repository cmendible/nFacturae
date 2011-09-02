using System;

namespace nFacturae.Facturae32
{
    public partial class Facturae : BaseFacturae<Facturae>
    {
        public Facturae()
        {

        }

        public Facturae(string reference, DateTime issueDate)
        { 

        }

        public Facturae AddSellerParty()
        {
            return this;
        }

        public Facturae AddBuyerParty()
        {
            return this;
        }

        public Facturae AddInvoiceLine()
        {
            return this;
        }
    }
}
