.class final Lcom/gold/youtube/om7753/util/InfoCache$CacheData;
.super Ljava/lang/Object;
.source "InfoCache.java"


# instance fields
.field private final expireTimestamp:J

.field private final info:Lcom/gold/youtube/om7753/extractor/Info;


# direct methods
.method private constructor <init>(Lcom/gold/youtube/om7753/extractor/Info;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/gold/youtube/om7753/util/InfoCache$CacheData;->expireTimestamp:J

    iput-object p1, p0, Lcom/gold/youtube/om7753/util/InfoCache$CacheData;->info:Lcom/gold/youtube/om7753/extractor/Info;

    return-void
.end method

.method synthetic constructor <init>(Lcom/gold/youtube/om7753/extractor/Info;JLcom/gold/youtube/om7753/util/InfoCache$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/gold/youtube/om7753/util/InfoCache$CacheData;-><init>(Lcom/gold/youtube/om7753/extractor/Info;J)V

    return-void
.end method

.method static synthetic access$000(Lcom/gold/youtube/om7753/util/InfoCache$CacheData;)Z
    .registers 1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/util/InfoCache$CacheData;->isExpired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/gold/youtube/om7753/util/InfoCache$CacheData;)Lcom/gold/youtube/om7753/extractor/Info;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/util/InfoCache$CacheData;->info:Lcom/gold/youtube/om7753/extractor/Info;

    return-object p0
.end method

.method private isExpired()Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/gold/youtube/om7753/util/InfoCache$CacheData;->expireTimestamp:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
