import "@typespec/http";
import "../common/operations.tsp";

using TypeSpec.Http;

namespace Models;

model PaymentTerm {
    @visibility(Lifecycle.Read)
    id: string;

    @visibility(Lifecycle.Read)
    createdAt: utcDateTime;

    @visibility(Lifecycle.Read)
    updatedAt: utcDateTime;

    displayValue?: integer | null;
    description?: string | null;
    numberOfDays?: integer | null;
    startTerm?: string | null;
    paymentScheme?: {
        type?: string | null;
        days?: integer | null;
        percentage?: float | null;
        ledgerAccountStandardVat?: string | null;
        ledgerAccountReducedVat?: string | null;
        ledgerAccountZeroVat?: string | null;
    };
    typeOfDirectDebitMandate?: string | null;
}
