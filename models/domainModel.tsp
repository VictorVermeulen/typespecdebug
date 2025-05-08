import "@typespec/http";
import "../common/operations.tsp";

using TypeSpec.Http;

namespace Models;

model DomainModel<
    Domain extends valueof string = "accounting",
    Entity extends valueof string = "entity"
> extends Reflection.Model {}
