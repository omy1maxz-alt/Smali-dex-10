.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2305
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearButtonRendererAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 2

    .line 2445
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2446
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$mclearButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V

    return-object p0
.end method

.method public clearIcon()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 2

    .line 2351
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2352
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$mclearIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V

    return-object p0
.end method

.method public clearNavigationEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 2

    .line 2398
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2399
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$mclearNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V

    return-object p0
.end method

.method public clearRendererAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 2

    .line 2492
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2493
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$mclearRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V

    return-object p0
.end method

.method public getButtonRendererAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;
    .registers 1

    .line 2415
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->getButtonRendererAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    move-result-object p0

    return-object p0
.end method

.method public getIcon()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 1

    .line 2321
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->getIcon()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 1

    .line 2368
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->getNavigationEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    move-result-object p0

    return-object p0
.end method

.method public getRendererAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;
    .registers 1

    .line 2462
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->getRendererAccessibilityData()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    move-result-object p0

    return-object p0
.end method

.method public hasButtonRendererAccessibilityData()Z
    .registers 1

    .line 2408
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->hasButtonRendererAccessibilityData()Z

    move-result p0

    return p0
.end method

.method public hasIcon()Z
    .registers 1

    .line 2314
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->hasIcon()Z

    move-result p0

    return p0
.end method

.method public hasNavigationEndpoint()Z
    .registers 1

    .line 2361
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->hasNavigationEndpoint()Z

    move-result p0

    return p0
.end method

.method public hasRendererAccessibilityData()Z
    .registers 1

    .line 2455
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->hasRendererAccessibilityData()Z

    move-result p0

    return p0
.end method

.method public mergeButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 3

    .line 2438
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2439
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$mmergeButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V

    return-object p0
.end method

.method public mergeIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 3

    .line 2344
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2345
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$mmergeIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V

    return-object p0
.end method

.method public mergeNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 3

    .line 2391
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2392
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$mmergeNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V

    return-object p0
.end method

.method public mergeRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 3

    .line 2485
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2486
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$mmergeRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;)V

    return-object p0
.end method

.method public setButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 3

    .line 2430
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2431
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$msetButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V

    return-object p0
.end method

.method public setButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 3

    .line 2421
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2422
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$msetButtonRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRendererAccessibilityData;)V

    return-object p0
.end method

.method public setIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 3

    .line 2336
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2337
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$msetIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V

    return-object p0
.end method

.method public setIcon(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 3

    .line 2327
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2328
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$msetIcon(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V

    return-object p0
.end method

.method public setNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 3

    .line 2383
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2384
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$msetNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V

    return-object p0
.end method

.method public setNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 3

    .line 2374
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2375
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$msetNavigationEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V

    return-object p0
.end method

.method public setRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 3

    .line 2477
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2478
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$msetRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;)V

    return-object p0
.end method

.method public setRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;
    .registers 3

    .line 2468
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2469
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->-$$Nest$msetRendererAccessibilityData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$RendererAccessibilityData;)V

    return-object p0
.end method
