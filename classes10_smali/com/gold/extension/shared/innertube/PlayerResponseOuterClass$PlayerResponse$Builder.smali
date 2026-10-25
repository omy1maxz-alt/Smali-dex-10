.class public final Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PlayerResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;",
        ">;",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 401
    invoke-static {}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPlayabilityStatus()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;
    .registers 2

    .line 447
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 448
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->-$$Nest$mclearPlayabilityStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;)V

    return-object p0
.end method

.method public clearStreamingData()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;
    .registers 2

    .line 494
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 495
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->-$$Nest$mclearStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;)V

    return-object p0
.end method

.method public getPlayabilityStatus()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;
    .registers 1

    .line 417
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->getPlayabilityStatus()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    move-result-object p0

    return-object p0
.end method

.method public getStreamingData()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;
    .registers 1

    .line 464
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->getStreamingData()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    move-result-object p0

    return-object p0
.end method

.method public hasPlayabilityStatus()Z
    .registers 1

    .line 410
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->hasPlayabilityStatus()Z

    move-result p0

    return p0
.end method

.method public hasStreamingData()Z
    .registers 1

    .line 457
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->hasStreamingData()Z

    move-result p0

    return p0
.end method

.method public mergePlayabilityStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;
    .registers 3

    .line 440
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 441
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->-$$Nest$mmergePlayabilityStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)V

    return-object p0
.end method

.method public mergeStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;
    .registers 3

    .line 487
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 488
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->-$$Nest$mmergeStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)V

    return-object p0
.end method

.method public setPlayabilityStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus$Builder;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;
    .registers 3

    .line 432
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 433
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->-$$Nest$msetPlayabilityStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)V

    return-object p0
.end method

.method public setPlayabilityStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;
    .registers 3

    .line 423
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 424
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->-$$Nest$msetPlayabilityStatus(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;)V

    return-object p0
.end method

.method public setStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;
    .registers 3

    .line 479
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 480
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->-$$Nest$msetStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)V

    return-object p0
.end method

.method public setStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;
    .registers 3

    .line 470
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 471
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->-$$Nest$msetStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)V

    return-object p0
.end method
