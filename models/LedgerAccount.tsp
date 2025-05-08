import "@typespec/http";
import "../common/operations.tsp";

using TypeSpec.Http;

namespace Models;

model LedgerAccount {
    @visibility(Lifecycle.Read)
    id: string;

    @visibility(Lifecycle.Read)
    createdAt: utcDateTime;

    @visibility(Lifecycle.Read)
    updatedAt: utcDateTime;

    displayValue?: integer | null;
    description?: string | null;
    aggregationLevel?: integer | null;
    blocked?: integer | null;
    vatId?: string | null;
    debitCreditSuggestion?: string | null;
    balanceCode?: string | null;
    costTypeId?: string | null;
    annualBudget?: integer | null;
    budgverdeel?: string | null;
    showMemo?: integer | null;
    memo?: string | null;
    gebruikcode?: string | null;
    inUseAsVat?: integer | null;
    initialen?: string | null;
    dagboeksoort?: string | null;
    vatIsRequired?: integer | null;
    aggregateEntries?: integer | null;
    quantityIsApplicable?: integer | null;
    allowFreeVatInput?: integer | null;
}
