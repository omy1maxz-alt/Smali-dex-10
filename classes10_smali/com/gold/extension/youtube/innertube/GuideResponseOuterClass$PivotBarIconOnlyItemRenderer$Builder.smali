.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRendererOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 4642
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIcon()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 2

    .line 4880
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4881
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$mclearIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V

    return-object p0
.end method

.method public clearNavigationType()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 2

    .line 4786
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4787
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$mclearNavigationType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V

    return-object p0
.end method

.method public clearPivotIdentifier()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 2

    .line 4679
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4680
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$mclearPivotIdentifier(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V

    return-object p0
.end method

.method public clearTargetId()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 2

    .line 4728
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4729
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$mclearTargetId(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V

    return-object p0
.end method

.method public clearTitle()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 2

    .line 4833
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4834
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$mclearTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;)V

    return-object p0
.end method

.method public getIcon()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 1

    .line 4850
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->getIcon()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationType()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType;
    .registers 1

    .line 4769
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->getNavigationType()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationTypeValue()I
    .registers 1

    .line 4750
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->getNavigationTypeValue()I

    move-result p0

    return p0
.end method

.method public getPivotIdentifier()Ljava/lang/String;
    .registers 1

    .line 4652
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->getPivotIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPivotIdentifierBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 4661
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->getPivotIdentifierBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getTargetId()Ljava/lang/String;
    .registers 1

    .line 4701
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->getTargetId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTargetIdBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 4710
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->getTargetIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;
    .registers 1

    .line 4803
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->getTitle()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    move-result-object p0

    return-object p0
.end method

.method public hasIcon()Z
    .registers 1

    .line 4843
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->hasIcon()Z

    move-result p0

    return p0
.end method

.method public hasTitle()Z
    .registers 1

    .line 4796
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->hasTitle()Z

    move-result p0

    return p0
.end method

.method public mergeIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 3

    .line 4873
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4874
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$mmergeIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V

    return-object p0
.end method

.method public mergeTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 3

    .line 4826
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4827
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$mmergeTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V

    return-object p0
.end method

.method public setIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 3

    .line 4865
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4866
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$msetIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V

    return-object p0
.end method

.method public setIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 3

    .line 4856
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4857
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$msetIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V

    return-object p0
.end method

.method public setNavigationType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 3

    .line 4777
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4778
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$msetNavigationType(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationType;)V

    return-object p0
.end method

.method public setNavigationTypeValue(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 3

    .line 4759
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4760
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$msetNavigationTypeValue(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;I)V

    return-object p0
.end method

.method public setPivotIdentifier(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 3

    .line 4670
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4671
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$msetPivotIdentifier(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPivotIdentifierBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 3

    .line 4690
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4691
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$msetPivotIdentifierBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTargetId(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 3

    .line 4719
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4720
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$msetTargetId(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTargetIdBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 3

    .line 4739
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4740
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$msetTargetIdBytes(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 3

    .line 4818
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4819
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$msetTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V

    return-object p0
.end method

.method public setTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer$Builder;
    .registers 3

    .line 4809
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4810
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;->-$$Nest$msetTitle(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$PivotBarIconOnlyItemRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Title;)V

    return-object p0
.end method
