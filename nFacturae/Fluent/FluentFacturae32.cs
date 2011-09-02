using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace nFacturae.Facturae32
{
    public partial class Facturae
    {
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
