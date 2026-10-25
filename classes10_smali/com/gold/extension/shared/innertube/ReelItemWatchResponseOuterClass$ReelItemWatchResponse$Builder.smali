.class public final Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ReelItemWatchResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;",
        "Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse$Builder;",
        ">;",
        "Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 228
    invoke-static {}, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearData()Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse$Builder;
    .registers 2

    .line 238
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 239
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;

    invoke-static {v0}, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;->-$$Nest$mclearData(Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;)V

    return-object p0
.end method

.method public clearPlayerResponse()Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse$Builder;
    .registers 2

    .line 287
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 288
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;

    invoke-static {v0}, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;->-$$Nest$mclearPlayerResponse(Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;)V

    return-object p0
.end method

.method public getDataCase()Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse$DataCase;
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;->getDataCase()Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public getPlayerResponse()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
    .registers 1

    .line 256
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;->getPlayerResponse()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    move-result-object p0

    return-object p0
.end method

.method public hasPlayerResponse()Z
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;->hasPlayerResponse()Z

    move-result p0

    return p0
.end method

.method public mergePlayerResponse(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;)Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse$Builder;
    .registers 3

    .line 279
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 280
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;->-$$Nest$mmergePlayerResponse(Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;)V

    return-object p0
.end method

.method public setPlayerResponse(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;)Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse$Builder;
    .registers 3

    .line 271
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 272
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;->-$$Nest$msetPlayerResponse(Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;)V

    return-object p0
.end method

.method public setPlayerResponse(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;)Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse$Builder;
    .registers 3

    .line 262
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 263
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;->-$$Nest$msetPlayerResponse(Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;)V

    return-object p0
.end method
