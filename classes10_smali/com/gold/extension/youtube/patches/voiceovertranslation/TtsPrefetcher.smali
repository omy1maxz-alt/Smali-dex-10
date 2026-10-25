.class final Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;
.super Ljava/lang/Object;
.source "TtsPrefetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;
    }
.end annotation


# static fields
.field private static final BACKOFF_FACTOR:F = 1.5f

.field private static final BACKOFF_MAX_MS:I = 0xea60

.field private static final BACKOFF_MIN_MS:I = 0x1388

.field private static final DELAY_BACKGROUND_MS:I = 0xfa0

.field private static final DELAY_IDLE_MS:I = 0xea60

.field private static final DELAY_IMMEDIATE_MS:I = 0xc8

.field private static final DELAY_NEAR_MS:I = 0x3e8

.field private static final DISTANCE_IMMEDIATE_MS:I = 0x7530

.field private static final DISTANCE_NEAR_MS:I = 0xea60

.field private static final DISTANCE_PREFETCH_IGNORE:I = 0x2710

.field private static currentBackoffMs:I = 0x0
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private static currentSegments:Ljava/util/List; = null
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;"
        }
    .end annotation
.end field

.field private static currentVideoId:Ljava/lang/String; = ""
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private static currentVideoTimeMs:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private static final engine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

.field private static volatile loadingLatch:Ljava/util/concurrent/CountDownLatch;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private static final lock:Ljava/lang/Object;

.field private static running:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private static waiting:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DAQgzWexUFto_tl6FK9-BnfkQLo()Ljava/lang/String;
    .registers 1

    .line 206
    const-string v0, "Releasing loading latch"

    return-object v0
.end method

.method public static synthetic $r8$lambda$HD97fFBcSCwRIyV_7Wrkbq9H-q8()V
    .registers 3

    const/4 v0, 0x0

    .line 117
    :try_start_1
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->runPrefetchLoop()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    .line 119
    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_7
    sput-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->running:Z

    .line 121
    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0

    :catchall_e
    move-exception v1

    .line 119
    sget-object v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 120
    :try_start_12
    sput-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->running:Z

    .line 121
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    .line 122
    throw v1

    :catchall_16
    move-exception v0

    .line 121
    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static synthetic $r8$lambda$HlPdjaMCFvu8HhsJgtQOiKozdXs(Ljava/lang/String;IIJLcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;)Ljava/lang/String;
    .registers 8

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prefetched TTS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " segment: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " fetchTime: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, p3

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms text: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object p0, p5, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 289
    iget-object p1, p5, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    const/16 p2, 0x1e

    if-le p0, p2, :cond_43

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "..."

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LcqvzhTJXC2LwGc6MxfEM0qoJiY(J)Ljava/lang/String;
    .registers 4

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Counting down prefetch latch early, first segment distance: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M0jxEVUsrDz5dwtpr5-b-2DRYpc()Ljava/lang/String;
    .registers 1

    .line 230
    const-string v0, "Prefetch thread interrupted"

    return-object v0
.end method

.method public static synthetic $r8$lambda$jU6ttlfIZdRIHwLRFw-eQupjyUQ(I)Ljava/lang/String;
    .registers 3

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Prefetch failed for segment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->lock:Ljava/lang/Object;

    .line 50
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentSegments:Ljava/util/List;

    .line 62
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->INSTANCE:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->engine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .registers 3

    .line 83
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_3
    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->loadingLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_12

    .line 85
    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->loadingLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v1, 0x0

    .line 86
    sput-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->loadingLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_12

    :catchall_10
    move-exception v1

    goto :goto_23

    .line 88
    :cond_12
    :goto_12
    const-string v1, ""

    sput-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentVideoId:Ljava/lang/String;

    .line 89
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentSegments:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 90
    sput-wide v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentVideoTimeMs:J

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 92
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_10

    throw v1
.end method

.method private static fetch(Ljava/lang/String;Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;IILjava/lang/String;Ljava/lang/String;)Z
    .registers 21

    move-object/from16 v6, p1

    const/4 v7, 0x0

    .line 276
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 277
    sget-object v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->engine:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    iget-object v0, v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual {v8, v0, v11, v12}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->prefetch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v14

    .line 278
    array-length v0, v14

    if-lez v0, :cond_47

    .line 279
    iget-object v13, v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    move-object v9, p0

    move/from16 v10, p2

    invoke-static/range {v9 .. v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->put(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 280
    array-length v0, v14

    invoke-static {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->mp3DurationMs(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->durationMs:J

    .line 281
    sget-object v9, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentSegments:Ljava/util/List;

    .line 282
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->getLastSpokenIndex()I

    move-result v11

    move-object v12, p0

    move/from16 v10, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 281
    invoke-virtual/range {v8 .. v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->adjustPlaybackTimes(Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda4;

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;IIJLcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_42} :catch_44

    const/4 p0, 0x1

    return p0

    :catch_44
    move-exception v0

    move-object p0, v0

    goto :goto_48

    :cond_47
    return v7

    .line 294
    :goto_48
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda5;

    move/from16 v10, p2

    invoke-direct {v0, v10}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return v7
.end method

.method private static findNextToFetch(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;
    .registers 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;"
        }
    .end annotation

    .line 242
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    :goto_6
    const/4 v3, 0x0

    if-ge v1, v0, :cond_34

    .line 247
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    .line 248
    iget-wide v5, v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    cmp-long v5, v5, p2

    if-ltz v5, :cond_31

    if-ne v2, v0, :cond_18

    move v2, v1

    .line 254
    :cond_18
    iget-object v5, v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->lang:Ljava/lang/String;

    invoke-static {p5, v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->isSpokenLanguageDifferent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_31

    .line 255
    :cond_21
    iget-object v5, v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-static {p0, v1, p4, p5, v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->notCached(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 256
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;

    sub-int p1, v1, v2

    invoke-direct {p0, v1, p1, v4, v3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;-><init>(IILcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher-IA;)V

    return-object p0

    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_34
    add-int/lit8 p2, v2, -0x1

    :goto_36
    if-ltz p2, :cond_59

    .line 263
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    .line 264
    iget-object v0, p3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->lang:Ljava/lang/String;

    invoke-static {p5, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->isSpokenLanguageDifferent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_56

    .line 265
    :cond_47
    iget-object v0, p3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-static {p0, p2, p4, p5, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->notCached(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 266
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;

    sub-int/2addr v2, p2

    invoke-direct {p0, p2, v2, p3, v3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;-><init>(IILcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher-IA;)V

    return-object p0

    :cond_56
    :goto_56
    add-int/lit8 p2, p2, -0x1

    goto :goto_36

    :cond_59
    return-object v3
.end method

.method private static runPrefetchLoop()V
    .registers 18

    .line 128
    const-string v0, ""

    const-wide/16 v3, 0x0

    .line 130
    :cond_4
    :goto_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_139

    .line 134
    sget-object v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 135
    :try_start_11
    sget-object v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentVideoId:Ljava/lang/String;

    .line 136
    sget-object v7, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentSegments:Ljava/util/List;

    .line 137
    sget-wide v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentVideoTimeMs:J

    .line 138
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_136

    .line 140
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    move-object v0, v6

    const-wide/16 v3, 0x0

    .line 145
    :cond_21
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    const-wide/32 v12, 0xea60

    if-nez v10, :cond_12f

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_12f

    sget-object v10, Lcom/gold/extension/youtube/settings/Settings;->VOT_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 146
    invoke-virtual {v10}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_12f

    sget-object v10, Lcom/gold/extension/youtube/settings/Settings;->VOT_SESSION_ENABLED:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 147
    invoke-virtual {v10}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_12f

    sget-object v10, Lcom/gold/extension/youtube/settings/Settings;->VOT_USE_NATIVE_TTS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 148
    invoke-virtual {v10}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_56

    goto/16 :goto_12f

    .line 153
    :cond_56
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveTargetLang()Ljava/lang/String;

    move-result-object v11

    .line 154
    sget-object v10, Lcom/gold/extension/youtube/settings/Settings;->VOT_TTS_VOICE_TYPE:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v10}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6e

    .line 157
    invoke-static {v12, v13}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->waitOnLock(J)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_139

    .line 161
    :cond_6e
    invoke-static/range {v6 .. v11}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->findNextToFetch(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;

    move-result-object v14

    if-nez v14, :cond_7c

    .line 163
    invoke-static {v12, v13}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->waitOnLock(J)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_139

    .line 166
    :cond_7c
    monitor-enter v5

    .line 167
    :try_start_7d
    invoke-static {v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->-$$Nest$fgetseg(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;)Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    move-result-object v15

    iget-wide v1, v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    sub-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 168
    sget v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentBackoffMs:I

    if-lez v8, :cond_8d

    goto :goto_9f

    :cond_8d
    const-wide/16 v8, 0x7530

    cmp-long v8, v1, v8

    if-gtz v8, :cond_96

    const/16 v8, 0xc8

    goto :goto_9f

    :cond_96
    cmp-long v8, v1, v12

    if-gtz v8, :cond_9d

    const/16 v8, 0x3e8

    goto :goto_9f

    :cond_9d
    const/16 v8, 0xfa0

    .line 178
    :goto_9f
    sget-object v9, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->loadingLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v12, 0x0

    if-eqz v9, :cond_bd

    const-wide/16 v16, 0x2710

    cmp-long v9, v1, v16

    if-lez v9, :cond_bd

    .line 184
    new-instance v9, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda1;

    invoke-direct {v9, v1, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-static {v9}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 186
    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->loadingLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 187
    sput-object v12, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->loadingLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_bd

    :catchall_ba
    move-exception v0

    goto/16 :goto_12d

    .line 190
    :cond_bd
    :goto_bd
    monitor-exit v5
    :try_end_be
    .catchall {:try_start_7d .. :try_end_be} :catchall_ba

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    int-to-long v8, v8

    cmp-long v13, v1, v8

    if-gez v13, :cond_d0

    sub-long/2addr v8, v1

    .line 196
    invoke-static {v8, v9}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->waitOnLock(J)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_139

    .line 200
    :cond_d0
    invoke-static {v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->-$$Nest$fgetindex(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;)I

    move-result v1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    invoke-static {v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;->-$$Nest$fgetindex(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$NextFetch;)I

    move-result v8

    .line 201
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    move-object v7, v1

    .line 200
    invoke-static/range {v6 .. v11}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->fetch(Ljava/lang/String;Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 204
    monitor-enter v5

    .line 205
    :try_start_ec
    sget-object v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->loadingLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v4, :cond_102

    .line 206
    new-instance v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v4}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 207
    sget-object v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->loadingLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 208
    sput-object v12, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->loadingLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_102

    :catchall_100
    move-exception v0

    goto :goto_12b

    :cond_102
    :goto_102
    if-eqz v1, :cond_110

    .line 211
    sget v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentBackoffMs:I

    add-int/lit16 v1, v1, -0x1f4

    const/4 v4, 0x0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentBackoffMs:I

    goto :goto_127

    .line 213
    :cond_110
    sget v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentBackoffMs:I

    if-nez v1, :cond_119

    const/16 v1, 0x1388

    sput v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentBackoffMs:I

    goto :goto_127

    :cond_119
    int-to-float v1, v1

    const/high16 v4, 0x3fc00000  # 1.5f

    mul-float/2addr v1, v4

    const v4, 0x476a6000  # 60000.0f

    .line 214
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentBackoffMs:I

    .line 216
    :goto_127
    monitor-exit v5

    move-wide v3, v2

    goto/16 :goto_4

    :goto_12b
    monitor-exit v5
    :try_end_12c
    .catchall {:try_start_ec .. :try_end_12c} :catchall_100

    throw v0

    .line 190
    :goto_12d
    :try_start_12d
    monitor-exit v5
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_ba

    throw v0

    .line 149
    :cond_12f
    :goto_12f
    invoke-static {v12, v13}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->waitOnLock(J)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_139

    :catchall_136
    move-exception v0

    .line 138
    :try_start_137
    monitor-exit v5
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_136

    throw v0

    :cond_139
    :goto_139
    return-void
.end method

.method private static startBackgroundThread()V
    .registers 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    const/4 v0, 0x1

    .line 114
    sput-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->running:Z

    .line 115
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static triggerRescan()V
    .registers 2

    .line 105
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    sget-boolean v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->running:Z

    if-eqz v1, :cond_d

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_d

    :catchall_b
    move-exception v1

    goto :goto_f

    .line 109
    :cond_d
    :goto_d
    monitor-exit v0

    return-void

    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_b

    throw v1
.end method

.method public static updateTime(J)V
    .registers 3

    .line 96
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_3
    sput-wide p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentVideoTimeMs:J

    .line 98
    sget-boolean p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->waiting:Z

    if-eqz p0, :cond_f

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_f

    :catchall_d
    move-exception p0

    goto :goto_11

    .line 101
    :cond_f
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_d

    throw p0
.end method

.method public static updateVideo(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;)V"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentVideoId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 69
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->loadingLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_2f

    .line 71
    :cond_16
    :goto_16
    sput-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentVideoId:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentSegments:Ljava/util/List;

    const-wide/16 p0, 0x0

    .line 73
    sput-wide p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->currentVideoTimeMs:J

    .line 74
    sget-boolean p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->running:Z

    if-eqz p0, :cond_2a

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2d

    .line 77
    :cond_2a
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->startBackgroundThread()V

    .line 79
    :goto_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_14

    throw p0
.end method

.method private static waitOnLock(J)Z
    .registers 5

    .line 224
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 225
    :try_start_4
    sput-boolean v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->waiting:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_e

    const/4 v2, 0x0

    .line 227
    :try_start_7
    invoke-virtual {v0, p0, p1}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_12
    .catchall {:try_start_7 .. :try_end_a} :catchall_10

    .line 234
    :try_start_a
    sput-boolean v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->waiting:Z

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    return v2

    :catchall_e
    move-exception p0

    goto :goto_29

    :catchall_10
    move-exception p0

    goto :goto_26

    :catch_12
    move-exception p0

    .line 230
    :try_start_13
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 231
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_10

    .line 234
    :try_start_22
    sput-boolean v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->waiting:Z

    monitor-exit v0

    return v1

    :goto_26
    sput-boolean v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsPrefetcher;->waiting:Z

    .line 235
    throw p0

    .line 236
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_e

    throw p0
.end method
