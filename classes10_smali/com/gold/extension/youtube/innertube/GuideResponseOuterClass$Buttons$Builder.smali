.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1771
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearButtonRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;
    .registers 2

    .line 1830
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1831
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->-$$Nest$mclearButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V

    return-object p0
.end method

.method public clearData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;
    .registers 2

    .line 1781
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1782
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->-$$Nest$mclearData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V

    return-object p0
.end method

.method public clearTopbarButtonRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;
    .registers 2

    .line 1878
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1879
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->-$$Nest$mclearTopbarButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V

    return-object p0
.end method

.method public getButtonRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
    .registers 1

    .line 1799
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->getButtonRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    move-result-object p0

    return-object p0
.end method

.method public getDataCase()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;
    .registers 1

    .line 1777
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->getDataCase()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public getTopbarButtonRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;
    .registers 1

    .line 1847
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->getTopbarButtonRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;

    move-result-object p0

    return-object p0
.end method

.method public hasButtonRenderer()Z
    .registers 1

    .line 1792
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->hasButtonRenderer()Z

    move-result p0

    return p0
.end method

.method public hasTopbarButtonRenderer()Z
    .registers 1

    .line 1840
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->hasTopbarButtonRenderer()Z

    move-result p0

    return p0
.end method

.method public mergeButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;
    .registers 3

    .line 1822
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1823
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->-$$Nest$mmergeButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V

    return-object p0
.end method

.method public mergeTopbarButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;
    .registers 3

    .line 1870
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1871
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->-$$Nest$mmergeTopbarButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;)V

    return-object p0
.end method

.method public setButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;
    .registers 3

    .line 1814
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1815
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->-$$Nest$msetButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V

    return-object p0
.end method

.method public setButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;
    .registers 3

    .line 1805
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1806
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->-$$Nest$msetButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V

    return-object p0
.end method

.method public setTopbarButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;
    .registers 3

    .line 1862
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1863
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->-$$Nest$msetTopbarButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;)V

    return-object p0
.end method

.method public setTopbarButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;
    .registers 3

    .line 1853
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1854
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->-$$Nest$msetTopbarButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;)V

    return-object p0
.end method
