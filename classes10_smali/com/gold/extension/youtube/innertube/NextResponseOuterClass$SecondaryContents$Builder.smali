.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContentsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContentsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1932
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearData()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
    .registers 2

    .line 1942
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1943
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->-$$Nest$mclearData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V

    return-object p0
.end method

.method public clearItemSectionRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
    .registers 2

    .line 2039
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2040
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->-$$Nest$mclearItemSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V

    return-object p0
.end method

.method public clearShelfRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
    .registers 2

    .line 2087
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2088
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->-$$Nest$mclearShelfRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V

    return-object p0
.end method

.method public clearSlimVideoMetadataSectionRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
    .registers 2

    .line 1991
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1992
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->-$$Nest$mclearSlimVideoMetadataSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V

    return-object p0
.end method

.method public getDataCase()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;
    .registers 1

    .line 1938
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->getDataCase()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public getItemSectionRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
    .registers 1

    .line 2008
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->getItemSectionRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    move-result-object p0

    return-object p0
.end method

.method public getShelfRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
    .registers 1

    .line 2056
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->getShelfRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    move-result-object p0

    return-object p0
.end method

.method public getSlimVideoMetadataSectionRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
    .registers 1

    .line 1960
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->getSlimVideoMetadataSectionRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    move-result-object p0

    return-object p0
.end method

.method public hasItemSectionRenderer()Z
    .registers 1

    .line 2001
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->hasItemSectionRenderer()Z

    move-result p0

    return p0
.end method

.method public hasShelfRenderer()Z
    .registers 1

    .line 2049
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->hasShelfRenderer()Z

    move-result p0

    return p0
.end method

.method public hasSlimVideoMetadataSectionRenderer()Z
    .registers 1

    .line 1953
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->hasSlimVideoMetadataSectionRenderer()Z

    move-result p0

    return p0
.end method

.method public mergeItemSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
    .registers 3

    .line 2031
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2032
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->-$$Nest$mmergeItemSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)V

    return-object p0
.end method

.method public mergeShelfRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
    .registers 3

    .line 2079
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2080
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->-$$Nest$mmergeShelfRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;)V

    return-object p0
.end method

.method public mergeSlimVideoMetadataSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
    .registers 3

    .line 1983
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1984
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->-$$Nest$mmergeSlimVideoMetadataSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)V

    return-object p0
.end method

.method public setItemSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
    .registers 3

    .line 2023
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2024
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->-$$Nest$msetItemSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)V

    return-object p0
.end method

.method public setItemSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
    .registers 3

    .line 2014
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2015
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->-$$Nest$msetItemSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)V

    return-object p0
.end method

.method public setShelfRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
    .registers 3

    .line 2071
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2072
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->-$$Nest$msetShelfRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;)V

    return-object p0
.end method

.method public setShelfRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
    .registers 3

    .line 2062
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2063
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->-$$Nest$msetShelfRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;)V

    return-object p0
.end method

.method public setSlimVideoMetadataSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
    .registers 3

    .line 1975
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1976
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->-$$Nest$msetSlimVideoMetadataSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)V

    return-object p0
.end method

.method public setSlimVideoMetadataSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
    .registers 3

    .line 1966
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1967
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->-$$Nest$msetSlimVideoMetadataSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)V

    return-object p0
.end method
