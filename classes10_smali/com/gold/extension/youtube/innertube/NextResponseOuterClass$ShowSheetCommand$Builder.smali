.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommandOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 4782
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPanelLoadingStrategy()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;
    .registers 2

    .line 4828
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4829
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->-$$Nest$mclearPanelLoadingStrategy(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;)V

    return-object p0
.end method

.method public getPanelLoadingStrategy()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;
    .registers 1

    .line 4798
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->getPanelLoadingStrategy()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    move-result-object p0

    return-object p0
.end method

.method public hasPanelLoadingStrategy()Z
    .registers 1

    .line 4791
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->hasPanelLoadingStrategy()Z

    move-result p0

    return p0
.end method

.method public mergePanelLoadingStrategy(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;
    .registers 3

    .line 4821
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4822
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->-$$Nest$mmergePanelLoadingStrategy(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;)V

    return-object p0
.end method

.method public setPanelLoadingStrategy(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;
    .registers 3

    .line 4813
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4814
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->-$$Nest$msetPanelLoadingStrategy(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;)V

    return-object p0
.end method

.method public setPanelLoadingStrategy(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;
    .registers 3

    .line 4804
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4805
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->-$$Nest$msetPanelLoadingStrategy(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PanelLoadingStrategy;)V

    return-object p0
.end method
