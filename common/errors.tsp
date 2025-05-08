import "@typespec/http";
import "./results.tsp";

using TypeSpec.Http;
using Results;

namespace Errors {
    model BadRequestError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {
                fields?: {
                    @doc("The path to the field that caused the error")
                    field: string;

                    @doc("The error message")
                    errorMessage: string;

                    @doc("The error code")
                    code: string;
                }[];
            };
        }>;
    model UnauthorizedError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model PaymentRequiredError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model ForbiddenError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model NotFoundError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model MethodNotAllowedError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model NotAcceptableError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model ProxyAuthenticationRequiredError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model RequestTimeoutError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model ConflictError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model GoneError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model LengthRequiredError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model PreconditionFailedError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model RequestEntityTooLargeError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model RequestURITooLongError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model UnsupportedMediaTypeError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model RequestedRangeNotSatisfiableError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model ExpectationFailedError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model ImATeapotError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model PageExpiredLaravelFrameworkError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model MethodFailureSpringFrameworkError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model MisdirectedRequestError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model UnprocessableEntityError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model LockedError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model FailedDependencyError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model UpgradeRequiredError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model PreconditionRequiredError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model TooManyRequestsError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model RequestHeaderFieldsTooLargeError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model LoginTimeOutError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model ConnectionClosedWithoutResponseError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model RetryWithError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model BlockedbyWindowsParentalControlsError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model UnavailableForLegalReasonsError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model RequestHeaderTooLargeError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model SSLCertificateErrorError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model SSLCertificateRequiredError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model HTTPRequestSenttoHTTPSPortError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model InvalidTokenEsriError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model ClientClosedRequestError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model InternalServerErrorError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model NotImplementedError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model BadGatewayError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model ServiceUnavailableError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model GatewayTimeoutError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model HTTPVersionNotSupportedError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model VariantAlsoNegotiatesError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model InsufficientStorageError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model LoopDetectedError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model BandwidthLimitExceededError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model NotExtendedError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model NetworkAuthenticationRequiredError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model UnknownErrorError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model WebServerIsDownError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model ConnectionTimedOutError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model OriginIsUnreachableError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model ATimeoutOccurredError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model SSLHandshakeFailedError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model InvalidSSLCertificateError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model RailgunListenertoOriginErrorError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model OriginDNSErrorError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
    model NetworkReadTimeoutErrorError
        is Error<{
            errorCode: "ERROR_CODE";
            errorMessage: "Error message";
            details: {};
        }>;
}
