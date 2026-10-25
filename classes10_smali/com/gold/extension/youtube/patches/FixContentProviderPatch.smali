.class public Lcom/gold/extension/youtube/patches/FixContentProviderPatch;
.super Ljava/lang/Object;
.source "FixContentProviderPatch.java"


# direct methods
.method public static synthetic $r8$lambda$BkOpKoThueEIUHD1u8xt6Gc9bSs(Ljava/util/Map$Entry;)Z
    .registers 2

    .line 15
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 17
    new-instance v0, Lcom/gold/extension/youtube/patches/FixContentProviderPatch$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/FixContentProviderPatch$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map$Entry;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$TYIWJjbQ9waZKM4Z_SL_BG92sYk(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removing content provider key with null value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeNullMapEntries(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 14
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/gold/extension/youtube/patches/FixContentProviderPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/FixContentProviderPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method
