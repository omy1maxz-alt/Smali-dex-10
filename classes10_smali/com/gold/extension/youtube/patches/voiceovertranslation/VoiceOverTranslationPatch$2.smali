.class Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$2;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "VoiceOverTranslationPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->ensureTts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public static synthetic $r8$lambda$NgHxMa5yMbuNXjL-9vUi92H0m2I()Ljava/lang/String;
    .registers 1

    .line 567
    const-string v0, "Utterance listener onDone failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$xB9Y9FfEZv2zKuoTs4JLnG83j0w(Ljava/lang/String;)V
    .registers 6

    if-nez p0, :cond_3

    goto :goto_5f

    .line 552
    :cond_3
    :try_start_3
    const-string v0, "vot_test_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v0, 0x9

    .line 553
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 554
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 555
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 556
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 557
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->-$$Nest$sfgetttsEngine()Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->clearBusy(J)V

    .line 558
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->-$$Nest$sfgetcurrentTestId()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-nez p0, :cond_5f

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->-$$Nest$sfputisTestSpeaking(Z)V

    return-void

    .line 559
    :cond_38
    const-string v0, "vot_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v0, 0x4

    .line 560
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 561
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->-$$Nest$sfgetttsEngine()Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->getPlaybackId()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_5f

    .line 562
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->-$$Nest$sfgetttsEngine()Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->clearBusy(J)V

    .line 563
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->-$$Nest$smtriggerNextSegmentCheck()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5f} :catch_60

    :cond_5f
    :goto_5f
    return-void

    :catch_60
    move-exception p0

    .line 567
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$2$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$2$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 542
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .registers 2

    .line 549
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$2$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$2$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->runOnMainThreadNowOrLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 2

    .line 574
    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$2;->onDone(Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method
