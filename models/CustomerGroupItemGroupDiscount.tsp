import "@typespec/http";
import "../common/operations.tsp";

using TypeSpec.Http;

namespace Models;

model CustomerGroupItemGroupDiscount {
    @visibility(Lifecycle.Read)
    id: string;

    @visibility(Lifecycle.Read)
    createdAt: utcDateTime;

    @visibility(Lifecycle.Read)
    updatedAt: utcDateTime;

    itemDiscountGroupId?: string | null;
    customerDiscountGroupId?: string | null;
    discountPercentage?: float | null;
}
