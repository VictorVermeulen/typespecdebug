import "@typespec/http";
import "@typespec/openapi";
import "./results.tsp";
import "./errors.tsp";
import "./listParameters.tsp";
import "../models/domainModel.tsp";

using TypeSpec.Http;
using TypeSpec.OpenAPI;
using Results;
using Errors;

using Models;

namespace Operations;

// op administrationOperation(@path administration_id: string): unknown;
// querying
// pagination

@friendlyName(NameTemplate, T)
@withVisibilityFilter(#{ any: #[Lifecycle.Create, Lifecycle.Update] })
model CreateOrReplace<
    T extends Reflection.Model,
    NameTemplate extends valueof string = "CreateOrReplace{name}"
> {
    ...T;
}

interface CRUD<
    domain extends valueof string,
    entity extends valueof string,
    T extends Reflection.Model,
    ReadModel extends Read<T> = Read<T>,
    PathParams extends {} = { @path administration_id: string }
> {
    @operationId("${domain}.${entity}.select.v2")
    @get
    getOne(...PathParams, @path id: string): {
        @statusCode statusCode: 200;
        @body result: Success<ReadModel>;
    } | {
        @statusCode statusCode: 404;
        @body result: NotFoundError;
    };

    @operationId("${domain}.${entity}.selectAll.v2")
    @get
    getAll(
        ...PathParams,
        ...ListParameters,
    ): Success<Page<ReadModel>>;

    @operationId("${domain}.${entity}.create.v2")
    @post
    create(...PathParams, @body body: Create<T>): {
        @statusCode statusCode: 200;
        @body result: Success<ReadModel>;
    } | {
        @statusCode statusCode: 400;
        @body result: BadRequestError;
    } | {
        @statusCode statusCode: 409;
        @body result: ConflictError;
    };

    @operationId("${domain}.${entity}.update.v2")
    @patch
    update(...PathParams, @path id: string, @body body: Update<T>): {
        @statusCode statusCode: 200;
        @body result: Success<ReadModel>;
    } | {
        @statusCode statusCode: 400;
        @body result: BadRequestError;
    } | {
        @statusCode statusCode: 409;
        @body result: ConflictError;
    };

    @operationId("${domain}.${entity}.createOrReplace.v2")
    @put
    createOrReplace(
        ...PathParams,
        @path id: string,
        @body body: CreateOrReplace<T>,
    ): {
        @statusCode statusCode: 200;
        @body result: Success<ReadModel>;
    } | {
        @statusCode statusCode: 400;
        @body result: BadRequestError;
    } | {
        @statusCode statusCode: 409;
        @body result: ConflictError;
    };

    @operationId("${domain}.${entity}.delete.v2")
    @delete
    delete(...PathParams, @path id: string): {
        @statusCode statusCode: 204;
    };
}
