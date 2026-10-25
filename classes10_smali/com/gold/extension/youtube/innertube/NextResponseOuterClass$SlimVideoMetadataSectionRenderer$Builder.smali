.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRendererOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2451
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTertiaryContents(Ljava/lang/Iterable;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;",
            ">;)",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;"
        }
    .end annotation

    .line 2536
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2537
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->-$$Nest$maddAllTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTertiaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;
    .registers 4

    .line 2526
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2527
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    .line 2528
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    .line 2527
    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->-$$Nest$maddTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-object p0
.end method

.method public addTertiaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;
    .registers 4

    .line 2508
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2509
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->-$$Nest$maddTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-object p0
.end method

.method public addTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;
    .registers 3

    .line 2517
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2518
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->-$$Nest$maddTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-object p0
.end method

.method public addTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;
    .registers 3

    .line 2499
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2500
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->-$$Nest$maddTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-object p0
.end method

.method public clearTertiaryContents()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;
    .registers 2

    .line 2544
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2545
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->-$$Nest$mclearTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)V

    return-object p0
.end method

.method public clearVideoId()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;
    .registers 2

    .line 2590
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2591
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->-$$Nest$mclearVideoId(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)V

    return-object p0
.end method

.method public getTertiaryContents(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 2

    .line 2474
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->getTertiaryContents(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    move-result-object p0

    return-object p0
.end method

.method public getTertiaryContentsCount()I
    .registers 1

    .line 2468
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->getTertiaryContentsCount()I

    move-result p0

    return p0
.end method

.method public getTertiaryContentsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;",
            ">;"
        }
    .end annotation

    .line 2460
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    .line 2461
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->getTertiaryContentsList()Ljava/util/List;

    move-result-object p0

    .line 2460
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVideoId()Ljava/lang/String;
    .registers 1

    .line 2563
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->getVideoId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoIdBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 2572
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->getVideoIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public removeTertiaryContents(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;
    .registers 3

    .line 2552
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2553
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->-$$Nest$mremoveTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;I)V

    return-object p0
.end method

.method public setTertiaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;
    .registers 4

    .line 2490
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2491
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    .line 2492
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    .line 2491
    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->-$$Nest$msetTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-object p0
.end method

.method public setTertiaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;
    .registers 4

    .line 2481
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2482
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->-$$Nest$msetTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-object p0
.end method

.method public setVideoId(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;
    .registers 3

    .line 2581
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2582
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->-$$Nest$msetVideoId(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVideoIdBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;
    .registers 3

    .line 2601
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2602
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->-$$Nest$msetVideoIdBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
