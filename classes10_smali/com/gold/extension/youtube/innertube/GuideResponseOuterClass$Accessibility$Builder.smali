.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 6369
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;
    .registers 2

    .line 6428
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6429
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->-$$Nest$mclearAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)V

    return-object p0
.end method

.method public clearData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;
    .registers 2

    .line 6379
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6380
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->-$$Nest$mclearData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)V

    return-object p0
.end method

.method public getAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;
    .registers 1

    .line 6397
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->getAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    move-result-object p0

    return-object p0
.end method

.method public getDataCase()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;
    .registers 1

    .line 6375
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->getDataCase()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public hasAccessibilityData()Z
    .registers 1

    .line 6390
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->hasAccessibilityData()Z

    move-result p0

    return p0
.end method

.method public mergeAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;
    .registers 3

    .line 6420
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6421
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->-$$Nest$mmergeAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)V

    return-object p0
.end method

.method public setAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;
    .registers 3

    .line 6412
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6413
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->-$$Nest$msetAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)V

    return-object p0
.end method

.method public setAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;
    .registers 3

    .line 6403
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6404
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;->-$$Nest$msetAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$AccessibilityData;)V

    return-object p0
.end method
