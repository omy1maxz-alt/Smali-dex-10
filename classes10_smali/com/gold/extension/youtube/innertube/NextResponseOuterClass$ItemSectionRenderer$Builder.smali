.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRendererOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2963
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTertiaryContents(Ljava/lang/Iterable;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;",
            ">;)",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;"
        }
    .end annotation

    .line 3048
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3049
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->-$$Nest$maddAllTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTertiaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;
    .registers 4

    .line 3038
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3039
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    .line 3040
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    .line 3039
    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->-$$Nest$maddTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-object p0
.end method

.method public addTertiaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;
    .registers 4

    .line 3020
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3021
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->-$$Nest$maddTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-object p0
.end method

.method public addTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;
    .registers 3

    .line 3029
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3030
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->-$$Nest$maddTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-object p0
.end method

.method public addTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;
    .registers 3

    .line 3011
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3012
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->-$$Nest$maddTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-object p0
.end method

.method public clearSectionIdentifier()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;
    .registers 2

    .line 3102
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3103
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->-$$Nest$mclearSectionIdentifier(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)V

    return-object p0
.end method

.method public clearTertiaryContents()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;
    .registers 2

    .line 3056
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3057
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->-$$Nest$mclearTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)V

    return-object p0
.end method

.method public getSectionIdentifier()Ljava/lang/String;
    .registers 1

    .line 3075
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->getSectionIdentifier()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSectionIdentifierBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 3084
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->getSectionIdentifierBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getTertiaryContents(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
    .registers 2

    .line 2986
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->getTertiaryContents(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    move-result-object p0

    return-object p0
.end method

.method public getTertiaryContentsCount()I
    .registers 1

    .line 2980
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->getTertiaryContentsCount()I

    move-result p0

    return p0
.end method

.method public getTertiaryContentsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;",
            ">;"
        }
    .end annotation

    .line 2972
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    .line 2973
    invoke-virtual {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->getTertiaryContentsList()Ljava/util/List;

    move-result-object p0

    .line 2972
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeTertiaryContents(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;
    .registers 3

    .line 3064
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3065
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->-$$Nest$mremoveTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;I)V

    return-object p0
.end method

.method public setSectionIdentifier(Ljava/lang/String;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;
    .registers 3

    .line 3093
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3094
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->-$$Nest$msetSectionIdentifier(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSectionIdentifierBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;
    .registers 3

    .line 3113
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3114
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->-$$Nest$msetSectionIdentifierBytes(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTertiaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents$Builder;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;
    .registers 4

    .line 3002
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3003
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    .line 3004
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;

    .line 3003
    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->-$$Nest$msetTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-object p0
.end method

.method public setTertiaryContents(ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;
    .registers 4

    .line 2993
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2994
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0, p1, p2}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->-$$Nest$msetTertiaryContents(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;ILcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;)V

    return-object p0
.end method
