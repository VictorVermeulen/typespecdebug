import "@typespec/http";
import "../common/operations.tsp";

using TypeSpec.Http;

namespace Models;

model VatCode {
    @visibility(Lifecycle.Read)
    id: string;

    @visibility(Lifecycle.Read)
    createdAt: utcDateTime;

    @visibility(Lifecycle.Read)
    updatedAt: utcDateTime;

    displayValue?: integer | null;
    description?: string | null;
    vatPercentage?: float | null;
    vatBox?: string | null;
    ledgerAccountId?: string | null;
}
