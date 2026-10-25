.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpointOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 9311
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIdentifier()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 2

    .line 9686
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9687
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$mclearIdentifier(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V

    return-object p0
.end method

.method public clearInputType()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 2

    .line 9524
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9525
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$mclearInputType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V

    return-object p0
.end method

.method public clearPageUiType()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 2

    .line 9552
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9553
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$mclearPageUiType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V

    return-object p0
.end method

.method public clearParams()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 2

    .line 9446
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9447
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$mclearParams(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V

    return-object p0
.end method

.method public clearParentTabIdentifier()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 2

    .line 9590
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9591
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$mclearParentTabIdentifier(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V

    return-object p0
.end method

.method public clearPlayerParams()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 2

    .line 9397
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9398
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$mclearPlayerParams(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V

    return-object p0
.end method

.method public clearPlaylistId()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 2

    .line 9348
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9349
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$mclearPlaylistId(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V

    return-object p0
.end method

.method public clearVideoType()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 2

    .line 9648
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9649
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$mclearVideoType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 1

    .line 9659
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdentifierBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 9668
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getIdentifierBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getInputType()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType;
    .registers 1

    .line 9499
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getInputType()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType;

    move-result-object p0

    return-object p0
.end method

.method public getInputTypeValue()I
    .registers 1

    .line 9472
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getInputTypeValue()I

    move-result p0

    return p0
.end method

.method public getPageUiType()J
    .registers 3

    .line 9535
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getPageUiType()J

    move-result-wide v0

    return-wide v0
.end method

.method public getParams()Ljava/lang/String;
    .registers 1

    .line 9419
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getParams()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParamsBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 9428
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getParamsBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getParentTabIdentifier()Ljava/lang/String;
    .registers 1

    .line 9563
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getParentTabIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParentTabIdentifierBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 9572
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getParentTabIdentifierBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPlayerParams()Ljava/lang/String;
    .registers 1

    .line 9370
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getPlayerParams()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlayerParamsBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 9379
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getPlayerParamsBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPlaylistId()Ljava/lang/String;
    .registers 1

    .line 9321
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getPlaylistId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlaylistIdBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 9330
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getPlaylistIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getVideoType()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$VideoType;
    .registers 1

    .line 9631
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getVideoType()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$VideoType;

    move-result-object p0

    return-object p0
.end method

.method public getVideoTypeValue()I
    .registers 1

    .line 9612
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getVideoTypeValue()I

    move-result p0

    return p0
.end method

.method public setIdentifier(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 3

    .line 9677
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9678
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$msetIdentifier(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdentifierBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 3

    .line 9697
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9698
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$msetIdentifierBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setInputType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 3

    .line 9511
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9512
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$msetInputType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$InputType;)V

    return-object p0
.end method

.method public setInputTypeValue(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 3

    .line 9485
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9486
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$msetInputTypeValue(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;I)V

    return-object p0
.end method

.method public setPageUiType(J)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 4

    .line 9543
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9544
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$msetPageUiType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;J)V

    return-object p0
.end method

.method public setParams(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 3

    .line 9437
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9438
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$msetParams(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public setParamsBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 3

    .line 9457
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9458
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$msetParamsBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setParentTabIdentifier(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 3

    .line 9581
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9582
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$msetParentTabIdentifier(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public setParentTabIdentifierBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 3

    .line 9601
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9602
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$msetParentTabIdentifierBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPlayerParams(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 3

    .line 9388
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9389
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$msetPlayerParams(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPlayerParamsBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 3

    .line 9408
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9409
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$msetPlayerParamsBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPlaylistId(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 3

    .line 9339
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9340
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$msetPlaylistId(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPlaylistIdBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 3

    .line 9359
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9360
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$msetPlaylistIdBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setVideoType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$VideoType;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 3

    .line 9639
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9640
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$msetVideoType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$VideoType;)V

    return-object p0
.end method

.method public setVideoTypeValue(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;
    .registers 3

    .line 9621
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9622
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->-$$Nest$msetVideoTypeValue(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;I)V

    return-object p0
.end method
