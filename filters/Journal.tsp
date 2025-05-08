import "@typespec/http";

using TypeSpec.Http;

namespace Filters;

model Journal {
    @query(#{ explode: true })
    @doc("The type of journal to filter by")
    type?: string;
}
