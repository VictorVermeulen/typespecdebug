import "@typespec/http";
import "../common/operations.tsp";

using TypeSpec.Http;

namespace Models;

model InvoiceTextTemplate {
    @visibility(Lifecycle.Read)
    id: string;

    @visibility(Lifecycle.Read)
    createdAt: utcDateTime;

    @visibility(Lifecycle.Read)
    updatedAt: utcDateTime;

    displayCode?: integer | null;
    description1a?: string | null;
    description1b?: string | null;
    description2a?: string | null;
    description2b?: string | null;
    description3a?: string | null;
    description3b?: string | null;
    description4a?: string | null;
    description4b?: string | null;
    description5a?: string | null;
    description5b?: string | null;
}
