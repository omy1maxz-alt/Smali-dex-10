.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRendererOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 5662
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPanelHeader()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;
    .registers 2

    .line 5708
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5709
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->-$$Nest$mclearPanelHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;)V

    return-object p0
.end method

.method public getPanelHeader()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;
    .registers 1

    .line 5678
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->getPanelHeader()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;

    move-result-object p0

    return-object p0
.end method

.method public hasPanelHeader()Z
    .registers 1

    .line 5671
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->hasPanelHeader()Z

    move-result p0

    return p0
.end method

.method public mergePanelHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;
    .registers 3

    .line 5701
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5702
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->-$$Nest$mmergePanelHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;)V

    return-object p0
.end method

.method public setPanelHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;
    .registers 3

    .line 5693
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5694
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->-$$Nest$msetPanelHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;)V

    return-object p0
.end method

.method public setPanelHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer$Builder;
    .registers 3

    .line 5684
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5685
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;->-$$Nest$msetPanelHeader(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelContentRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelHeader;)V

    return-object p0
.end method
