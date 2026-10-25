.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NavigationEndpoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpointOrBuilder;"
    }
.end annotation


# static fields
.field public static final BROWSEENDPOINT_FIELD_NUMBER:I = 0x2e6ea0a

.field public static final CREATIONENTRYENDPOINT_FIELD_NUMBER:I = 0x13595a41

.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field public static final REELWATCHENDPOINT_FIELD_NUMBER:I = 0x85241f1

.field public static final SEARCHENDPOINT_FIELD_NUMBER:I = 0x2e6ea5d


# instance fields
.field private bitField0_:I

.field private browseEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

.field private creationEntryEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;

.field private reelWatchEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

.field private searchEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;


# direct methods
.method public static bridge synthetic -$$Nest$mclearBrowseEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->clearBrowseEndpoint()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearCreationEntryEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->clearCreationEntryEndpoint()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearReelWatchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->clearReelWatchEndpoint()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearSearchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->clearSearchEndpoint()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeBrowseEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->mergeBrowseEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeCreationEntryEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->mergeCreationEntryEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeReelWatchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->mergeReelWatchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeSearchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->mergeSearchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBrowseEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->setBrowseEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetCreationEntryEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->setCreationEntryEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetReelWatchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->setReelWatchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSearchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->setSearchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 8051
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;-><init>()V

    .line 8054
    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    .line 8055
    const-class v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 7510
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearBrowseEndpoint()V
    .registers 2

    const/4 v0, 0x0

    .line 7557
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->browseEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    .line 7558
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    return-void
.end method

.method private clearCreationEntryEndpoint()V
    .registers 2

    const/4 v0, 0x0

    .line 7653
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->creationEntryEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;

    .line 7654
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    return-void
.end method

.method private clearReelWatchEndpoint()V
    .registers 2

    const/4 v0, 0x0

    .line 7605
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->reelWatchEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    .line 7606
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    return-void
.end method

.method private clearSearchEndpoint()V
    .registers 2

    const/4 v0, 0x0

    .line 7701
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->searchEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    .line 7702
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 1

    .line 8060
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    return-object v0
.end method

.method private mergeBrowseEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;)V
    .registers 4

    .line 7543
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7544
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->browseEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    if-eqz v0, :cond_22

    .line 7545
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 7546
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->browseEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    .line 7547
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->browseEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    goto :goto_24

    .line 7549
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->browseEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    .line 7551
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    return-void
.end method

.method private mergeCreationEntryEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;)V
    .registers 4

    .line 7639
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7640
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->creationEntryEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;

    if-eqz v0, :cond_22

    .line 7641
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 7642
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->creationEntryEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;

    .line 7643
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->creationEntryEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;

    goto :goto_24

    .line 7645
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->creationEntryEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;

    .line 7647
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    return-void
.end method

.method private mergeReelWatchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V
    .registers 4

    .line 7591
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7592
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->reelWatchEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    if-eqz v0, :cond_22

    .line 7593
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 7594
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->reelWatchEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    .line 7595
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->reelWatchEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    goto :goto_24

    .line 7597
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->reelWatchEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    .line 7599
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    return-void
.end method

.method private mergeSearchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;)V
    .registers 4

    .line 7687
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7688
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->searchEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    if-eqz v0, :cond_22

    .line 7689
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 7690
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->searchEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    .line 7691
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->searchEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    goto :goto_24

    .line 7693
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->searchEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    .line 7695
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 1

    .line 7782
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;
    .registers 2

    .line 7785
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7758
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7765
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7721
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7728
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7770
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7777
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7745
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7752
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7708
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7715
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7733
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7740
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;",
            ">;"
        }
    .end annotation

    .line 8066
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBrowseEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;)V
    .registers 2

    .line 7534
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7535
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->browseEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    .line 7536
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    return-void
.end method

.method private setCreationEntryEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;)V
    .registers 2

    .line 7630
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7631
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->creationEntryEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;

    .line 7632
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    return-void
.end method

.method private setReelWatchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;)V
    .registers 2

    .line 7582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7583
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->reelWatchEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    .line 7584
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    return-void
.end method

.method private setSearchEndpoint(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;)V
    .registers 2

    .line 7678
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7679
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->searchEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    .line 7680
    iget p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 7997
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_56

    .line 8044
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 8037
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 8022
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 8024
    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    monitor-enter p1

    .line 8025
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 8027
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8030
    sput-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 8032
    :cond_2a
    :goto_2a
    monitor-exit p1

    return-object p0

    :goto_2c
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_28

    throw p0

    :cond_2e
    return-object p0

    .line 8019
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    return-object p0

    .line 8005
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "browseEndpoint_"

    const-string p2, "searchEndpoint_"

    const-string p3, "reelWatchEndpoint_"

    const-string v0, "creationEntryEndpoint_"

    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 8012
    const-string p1, "\u0000\u0004\u0000\u0001\uea0a᜷敏髊\u0004\u0000\u0000\u0000\uea0a᜷ဉ\u0000\uea5d᜷ဉ\u0003\ue1f1䊒ဉ\u0001敏髊ဉ\u0002"

    .line 8016
    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8002
    :pswitch_49  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint$Builder;-><init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V

    return-object p0

    .line 7999
    :pswitch_4f  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;-><init>()V

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4f  #00000001
        :pswitch_49  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getBrowseEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;
    .registers 1

    .line 7527
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->browseEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$BrowseEndpoint;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getCreationEntryEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;
    .registers 1

    .line 7623
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->creationEntryEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$CreationEntryEndpoint;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getReelWatchEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;
    .registers 1

    .line 7575
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->reelWatchEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ReelWatchEndpoint;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getSearchEndpoint()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;
    .registers 1

    .line 7671
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->searchEndpoint_:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$SearchEndpoint;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasBrowseEndpoint()Z
    .registers 2

    .line 7520
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasCreationEntryEndpoint()Z
    .registers 1

    .line 7616
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasReelWatchEndpoint()Z
    .registers 1

    .line 7568
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasSearchEndpoint()Z
    .registers 1

    .line 7664
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$NavigationEndpoint;->bitField0_:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
