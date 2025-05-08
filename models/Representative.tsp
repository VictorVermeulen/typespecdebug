import "@typespec/http";
import "../common/operations.tsp";

using TypeSpec.Http;

namespace Models;

model Representative {
    @visibility(Lifecycle.Read)
    id: string;

    @visibility(Lifecycle.Read)
    createdAt: utcDateTime;

    @visibility(Lifecycle.Read)
    updatedAt: utcDateTime;

    displayCode?: integer | null;
    description?: string | null;
}
