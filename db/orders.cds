using {sap} from '@sap/cds/common';
using {gwsample as external} from '../srv/external/gwsample';

namespace orders;

entity PurchaseOrders {
    key PurchaseOrderUUID: UUID;
        Units: Integer;
        Date: Date;
        Price: Decimal(13,3);
        Product: Association to one Products;
        BusinessPartner: Association to one BusinessPartners;
        Currency: Association to one Currencies;
}

entity Products as projection on external.ProductSet;
entity BusinessPartners as projection on external.BusinessPartnerSet;
entity Currencies as projection on external.VH_CurrencySet;

