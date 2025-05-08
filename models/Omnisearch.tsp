import "@typespec/http";
import "./Customer.tsp";
import "./LedgerAccount.tsp";

using TypeSpec.Http;

namespace Models;

alias OmniSearchType = "customer" | "ledgerAccount";

model OmniSearchResult {
    id: string;
    displayValue?: string | integer;
    description: string;
    type: OmniSearchType;
    administrationId?: string;
}

model OmniSearchResponse {
    content: OmniSearchResult[];
}
