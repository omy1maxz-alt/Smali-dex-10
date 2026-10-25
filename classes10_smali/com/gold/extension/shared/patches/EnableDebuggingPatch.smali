.class public final Lcom/gold/extension/shared/patches/EnableDebuggingPatch;
.super Ljava/lang/Object;
.source "EnableDebuggingPatch.java"


# static fields
.field private static final DISABLED_FEATURE_FLAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_FEATURE_FLAGS:Z

.field private static final featureFlags:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2VxYD-s-UDcOqXN85N1BBJS2WBA(J)Ljava/lang/String;
    .registers 4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "boolean feature is enabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LKu9rP7Vm35OBK9u8ueYApoGNp0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid flag ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XDLAlcLFys2bes6-UMT51Kutq74(JJJ)Ljava/lang/String;
    .registers 8

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "   long feature is enabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " value: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 p0, 0x0

    cmp-long p0, p4, p0

    if-nez p0, :cond_1b

    .line 87
    const-string p0, ""

    goto :goto_29

    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, " default: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dd9Shw6YxmUKKMh_SK14BzChbVw(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " string feature is enabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " value: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1b

    const-string p0, ""

    goto :goto_21

    :cond_1b
    const-string p0, " default: "

    invoke-virtual {p0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jr2d1oq5v_WwFrYenq8J7jiTNZA(JDD)Ljava/lang/String;
    .registers 8

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " double feature is enabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " value: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-wide/16 p0, 0x0

    cmpl-double p0, p4, p0

    if-nez p0, :cond_1b

    .line 70
    const-string p0, ""

    goto :goto_29

    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, " default: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 23
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->LOG_FEATURE_FLAGS:Z

    if-eqz v0, :cond_19

    .line 26
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v2, 0x3f000000  # 0.5f

    const/4 v3, 0x1

    const/16 v4, 0x320

    invoke-direct {v1, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 27
    :goto_1a
    sput-object v1, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->featureFlags:Ljava/util/concurrent/ConcurrentMap;

    .line 29
    sget-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DISABLED_FEATURE_FLAGS:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->parseFlags(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->DISABLED_FEATURE_FLAGS:Ljava/util/Set;

    if-eqz v0, :cond_5d

    .line 33
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Disabled feature flags:\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 36
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 38
    :cond_55
    new-instance v1, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda3;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_5d
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllLoggedFlags()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->featureFlags:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_e

    .line 117
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 120
    :cond_e
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static isBooleanFeatureFlagEnabled(ZJ)Z
    .registers 6

    .line 46
    sget-boolean v0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->LOG_FEATURE_FLAGS:Z

    if-eqz v0, :cond_26

    if-eqz p0, :cond_26

    .line 47
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->DISABLED_FEATURE_FLAGS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 p0, 0x0

    return p0

    .line 51
    :cond_14
    sget-object v1, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->featureFlags:Ljava/util/concurrent/ConcurrentMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_26

    .line 52
    new-instance v0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_26
    return p0
.end method

.method public static isDoubleFeatureFlagEnabled(DJD)D
    .registers 14

    .line 63
    sget-boolean v0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->LOG_FEATURE_FLAGS:Z

    if-eqz v0, :cond_2f

    cmpl-double v0, p4, p0

    if-eqz v0, :cond_2f

    .line 64
    sget-object v0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->DISABLED_FEATURE_FLAGS:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-wide p4

    .line 67
    :cond_15
    sget-object v0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->featureFlags:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 69
    new-instance v1, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda6;

    move-wide v4, p0

    move-wide v2, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda6;-><init>(JDD)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-wide v4

    :cond_2f
    move-wide v4, p0

    return-wide v4
.end method

.method public static isLongFeatureFlagEnabled(JJJ)J
    .registers 14

    .line 81
    sget-boolean v0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->LOG_FEATURE_FLAGS:Z

    if-eqz v0, :cond_2f

    cmp-long v0, p4, p0

    if-eqz v0, :cond_2f

    .line 82
    sget-object v0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->DISABLED_FEATURE_FLAGS:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-wide p4

    .line 85
    :cond_15
    sget-object v0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->featureFlags:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 86
    new-instance v1, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda2;

    move-wide v4, p0

    move-wide v2, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda2;-><init>(JJJ)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-wide v4

    :cond_2f
    move-wide v4, p0

    return-wide v4
.end method

.method public static isStringFeatureFlagEnabled(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 98
    sget-boolean v0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->LOG_FEATURE_FLAGS:Z

    if-eqz v0, :cond_2d

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 99
    sget-object v0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->DISABLED_FEATURE_FLAGS:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-object p3

    .line 102
    :cond_17
    sget-object v0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->featureFlags:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 103
    new-instance v0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda4;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_2d
    return-object p0
.end method

.method public static parseFlags(Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 130
    invoke-static {p0}, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 131
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_39

    aget-object v3, p0, v2

    .line 132
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_36

    .line 135
    :cond_22
    :try_start_22
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_2d} :catch_2e

    goto :goto_36

    .line 137
    :catch_2e
    new-instance v4, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda5;

    invoke-direct {v4, v3}, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_39
    return-object v0
.end method
