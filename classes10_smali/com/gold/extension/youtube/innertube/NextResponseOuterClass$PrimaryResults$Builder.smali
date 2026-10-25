.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResultsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResultsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1061
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSecondaryResults()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;
    .registers 2

    .line 1107
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1108
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->-$$Nest$mclearSecondaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;)V

    return-object p0
.end method

.method public getSecondaryResults()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
    .registers 1

    .line 1077
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->getSecondaryResults()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    move-result-object p0

    return-object p0
.end method

.method public hasSecondaryResults()Z
    .registers 1

    .line 1070
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->hasSecondaryResults()Z

    move-result p0

    return p0
.end method

.method public mergeSecondaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;
    .registers 3

    .line 1100
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1101
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->-$$Nest$mmergeSecondaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;)V

    return-object p0
.end method

.method public setSecondaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;
    .registers 3

    .line 1092
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1093
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->-$$Nest$msetSecondaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;)V

    return-object p0
.end method

.method public setSecondaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;
    .registers 3

    .line 1083
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1084
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->-$$Nest$msetSecondaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;)V

    return-object p0
.end method
