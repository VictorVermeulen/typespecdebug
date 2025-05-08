import "@typespec/sse";
import "@typespec/events";

using TypeSpec.SSE;

model UserConnect {
    username: string;
    time: string;
}

model UserMessage {
    username: string;
    time: string;
    text: string;
}

model UserDisconnect {
    username: string;
    time: string;
}

@TypeSpec.Events.events
union ChannelEvents {
    userconnect: UserConnect,
    usermessage: UserMessage,
    userdisconnect: UserDisconnect,

    @Events.contentType("text/plain")
    @terminalEvent
    "[unsubscribe]",
}

op subscribeToChannel(): SSEStream<ChannelEvents>;
