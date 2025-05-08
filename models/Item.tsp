import "@typespec/http";
import "../common/operations.tsp";

using TypeSpec.Http;

namespace Models;

model Item {
    @visibility(Lifecycle.Read)
    id: string;

    @visibility(Lifecycle.Read)
    createdAt: utcDateTime;

    @visibility(Lifecycle.Read)
    updatedAt: utcDateTime;

    displayValue?: string | null;
    description?: string | null;
    extendedDescription?: string | null;
    key1?: string | null;
    key2?: string | null;
    key3?: string | null;
    itemGroupNumber?: string | null;
    itemDiscountGroup?: string | null;
    itemPriceGroup?: integer | null;
    unitPerPackage?: string | null;
    warehouseLocation?: string | null;
    vatCodeSales?: string | null;
    quantityApplication?: integer | null;
    block?: integer | null;
    initials?: string | null;
    salesPrice?: float | null;
    recommendedSalesPrice?: float | null;
    salesPrice1?: float | null;
    salesPrice2?: float | null;
    salesPrice3?: float | null;
    salesPrice4?: float | null;
    salesPrice5?: float | null;
    salesPrice6?: float | null;
    salesPrice7?: float | null;
    salesPrice8?: float | null;
    salesPrice9?: float | null;
    priceCodePerUnit?: integer | null;
    content?: float | null;
    purchasePrice?: float | null;
    freeField1?: string | null;
    freeField2?: string | null;
    freeField3?: string | null;
    freeField4?: float | null;
    freeField5?: float | null;
    showMemo?: integer | null;
    memo?: string | null;
    image?: string | null;
    supplier1?: string | null;
    supplier2?: string | null;
    supplier3?: string | null;
    supplier4?: string | null;
    supplier5?: string | null;
    alternativeItemCode1?: string | null;
    alternativeItemCode2?: string | null;
    alternativeItemCode3?: string | null;
    alternativeItemCode4?: string | null;
    alternativeItemCode5?: string | null;
    purchasePriceSupplier1?: float | null;
    purchasePriceSupplier2?: float | null;
    purchasePriceSupplier3?: float | null;
    purchasePriceSupplier4?: float | null;
    purchasePriceSupplier5?: float | null;
    statisticsCode?: string | null;
    quantityPerPackage?: float | null;
    weight?: float | null;
    lastSaleDate?: utcDateTime | null;
    lastPurchaseDate?: utcDateTime | null;
    mainSupplierNumber?: integer | null;
    mainSupplierItem?: integer | null;
    minimumStock?: float | null;
    maximumStock?: float | null;
    orderUnit?: float | null;
    technicalStock?: float | null;
    orderedQuantity?: float | null;
    reservedQuantity?: float | null;
    correctionOrdered?: float | null;
    correctionReserved?: float | null;
    registeredStock?: integer | null;
    valuationStock?: string | null;
    stockSignal?: integer | null;
    vatCodePurchase?: integer | null;
    lastPurchasePrice?: float | null;
    lastCurrency?: string | null;
    openingStock?: float | null;
    openingStockPreviousPeriodInProd?: float | null;
    salesHistory?: integer | null;
    purchaseHistory?: integer | null;
    purchaseStatisticsCode?: string | null;
    wageTotal?: integer | null;
    customFields?: {
        text1?: string | null;
        text2?: string | null;
        number1?: float | null;
        number2?: float | null;
        number3?: float | null;
        number4?: float | null;
        number5?: float | null;
        date1?: utcDateTime | null;
    };
    billOfMaterials?: string | null;
    productionItem?: string | null;
    numberOfBomLines?: integer | null;
    warehouseOrBatchRequired?: string | null;
    defaultWarehouse?: string | null;
    warehouseModificationAllowed?: integer | null;
    defaultBatch?: string | null;
}
