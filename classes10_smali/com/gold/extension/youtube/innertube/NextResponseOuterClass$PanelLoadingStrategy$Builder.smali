.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 5075
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearInlineContent()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy$Builder;
    .registers 2

    .line 5121
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5122
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;->-$$Nest$mclearInlineContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;)V

    return-object p0
.end method

.method public getInlineContent()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
    .registers 1

    .line 5091
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;->getInlineContent()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    move-result-object p0

    return-object p0
.end method

.method public hasInlineContent()Z
    .registers 1

    .line 5084
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;->hasInlineContent()Z

    move-result p0

    return p0
.end method

.method public mergeInlineContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy$Builder;
    .registers 3

    .line 5114
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5115
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;->-$$Nest$mmergeInlineContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;)V

    return-object p0
.end method

.method public setInlineContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy$Builder;
    .registers 3

    .line 5106
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5107
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;->-$$Nest$msetInlineContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;)V

    return-object p0
.end method

.method public setInlineContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy$Builder;
    .registers 3

    .line 5097
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5098
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;->-$$Nest$msetInlineContent(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;)V

    return-object p0
.end method
