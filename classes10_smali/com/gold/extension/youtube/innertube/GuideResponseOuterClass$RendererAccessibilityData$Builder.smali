.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2926
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearButtonRendererAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;
    .registers 2

    .line 2972
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2973
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->-$$Nest$mclearButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;)V

    return-object p0
.end method

.method public getButtonRendererAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 1

    .line 2942
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->getButtonRendererAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    move-result-object p0

    return-object p0
.end method

.method public hasButtonRendererAccessibilityData()Z
    .registers 1

    .line 2935
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->hasButtonRendererAccessibilityData()Z

    move-result p0

    return p0
.end method

.method public mergeButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;
    .registers 3

    .line 2965
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2966
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->-$$Nest$mmergeButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V

    return-object p0
.end method

.method public setButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;
    .registers 3

    .line 2957
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2958
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->-$$Nest$msetButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V

    return-object p0
.end method

.method public setButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;
    .registers 3

    .line 2948
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2949
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;->-$$Nest$msetButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V

    return-object p0
.end method
