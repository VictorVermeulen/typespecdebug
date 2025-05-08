import "@typespec/http";
import "@typespec/rest";
import "@typespec/openapi3";

import "./models/Journal.tsp";
import "./models/BankTransaction.tsp";
import "./models/Omnisearch.tsp";
import "./models/domainModel.tsp";
import "./common/results.tsp";
import "./common/listParameters.tsp";
import "./filters/BankTransaction.tsp";
import "./filters/Omnisearch.tsp";
import "./filters/Journal.tsp";

using TypeSpec.Http;
using TypeSpec.OpenAPI;
using Results;
using Errors;

namespace TestUIDirectory;

@route("/administration/{administration_id}")
namespace Administration {
    @route("/banking/transaction")
    @tag("Bank transactions")
    interface TransactionSearch {
        // No actual implementation yet, spec created for dummy purposes
        @route("/search")
        @doc("Search bank transactions")
        @operationId("bank-robot.banktransaction.search.v2")
        search(
            @path administration_id: string,
            ...Filters.BankTransaction,
            ...Filters.BankTransactionView,
            ...ListParameters,
        ): Success<Page<Models.BankTransactionView>>;
    }

    @route("/journal")
    @tag("journal")
    interface JournalSearch {
        // No actual implementation yet, spec created for dummy purposes
        @route("/search")
        @doc("Search journals")
        @operationId("administration.journal.search.v2")
        search(
            @path administration_id: string,
            ...Filters.Journal,
            ...ListParameters,
        ): Success<Page<Models.Journal>>;
    }

    @route("/search")
    @tag("Search")
    interface Search {
        @doc("Search for anything")
        @operationId("accounting.omnisearch.search.v1")
        search(
            @path administration_id: string,
            ...Filters.Omnisearch,
            ...ListParameters,
        ): Success<Models.OmniSearchResponse>;
    }
}
