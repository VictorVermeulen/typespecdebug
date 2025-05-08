model AddToBatchBody {
    importDefinition: string,
    importFile: Array<int32>,
    importFilename: string,
    mipId: string,
    importId: string
}

model AddToBatchResponse {
    description: string,
    type: string
}

model StartBatchBody {
    email: string, 
    journalCode?: string, 
    period?: int32, 
    fiscalYear?: int32
}

model ImportTask {
    @visibility(Lifecycle.Read)
    id: string,
    type: "items" | "transactions" | "customers" | "suppliers",
    file: string,
    state: "waiting" | "running" | "stopped" | "finished" | "stopping",
    reason: string,
    payload: Record<unknown>,
    batchId: string,
    createdAt: string,
    updatedAt: string,
    lineCount: int32,
    lineCountDone: int32,
    desiredState: string,
}