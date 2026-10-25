.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModelOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 9453
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearData()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel$Builder;
    .registers 2

    .line 9499
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9500
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;->-$$Nest$mclearData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;)V

    return-object p0
.end method

.method public getData()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;
    .registers 1

    .line 9469
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;->getData()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    move-result-object p0

    return-object p0
.end method

.method public hasData()Z
    .registers 1

    .line 9462
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;->hasData()Z

    move-result p0

    return p0
.end method

.method public mergeData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel$Builder;
    .registers 3

    .line 9492
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9493
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;->-$$Nest$mmergeData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;)V

    return-object p0
.end method

.method public setData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel$Builder;
    .registers 3

    .line 9484
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9485
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;->-$$Nest$msetData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;)V

    return-object p0
.end method

.method public setData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel$Builder;
    .registers 3

    .line 9475
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9476
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;->-$$Nest$msetData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$VideoMetadataCarouselModel;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Data;)V

    return-object p0
.end method
