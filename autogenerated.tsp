import "@typespec/http";
import "@typespec/rest";
import "@typespec/openapi3";
import "./models/ShippingMethod.tsp";
import "./models/Representative.tsp";
import "./models/Region.tsp";
import "./models/LedgerAccount.tsp";
import "./models/CustomerGroupItemGroupDiscount.tsp";
import "./models/InvoiceTextTemplate.tsp";
import "./models/DistanceSalesSettings.tsp";
import "./models/CustomerType.tsp";
import "./models/CustomerDiscountGroup.tsp";
import "./models/Customer.tsp";
import "./models/Journal.tsp";
import "./models/Supplier.tsp";
import "./models/VatCode.tsp";
import "./models/EntryDescriptionTemplate.tsp";
import "./models/PaymentTerm.tsp";
import "./models/Administration.tsp";
import "./models/ItemDescription.tsp";
import "./models/ItemDiscountGroup.tsp";
import "./models/Item.tsp";
import "./models/ItemGroup.tsp";

import "./common/operations.tsp";

using TypeSpec.Http;

namespace TestUIDirectory;

@route("/administration/{administration_id}")
namespace Administration {
    @tag("shippingMethod")
    @route("/shipping_method")
    interface ShippingMethodCRUD
        extends Operations.CRUD<"ordering", "shippingMethod", Models.ShippingMethod> {}
    // No extras needed
    @tag("representative")
    @route("/representative")
    interface RepresentativeCRUD
        extends Operations.CRUD<"ordering", "representative", Models.Representative> {}
    // No extras needed
    @tag("region")
    @route("/region")
    interface RegionCRUD extends Operations.CRUD<"ordering", "region", Models.Region> {}
    // No extras needed
    @tag("ledgerAccount")
    @route("/ledger_account")
    interface LedgerAccountCRUD
        extends Operations.CRUD<"administration", "ledgerAccount", Models.LedgerAccount> {}
    // No extras needed
    @tag("customerGroupItemGroupDiscount")
    @route("/customer_group_item_group_discount")
    interface CustomerGroupItemGroupDiscountCRUD
        extends Operations.CRUD<
                "administration",
                "customerGroupItemGroupDiscount",
                Models.CustomerGroupItemGroupDiscount
            > {}
    // No extras needed
    @tag("invoiceTextTemplate")
    @route("/invoice_text_template")
    interface InvoiceTextTemplateCRUD
        extends Operations.CRUD<
                "administration",
                "invoiceTextTemplate",
                Models.InvoiceTextTemplate
            > {}
    // No extras needed
    @tag("distanceSalesSettings")
    @route("/distance_sales_settings")
    interface DistanceSalesSettingsCRUD
        extends Operations.CRUD<
                "administration",
                "distanceSalesSettings",
                Models.DistanceSalesSettings
            > {}
    // No extras needed
    @tag("customerType")
    @route("/customer_type")
    interface CustomerTypeCRUD
        extends Operations.CRUD<"administration", "customerType", Models.CustomerType> {}
    // No extras needed
    @tag("customerDiscountGroup")
    @route("/customer_discount_group")
    interface CustomerDiscountGroupCRUD
        extends Operations.CRUD<
                "administration",
                "customerDiscountGroup",
                Models.CustomerDiscountGroup
            > {}
    // No extras needed
    @tag("customer")
    @route("/customer")
    interface CustomerCRUD extends Operations.CRUD<"administration", "customer", Models.Customer> {}
    // No extras needed
    @tag("journal")
    @route("/journal")
    interface JournalCRUD extends Operations.CRUD<"administration", "journal", Models.Journal> {}
    // No extras needed
    @tag("supplier")
    @route("/supplier")
    interface SupplierCRUD extends Operations.CRUD<"administration", "supplier", Models.Supplier> {}
    // No extras needed
    @tag("vatCode")
    @route("/vat_code")
    interface VatCodeCRUD extends Operations.CRUD<"administration", "vatCode", Models.VatCode> {}
    // No extras needed
    @tag("entryDescriptionTemplate")
    @route("/entry_description_template")
    interface EntryDescriptionTemplateCRUD
        extends Operations.CRUD<
                "administration",
                "entryDescriptionTemplate",
                Models.EntryDescriptionTemplate
            > {}
    // No extras needed
    @tag("paymentTerm")
    @route("/payment_term")
    interface PaymentTermCRUD
        extends Operations.CRUD<"administration", "paymentTerm", Models.PaymentTerm> {}
    // No extras needed
    @tag("administration")
    @route("/administration")
    interface AdministrationCRUD
        extends Operations.CRUD<"administration", "administration", Models.Administration> {}
    // No extras needed
    @tag("itemDescription")
    @route("/item_description")
    interface ItemDescriptionCRUD
        extends Operations.CRUD<"ordering", "itemDescription", Models.ItemDescription> {}
    // No extras needed
    @tag("itemDiscountGroup")
    @route("/item_discount_group")
    interface ItemDiscountGroupCRUD
        extends Operations.CRUD<"ordering", "itemDiscountGroup", Models.ItemDiscountGroup> {}
    // No extras needed
    @tag("item")
    @route("/item")
    interface ItemCRUD extends Operations.CRUD<"ordering", "item", Models.Item> {}
    // No extras needed
    @tag("itemGroup")
    @route("/item_group")
    interface ItemGroupCRUD extends Operations.CRUD<"ordering", "itemGroup", Models.ItemGroup> {}
    // No extras needed
}
