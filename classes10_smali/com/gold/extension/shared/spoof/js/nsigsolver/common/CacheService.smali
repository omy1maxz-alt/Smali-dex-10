.class public Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;
.super Ljava/lang/Object;
.source "CacheService.java"


# static fields
.field private static final INSTANCE:Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;

.field private static final KEY_DELIM:Ljava/lang/String; = "%KEY%"

.field private static final PREF_NAME:Ljava/lang/String; = "yt_cache_service"

.field private static final prefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->prefs:Ljava/util/Map;

    .line 15
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->INSTANCE:Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCodeKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%KEY%code"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;
    .registers 1

    .line 20
    sget-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->INSTANCE:Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;

    return-object v0
.end method

.method private getPrefsName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheError;
        }
    .end annotation

    .line 76
    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_f

    .line 79
    const-string p0, "yt_cache_service%KEY%"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :cond_f
    new-instance p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheError;

    const-string v0, "Slashes aren\'t allowed inside the pref name: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getSharedPrefs(Ljava/lang/String;)Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;
    .registers 4

    .line 51
    sget-object p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->prefs:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    .line 52
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_15

    return-object v0

    .line 58
    :cond_15
    new-instance v0, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    invoke-direct {v0, p1}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getVariantKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%KEY%variant"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getVersionKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%KEY%version"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheError;
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->getPrefsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->getSharedPrefs(Ljava/lang/String;)Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CachedData;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheError;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->getPrefsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->getSharedPrefs(Ljava/lang/String;)Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    move-result-object p1

    .line 31
    invoke-direct {p0, p2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->getCodeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-direct {p0, p2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->getVersionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-direct {p0, p2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->getVariantKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 36
    new-instance p1, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CachedData;

    invoke-direct {p1, v0, v2, p0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CachedData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CachedData;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheError;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->getPrefsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->getSharedPrefs(Ljava/lang/String;)Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;

    move-result-object p1

    .line 45
    invoke-direct {p0, p2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->getCodeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CachedData;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->getVersionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CachedData;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->getVariantKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CachedData;->getVariant()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/gold/extension/shared/settings/preference/SharedPrefCategory;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
