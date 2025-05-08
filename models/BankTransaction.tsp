import "@typespec/http";
import "../common/operations.tsp";
import "./Entry.tsp";
import "./Customer.tsp";
import "./Journal.tsp";
import "./LedgerAccount.tsp";

using TypeSpec.Http;

namespace Models;

model BankTransaction {
    id: string;
    administration_id: string;
    tenant_id: string;
    document_id: string;
    iban: string;
    bic: string;
    counterpart_iban: string;
    counterpart_bic: string;
    counterpart_accountholder: string;
    execution_date: string;
    currency_code: string;
    debit: float;
    credit: float;
    batch_id: string;
    pdf_generated: boolean;
    hash: string;
    description: string;
    payment_information_id: string;
    booked: boolean;
    status:
        | "DELETED"
        | "WAITING"
        | "ATTENTION_REQUIRED"
        | "ASSIGNED"
        | "CONFIRMED"
        | "INVALID"
        | "UNKNOWN";
    recognition_status: "NOT_RECOGNIZED" | "ACCOUNT_RECOGNIZED" | "ACCOUNT_AND_INVOICE_RECOGNIZED";
    bankmutation_status:
        | "DELETED"
        | "WAITING"
        | "RECOGNITION_EXPIRED"
        | "DEVIATING_AMOUNT"
        | "ASSIGNED"
        | "CONFIRMED"
        | "MANUAL_ASSIGNED"
        | "MANUAL_ATTENTION_REQUIRED"
        | "MISSING_JOURNAL";
    failure_reason: string;
    transaction?: LegacyEntry;
    desired_transaction: LegacyEntry;
    last_state_booked: boolean;
    account_recognition_method:
        | "AUTOMATIC_PAYMENTS_CHARACTERISTIC"
        | "COLLECTION_CHARACTERISTIC"
        | "RECOGNITION_TEXTS"
        | "IBAN"
        | "NAME"
        | "ACCOUNT_NUMBER_IN_DESCRIPTION"
        | "INVOICE_NUMBER_IN_DESCRIPTION_AND_AMOUNT_IN_OPEN_ITEM"
        | "DATE_AND_AMOUNT_IN_OPEN_ITEM"
        | "INVOICE_NUMBER_IN_DESCRIPTION"
        | "AMOUNT_IN_OPEN_ITEM"
        | "TAX_ASSESSMENT_NUMBER"
        | "PAYMENT_REFERENCE_NUMBER";
    invoice_recognition_method:
        | "INVOICE_NUMBER_IN_DESCRIPTION_AND_TOTAL_AMOUNT_IN_OPEN_ITEMS"
        | "INVOICE_NUMBER_IN_DESCRIPTION_AND_AMOUNT_IN_OPEN_ITEM"
        | "NUMBER_IN_DESCRIPTION"
        | "DATE_AND_AMOUNT_IN_OPEN_ITEM"
        | "INVOICE_NUMBER_IN_DESCRIPTION_IN_OPEN_ITEM"
        | "AMOUNT_IN_OPEN_ITEM"
        | "REVERSED_AMOUNT";
    automatic_recognition: {
        active: boolean;
        reason: string;
        code:
            | "TOO_MANY_RECOGNITION_ATTEMPTS"
            | "RECOGNITION_EXPIRED"
            | "MANUAL_ATTENTION_REQUIRED"
            | "BANKMUTATION_ASSIGNED"
            | "BANKMUTATION_MANUAL_ASSIGNED";
    };
    period_id: integer;
    times_updated: integer;
    expired_at: string;
    fiscal_year_id: string;
    account_id: string;
    recognition_information: Record<unknown>;
    total_debit: float;
    total_credit: float;
    total_vat: float;
}

model BankTransactionWithEntry {
    entry: Entry;
    ...BankTransaction;
}

model BankTransactionView {
    ...BankTransaction;
    journal?: Journal;
    ledgerAccounts?: LedgerAccount[];
    relation?: Customer;
}

model BankTransactionMeta {
    metrics: {
        status: {
            DELETED: integer;
            WAITING: integer;
            ATTENTION_REQUIRED: integer;
            ASSIGNED: integer;
            CONFIRMED: integer;
            INVALID: integer;
            UNKNOWN: integer;
        };
        bankmutation_status: {
            DELETED: integer;
            WAITING: integer;
            RECOGNITION_EXPIRED: integer;
            DEVIATING_AMOUNT: integer;
            ASSIGNED: integer;
            CONFIRMED: integer;
            MANUAL_ASSIGNED: integer;
            MANUAL_ATTENTION_REQUIRED: integer;
            MISSING_JOURNAL: integer;
        };
    };
}
