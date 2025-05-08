import "@typespec/http";
import "../common/operations.tsp";

using TypeSpec.Http;

namespace Models;

model Customer {
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
    debtor?: {
        cumulativeTotalLevel?: integer | null;
        proposedContraAccount?: string | null;
        remoteSalesContraAccount?: string | null;
    };
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
        subjectToVat?: integer | null;
        proposedVatCodeId?: string | null;
        vatIdentificationNumber?: string | null;
        reverseChargePercentage?: float | null;
    };
    currencyCode?: string | null;
    sales?: {
        reminders?: {
            block?: integer | null;
            dateLastReminder?: utcDateTime | null;
        };
        creditLimit?: float | null;
        deliveryTermsId?: string | null;
        shippingMethodId?: string | null;
        discountGroupId?: string | null;
        priceGroupId?: integer | null;
        priceCodeId: integer;
        vatInclusive?: integer | null;
        lateFee?: float | null;
        invoiceDiscount?: float | null;
        orderConfirmation?: integer | null;
        invoiceDebtor?: integer | null;
        representativeId?: string | null;
        regionId?: string | null;
        shippingAddressId?: string | null;
        revenueCategory?: integer | null;
        statisticalCode?: string | null;
        lastSaleDate?: utcDateTime | null;
        salesHistory?: integer | null;
        invoiceDeliveryOptions?: string | null;
        invoiceEmailAddress?: string | null;
        reminderOptions?: string | null;
        reminderEmailAddress?: string | null;
        quotationDeliveryOptions?: string | null;
        quotationEmailAddress?: string | null;
        orderConfirmationDeliveryOptions?: string | null;
        orderConfirmationEmailAddress?: string | null;
        packingSlipDeliveryOptions?: string | null;
        packingSlipEmailAddress?: string | null;
        deliveryNoteDeliveryOptions?: string | null;
        deliveryNoteEmailAddress?: string | null;
        subscriptionDeliveryOptions?: string | null;
        subscriptionEmailAddress?: string | null;
    };
    paymentTermsId?: string | null;
    directDebit?: {
        block?: integer | null;
    };
    customerGroupId?: integer | null;
    customerTypeId?: string | null;
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
    showMemoText?: integer | null;
    memo?: string | null;
    image?: string | null;
    initials?: string | null;
    languageCode?: string | null;
    internet?: string | null;
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
