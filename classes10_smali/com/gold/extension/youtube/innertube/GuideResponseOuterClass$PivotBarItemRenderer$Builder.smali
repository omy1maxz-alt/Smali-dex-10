.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRendererOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 5490
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccessibility()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 2

    .line 5632
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5633
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$mclearAccessibility(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V

    return-object p0
.end method

.method public clearIcon()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 2

    .line 5726
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5727
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$mclearIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V

    return-object p0
.end method

.method public clearNavigationEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 2

    .line 5585
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5586
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$mclearNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V

    return-object p0
.end method

.method public clearPivotIdentifier()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 2

    .line 5527
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5528
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$mclearPivotIdentifier(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V

    return-object p0
.end method

.method public clearPresentationStyle()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 2

    .line 5773
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5774
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$mclearPresentationStyle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V

    return-object p0
.end method

.method public clearTargetId()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 2

    .line 5811
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5812
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$mclearTargetId(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V

    return-object p0
.end method

.method public clearTitle()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 2

    .line 5679
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5680
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$mclearTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;)V

    return-object p0
.end method

.method public getAccessibility()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;
    .registers 1

    .line 5602
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->getAccessibility()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    move-result-object p0

    return-object p0
.end method

.method public getIcon()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 1

    .line 5696
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->getIcon()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 1

    .line 5555
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->getNavigationEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    move-result-object p0

    return-object p0
.end method

.method public getPivotIdentifier()Ljava/lang/String;
    .registers 1

    .line 5500
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->getPivotIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPivotIdentifierBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 5509
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->getPivotIdentifierBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getPresentationStyle()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;
    .registers 1

    .line 5743
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->getPresentationStyle()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

    move-result-object p0

    return-object p0
.end method

.method public getTargetId()Ljava/lang/String;
    .registers 1

    .line 5784
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->getTargetId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTargetIdBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 5793
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->getTargetIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 1

    .line 5649
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->getTitle()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    move-result-object p0

    return-object p0
.end method

.method public hasAccessibility()Z
    .registers 1

    .line 5595
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->hasAccessibility()Z

    move-result p0

    return p0
.end method

.method public hasIcon()Z
    .registers 1

    .line 5689
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->hasIcon()Z

    move-result p0

    return p0
.end method

.method public hasNavigationEndpoint()Z
    .registers 1

    .line 5548
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->hasNavigationEndpoint()Z

    move-result p0

    return p0
.end method

.method public hasPresentationStyle()Z
    .registers 1

    .line 5736
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->hasPresentationStyle()Z

    move-result p0

    return p0
.end method

.method public hasTitle()Z
    .registers 1

    .line 5642
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->hasTitle()Z

    move-result p0

    return p0
.end method

.method public mergeAccessibility(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5625
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5626
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$mmergeAccessibility(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)V

    return-object p0
.end method

.method public mergeIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5719
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5720
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$mmergeIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V

    return-object p0
.end method

.method public mergeNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5578
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5579
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$mmergeNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V

    return-object p0
.end method

.method public mergePresentationStyle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5766
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5767
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$mmergePresentationStyle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;)V

    return-object p0
.end method

.method public mergeTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5672
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5673
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$mmergeTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V

    return-object p0
.end method

.method public setAccessibility(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5617
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5618
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$msetAccessibility(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)V

    return-object p0
.end method

.method public setAccessibility(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5608
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5609
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$msetAccessibility(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Accessibility;)V

    return-object p0
.end method

.method public setIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5711
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5712
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$msetIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V

    return-object p0
.end method

.method public setIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5702
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5703
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$msetIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V

    return-object p0
.end method

.method public setNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5570
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5571
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$msetNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V

    return-object p0
.end method

.method public setNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5561
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5562
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$msetNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V

    return-object p0
.end method

.method public setPivotIdentifier(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5518
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5519
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$msetPivotIdentifier(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPivotIdentifierBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5538
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5539
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$msetPivotIdentifierBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPresentationStyle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5758
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5759
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$msetPresentationStyle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;)V

    return-object p0
.end method

.method public setPresentationStyle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5749
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5750
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$msetPresentationStyle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PresentationStyle;)V

    return-object p0
.end method

.method public setTargetId(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5802
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5803
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$msetTargetId(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTargetIdBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5822
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5823
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$msetTargetIdBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5664
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5665
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$msetTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V

    return-object p0
.end method

.method public setTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer$Builder;
    .registers 3

    .line 5655
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5656
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;->-$$Nest$msetTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V

    return-object p0
.end method
