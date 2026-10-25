.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 5368
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPanelContentRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent$Builder;
    .registers 2

    .line 5414
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5415
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->-$$Nest$mclearPanelContentRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;)V

    return-object p0
.end method

.method public getPanelContentRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
    .registers 1

    .line 5384
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->getPanelContentRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    move-result-object p0

    return-object p0
.end method

.method public hasPanelContentRenderer()Z
    .registers 1

    .line 5377
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->hasPanelContentRenderer()Z

    move-result p0

    return p0
.end method

.method public mergePanelContentRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent$Builder;
    .registers 3

    .line 5407
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5408
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->-$$Nest$mmergePanelContentRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;)V

    return-object p0
.end method

.method public setPanelContentRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent$Builder;
    .registers 3

    .line 5399
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5400
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->-$$Nest$msetPanelContentRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;)V

    return-object p0
.end method

.method public setPanelContentRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent$Builder;
    .registers 3

    .line 5390
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5391
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;->-$$Nest$msetPanelContentRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$InlineContent;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;)V

    return-object p0
.end method
