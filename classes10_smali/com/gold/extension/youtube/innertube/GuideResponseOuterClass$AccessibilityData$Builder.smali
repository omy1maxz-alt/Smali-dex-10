.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 6677
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLabel()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;
    .registers 2

    .line 6714
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6715
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->-$$Nest$mclearLabel(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)V

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 1

    .line 6687
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->getLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 6696
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;
    .registers 3

    .line 6705
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6706
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->-$$Nest$msetLabel(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;
    .registers 3

    .line 6725
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6726
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;->-$$Nest$msetLabelBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
