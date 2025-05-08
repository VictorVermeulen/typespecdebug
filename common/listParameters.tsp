import "@typespec/http";

using TypeSpec.Http;

model ListParameters {
    // Explode is needed because otherwise express-openapi-validator will crash if the query parameter is empty

    @query(#{ explode: true })
    offset?: integer;

    @query(#{ explode: true })
    cursor?: string;

    @query(#{ explode: true })
    columns?: string[];

    @query(#{ explode: true })
    query?: string;

    @query(#{ explode: true })
    page_size?: integer;

    @query(#{ explode: true })
    sort?: string[];
}
