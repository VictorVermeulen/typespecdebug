import "@typespec/http";
import "../common/operations.tsp";

using TypeSpec.Http;

namespace Models;

model DistanceSalesSettings {
    @visibility(Lifecycle.Read)
    id: string;

    @visibility(Lifecycle.Read)
    createdAt: utcDateTime;

    @visibility(Lifecycle.Read)
    updatedAt: utcDateTime;

    countryCode?: string | null;
    itemGroupId?: integer | null;
    itemId?: string | null;
    ledgerAccountId?: integer | null;
    vatCodeId?: integer | null;
}
