.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContentsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContentsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 474
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSingleColumnWatchNextResults()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents$Builder;
    .registers 2

    .line 520
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 521
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;->-$$Nest$mclearSingleColumnWatchNextResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;)V

    return-object p0
.end method

.method public getSingleColumnWatchNextResults()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
    .registers 1

    .line 490
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;->getSingleColumnWatchNextResults()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    move-result-object p0

    return-object p0
.end method

.method public hasSingleColumnWatchNextResults()Z
    .registers 1

    .line 483
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;->hasSingleColumnWatchNextResults()Z

    move-result p0

    return p0
.end method

.method public mergeSingleColumnWatchNextResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents$Builder;
    .registers 3

    .line 513
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 514
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;->-$$Nest$mmergeSingleColumnWatchNextResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;)V

    return-object p0
.end method

.method public setSingleColumnWatchNextResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents$Builder;
    .registers 3

    .line 505
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 506
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;->-$$Nest$msetSingleColumnWatchNextResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;)V

    return-object p0
.end method

.method public setSingleColumnWatchNextResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents$Builder;
    .registers 3

    .line 496
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 497
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;->-$$Nest$msetSingleColumnWatchNextResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;)V

    return-object p0
.end method
