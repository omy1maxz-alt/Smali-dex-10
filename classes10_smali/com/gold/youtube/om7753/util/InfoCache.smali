.class public final Lcom/gold/youtube/om7753/util/InfoCache;
.super Ljava/lang/Object;
.source "InfoCache.java"


# static fields
.field private static final DEBUG:Z

.field private static final INSTANCE:Lcom/gold/youtube/om7753/util/InfoCache;

.field private static final LRU_CACHE:Landroidx/collection/LruCache;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Lcom/gold/youtube/om7753/App;->debug:Z

    sput-boolean v0, Lcom/gold/youtube/om7753/util/InfoCache;->DEBUG:Z

    new-instance v0, Lcom/gold/youtube/om7753/util/InfoCache;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/util/InfoCache;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/util/InfoCache;->INSTANCE:Lcom/gold/youtube/om7753/util/InfoCache;

    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lcom/gold/youtube/om7753/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/gold/youtube/om7753/util/InfoCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/util/InfoCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static getInfo(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/Info;
    .registers 5

    sget-object v0, Lcom/gold/youtube/om7753/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/util/InfoCache$CacheData;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return-object v2

    :cond_c
    invoke-static {v1}, Lcom/gold/youtube/om7753/util/InfoCache$CacheData;->access$000(Lcom/gold/youtube/om7753/util/InfoCache$CacheData;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v0, p0}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_16
    invoke-static {v1}, Lcom/gold/youtube/om7753/util/InfoCache$CacheData;->access$100(Lcom/gold/youtube/om7753/util/InfoCache$CacheData;)Lcom/gold/youtube/om7753/extractor/Info;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/util/InfoCache;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/util/InfoCache;->INSTANCE:Lcom/gold/youtube/om7753/util/InfoCache;

    return-object v0
.end method

.method private static keyOf(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeStaleCache()V
    .registers 3

    sget-object v0, Lcom/gold/youtube/om7753/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/youtube/om7753/util/InfoCache$CacheData;

    if-eqz v2, :cond_e

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/InfoCache$CacheData;->access$000(Lcom/gold/youtube/om7753/util/InfoCache$CacheData;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lcom/gold/youtube/om7753/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_34
    return-void
.end method


# virtual methods
.method public clearCache()V
    .registers 3

    sget-boolean v0, Lcom/gold/youtube/om7753/util/InfoCache;->DEBUG:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/InfoCache;->TAG:Ljava/lang/String;

    const-string v1, "clearCache() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-object v0, Lcom/gold/youtube/om7753/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    monitor-enter v0

    :try_start_e
    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getFromKey(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)Lcom/gold/youtube/om7753/extractor/Info;
    .registers 7

    sget-boolean v0, Lcom/gold/youtube/om7753/util/InfoCache;->DEBUG:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/InfoCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFromKey() called with: serviceId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], url = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    sget-object v0, Lcom/gold/youtube/om7753/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    monitor-enter v0

    :try_start_2a
    invoke-static {p1, p2, p3}, Lcom/gold/youtube/om7753/util/InfoCache;->keyOf(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/InfoCache;->getInfo(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/Info;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_34

    throw p1
.end method

.method public putInfo(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/Info;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)V
    .registers 10

    sget-boolean v0, Lcom/gold/youtube/om7753/util/InfoCache;->DEBUG:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/InfoCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putInfo() called with: info = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    invoke-virtual {p3}, Lcom/gold/youtube/om7753/extractor/Info;->getServiceId()I

    move-result v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/ServiceHelper;->getCacheExpirationMillis(I)J

    move-result-wide v0

    sget-object v2, Lcom/gold/youtube/om7753/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    monitor-enter v2

    :try_start_2a
    new-instance v3, Lcom/gold/youtube/om7753/util/InfoCache$CacheData;

    const/4 v4, 0x0

    invoke-direct {v3, p3, v0, v1, v4}, Lcom/gold/youtube/om7753/util/InfoCache$CacheData;-><init>(Lcom/gold/youtube/om7753/extractor/Info;JLcom/gold/youtube/om7753/util/InfoCache$1;)V

    invoke-static {p1, p2, p4}, Lcom/gold/youtube/om7753/util/InfoCache;->keyOf(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v3}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-void

    :catchall_39
    move-exception p1

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public removeInfo(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)V
    .registers 7

    sget-boolean v0, Lcom/gold/youtube/om7753/util/InfoCache;->DEBUG:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/InfoCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeInfo() called with: serviceId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], url = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    sget-object v0, Lcom/gold/youtube/om7753/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    monitor-enter v0

    :try_start_2a
    invoke-static {p1, p2, p3}, Lcom/gold/youtube/om7753/util/InfoCache;->keyOf(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_33

    throw p1
.end method

.method public trimCache()V
    .registers 3

    sget-boolean v0, Lcom/gold/youtube/om7753/util/InfoCache;->DEBUG:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/InfoCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "trimCache() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-object v0, Lcom/gold/youtube/om7753/util/InfoCache;->LRU_CACHE:Landroidx/collection/LruCache;

    monitor-enter v0

    :try_start_f
    invoke-static {}, Lcom/gold/youtube/om7753/util/InfoCache;->removeStaleCache()V

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->trimToSize(I)V

    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    throw v1
.end method
