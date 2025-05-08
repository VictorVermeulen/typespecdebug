import "@typespec/http";

using TypeSpec.Http;

namespace Filters;

model BankTransaction {
    // Explode is needed because otherwise express-openapi-validator will crash if the query parameter is empty
    @query(#{ explode: true })
    @doc("Only retrieve transactions from this journal")
    journal?: string;

    @query(#{ explode: true })
    @doc("Only retrieve transactions with this status")
    status?: "ASSIGNED" | "WAITING" | "ATTENTION_REQUIRED" | "CONFIRMED";

    @query(#{ explode: true })
    @doc("Only retrieve transactions from this date")
    dateFrom?: string;

    @query(#{ explode: true })
    @doc("Only retrieve transactions until this date")
    dateTo?: string;
}

model BankTransactionView {
    @query(#{ explode: true })
    @doc("The related entities to inject")
    injectEntities?: ("ledgerAccounts" | "journal" | "relation")[];
}
