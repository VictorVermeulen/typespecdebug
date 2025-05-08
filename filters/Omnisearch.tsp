import "@typespec/http";

using TypeSpec.Http;

namespace Filters;

alias OmniSearchType = "customer" | "ledgerAccount";

model Omnisearch {
    @query(#{ explode: true })
    @doc("Which entities to search for, defaults to all")
    acceptedTypes?: OmniSearchType[];

    @query(#{ explode: true })
    @doc("How many results to return per type, defaults to 3")
    limitPerType?: int32;

    @query(#{ explode: true })
    @doc("How many results to return in total, defaults to 10")
    limitTotal?: int32;
}
