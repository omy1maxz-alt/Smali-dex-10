.class public final Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;
.super Ljava/lang/Object;
.source "VotOriginalVolumePatch.java"


# static fields
.field private static volatile currentMultiplier:F = 1.0f

.field private static final lastAudioTrackRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/media/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile lastBaseVolume:F = 1.0f


# direct methods
.method public static synthetic $r8$lambda$h0LDYQfKurbjz02RddlfWUJeJQQ()Ljava/lang/String;
    .registers 1

    .line 81
    const-string v0, "AudioTrack setVolume failed"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->lastAudioTrackRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyToActiveTrack()V
    .registers 3

    .line 76
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->lastAudioTrackRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    if-nez v0, :cond_b

    return-void

    .line 79
    :cond_b
    :try_start_b
    sget v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->lastBaseVolume:F

    sget v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->currentMultiplier:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->clamp01(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception v0

    .line 81
    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method private static clamp01(F)F
    .registers 3

    .line 26
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    cmpg-float v0, p0, v1

    if-gez v0, :cond_c

    goto :goto_13

    :cond_c
    const/high16 v0, 0x3f800000  # 1.0f

    .line 27
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_13
    :goto_13
    return v1
.end method

.method public static clearAudioMultiplier()V
    .registers 1

    const/high16 v0, 0x3f800000  # 1.0f

    .line 68
    invoke-static {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->setAudioMultiplier(F)V

    return-void
.end method

.method public static getAudioMultiplier(F)F
    .registers 2

    .line 37
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->clamp01(F)F

    move-result p0

    .line 38
    sput p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->lastBaseVolume:F

    .line 39
    sget v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->currentMultiplier:F

    mul-float/2addr p0, v0

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->clamp01(F)F

    move-result p0

    return p0
.end method

.method public static setAudioMultiplier(F)V
    .registers 2

    .line 58
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->clamp01(F)F

    move-result p0

    .line 59
    sget v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->currentMultiplier:F

    cmpl-float v0, p0, v0

    if-nez v0, :cond_b

    return-void

    .line 60
    :cond_b
    sput p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->currentMultiplier:F

    .line 61
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->applyToActiveTrack()V

    return-void
.end method

.method public static setAudioTrack(Landroid/media/AudioTrack;)V
    .registers 2

    if-eqz p0, :cond_7

    .line 50
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->lastAudioTrackRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
