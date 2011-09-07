using System;
using System.Collections.Generic;

namespace nFacturae.Facturae32
{
    public partial class Facturae : BaseFacturae<Facturae>
    {
        public Facturae()
        {
            var fileHeader  = new FileHeaderType();
            fileHeader.SchemaVersion = SchemaVersionType.Item32;
            fileHeader.Modality = ModalityType.I;
            fileHeader.InvoiceIssuerType = InvoiceIssuerTypeType.EM;

            var batch = new BatchType();
            fileHeader.Batch = batch;

            batch.InvoicesCount = 0;
            batch.BatchIdentifier = string.Empty;
            batch.TotalInvoicesAmount = new AmountType() { TotalAmount = new DoubleTwoDecimalType(0.00) };
            batch.TotalOutstandingAmount = new AmountType() { TotalAmount = new DoubleTwoDecimalType(0.00) };
            batch.TotalExecutableAmount = new AmountType() { TotalAmount = new DoubleTwoDecimalType(0.00) };
            batch.InvoiceCurrencyCode = CurrencyCodeType.EUR;

            this.FileHeader = fileHeader;
            this.Parties = new PartiesType();
            this.Invoices = new InvoiceType[] { };
        }

        private object _CreateAddress(ResidenceTypeCodeType residenceTypeCode, string address, string postalCode, string province, string town, CountryType country)
        {
            if (residenceTypeCode == ResidenceTypeCodeType.R)
            {
                var addressLine = new AddressType();
                addressLine.Address = address;
                addressLine.PostCode = postalCode;
                addressLine.Province = province;
                addressLine.Town = town;
                addressLine.CountryCode = CountryType.ESP;
                return addressLine;
            }
            else
            {
                var addressLine = new OverseasAddressType();
                addressLine.Address = address;
                addressLine.PostCodeAndTown = postalCode + " " + town;
                addressLine.Province = province;
                addressLine.CountryCode = country;
                return addressLine;
            }
        }

        private BusinessType _CreateParty(PersonTypeCodeType personTypeCodeType, ResidenceTypeCodeType residenceTypeCode, string taxIdentificationNumber, object item)
        {
            var party = new BusinessType();
            var taxIdentification = new TaxIdentificationType();
            taxIdentification.PersonTypeCode = personTypeCodeType;
            taxIdentification.ResidenceTypeCode = residenceTypeCode;
            taxIdentification.TaxIdentificationNumber = taxIdentificationNumber;
            party.TaxIdentification = taxIdentification;
            party.Item = item;
            return party;
        }

        public Facturae AddIndividualParty(bool seller, ResidenceTypeCodeType residenceTypeCode, string taxIdentificationNumber, string name, 
            string firstSureName, string address, string postalCode, string province, string town, CountryType country)
        {
            var individual = new IndividualType();
            individual.Name = name;
            individual.FirstSurname = firstSureName;
            individual.Item = _CreateAddress(residenceTypeCode, address, postalCode, province, town, country);

            var party = _CreateParty(PersonTypeCodeType.F, residenceTypeCode, taxIdentificationNumber, individual);
            
            if (seller)
                this.Parties.SellerParty = party;
            else
                this.Parties.BuyerParty = party;

            return this;
        }

        public Facturae AddLegalParty(bool seller, PersonTypeCodeType personTypeCodeType, ResidenceTypeCodeType residenceTypeCode, string taxIdentificationNumber, string corporateName,
            string address, string postalCode, string province, string town, CountryType country)
        {
            var legal = new LegalEntityType();
            legal.CorporateName = corporateName;
            legal.Item = _CreateAddress(residenceTypeCode, address, postalCode, province, town, country);

            var party = _CreateParty(PersonTypeCodeType.F, residenceTypeCode, taxIdentificationNumber, legal);

            if (seller)
                this.Parties.SellerParty = party;
            else
                this.Parties.BuyerParty = party;

            return this;
        }

        public Facturae AddInvoice(Action<InvoiceType> invoice)
        {
            if (this.Invoices == null)
                this.Invoices = new InvoiceType[] { };

            var invoiceType = new InvoiceType();
            invoice.Invoke(invoiceType);

            var invoices = new List<InvoiceType>(this.Invoices);
            invoices.Add(invoiceType);
            this.Invoices = invoices.ToArray();

            if (string.IsNullOrEmpty(this.FileHeader.Batch.BatchIdentifier))
                this.FileHeader.Batch.BatchIdentifier = invoiceType.InvoiceHeader.InvoiceNumber;

            this.FileHeader.Batch.InvoicesCount += 1;

            this.FileHeader.Batch.TotalInvoicesAmount.TotalAmount.Value += invoiceType.InvoiceTotals.InvoiceTotal;
            this.FileHeader.Batch.TotalOutstandingAmount.TotalAmount.Value += invoiceType.InvoiceTotals.InvoiceTotal;
            this.FileHeader.Batch.TotalExecutableAmount.TotalAmount.Value += invoiceType.InvoiceTotals.InvoiceTotal;

            return this;
        }
    }

}
