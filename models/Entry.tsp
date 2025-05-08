import "@typespec/http";
import "../common/operations.tsp";


namespace Models;

model EntryDocument {
    id: string;
    filename: string;
}

model EntryLine {
    id: string;
    userId: string;
    clientId?: string;
    ledgerAccountId?: string;
    relationId?: string;
    reconciliationReference?: string;
    description?: string;
    fgnAmount: float;
    funcAmount?: float; // only in response
    debitCredit: "debit" | "credit";
    taxId?: string;
    taxAmount?: float;

    // does not exist yet
    taxSpecification?: {
        regime: "NL";
        category: string;
        percentage: integer;
    };

    documents?: EntryDocument[];
    dimensions?: {
        key: string;
        value: integer;
    }[];
}

model Entry {
    variant:
        | "sales"
        | "purchase"
        | "cash"
        | "bank"
        | "general"
        | "opening_balance"
        | "opening_balance_system";
    status: "ok";
    id: string;
    currencyCode: string;
    exchangerate?: float; // only in response
    journalId: string;
    documentReference?: string;
    periodNr: integer;
    documentDate: string;
    blocked?: {
        reasonCode: string;
        userId?: string;
        clientId?: string;
    };
    lines: EntryLine[];
    documents?: EntryDocument[];
}

// Legacy

enum AccountType {
    LedgerAccount: "ledger_account",
    Customer: "customer",
    Supplier: "supplier",
}

model Message {
    message_code: string;
    message_type: string;
    field?: string;
    message: string;
    tenant_id?: integer;
    administration_id?: integer;
}

model LegacyEntryLine {
    id?: string;
    batch_id?: string;
    journal?: {
        id?: string;
    };
    account?: {
        id?: string;
        type?: AccountType;
    };
    invoice_number?: integer;
    entry_number?: integer;
    document_date?: string;
    due_date?: string;
    credit?: float;
    debit?: float;
    cost_center?: {
        id?: integer;
        description?: string;
    };
    messages?: Message[];
    currency?: {
        id: string;
    };
    period?: {
        id?: integer;
        fiscal_year?: integer;
    };
    payment_term?: {
        id?: integer;
    };
    vat?: {
        id?: integer;
        type?: string;
        description?: string;
        amount?: float | null;
    };
    description?: string;
    payment_term_id?: string;
    document_id?: string;
}

model LegacyEntry is LegacyEntryLine[];
