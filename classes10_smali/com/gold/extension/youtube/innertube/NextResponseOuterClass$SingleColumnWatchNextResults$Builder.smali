.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResultsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResultsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 768
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPrimaryResults()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults$Builder;
    .registers 2

    .line 814
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 815
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->-$$Nest$mclearPrimaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;)V

    return-object p0
.end method

.method public getPrimaryResults()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
    .registers 1

    .line 784
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->getPrimaryResults()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    move-result-object p0

    return-object p0
.end method

.method public hasPrimaryResults()Z
    .registers 1

    .line 777
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->hasPrimaryResults()Z

    move-result p0

    return p0
.end method

.method public mergePrimaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults$Builder;
    .registers 3

    .line 807
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 808
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->-$$Nest$mmergePrimaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;)V

    return-object p0
.end method

.method public setPrimaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults$Builder;
    .registers 3

    .line 799
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 800
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->-$$Nest$msetPrimaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;)V

    return-object p0
.end method

.method public setPrimaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults$Builder;
    .registers 3

    .line 790
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 791
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;->-$$Nest$msetPrimaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SingleColumnWatchNextResults;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;)V

    return-object p0
.end method
