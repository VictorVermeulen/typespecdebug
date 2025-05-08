import "@typespec/http";
import "../common/operations.tsp";

using TypeSpec.Http;

namespace Models;

model ItemDescription {
    @visibility(Lifecycle.Read)
    id: string;

    @visibility(Lifecycle.Read)
    createdAt: utcDateTime;

    @visibility(Lifecycle.Read)
    updatedAt: utcDateTime;

    itemCode?: string | null;
    lineNumber?: integer | null;
    languageCode?: string | null;
    description1a?: string | null;
    description1b?: string | null;
}
