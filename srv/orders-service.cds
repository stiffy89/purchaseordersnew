using {gwsample as external} from '../srv/external/gwsample.csn';
using orders from '../db/orders';

service ordersservice {
    entity PurchaseOrders as projection on orders.PurchaseOrders;
    entity Products as projection on orders.Products;
    entity BusinessPartners as projection on orders.BusinessPartners;
    entity Currencies as projection on orders.Currencies;
}