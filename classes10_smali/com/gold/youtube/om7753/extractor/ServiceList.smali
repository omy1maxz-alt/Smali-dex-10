.class public final Lcom/gold/youtube/om7753/extractor/ServiceList;
.super Ljava/lang/Object;
.source "ServiceList.java"


# static fields
.field private static final SERVICES:Ljava/util/List;

.field public static final YouTube:Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeService;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeService;-><init>(I)V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/ServiceList;->YouTube:Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeService;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/ServiceList;->YouTube:Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeService;

    invoke-static {v0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/ServiceList;->SERVICES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static all()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/ServiceList;->SERVICES:Ljava/util/List;

    return-object v0
.end method
