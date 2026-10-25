.class public Lcom/gold/extension/shared/patches/ForceOriginalAudioPatch;
.super Ljava/lang/Object;
.source "ForceOriginalAudioPatch.java"


# static fields
.field private static final DEFAULT_AUDIO_TRACKS_SUFFIX:Ljava/lang/String; = ".4"

.field private static volatile enabled:Z


# direct methods
.method public static synthetic $r8$lambda$7M-xeitfoikdQ9dsd5lUNMFJfqk(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using audio: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LcDDi23KOK_T024-wzbQUd_g1-c()Ljava/lang/String;
    .registers 1

    .line 67
    const-string v0, "isDefaultAudioStream failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$eCpwFZ9TXcxdNCkS-laJxCRfDTI(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "default: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%-5s"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " id: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "%-8s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 58
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " name:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u0RF88_XjRGsKlQXm4bjQbyknn8(Lcom/gold/extension/shared/settings/AppLanguage;)Ljava/lang/String;
    .registers 3

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting language override: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ignoreDefaultAudioStream(Z)Z
    .registers 2

    .line 36
    sget-boolean v0, Lcom/gold/extension/shared/patches/ForceOriginalAudioPatch;->enabled:Z

    if-eqz v0, :cond_5

    const/4 p0, 0x0

    :cond_5
    return p0
.end method

.method public static isDefaultAudioStream(ZLjava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 47
    :try_start_0
    sget-boolean v0, Lcom/gold/extension/shared/patches/ForceOriginalAudioPatch;->enabled:Z

    if-nez v0, :cond_5

    goto :goto_b

    .line 51
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return p0

    .line 57
    :cond_c
    new-instance v0, Lcom/gold/extension/shared/patches/ForceOriginalAudioPatch$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/gold/extension/shared/patches/ForceOriginalAudioPatch$$ExternalSyntheticLambda1;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 60
    const-string p2, ".4"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_27

    .line 62
    new-instance v0, Lcom/gold/extension/shared/patches/ForceOriginalAudioPatch$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/gold/extension/shared/patches/ForceOriginalAudioPatch$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    return p2

    :catch_25
    move-exception p1

    goto :goto_28

    :cond_27
    return p2

    .line 67
    :goto_28
    new-instance p2, Lcom/gold/extension/shared/patches/ForceOriginalAudioPatch$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/gold/extension/shared/patches/ForceOriginalAudioPatch$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p2, p1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return p0
.end method

.method public static setEnabled(ZLcom/gold/extension/shared/spoof/ClientType;)V
    .registers 2

    .line 16
    sput-boolean p0, Lcom/gold/extension/shared/patches/ForceOriginalAudioPatch;->enabled:Z

    if-eqz p0, :cond_19

    .line 18
    iget-boolean p0, p1, Lcom/gold/extension/shared/spoof/ClientType;->canLogin:Z

    if-nez p0, :cond_19

    iget-boolean p0, p1, Lcom/gold/extension/shared/spoof/ClientType;->supportsMultiAudioTracks:Z

    if-nez p0, :cond_19

    .line 26
    sget-object p0, Lcom/gold/extension/shared/settings/AppLanguage;->NB:Lcom/gold/extension/shared/settings/AppLanguage;

    .line 27
    new-instance p1, Lcom/gold/extension/shared/patches/ForceOriginalAudioPatch$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/patches/ForceOriginalAudioPatch$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/settings/AppLanguage;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 28
    invoke-static {p0}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->setLanguageOverride(Lcom/gold/extension/shared/settings/AppLanguage;)V

    :cond_19
    return-void
.end method
