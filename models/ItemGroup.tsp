import "@typespec/http";
import "../common/operations.tsp";

using TypeSpec.Http;

namespace Models;

model ItemGroup {
    @visibility(Lifecycle.Read)
    id: string;

    @visibility(Lifecycle.Read)
    createdAt: utcDateTime;

    @visibility(Lifecycle.Read)
    updatedAt: utcDateTime;

    displayValue?: integer | null;
    itemGroupDescription?: string | null;
    revenueLedgerAccountNl?: string | null;
    revenueLedgerAccountEu?: string | null;
    revenueLedgerAccountNonEu?: string | null;
    customRevenueLedgerAccount1?: string | null;
    customRevenueLedgerAccount2?: string | null;
    customRevenueLedgerAccount3?: string | null;
    customRevenueLedgerAccount4?: string | null;
    customRevenueLedgerAccount5?: string | null;
    inventoryGeneralLedgerAccount?: integer | null;
    costPriceGeneralLedgerAccount?: integer | null;
    purchaseLedgerAccountNl?: integer | null;
    purchaseLedgerAccountEu?: integer | null;
    purchaseLedgerAccountNonEu?: integer | null;
    customPurchaseLedgerAccount1?: integer | null;
    customPurchaseLedgerAccount2?: integer | null;
    customPurchaseLedgerAccount3?: integer | null;
    customPurchaseLedgerAccount4?: integer | null;
    customPurchaseLedgerAccount5?: integer | null;
}
