.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 3235
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLabel()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;
    .registers 2

    .line 3280
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3281
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->-$$Nest$mclearLabel(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 1

    .line 3253
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->getLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 3262
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public hasLabel()Z
    .registers 1

    .line 3245
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->hasLabel()Z

    move-result p0

    return p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;
    .registers 3

    .line 3271
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3272
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->-$$Nest$msetLabel(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;
    .registers 3

    .line 3291
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3292
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;->-$$Nest$msetLabelBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
