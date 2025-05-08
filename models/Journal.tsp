import "@typespec/http";
import "../common/operations.tsp";

using TypeSpec.Http;

namespace Models;

model Journal {
    @visibility(Lifecycle.Read)
    id: string;

    @visibility(Lifecycle.Read)
    createdAt: utcDateTime;

    @visibility(Lifecycle.Read)
    updatedAt: utcDateTime;

    displayValue?: string | null;
    type: string;
    description?: string | null;
    ledgerAccountId?: string | null;
    pageNumber?: integer | null;
    lastUsedPageNumber?: integer | null;
    bank?: {
        currencyCode?: string | null;
        accountNumber?: string | null;
        bic?: string | null;
        iban?: string | null;
        balanceCheck?: integer | null;
        negativeBalanceCheck?: integer | null;
    };
    documentNumber?: integer | null;
    lastDocumentNr?: integer | null;
    subledger?: {
        invoiceNumber?: integer | null;
        lastInvoiceNumber?: integer | null;
        openItem?: {
            paymentTerm1InDays?: integer | null;
            paymentTerm1ReminderLayoutId?: string | null;
            paymentTerm2InDays?: integer | null;
            paymentTerm2ReminderLayoutId?: string | null;
            paymentTerm3InDays?: integer | null;
            paymentTerm3ReminderLayoutId?: string | null;
        };
        rangeStartNumber?: integer | null;
        rangeEndNumber?: integer | null;
        autoAssignNumber?: integer | null;
    };
    ledgerAccountPaymentDifference?: string | null;
    recurringJournalEntryLineNumber?: integer | null;
    allowCustomDocumentNumber?: integer | null;
    documentLocation?: string | null;
    linkDocuments?: integer | null;
    lockedBy?: string | null;
    isReadOnly?: integer | null;
}
