.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpointOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 7798
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBrowseEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 2

    .line 7844
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7845
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$mclearBrowseEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V

    return-object p0
.end method

.method public clearCreationEntryEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 2

    .line 7938
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7939
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$mclearCreationEntryEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V

    return-object p0
.end method

.method public clearReelWatchEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 2

    .line 7891
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7892
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$mclearReelWatchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V

    return-object p0
.end method

.method public clearSearchEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 2

    .line 7985
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7986
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$mclearSearchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V

    return-object p0
.end method

.method public getBrowseEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;
    .registers 1

    .line 7814
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->getBrowseEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    move-result-object p0

    return-object p0
.end method

.method public getCreationEntryEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;
    .registers 1

    .line 7908
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->getCreationEntryEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;

    move-result-object p0

    return-object p0
.end method

.method public getReelWatchEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
    .registers 1

    .line 7861
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->getReelWatchEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    move-result-object p0

    return-object p0
.end method

.method public getSearchEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
    .registers 1

    .line 7955
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->getSearchEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    move-result-object p0

    return-object p0
.end method

.method public hasBrowseEndpoint()Z
    .registers 1

    .line 7807
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->hasBrowseEndpoint()Z

    move-result p0

    return p0
.end method

.method public hasCreationEntryEndpoint()Z
    .registers 1

    .line 7901
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->hasCreationEntryEndpoint()Z

    move-result p0

    return p0
.end method

.method public hasReelWatchEndpoint()Z
    .registers 1

    .line 7854
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->hasReelWatchEndpoint()Z

    move-result p0

    return p0
.end method

.method public hasSearchEndpoint()Z
    .registers 1

    .line 7948
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->hasSearchEndpoint()Z

    move-result p0

    return p0
.end method

.method public mergeBrowseEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 3

    .line 7837
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7838
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$mmergeBrowseEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;)V

    return-object p0
.end method

.method public mergeCreationEntryEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 3

    .line 7931
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7932
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$mmergeCreationEntryEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;)V

    return-object p0
.end method

.method public mergeReelWatchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 3

    .line 7884
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7885
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$mmergeReelWatchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V

    return-object p0
.end method

.method public mergeSearchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 3

    .line 7978
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7979
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$mmergeSearchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;)V

    return-object p0
.end method

.method public setBrowseEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 3

    .line 7829
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7830
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$msetBrowseEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;)V

    return-object p0
.end method

.method public setBrowseEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 3

    .line 7820
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7821
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$msetBrowseEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;)V

    return-object p0
.end method

.method public setCreationEntryEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 3

    .line 7923
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7924
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$msetCreationEntryEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;)V

    return-object p0
.end method

.method public setCreationEntryEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 3

    .line 7914
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7915
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$msetCreationEntryEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;)V

    return-object p0
.end method

.method public setReelWatchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 3

    .line 7876
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7877
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$msetReelWatchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V

    return-object p0
.end method

.method public setReelWatchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 3

    .line 7867
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7868
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$msetReelWatchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V

    return-object p0
.end method

.method public setSearchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint$Builder;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 3

    .line 7970
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7971
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$msetSearchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;)V

    return-object p0
.end method

.method public setSearchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 3

    .line 7961
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7962
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->-$$Nest$msetSearchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;)V

    return-object p0
.end method
