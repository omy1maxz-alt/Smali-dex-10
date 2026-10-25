.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpointOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 8604
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBrowseId()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint$Builder;
    .registers 2

    .line 8641
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8642
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;->-$$Nest$mclearBrowseId(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;)V

    return-object p0
.end method

.method public getBrowseId()Ljava/lang/String;
    .registers 1

    .line 8614
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;->getBrowseId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBrowseIdBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 8623
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;->getBrowseIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setBrowseId(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint$Builder;
    .registers 3

    .line 8632
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8633
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;->-$$Nest$msetBrowseId(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBrowseIdBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint$Builder;
    .registers 3

    .line 8652
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8653
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;->-$$Nest$msetBrowseIdBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
