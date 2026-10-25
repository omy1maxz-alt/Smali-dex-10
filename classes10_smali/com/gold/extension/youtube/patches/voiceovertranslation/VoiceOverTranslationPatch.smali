.class public Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;
.super Ljava/lang/Object;
.source "VoiceOverTranslationPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$OpenRouterServiceAvailability;,
        Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$MyMemoryServiceAvailability;
    }
.end annotation


# static fields
.field private static final MIN_SPEECH_RATE:F = 1.0f

.field private static final SEEK_INTO_THRESHOLD_MS:J = 0x3e8L

.field private static final SEEK_JUMP_THRESHOLD_MS:J = 0xb54L

.field private static final TEST_PREFETCH_WAIT:J = 0x1f4L

.field private static final TEST_SEGMENT_INDEX:I = -0x1

.field private static final TEST_VIDEO_ID:Ljava/lang/String; = "test"

.field public static final TTS_ENGINE_SYSTEM:Ljava/lang/String; = "system"

.field private static final VOT_ID_PREFIX:Ljava/lang/String; = "vot_"

.field public static final VOT_IMPORT_EXPORT_CALLBACK:Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;

.field private static final VOT_TEST_ID_PREFIX:Ljava/lang/String; = "vot_test_"

.field private static currentPreloadId:J

.field private static currentTestId:J

.field private static currentTtsBaseRate:F

.field private static currentVideoId:Ljava/lang/String;

.field private static volatile httpErrorDialogShownThisVideo:Z

.field private static isLoading:Z

.field private static isTestSpeaking:Z

.field private static lastAppliedPlaybackSpeed:F

.field private static volatile lastSpokenIndex:I

.field private static lastTestVoiceId:Ljava/lang/String;

.field static volatile lastVideoTimeMs:J

.field private static onStateChangeCallback:Ljava/lang/Runnable;

.field private static scheduledCheckForSegmentStartMs:J

.field private static segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;"
        }
    .end annotation
.end field

.field private static sessionEnabled:Z

.field private static tts:Landroid/speech/tts/TextToSpeech;

.field private static ttsEndVideoTimeMs:J

.field private static final ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

.field private static ttsReady:Z

.field static volatile videoPositionHint:J

.field private static wasExplicitSeek:Z


# direct methods
.method public static synthetic $r8$lambda$-mm7PXiKfDEUuD5vqX5_5yuL-cA(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "testSpeak: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0IrbMxeBUnP2dpIkgcx4mKvK2RM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 509
    sput-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->isLoading:Z

    .line 511
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    .line 512
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 513
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveTargetLang()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->VOT_TRANSLATION_SERVICE:Lcom/gold/extension/shared/settings/StringSetting;

    .line 514
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    .line 515
    :cond_35
    sget-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->loadTranscript(Ljava/lang/String;)V

    :cond_3a
    return-void
.end method

.method public static synthetic $r8$lambda$0mH7JdpSHHDDegG9tGzDJk7zcpc()Ljava/lang/String;
    .registers 1

    .line 634
    const-string v0, "Native TTS not ready, skipping segment"

    return-object v0
.end method

.method public static synthetic $r8$lambda$1W-ru6GqCgBhb9NcKGBs5VW3nQs()V
    .registers 2

    .line 86
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_HIDE_EXPORT_WARNING:Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->save(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3XtVpHUOvI1Xef-LgCsIuwYc-rI()Ljava/lang/String;
    .registers 1

    .line 526
    const-string v0, "ensureTts creating tts"

    return-object v0
.end method

.method public static synthetic $r8$lambda$3fPZmaemOdvyVItowIja8vCgd-E(Ljava/util/List;JLjava/lang/String;)V
    .registers 11

    .line 840
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->getTestString()Ljava/lang/String;

    move-result-object v4

    .line 841
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    .line 842
    sget-wide v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentPreloadId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_24

    .line 843
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda28;

    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda28;-><init>(J)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    :cond_24
    const/4 v0, -0x1

    .line 847
    iget-object v1, v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->id:Ljava/lang/String;

    const-string v2, "test"

    invoke-static {v2, v0, v1, p3, v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->get(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_30

    goto :goto_8

    .line 851
    :cond_30
    iget-object v0, v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->id:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->getTestSampleFromDisk(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_42

    const/4 v1, -0x1

    .line 853
    iget-object v2, v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->id:Ljava/lang/String;

    const-string v0, "test"

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->put(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_8

    :cond_42
    move-object v3, p3

    .line 858
    :try_start_43
    new-instance p3, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda29;

    invoke-direct {p3, v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda29;-><init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;)V

    invoke-static {p3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 859
    sget-object p3, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    iget-object v0, v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->id:Ljava/lang/String;

    invoke-virtual {p3, v4, v0, v3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->prefetch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 860
    array-length p3, v5

    if-lez p3, :cond_67

    .line 861
    const-string v0, "test"

    iget-object v2, v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->id:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static/range {v0 .. v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->put(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 862
    iget-object p3, v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->id:Ljava/lang/String;

    invoke-static {p3, v3, v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->putTestSampleToDisk(Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_67

    :catch_64
    move-exception v0

    move-object p0, v0

    goto :goto_6e

    :cond_67
    :goto_67
    const-wide/16 v0, 0x1f4

    .line 864
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_6c} :catch_64

    move-object p3, v3

    goto :goto_8

    .line 867
    :goto_6e
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda30;

    invoke-direct {p1, v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda30;-><init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;)V

    invoke-static {p1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :cond_76
    return-void
.end method

.method public static synthetic $r8$lambda$4-JIelPK0JIu9I2T5NmtW1YHskQ(JJ)Ljava/lang/String;
    .registers 6

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Explicit seek resume. timeIntoSegment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms, startTimeMs: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5TBo89bsXe1Fi4J4eY2mFa8DtDE(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    .line 472
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 473
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4c

    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveTargetLang()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 477
    sget p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    if-ltz p0, :cond_4a

    sget p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    sget-object p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    .line 478
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_4a

    sget p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    .line 479
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_4a

    sget-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    sget p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    sget p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    .line 480
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-object p1, p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    .line 481
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->stopTts()V

    .line 483
    :cond_4a
    sput-object p2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    :cond_4c
    return-void
.end method

.method public static synthetic $r8$lambda$7AbCSH_8hU52xVNhMOHFGL4pFzw(Lcom/gold/extension/youtube/shared/VideoState;)Ljava/lang/String;
    .registers 3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pausing Edge TTS for video state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9pB7hdJW5qpNgIiNLQEmsk7Pd0Q(J)Ljava/lang/String;
    .registers 4

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scheduling next segment check in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AT2uGdNPCp7GhJnC9itnkr4qSxM(I)V
    .registers 3

    if-eqz p0, :cond_b

    .line 530
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 533
    :cond_b
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->updateTtsLanguage()V

    .line 537
    sget-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->tts:Landroid/speech/tts/TextToSpeech;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xc

    .line 538
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 539
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 537
    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    .line 542
    sget-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->tts:Landroid/speech/tts/TextToSpeech;

    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$2;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 578
    sput-boolean v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsReady:Z

    return-void
.end method

.method public static synthetic $r8$lambda$CAQQxH3TGC0p32JJrDOSX3j1xVM()V
    .registers 2

    .line 247
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->warmConnection()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    .line 249
    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CB37AyHHRM6d5mC5CMQu3Ferg2Q(Landroid/app/Activity;)V
    .registers 4

    .line 946
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://openrouter.ai/credits"

    .line 947
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 948
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 946
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 950
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DJndtCrqCSOJgLGSWKAdw0UirVI(J)Ljava/lang/String;
    .registers 4

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "videoTimeChanged jump detected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EMhIAiRkeashKl_F4fd-DLcAP5U(J)Ljava/lang/String;
    .registers 4

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Aborting stale preload request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FNGPnJfUucOWDJpGKk3pJ9f7WqU(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " segments for :"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FgK7eRVqQTpb47gdIryrW56sw_Q(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 3

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Edge warm-up failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FhtwSYVdAw5Gt6IghHt0TBGk4pk(J)Ljava/lang/String;
    .registers 4

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GGVl-vMIV_HrIEUFkz7zbG7oCBg()V
    .registers 2

    .line 1034
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_SHOW_HTTP_ERROR_DIALOG:Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->save(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gyw19yoPi1uC57aIjiM8SIZBL20()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->triggerNextSegmentCheck()V

    return-void
.end method

.method public static synthetic $r8$lambda$JPAIl_ao-jsV0n6WgssIQIyJxlw(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadTranscript: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JfNOihxL-BMsM3ix_70kwK7xT4g(Lcom/gold/extension/youtube/shared/PlayerType;)Ljava/lang/String;
    .registers 3

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring TTS for player type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LBmrQyvD6KF6Ku7qahAiZTUc_aE(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    .line 493
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveTargetLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 499
    sget-object p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1c

    sput-object p2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    .line 500
    :cond_1c
    sget-object p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->updateVideo(Ljava/lang/String;Ljava/util/List;)V

    .line 501
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda35;

    invoke-direct {p1, p2, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda35;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 502
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->notifyStateChanged()V

    :cond_2c
    return-void
.end method

.method public static synthetic $r8$lambda$LrsNuIcqhCbSplvGi3JPIZP46F4(Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;)Ljava/lang/String;
    .registers 3

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preloadTestVoices failure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M2rp3DprrJgXQMd-OUSz3sPNtXQ(I)Ljava/lang/String;
    .registers 3

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "On-demand synthesis failed for segment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MuxNWK3xRbzBVZ-lHJKjIy3n9Pk(Lcom/gold/extension/youtube/shared/VideoState;)Ljava/lang/String;
    .registers 3

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring TTS for video state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Nd8x51DzRs6TjmmyygRmWFuuffc()Ljava/lang/String;
    .registers 1

    .line 876
    const-string v0, "stopTts"

    return-object v0
.end method

.method public static synthetic $r8$lambda$OIepjVGXj3QzknFZxxmzYTcU2qo(Lcom/gold/extension/youtube/shared/PlayerType;)Lkotlin/Unit;
    .registers 2

    .line 180
    invoke-virtual {p0}, Lcom/gold/extension/youtube/shared/PlayerType;->isMaximizedOrFullscreen()Z

    move-result v0

    if-nez v0, :cond_2f

    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_MINIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

    if-eq p0, v0, :cond_2f

    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_PICTURE_IN_PICTURE:Lcom/gold/extension/youtube/shared/PlayerType;

    if-eq p0, v0, :cond_2f

    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_SLIDING_MINIMIZED_MAXIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

    if-eq p0, v0, :cond_2f

    .line 184
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/youtube/shared/PlayerType;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 185
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->stopTts()V

    .line 186
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerType;->NONE:Lcom/gold/extension/youtube/shared/PlayerType;

    if-ne p0, v0, :cond_2f

    .line 187
    const-string p0, ""

    sput-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    .line 188
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    .line 189
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->clear()V

    .line 192
    :cond_2f
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic $r8$lambda$OyoLeUwwEXX8W4T5FCacyL-crJE(Lcom/gold/extension/youtube/shared/PlayerType;)Ljava/lang/String;
    .registers 3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stopping TTS for player type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OzDA4ufvvcvDPxDyZI_lS8bffEI([BJFFJ)V
    .registers 16

    .line 678
    array-length v0, p0

    if-lez v0, :cond_20

    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->getPlaybackId()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_20

    .line 680
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getPlaybackSpeed()F

    move-result v2

    mul-float v3, p3, v2

    .line 681
    new-instance v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda11;

    invoke-direct {v8}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda11;-><init>()V

    move-object v1, p0

    move-wide v6, p1

    move v2, p4

    move-wide v4, p5

    invoke-virtual/range {v0 .. v8}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->play([BFFJJLjava/lang/Runnable;)V

    return-void

    .line 684
    :cond_20
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->triggerNextSegmentCheck()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q7mlFhJq6J8TptDqURz8ilGUejU(I)Ljava/lang/String;
    .registers 3

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TTS initialization failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Sz-In2w-Brg_wpljH36gQyxMmsc(Lcom/gold/extension/youtube/shared/VideoState;)Lkotlin/Unit;
    .registers 2

    .line 196
    sget-object v0, Lcom/gold/extension/youtube/shared/VideoState;->PAUSED:Lcom/gold/extension/youtube/shared/VideoState;

    if-ne p0, v0, :cond_28

    .line 200
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 201
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda31;-><init>(Lcom/gold/extension/youtube/shared/VideoState;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 202
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->stopTts()V

    goto :goto_44

    .line 204
    :cond_1a
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda32;-><init>(Lcom/gold/extension/youtube/shared/VideoState;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 205
    sget-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->pause()V

    goto :goto_44

    .line 207
    :cond_28
    sget-object v0, Lcom/gold/extension/youtube/shared/VideoState;->PLAYING:Lcom/gold/extension/youtube/shared/VideoState;

    if-ne p0, v0, :cond_32

    .line 208
    sget-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    invoke-virtual {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->resume()V

    goto :goto_44

    .line 209
    :cond_32
    sget-object v0, Lcom/gold/extension/youtube/shared/VideoState;->ENDED:Lcom/gold/extension/youtube/shared/VideoState;

    if-ne p0, v0, :cond_44

    .line 210
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda33;-><init>(Lcom/gold/extension/youtube/shared/VideoState;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 212
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->clearAudioMultiplier()V

    .line 213
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->clear()V

    .line 215
    :cond_44
    :goto_44
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic $r8$lambda$TDJoNUiXUtkHu9EprxV0kEqK1Vo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 469
    :try_start_0
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda21;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->fetch(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/BooleanSupplier;)Ljava/util/List;

    move-result-object v0

    .line 492
    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda23;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_21
    .catchall {:try_start_0 .. :try_end_16} :catchall_1f

    .line 508
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1, p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda24;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_1f
    move-exception v0

    goto :goto_30

    :catch_21
    move-exception v0

    .line 506
    :try_start_22
    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda25;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_1f

    .line 508
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1, p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda24;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :goto_30
    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1, p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda24;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 518
    throw v0
.end method

.method public static synthetic $r8$lambda$TLI06tByXvzI309eGIOZLU41bR8(Lcom/gold/extension/youtube/shared/VideoState;)Ljava/lang/String;
    .registers 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stopping system TTS for video state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U9xp9SKZDnu5ZkVyNxHr2_ZF0h4(Lcom/gold/extension/youtube/shared/VideoState;)Ljava/lang/String;
    .registers 3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stopping TTS prefetch and abandoning ducking: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VR00-amNdiBcJ7a5eqsNAZGrw_k()V
    .registers 2

    .line 692
    invoke-static {}, Lcom/gold/extension/youtube/shared/VideoState;->getCurrent()Lcom/gold/extension/youtube/shared/VideoState;

    move-result-object v0

    sget-object v1, Lcom/gold/extension/youtube/shared/VideoState;->PLAYING:Lcom/gold/extension/youtube/shared/VideoState;

    if-ne v0, v1, :cond_f

    .line 693
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->videoTimeChanged(J)V

    :cond_f
    return-void
.end method

.method public static synthetic $r8$lambda$XIcHNKtjbmsRwfZRqvQjtW1llUk(Ljava/lang/String;)V
    .registers 3

    .line 968
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 969
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_16

    .line 970
    :cond_13
    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->showMyMemoryQuotaDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public static synthetic $r8$lambda$X_aw8nGjcbalCITS2Hblw6XTZv0()V
    .registers 2

    .line 923
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 924
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_16

    .line 925
    :cond_13
    invoke-static {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->showOpenRouterCreditsDialog(Landroid/app/Activity;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public static synthetic $r8$lambda$XywDJYHQ1Co7AB9mnIfOuafLj6o()Ljava/lang/String;
    .registers 1

    .line 1039
    const-string v0, "showHttpErrorDialog failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Yyrd5b6qHdfhoSbZzAjqKBVo5SM()Ljava/lang/String;
    .registers 1

    .line 231
    const-string v0, "preloadTranslations newVideoLoaded"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Z6lQPl722X4q4EZS7sfPYuKITd8(I)V
    .registers 3

    .line 912
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 913
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_16

    .line 914
    :cond_13
    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->showHttpErrorDialog(Landroid/app/Activity;I)V

    :cond_16
    :goto_16
    return-void
.end method

.method public static synthetic $r8$lambda$ZlAV7QAM6pV1y5sLthOCeyLz6GI(I)V
    .registers 2

    .line 528
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnMainThreadNowOrLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_OVM5veZgrjbP4-YHh_MJW0T3_c(I)Ljava/lang/String;
    .registers 3

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skipping untranslated segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aec0nBsA2W7UIfgTSVtvbcpmxSk(J)V
    .registers 2

    .line 815
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->updateIsTestSpeaking(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$b6Eo3_P2HraALp5Ea74zctoxb_g(J)V
    .registers 2

    .line 820
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->updateIsTestSpeaking(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$bvl6h9H9oSBaijodNQH7BE4ZnXo()Ljava/lang/String;
    .registers 1

    .line 506
    const-string v0, "Transcript fetch failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$cwttDHO5RaxdVwlTbJEXOkHC19E(Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;)Ljava/lang/String;
    .registers 3

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Prefetching test phrase for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->id:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$d_npD4ZzZ7TNCJPs9EsCV2T-8l0(I)Ljava/lang/String;
    .registers 3

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Waiting for translation at segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fHDLJflthvgPUZvKMbbANfMiR6o()Ljava/lang/String;
    .registers 1

    .line 1018
    const-string v0, "showMyMemoryQuotaDialog failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$gRvntn7cUNa-dofyRa3fqO5VEl4()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$hECL43j-EoSRNrNBvJzHbU8_OUE()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$jIvXeTtKVFkDS-p5hKnGwVqMiSo(Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JFFJ)V
    .registers 21

    .line 667
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->prefetch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_25

    .line 673
    array-length v0, v7

    if-lez v0, :cond_14

    .line 674
    iget-object v6, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move v3, p3

    move-object v2, p4

    invoke-static/range {v2 .. v7}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->put(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 677
    :cond_14
    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda12;

    move-wide v4, p5

    move/from16 v6, p7

    move-wide/from16 v8, p9

    move-object v3, v7

    move/from16 v7, p8

    invoke-direct/range {v2 .. v9}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda12;-><init>([BJFFJ)V

    invoke-static {v2}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :catch_25
    move-exception v0

    move-object p0, v0

    .line 669
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda10;

    invoke-direct {p1, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-static {p1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 670
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda11;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lJA8QlJzJpb9hLFp6V7NuSkad3Y(Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;)Ljava/lang/String;
    .registers 3

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Speak: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nN_COYFkEiCFM4UuWgMLsQp3dIw()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$p_wjckzcY8wAZQud6o_GZw35WdY()Ljava/lang/String;
    .registers 1

    .line 451
    const-string v0, "notifyStateChanged"

    return-object v0
.end method

.method public static synthetic $r8$lambda$qPIEt-DDRX_Eyx0oNldKNNHdbGI()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$qs8z_Z4tfwwhJB8_Vu1Ze_jzfUE(Ljava/lang/String;)Z
    .registers 2

    .line 487
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 488
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 489
    invoke-static {}, Lcom/gold/extension/youtube/shared/VideoState;->getCurrent()Lcom/gold/extension/youtube/shared/VideoState;

    move-result-object p0

    sget-object v0, Lcom/gold/extension/youtube/shared/VideoState;->ENDED:Lcom/gold/extension/youtube/shared/VideoState;

    if-ne p0, v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$siudK-b9UlaftwIjuoz9miqKjM8()Ljava/lang/String;
    .registers 1

    .line 744
    const-string v0, "onVideoSeeked"

    return-object v0
.end method

.method public static synthetic $r8$lambda$td3LTiGUxN5v67gk6GJT_KAbngs()Ljava/lang/String;
    .registers 1

    .line 957
    const-string v0, "showOpenRouterCreditsDialog failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$tk01hCySd-Q5hwhKbEbtOM17PPE()Ljava/lang/String;
    .registers 1

    .line 950
    const-string v0, "Failed to open openrouter.ai"

    return-object v0
.end method

.method public static synthetic $r8$lambda$y_PucjDjErruy6vcnoD1Rex0rAo()V
    .registers 2

    const-wide/16 v0, -0x1

    .line 352
    sput-wide v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->scheduledCheckForSegmentStartMs:J

    .line 353
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->videoTimeChanged(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetcurrentTestId()J
    .registers 2

    .line 0
    sget-wide v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentTestId:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$sfgetttsEngine()Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputisTestSpeaking(Z)V
    .registers 1

    .line 0
    sput-boolean p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->isTestSpeaking:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$smshowExportWarningIfNeeded(Landroid/app/Activity;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->showExportWarningIfNeeded(Landroid/app/Activity;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smtriggerNextSegmentCheck()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->triggerNextSegmentCheck()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$1;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->VOT_IMPORT_EXPORT_CALLBACK:Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;

    const-wide/16 v0, -0x1

    .line 144
    sput-wide v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->scheduledCheckForSegmentStartMs:J

    const/high16 v0, 0x3f800000  # 1.0f

    .line 148
    sput v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentTtsBaseRate:F

    const/high16 v0, -0x40800000  # -1.0f

    .line 149
    sput v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastAppliedPlaybackSpeed:F

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    const/4 v0, -0x1

    .line 154
    sput v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    .line 160
    const-string v0, ""

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    .line 162
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->VOT_SESSION_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->sessionEnabled:Z

    .line 174
    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastTestVoiceId:Ljava/lang/String;

    .line 176
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->INSTANCE:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    .line 179
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getOnChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object v0

    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gold/extension/youtube/shared/Event;->addObserver(Lkotlin/jvm/functions/Function1;)V

    .line 195
    invoke-static {}, Lcom/gold/extension/youtube/shared/VideoState;->getOnChange()Lcom/gold/extension/youtube/shared/Event;

    move-result-object v0

    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gold/extension/youtube/shared/Event;->addObserver(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateSpeechRate(JJ)F
    .registers 7

    .line 716
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_MAX_SPEECH_RATE:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000  # 10.0f

    div-float/2addr v0, v1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_15

    return v0

    :cond_15
    long-to-float p0, p0

    long-to-float p1, p2

    div-float/2addr p0, p1

    .line 718
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private static calculateSpeechRate(Ljava/lang/String;J)F
    .registers 7

    .line 735
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x41

    mul-long/2addr v0, v2

    invoke-static {v0, v1, p1, p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->calculateSpeechRate(JJ)F

    move-result p0

    return p0
.end method

.method public static ensureTts()V
    .registers 3

    .line 524
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 525
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_8

    return-void

    .line 526
    :cond_8
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 528
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->tts:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method public static fetchOpenRouterModelCost(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1044
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->fetchOpenRouterModelCost(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static formatNextAvailableClockTime(Ljava/lang/Long;)Ljava/lang/String;
    .registers 4
    .param p0  # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 985
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 986
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 987
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const/16 v2, 0xb

    .line 988
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 987
    const-string v1, "%02d:%02d"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatOpenRouterCostPerHundredHours(F)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_c

    .line 1049
    const-string p0, "youtube_vot_cost_free"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const v0, 0x3a83126f  # 0.001f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_16

    .line 1054
    const-string p0, "< $0.001"

    goto :goto_30

    :cond_16
    const v0, 0x3c23d70a  # 0.01f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_20

    .line 1058
    const-string v0, "$%.3f"

    goto :goto_22

    .line 1060
    :cond_20
    const-string v0, "$%.2f"

    .line 1062
    :goto_22
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1065
    :goto_30
    const-string v0, "youtube_vot_cost_per_hour"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLastSpokenIndex()I
    .registers 1

    .line 158
    sget v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    return v0
.end method

.method private static getSpeechDurationMs(Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;ILjava/lang/String;Ljava/lang/String;)J
    .registers 9

    .line 722
    iget-wide v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->durationMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_16

    .line 724
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->getDuration(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-lez p1, :cond_16

    .line 725
    iput-wide v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->durationMs:J

    :cond_16
    cmp-long p1, v0, v2

    if-lez p1, :cond_1b

    return-wide v0

    .line 727
    :cond_1b
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-long p0, p0

    const-wide/16 p2, 0x41

    mul-long/2addr p0, p2

    return-wide p0
.end method

.method public static getTestString()Ljava/lang/String;
    .registers 2

    .line 771
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveTargetLang()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 772
    const-string v1, "youtube_vot_tts_sample"

    invoke-static {v1, v0}, Lcom/gold/extension/shared/ResourceUtils;->getStringByLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static interruptSpeech()V
    .registers 0

    .line 397
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 398
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->stopTts()V

    return-void
.end method

.method public static isSessionEnabled()Z
    .registers 1

    .line 376
    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->sessionEnabled:Z

    return v0
.end method

.method public static isTranslationActive()Z
    .registers 1

    .line 370
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 371
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->sessionEnabled:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    return v0

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private static loadTranscript(Ljava/lang/String;)V
    .registers 4

    .line 457
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda38;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 458
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 459
    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->isLoading:Z

    if-eqz v0, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x1

    .line 460
    sput-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->isLoading:Z

    .line 461
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveTargetLang()Ljava/lang/String;

    move-result-object v0

    .line 462
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->VOT_TRANSLATION_SERVICE:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v1

    .line 464
    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0, v0, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda39;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V
    .registers 3
    .param p1  # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1069
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0, p1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void

    .line 1070
    :cond_10
    invoke-static {p0, p1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method public static newVideoLoaded(Ljava/lang/String;)V
    .registers 3

    const-wide/16 v0, 0x0

    .line 226
    sput-wide v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastVideoTimeMs:J

    const/4 v0, -0x1

    .line 227
    sput v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    const/4 v0, 0x0

    .line 228
    sput-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->wasExplicitSeek:Z

    .line 229
    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_62

    .line 231
    :cond_13
    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda41;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda41;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 232
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->requestAbort()V

    .line 233
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->stopTts()V

    .line 234
    sput-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    .line 236
    sput-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->httpErrorDialogShownThisVideo:Z

    .line 238
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_62

    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->sessionEnabled:Z

    if-nez v0, :cond_3d

    goto :goto_62

    .line 239
    :cond_3d
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v0

    sget-object v1, Lcom/gold/extension/youtube/shared/PlayerType;->INLINE_MINIMAL:Lcom/gold/extension/youtube/shared/PlayerType;

    if-ne v0, v1, :cond_46

    goto :goto_62

    .line 240
    :cond_46
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->updateVideo(Ljava/lang/String;Ljava/util/List;)V

    .line 241
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->loadTranscript(Ljava/lang/String;)V

    .line 244
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->VOT_USE_NATIVE_TTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_62

    .line 245
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda42;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda42;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :cond_62
    :goto_62
    return-void
.end method

.method public static notifyHttpError(I)V
    .registers 2

    const/16 v0, 0x190

    if-lt p0, v0, :cond_26

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_9

    goto :goto_26

    .line 908
    :cond_9
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_SHOW_HTTP_ERROR_DIALOG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_26

    .line 909
    :cond_16
    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->httpErrorDialogShownThisVideo:Z

    if-eqz v0, :cond_1b

    goto :goto_26

    :cond_1b
    const/4 v0, 0x1

    .line 910
    sput-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->httpErrorDialogShownThisVideo:Z

    .line 911
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public static notifyMyMemoryError(ILjava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 962
    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->httpErrorDialogShownThisVideo:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 963
    sput-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->httpErrorDialogShownThisVideo:Z

    .line 964
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->isMyMemoryQuotaError(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 966
    invoke-static {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->parseMyMemoryNextAvailableMinutes(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    .line 965
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->formatNextAvailableClockTime(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    .line 967
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda46;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda46;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 973
    :cond_1f
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "youtube_vot_mymemory_error"

    invoke-static {p1, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    return-void
.end method

.method public static notifyOpenRouterError(ILjava/lang/String;)V
    .registers 3

    .line 919
    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->httpErrorDialogShownThisVideo:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 920
    sput-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->httpErrorDialogShownThisVideo:Z

    .line 921
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->isOpenRouterCreditsError(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 922
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda27;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda27;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 928
    :cond_17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "youtube_vot_openrouter_error"

    invoke-static {p1, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    return-void
.end method

.method private static notifyStateChanged()V
    .registers 1

    .line 451
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 452
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 453
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->onStateChangeCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_12
    return-void
.end method

.method public static onVideoSeeked()V
    .registers 5

    .line 744
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda34;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 745
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    const/4 v0, 0x1

    .line 746
    sput-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->wasExplicitSeek:Z

    .line 751
    sget v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    if-gez v0, :cond_13

    return-void

    .line 756
    :cond_13
    sget v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 757
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    sget v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    .line 758
    sget-wide v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastVideoTimeMs:J

    iget-wide v3, v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->playbackStartMs:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_38

    sget-wide v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastVideoTimeMs:J

    iget-wide v3, v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->playbackEndMs:J

    cmp-long v0, v1, v3

    if-gez v0, :cond_38

    return-void

    .line 764
    :cond_38
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->stopTts()V

    const/4 v0, -0x1

    .line 765
    sput v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    return-void
.end method

.method public static preloadTestVoices()V
    .registers 5

    .line 832
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 833
    sget-wide v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentPreloadId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentPreloadId:J

    .line 835
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveTargetLang()Ljava/lang/String;

    move-result-object v2

    .line 836
    invoke-static {v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->getVoicesForLang(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 837
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_23

    .line 839
    :cond_1b
    new-instance v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda26;

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda26;-><init>(Ljava/util/List;JLjava/lang/String;)V

    invoke-static {v4}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :cond_23
    :goto_23
    return-void
.end method

.method private static propagatePlaybackSpeedIfChanged()V
    .registers 3

    .line 704
    sget v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastAppliedPlaybackSpeed:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    goto :goto_12

    .line 705
    :cond_8
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getPlaybackSpeed()F

    move-result v0

    .line 706
    sget v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastAppliedPlaybackSpeed:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_13

    :goto_12
    return-void

    .line 707
    :cond_13
    sput v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastAppliedPlaybackSpeed:F

    .line 708
    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    sget v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentTtsBaseRate:F

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->setPlaybackRate(F)V

    return-void
.end method

.method public static reloadTranscript()V
    .registers 1

    .line 431
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 432
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_25

    .line 433
    :cond_c
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->stopTts()V

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    const/4 v0, -0x1

    .line 435
    sput v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    .line 438
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->requestAbort()V

    .line 439
    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->isLoading:Z

    if-nez v0, :cond_25

    .line 440
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->loadTranscript(Ljava/lang/String;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public static resetPlaybackState()V
    .registers 4

    .line 406
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 407
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    .line 408
    iget-wide v2, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    iput-wide v2, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->playbackStartMs:J

    .line 409
    iget-wide v2, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    iput-wide v2, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->playbackEndMs:J

    const-wide/16 v2, -0x1

    .line 410
    iput-wide v2, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->durationMs:J

    goto :goto_9

    .line 412
    :cond_22
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->triggerRescan()V

    return-void
.end method

.method public static resolveTargetLang()Ljava/lang/String;
    .registers 2

    .line 892
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_CAPTION_LANGUAGE:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->isSetToDefault()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 893
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 894
    :cond_11
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static resolveVoice(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 901
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_USE_NATIVE_TTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 902
    const-string p0, "system"

    return-object p0

    .line 903
    :cond_f
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_TTS_VOICE_TYPE:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setOnTranslationStateChangeCallback(Ljava/lang/Runnable;)V
    .registers 1

    .line 446
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 447
    sput-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->onStateChangeCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private static showExportWarningIfNeeded(Landroid/app/Activity;)V
    .registers 12
    .param p0  # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 73
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    if-nez p0, :cond_6

    goto :goto_23

    .line 75
    :cond_6
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_OPENROUTER_API_KEY:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_23

    .line 76
    :cond_17
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_HIDE_EXPORT_WARNING:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    :goto_23
    return-void

    .line 77
    :cond_24
    const-string v0, "youtube_vot_export_api_key_warning"

    .line 80
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda4;-><init>()V

    const-string v0, "youtube_vot_do_not_show_again"

    .line 85
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda5;

    invoke-direct {v9}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda5;-><init>()V

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 77
    invoke-static/range {v1 .. v10}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 89
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-static {v1, p0, v0, v2}, Lcom/gold/extension/shared/Utils;->showDialog(Landroid/app/Activity;Landroid/app/Dialog;ZLcom/gold/extension/shared/Utils$DialogFragmentOnStartAction;)V

    return-void
.end method

.method private static showHttpErrorDialog(Landroid/app/Activity;I)V
    .registers 13

    .line 1023
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 1025
    :try_start_3
    const-string v0, "youtube_vot_http_error_title"

    .line 1027
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "youtube_vot_http_error_message"

    .line 1028
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda58;

    invoke-direct {v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda58;-><init>()V

    const-string p1, "youtube_vot_do_not_show_again"

    .line 1033
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda59;

    invoke-direct {v9}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda59;-><init>()V

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 1025
    invoke-static/range {v1 .. v10}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 1037
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception v0

    move-object p0, v0

    .line 1039
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda60;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda60;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method private static showMyMemoryQuotaDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 12
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 992
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 996
    :try_start_3
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_MYMEMORY_EMAIL:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 998
    const-string v0, "youtube_vot_mymemory_quota_message_with_email"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    .line 999
    :cond_1a
    const-string v0, "youtube_vot_mymemory_quota_message_no_email"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_20
    if-eqz p1, :cond_40

    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "youtube_vot_mymemory_quota_next_available"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_40
    move-object v2, v0

    .line 1004
    const-string p1, "youtube_vot_mymemory_quota_title"

    .line 1006
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda36;

    invoke-direct {v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda36;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 1004
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 1016
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5e} :catch_5f

    return-void

    :catch_5f
    move-exception v0

    move-object p0, v0

    .line 1018
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda37;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda37;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method private static showOpenRouterCreditsDialog(Landroid/app/Activity;)V
    .registers 12

    .line 933
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 935
    :try_start_3
    const-string v0, "youtube_vot_openrouter_credits_title"

    .line 937
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "youtube_vot_openrouter_credits_message"

    .line 938
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda47;

    invoke-direct {v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda47;-><init>()V

    const-string v0, "youtube_vot_openrouter_open_website"

    .line 943
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda48;

    invoke-direct {v9, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda48;-><init>(Landroid/app/Activity;)V

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 935
    invoke-static/range {v1 .. v10}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 955
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception v0

    move-object p0, v0

    .line 957
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda49;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda49;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method private static speak(Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;I)V
    .registers 22

    move-object/from16 v1, p0

    move/from16 v4, p1

    .line 593
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 594
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda17;

    invoke-direct {v0, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda17;-><init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 595
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveTargetLang()Ljava/lang/String;

    move-result-object v3

    .line 596
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_TRANSLATION_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000  # 100.0f

    div-float v6, v0, v2

    move v0, v2

    .line 598
    invoke-static {v3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveVoice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    return-void

    .line 601
    :cond_2a
    sget-wide v7, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastVideoTimeMs:J

    iget-wide v9, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->playbackStartMs:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 602
    iget-wide v9, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->playbackEndMs:J

    sub-long/2addr v9, v7

    .line 605
    invoke-static {v1, v4, v2, v3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->getSpeechDurationMs(Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    .line 609
    sget-boolean v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->wasExplicitSeek:Z

    if-eqz v5, :cond_65

    .line 610
    sget-wide v16, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastVideoTimeMs:J

    const/4 v5, 0x0

    iget-wide v13, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->playbackStartMs:J

    sub-long v13, v16, v13

    const-wide/16 v15, 0x3e8

    cmp-long v15, v13, v15

    if-lez v15, :cond_56

    .line 615
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    move-wide/from16 v18, v15

    move v15, v0

    move-wide/from16 v0, v18

    :goto_53
    move/from16 v16, v5

    goto :goto_5a

    :cond_56
    move v15, v0

    const-wide/16 v0, 0x0

    goto :goto_53

    .line 618
    :goto_5a
    new-instance v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda18;

    invoke-direct {v5, v13, v14, v0, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda18;-><init>(JJ)V

    invoke-static {v5}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 621
    sput-boolean v16, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->wasExplicitSeek:Z

    goto :goto_6a

    :cond_65
    move v15, v0

    const/16 v16, 0x0

    const-wide/16 v0, 0x0

    :goto_6a
    sub-long/2addr v11, v0

    const-wide/16 v13, 0x0

    .line 625
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 626
    invoke-static {v11, v12, v9, v10}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->calculateSpeechRate(JJ)F

    move-result v5

    long-to-float v9, v11

    div-float/2addr v9, v5

    float-to-long v9, v9

    add-long/2addr v7, v9

    .line 627
    sput-wide v7, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEndVideoTimeMs:J

    .line 628
    sput v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentTtsBaseRate:F

    .line 629
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getPlaybackSpeed()F

    move-result v7

    sput v7, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastAppliedPlaybackSpeed:F

    .line 631
    const-string v7, "system"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e1

    .line 632
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ensureTts()V

    .line 633
    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsReady:Z

    if-nez v0, :cond_9b

    .line 634
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 637
    :cond_9b
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->updateTtsLanguage()V

    .line 638
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_ORIGINAL_AUDIO_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v15

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->setAudioMultiplier(F)V

    .line 639
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getPlaybackSpeed()F

    move-result v1

    mul-float/2addr v5, v1

    invoke-virtual {v0, v5}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 640
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 641
    const-string v1, "volume"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 642
    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    invoke-virtual {v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->markBusy()J

    move-result-wide v1

    .line 644
    sget-object v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->tts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v7, p0

    iget-object v4, v7, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "vot_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move/from16 v5, v16

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    return-void

    :cond_e1
    move-object/from16 v7, p0

    .line 648
    sget-object v8, Lcom/gold/extension/youtube/settings/Settings;->VOT_ORIGINAL_AUDIO_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v8}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v15

    invoke-static {v8}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->setAudioMultiplier(F)V

    .line 650
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getPlaybackSpeed()F

    move-result v8

    mul-float/2addr v8, v5

    .line 651
    sget-object v9, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    iget-object v10, v7, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-static {v9, v4, v2, v3, v10}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->get(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    if-eqz v9, :cond_113

    .line 653
    sget-object v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    invoke-virtual {v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->markBusy()J

    move-result-wide v10

    .line 654
    new-instance v12, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda11;

    invoke-direct {v12}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda11;-><init>()V

    move v7, v8

    move-object v5, v9

    move-wide v8, v0

    invoke-virtual/range {v4 .. v12}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->play([BFFJJLjava/lang/Runnable;)V

    return-void

    :cond_113
    move-wide v8, v0

    .line 661
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->markBusy()J

    move-result-wide v0

    move-wide v10, v8

    move v8, v5

    .line 662
    sget-object v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    move v9, v6

    move-wide v6, v0

    .line 664
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda20;-><init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JFFJ)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static stopTts()V
    .registers 2

    .line 875
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 876
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda40;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v0, 0x0

    .line 877
    sput-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->isTestSpeaking:Z

    .line 878
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->stop()V

    .line 879
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_1a
    const/4 v0, -0x1

    .line 880
    sput v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    const-wide/16 v0, 0x0

    .line 881
    sput-wide v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEndVideoTimeMs:J

    const-wide/16 v0, -0x1

    .line 882
    sput-wide v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->scheduledCheckForSegmentStartMs:J

    const/high16 v0, 0x3f800000  # 1.0f

    .line 883
    sput v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentTtsBaseRate:F

    const/high16 v0, -0x40800000  # -1.0f

    .line 884
    sput v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastAppliedPlaybackSpeed:F

    .line 885
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->clearAudioMultiplier()V

    return-void
.end method

.method public static testSpeak(Ljava/lang/String;)V
    .registers 12

    .line 780
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda43;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 781
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 783
    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->isTestSpeaking:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastTestVoiceId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    .line 784
    :goto_1c
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->stopTts()V

    if-eqz v0, :cond_22

    return-void

    .line 787
    :cond_22
    sget-wide v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentTestId:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    sput-wide v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentTestId:J

    .line 788
    sput-boolean v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->isTestSpeaking:Z

    .line 789
    sput-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastTestVoiceId:Ljava/lang/String;

    .line 791
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_TRANSLATION_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000  # 100.0f

    div-float v7, v0, v1

    .line 793
    const-string v0, "system"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 794
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ensureTts()V

    .line 795
    sget-boolean p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsReady:Z

    if-nez p0, :cond_4e

    .line 796
    sput-boolean v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->isTestSpeaking:Z

    return-void

    .line 799
    :cond_4e
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->updateTtsLanguage()V

    .line 800
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->VOT_ORIGINAL_AUDIO_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->setAudioMultiplier(F)V

    .line 801
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 802
    const-string v0, "volume"

    invoke-virtual {p0, v0, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 803
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->tts:Landroid/speech/tts/TextToSpeech;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 804
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->markBusy()J

    move-result-wide v0

    .line 805
    sget-object v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->getTestString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "vot_test_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v2, p0, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    return-void

    .line 810
    :cond_97
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveTargetLang()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    .line 811
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->getTestString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "test"

    invoke-static {v6, v2, p0, v0, v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->get(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    if-eqz v6, :cond_c6

    .line 813
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->VOT_ORIGINAL_AUDIO_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->setAudioMultiplier(F)V

    .line 814
    sget-object v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    invoke-virtual {v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->markBusy()J

    move-result-wide v8

    .line 815
    new-instance v10, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda44;

    invoke-direct {v10, v3, v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda44;-><init>(J)V

    invoke-virtual/range {v5 .. v10}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->play([BFJLjava/lang/Runnable;)V

    return-void

    .line 819
    :cond_c6
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_ORIGINAL_AUDIO_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->setAudioMultiplier(F)V

    .line 820
    sget-object v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->getTestString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveTargetLang()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda45;

    invoke-direct {v10, v3, v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda45;-><init>(J)V

    move v9, v7

    move-object v7, p0

    invoke-virtual/range {v5 .. v10}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->speak(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/Runnable;)V

    return-void
.end method

.method public static toggleTranslation()V
    .registers 2

    .line 381
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 382
    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->sessionEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->sessionEnabled:Z

    .line 383
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_SESSION_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-boolean v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->sessionEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->save(Ljava/lang/Object;)V

    .line 384
    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->sessionEnabled:Z

    if-nez v0, :cond_1f

    .line 385
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->stopTts()V

    const/4 v0, -0x1

    .line 386
    sput v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    goto :goto_38

    .line 388
    :cond_1f
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->isLoading:Z

    if-nez v0, :cond_38

    .line 389
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentVideoId:Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->loadTranscript(Ljava/lang/String;)V

    .line 392
    :cond_38
    :goto_38
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->notifyStateChanged()V

    return-void
.end method

.method private static triggerNextSegmentCheck()V
    .registers 1

    .line 691
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnMainThreadNowOrLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static updateIsTestSpeaking(J)V
    .registers 4

    .line 824
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 825
    sget-wide v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->currentTestId:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    sput-boolean p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->isTestSpeaking:Z

    :cond_c
    return-void
.end method

.method public static updateOriginalAudioMultiplier()V
    .registers 2

    .line 423
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 424
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->isTestSpeaking:Z

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    return-void

    .line 425
    :cond_11
    :goto_11
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_ORIGINAL_AUDIO_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->setAudioMultiplier(F)V

    return-void
.end method

.method public static updatePlaybackVolume()V
    .registers 3

    .line 417
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 418
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->VOT_TRANSLATION_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->setVolume(F)V

    return-void
.end method

.method private static updateTtsLanguage()V
    .registers 2

    .line 583
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 584
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_8

    goto :goto_1d

    .line 585
    :cond_8
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveTargetLang()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 586
    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1d

    goto :goto_1e

    :cond_1d
    :goto_1d
    return-void

    .line 588
    :cond_1e
    :goto_1e
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->tts:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    return-void
.end method

.method public static videoTimeChanged(J)V
    .registers 9

    .line 259
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_152

    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->sessionEnabled:Z

    if-nez v0, :cond_12

    goto/16 :goto_152

    .line 263
    :cond_12
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 265
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->propagatePlaybackSpeedIfChanged()V

    .line 267
    invoke-static {}, Lcom/gold/extension/youtube/shared/PlayerType;->getCurrent()Lcom/gold/extension/youtube/shared/PlayerType;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/gold/extension/youtube/shared/PlayerType;->isMaximizedOrFullscreen()Z

    move-result v1

    if-nez v1, :cond_33

    sget-object v1, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_MINIMIZED:Lcom/gold/extension/youtube/shared/PlayerType;

    if-eq v0, v1, :cond_33

    sget-object v1, Lcom/gold/extension/youtube/shared/PlayerType;->WATCH_WHILE_PICTURE_IN_PICTURE:Lcom/gold/extension/youtube/shared/PlayerType;

    if-eq v0, v1, :cond_33

    .line 271
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda50;

    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda50;-><init>(Lcom/gold/extension/youtube/shared/PlayerType;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 274
    :cond_33
    invoke-static {}, Lcom/gold/extension/youtube/shared/VideoState;->getCurrent()Lcom/gold/extension/youtube/shared/VideoState;

    move-result-object v0

    .line 277
    sput-wide p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->videoPositionHint:J

    if-eqz v0, :cond_48

    .line 279
    sget-object v1, Lcom/gold/extension/youtube/shared/VideoState;->PLAYING:Lcom/gold/extension/youtube/shared/VideoState;

    if-eq v0, v1, :cond_48

    .line 280
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda51;

    invoke-direct {p0, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda51;-><init>(Lcom/gold/extension/youtube/shared/VideoState;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 284
    :cond_48
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->updateTime(J)V

    .line 286
    sget-wide v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastVideoTimeMs:J

    .line 287
    sput-wide p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastVideoTimeMs:J

    .line 289
    sget-object v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_58

    return-void

    :cond_58
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_8b

    sub-long v0, p0, v0

    .line 292
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const/high16 v2, 0x3f800000  # 1.0f

    .line 296
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getPlaybackSpeed()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v3, 0x45354000  # 2900.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_8b

    .line 299
    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda52;

    invoke-direct {v2, v0, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda52;-><init>(J)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 v0, 0x1

    .line 300
    sput-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->wasExplicitSeek:Z

    .line 301
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->stopTts()V

    const/4 v0, -0x1

    .line 302
    sput v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    .line 305
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->onSeek(J)V

    .line 315
    :cond_8b
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_92
    if-ge v1, v0, :cond_129

    .line 316
    sget-object v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->segments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    .line 317
    iget-wide v3, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->playbackStartMs:J

    cmp-long v5, p0, v3

    if-ltz v5, :cond_ee

    .line 319
    iget-wide v3, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->playbackEndMs:J

    cmp-long v3, p0, v3

    if-gez v3, :cond_125

    .line 320
    sget v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    if-eq v1, v0, :cond_129

    .line 321
    iget-wide v3, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    iget-object v0, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-static {v1, v3, v4, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->isAwaitingTranslationAt(IJLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 323
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda53;

    invoke-direct {v0, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda53;-><init>(I)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_129

    .line 329
    :cond_bf
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveTargetLang()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->lang:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->isSpokenLanguageDifferent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 331
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda54;

    invoke-direct {v0, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda54;-><init>(I)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_129

    .line 334
    :cond_d4
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_e0

    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->wasExplicitSeek:Z

    if-eqz v0, :cond_129

    .line 335
    :cond_e0
    sput v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    .line 336
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda55;

    invoke-direct {v0, p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda55;-><init>(J)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 338
    invoke-static {v2, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->speak(Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;I)V

    goto :goto_129

    .line 343
    :cond_ee
    sget v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->lastSpokenIndex:I

    if-le v1, v2, :cond_125

    const-wide/16 v5, 0x384

    add-long/2addr v5, p0

    cmp-long v2, v3, v5

    if-gtz v2, :cond_125

    .line 346
    sget-wide v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->scheduledCheckForSegmentStartMs:J

    cmp-long v0, v3, v0

    if-eqz v0, :cond_129

    const v0, 0x3dcccccd  # 0.1f

    .line 347
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getPlaybackSpeed()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-long v1, v3, p0

    const-wide/16 v5, 0xa

    add-long/2addr v1, v5

    long-to-float v1, v1

    div-float/2addr v1, v0

    float-to-long v0, v1

    .line 349
    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda56;

    invoke-direct {v2, v0, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda56;-><init>(J)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 350
    sput-wide v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->scheduledCheckForSegmentStartMs:J

    .line 351
    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda57;

    invoke-direct {v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda57;-><init>()V

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_129

    :cond_125
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_92

    .line 361
    :cond_129
    :goto_129
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEngine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    invoke-virtual {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_140

    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->isTestSpeaking:Z

    if-nez v0, :cond_140

    sget-wide v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ttsEndVideoTimeMs:J

    cmp-long p0, p0, v0

    if-gez p0, :cond_13c

    goto :goto_140

    .line 364
    :cond_13c
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->clearAudioMultiplier()V

    return-void

    .line 362
    :cond_140
    :goto_140
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->VOT_ORIGINAL_AUDIO_VOLUME:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x42c80000  # 100.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->setAudioMultiplier(F)V

    return-void

    .line 260
    :cond_152
    :goto_152
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VotOriginalVolumePatch;->clearAudioMultiplier()V

    return-void
.end method
