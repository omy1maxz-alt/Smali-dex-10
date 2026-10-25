.class public final Lcom/gold/youtube/om7753/util/ServiceHelper;
.super Ljava/lang/Object;
.source "ServiceHelper.java"


# static fields
.field private static final DEFAULT_FALLBACK_SERVICE:Lcom/gold/youtube/om7753/extractor/StreamingService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/ServiceList;->YouTube:Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeService;

    sput-object v0, Lcom/gold/youtube/om7753/util/ServiceHelper;->DEFAULT_FALLBACK_SERVICE:Lcom/gold/youtube/om7753/extractor/StreamingService;

    return-void
.end method

.method public static getCacheExpirationMillis(I)J
    .registers 4

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static initService(Landroid/content/Context;I)V
    .registers 4

    return-void
.end method

.method public static initServices(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/ServiceList;->all()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/StreamingService;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getServiceId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/gold/youtube/om7753/util/ServiceHelper;->initService(Landroid/content/Context;I)V

    goto :goto_8

    :cond_1c
    return-void
.end method
