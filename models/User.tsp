import "@typespec/http";
import "../common/operations.tsp";

using TypeSpec.Http;

namespace Models;

model User {
    hasMFA: boolean;
    @visibility(Lifecycle.Read)
    user_id: string;
    name: string;
    full_name: string;
    email: string;
    group_id?: string;
};

model LoggedInUser {
    user_id: string;
    tenant_id: int32;
    name: string;
    linked_tenants: LinkedTenant[];
};

model LinkedTenant {
    tenant_id: int32;
    name: string;
    color?: string;
};