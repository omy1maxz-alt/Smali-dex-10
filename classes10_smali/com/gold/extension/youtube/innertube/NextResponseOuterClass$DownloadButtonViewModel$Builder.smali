.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 18360
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearVideoId()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel$Builder;
    .registers 2

    .line 18397
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18398
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;->-$$Nest$mclearVideoId(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;)V

    return-object p0
.end method

.method public getVideoId()Ljava/lang/String;
    .registers 1

    .line 18370
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;->getVideoId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoIdBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 18379
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;->getVideoIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setVideoId(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel$Builder;
    .registers 3

    .line 18388
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18389
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;->-$$Nest$msetVideoId(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVideoIdBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel$Builder;
    .registers 3

    .line 18408
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 18409
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;->-$$Nest$msetVideoIdBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$DownloadButtonViewModel;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
