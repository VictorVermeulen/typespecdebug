import "@typespec/http";
import "../common/operations.tsp";

using TypeSpec.Http;

namespace Models;

model Supplier {
    @visibility(Lifecycle.Read)
    id: string;

    @visibility(Lifecycle.Read)
    createdAt: utcDateTime;

    @visibility(Lifecycle.Read)
    updatedAt: utcDateTime;

    displayValue?: integer | null;
    name?: string | null;
    nameAddition?: string | null;
    postalAddress?: {
        addressLine1?: string | null;
        postalCode?: string | null;
        city?: string | null;
        countryCode?: string | null;
    };
    streetAddress?: {
        addressLine1?: string | null;
        postalCode?: string | null;
        city?: string | null;
        countryCode?: string | null;
    };
    cumulativeTotalLevel?: integer | null;
    description?: string | null;
    contactPerson1?: {
        name?: string | null;
        salutation?: string | null;
        phoneNumber?: string | null;
        faxNumber?: string | null;
        emailAddress?: string | null;
    };
    block?: integer | null;
    searchKey1?: string | null;
    searchKey2?: string | null;
    searchKey3?: string | null;
    defaultBankAccount?: {
        accountNumber?: string | null;
        bankName?: string | null;
        bankCity?: string | null;
        bic?: string | null;
        iban?: string | null;
    };
    vat?: {
        proposedVatCodeId?: string | null;
        vatIdentificationNumber?: string | null;
        subjectToVat?: integer | null;
        reverseChargePercentage?: float | null;
    };
    currencyCode?: string | null;
    proposedContraAccount?: string | null;
    paymentTermsId?: string | null;
    paymentReference?: string | null;
    supplierGroupId?: integer | null;
    supplierTypeId?: integer | null;
    deliveryTermsId?: string | null;
    shippingMethodId?: string | null;
    customFields?: {
        field1?: string | null;
        field2?: string | null;
        field3?: string | null;
        field4?: string | null;
        field5?: string | null;
        freeTextField1?: string | null;
        freeTextField2?: string | null;
        freeNumericField1?: float | null;
        freeNumericField2?: float | null;
    };
    memo?: string | null;
    image?: string | null;
    shippingAddressId?: string | null;
    initials?: string | null;
    purchase?: {
        invoiceDiscount?: float | null;
        representativeId?: string | null;
        regionId?: string | null;
        category?: integer | null;
        statisticalCode?: string | null;
        lastPurchaseDate?: utcDateTime | null;
        history?: string | null;
    };
    languageCode?: string | null;
    subUpdate?: string | null;
    blockPayments?: integer | null;
    internet?: string | null;
    showMemoText?: string | null;
    collectiveSupplierForOneOffPurchase?: integer | null;
    contactPerson2?: {
        name?: string | null;
        salutation?: string | null;
        phoneNumber?: string | null;
        faxNumber?: string | null;
        emailAddress?: string | null;
    };
    chamberOfCommerceNumber?: string | null;
    creationDate?: utcDateTime | null;
    modificationDate?: utcDateTime | null;
    externalId?: string | null;
    bankAccounts?: Array<unknown>; // TODO: this is a JSONB column, fill this in later | null;
}
