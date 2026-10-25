.class public final Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;
.super Ljava/lang/Object;
.source "TranscriptTranslator.java"


# static fields
.field private static final CONNECT_TIMEOUT_MS:I = 0x2710

.field private static final GOOGLE_INTER_BATCH_DELAY_MS:I = 0x1f4

.field private static final GOOGLE_MAX_BATCH_CHARS:I = 0xfa0

.field private static final GOOGLE_TRANSLATE_URL:Ljava/lang/String; = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&dt=t&tl="

.field private static final MYMEMORY_INTER_BATCH_DELAY_MS:I = 0x7d0

.field private static final MYMEMORY_MAX_CHARS:I = 0x1c2

.field private static final MYMEMORY_NEXT_AVAILABLE_PATTERN:Ljava/util/regex/Pattern;

.field private static final OPENROUTER_FIRST_BATCH_CHARS:I = 0x15e

.field private static final OPENROUTER_INTER_BATCH_DELAY_MS:I = 0x0

.field private static final OPENROUTER_MAX_BATCH_CHARS:I = 0x5dc

.field private static final OPENROUTER_MODELS_URL:Ljava/lang/String; = "https://openrouter.ai/api/v1/models"

.field private static final OPENROUTER_READ_TIMEOUT_MS:I = 0x7530

.field private static final READ_TIMEOUT_MS:I = 0x3a98

.field private static final SEEK_DEBOUNCE_MS:J = 0x15eL

.field public static final TRANSLATION_SERVICE_GOOGLE:Ljava/lang/String; = "google"

.field public static final TRANSLATION_SERVICE_MY_MEMORY:Ljava/lang/String; = "mymemory"

.field public static final TRANSLATION_SERVICE_OPENROUTER:Ljava/lang/String; = "openrouter"

.field private static volatile abortTranslation:Z

.field private static volatile activeConnection:Ljava/net/HttpURLConnection;

.field private static volatile liveBatchDone:[Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static volatile liveBatches:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile liveOriginals:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;"
        }
    .end annotation
.end field

.field private static final liveSession:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile openRouterCostsFetched:Z

.field private static final openRouterModelCosts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile pendingSeekTimeMs:J

.field private static volatile reportNextTranslationError:Z

.field private static volatile reprioritize:Z

.field private static final seekCutter:Ljava/lang/Runnable;

.field private static final seekHandler:Landroid/os/Handler;

.field private static volatile translatingBatchIndex:I


# direct methods
.method public static synthetic $r8$lambda$-_GzlJ-bHBlePlk9sZNYY6UvkoU(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MyMemory translation starting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " lang: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0XwGBTpnZ9mmC5aYYvWTnhW7EJI(I)Ljava/lang/String;
    .registers 3

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenRouter positional fallback applied: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " lines"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2_dGoozE3PWv7kkE2zUg5x3NpyA(Ljava/util/function/Consumer;Ljava/util/List;)V
    .registers 2

    .line 469
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9IPDn_UZmk5VJsiPlC59kO2Cw2Y(Ljava/lang/String;J)Ljava/lang/String;
    .registers 6

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenRouter translation complete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " fetchTime: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9T4jgZ23W_z-5b66dfTG-SpW0zs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenRouter translation starting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " lang: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " model: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CGVhYtRe_uGM7t1LPMlt-reXgso(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 15

    .line 957
    :try_start_0
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->openRouterModelCosts:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_9d

    .line 958
    :try_start_3
    sget-boolean v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->openRouterCostsFetched:Z

    if-nez v1, :cond_99

    .line 959
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://openrouter.ai/api/v1/models"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    const/16 v2, 0x2710

    .line 960
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x3a98

    .line 961
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 962
    const-string v2, "Accept-Encoding"

    const-string v3, "identity"

    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_8d

    .line 965
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/gold/extension/shared/requests/Requester;->parseString(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 966
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_41
    if-ge v3, v2, :cond_96

    .line 967
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 968
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 969
    const-string v6, "pricing"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 970
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8a

    if-nez v4, :cond_5c

    goto :goto_8a

    .line 972
    :cond_5c
    const-string v6, "prompt"

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    .line 973
    const-string v6, "completion"

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-wide v11, 0x407b300000000000L  # 435.0

    mul-double/2addr v9, v11

    const-wide v11, 0x4077700000000000L  # 375.0

    mul-double/2addr v6, v11

    add-double/2addr v9, v6

    const-wide v6, 0x4092c00000000000L  # 1200.0

    mul-double/2addr v9, v6

    double-to-float v4, v9

    .line 978
    sget-object v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->openRouterModelCosts:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8a

    :catchall_88
    move-exception v1

    goto :goto_9b

    :cond_8a
    :goto_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 981
    :cond_8d
    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda23;

    invoke-direct {v1, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda23;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :cond_96
    const/4 v1, 0x1

    .line 984
    sput-boolean v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->openRouterCostsFetched:Z

    .line 986
    :cond_99
    monitor-exit v0

    goto :goto_a6

    :goto_9b
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_3 .. :try_end_9c} :catchall_88

    :try_start_9c
    throw v1
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9d} :catch_9d

    :catch_9d
    move-exception v0

    .line 988
    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda24;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 990
    :goto_a6
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda25;-><init>(Ljava/util/function/Consumer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G0XRZcKskU_phSbl29t71kY1u2E()Ljava/lang/String;
    .registers 1

    .line 988
    const-string v0, "OpenRouter model cost fetch failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$J0yRv26hLrr5WMI9OxvAglzxcHU()Ljava/lang/String;
    .registers 1

    .line 278
    const-string v0, "Reprioritizing translation after seek"

    return-object v0
.end method

.method public static synthetic $r8$lambda$LtGwv2OI5hqjLancJRBIcNgtSf4(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid line number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PWvs8q0CuK0Y32SooSV07P4G1ho(Ljava/lang/String;J)Ljava/lang/String;
    .registers 6

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MyMemory translation complete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " fetchTime: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PfzI1s4lA1FKVd0vGe5GjkxB24k(Ljava/util/function/Consumer;)V
    .registers 2

    const/4 v0, 0x0

    .line 941
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S5mVq6NvbTct6qw9fbR9w2CoeDU()V
    .registers 0

    .line 0
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->applySeekCut()V

    return-void
.end method

.method public static synthetic $r8$lambda$T9a58xKV2d-qUGTNh7VxmJGw1iU(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Translation failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TA2EbRVYDmYlmNolIXL9iZGAL8A(ILjava/util/function/Consumer;Ljava/util/List;[Z)V
    .registers 5

    .line 315
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveSession:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p0, v0, :cond_9

    return-void

    .line 316
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 317
    sput-object p3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveBatchDone:[Z

    return-void
.end method

.method public static synthetic $r8$lambda$TyVFKbY-DeLWU_QSPUBfjinZuDs(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 3

    .line 990
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->openRouterModelCosts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UXlG7g8Q3UY5p8hRE1sfYYEgjow()Ljava/lang/String;
    .registers 1

    .line 951
    const-string v0, "Cannot fetch OpenRouter costs as network is not connected"

    return-object v0
.end method

.method public static synthetic $r8$lambda$XdQ5uXlKXgjZP1QwSlW_WpoAw2Q(II)Ljava/lang/String;
    .registers 4

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenRouter line mismatch - expected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " segment(s) queued for retry"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YOxeJqssKdFldI6XHohpRAPNbmw(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Translate batch canceled for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$birH9chAWj9_HGWliRwGfQgCNSk(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 3

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Translation aborted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cVFgUO-9kF1MtznHMHxurrlXWy0(III)Ljava/lang/String;
    .registers 5

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Line count mismatch - expected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; last: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p0, p2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " segment(s) keep original text"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eauygBcaZSMyOO9G0YTu5JiDJJU(I)Ljava/lang/String;
    .registers 3

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not fetch OpenRouter costs: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gBO7VKt6p9tTtCyqQ8KTarBaPuw()Ljava/lang/String;
    .registers 1

    .line 495
    const-string v0, "Batch failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$mTLuN2xrvtiIBtSWyXcIPEDxmKM(Ljava/lang/String;J)Ljava/lang/String;
    .registers 6

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Google translation complete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " fetchTime: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ql8WbbXT1XUXZ8x87qJJ2PBKnGs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Google translation starting: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " lang: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v83nA29j3-NhG_7-E5-hVCVVQCg(Ljava/util/List;Ljava/util/List;ILjava/lang/String;Landroid/os/Handler;Ljava/util/function/Consumer;Ljava/util/List;)V
    .registers 8

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 468
    invoke-static {v0, p1, p2, p6, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->applyBatch(Ljava/util/List;Ljava/util/List;ILjava/util/List;Ljava/lang/String;)V

    .line 469
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda26;

    invoke-direct {p0, p5, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda26;-><init>(Ljava/util/function/Consumer;Ljava/util/List;)V

    invoke-virtual {p4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$yOn6zT_9ZgJNuQWFJ6_kjIprolI(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .registers 3

    .line 946
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->openRouterModelCosts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveSession:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    .line 104
    sput v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->translatingBatchIndex:I

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->openRouterModelCosts:Ljava/util/Map;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->seekHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->seekCutter:Ljava/lang/Runnable;

    .line 762
    const-string v0, "NEXT AVAILABLE IN\\s+(\\d+)\\s*HOURS?(?:\\s+(\\d+)\\s*MINUTES?)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->MYMEMORY_NEXT_AVAILABLE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyBatch(Ljava/util/List;Ljava/util/List;ILjava/util/List;Ljava/lang/String;)V
    .registers 16
    .param p3  # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_3

    goto :goto_3b

    .line 442
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 443
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 444
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eq v1, v0, :cond_19

    .line 446
    new-instance v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda14;

    invoke-direct {v3, v0, v1, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda14;-><init>(III)V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v2, :cond_3b

    .line 451
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    add-int v3, p2, v0

    .line 452
    new-instance v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-wide v5, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    iget-wide v7, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    .line 453
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-interface {p0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_3b
    :goto_3b
    return-void
.end method

.method private static applySeekCut()V
    .registers 5

    .line 143
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->activeConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_5

    goto :goto_29

    .line 145
    :cond_5
    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveBatches:Ljava/util/List;

    .line 146
    sget-object v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveBatchDone:[Z

    if-eqz v1, :cond_29

    if-nez v2, :cond_e

    goto :goto_29

    .line 148
    :cond_e
    sget-wide v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->pendingSeekTimeMs:J

    invoke-static {v1, v3, v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->findBatchAtTime(Ljava/util/List;J)I

    move-result v1

    .line 149
    sget v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->translatingBatchIndex:I

    if-ne v1, v3, :cond_19

    goto :goto_29

    :cond_19
    if-ltz v1, :cond_23

    .line 150
    array-length v3, v2

    if-ge v1, v3, :cond_23

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_23

    goto :goto_29

    :cond_23
    const/4 v1, 0x1

    .line 151
    sput-boolean v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->reprioritize:Z

    .line 152
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_29
    :goto_29
    return-void
.end method

.method private static applyStreamedLine(Ljava/lang/String;Ljava/util/List;I[I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I[I)Z"
        }
    .end annotation

    .line 572
    invoke-static {p0, p1, p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->parseLine(Ljava/lang/String;Ljava/util/List;I)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_e

    .line 573
    aget p0, p3, p1

    const/4 p2, 0x1

    add-int/2addr p0, p2

    aput p0, p3, p1

    return p2

    :cond_e
    return p1
.end method

.method private static capFirstBatch(Ljava/util/List;Ljava/util/List;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    .line 399
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 400
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_e

    goto :goto_2d

    :cond_e
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_12
    if-ge v4, v1, :cond_2b

    .line 405
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-object v6, v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    add-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x1

    const/16 v4, 0x15e

    if-lt v5, v4, :cond_29

    goto :goto_2b

    :cond_29
    move v4, v6

    goto :goto_12

    :cond_2b
    :goto_2b
    if-lt v6, v1, :cond_2e

    :goto_2d
    return-void

    .line 410
    :cond_2e
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0, v3, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 411
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0, v6, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 412
    invoke-interface {p0, p2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/2addr p2, v2

    .line 413
    invoke-interface {p0, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 414
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static fetchOpenRouterModelCost(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 3
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2e

    .line 940
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2e

    .line 945
    :cond_9
    sget-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->openRouterCostsFetched:Z

    if-eqz v0, :cond_16

    .line 946
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda20;-><init>(Ljava/util/function/Consumer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 950
    :cond_16
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_25

    .line 951
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda21;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda21;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 955
    :cond_25
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda22;-><init>(Ljava/util/function/Consumer;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void

    .line 941
    :cond_2e
    :goto_2e
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda19;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda19;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static findBatchAtTime(Ljava/util/List;J)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;>;J)I"
        }
    .end annotation

    .line 502
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_23

    .line 504
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 505
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-wide v2, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_20

    return v1

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_23
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static isAwaitingTranslationAt(IJLjava/lang/String;)Z
    .registers 7

    .line 162
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveOriginals:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-ltz p0, :cond_38

    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt p0, v2, :cond_f

    goto :goto_38

    .line 166
    :cond_f
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v1

    .line 167
    :cond_1e
    sget-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveBatches:Ljava/util/List;

    .line 168
    sget-object p3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveBatchDone:[Z

    const/4 v0, 0x1

    if-eqz p0, :cond_37

    if-nez p3, :cond_28

    goto :goto_37

    .line 170
    :cond_28
    invoke-static {p0, p1, p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->findBatchAtTime(Ljava/util/List;J)I

    move-result p0

    if-ltz p0, :cond_37

    .line 171
    array-length p1, p3

    if-ge p0, p1, :cond_37

    aget-boolean p0, p3, p0

    if-nez p0, :cond_36

    goto :goto_37

    :cond_36
    return v1

    :cond_37
    :goto_37
    return v0

    :cond_38
    :goto_38
    return v1
.end method

.method public static isMyMemoryQuotaError(ILjava/lang/String;)Z
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x193

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x1ad

    if-ne p0, v0, :cond_9

    goto :goto_1a

    :cond_9
    if-nez p1, :cond_d

    const/4 p0, 0x0

    return p0

    .line 759
    :cond_d
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "YOU USED ALL AVAILABLE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    return p0
.end method

.method public static isOpenRouterCreditsError(ILjava/lang/String;)Z
    .registers 5

    .line 744
    invoke-static {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->parseOpenRouterErrorCode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x192

    if-eq v0, v2, :cond_1f

    if-ne p0, v2, :cond_c

    goto :goto_1f

    .line 748
    :cond_c
    const-string p0, "credit"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1f

    const-string p0, "limit exceeded"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public static onSeek(J)V
    .registers 4

    .line 136
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->activeConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_5

    return-void

    .line 137
    :cond_5
    sput-wide p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->pendingSeekTimeMs:J

    .line 138
    sget-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->seekHandler:Landroid/os/Handler;

    sget-object p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->seekCutter:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x15e

    .line 139
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static parseLine(Ljava/lang/String;Ljava/util/List;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 547
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_15

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    if-eqz v1, :cond_59

    .line 548
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1e

    goto :goto_59

    .line 549
    :cond_1e
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_2f

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_2f

    const/16 v3, 0x29

    if-eq v2, v3, :cond_2f

    return v0

    .line 552
    :cond_2f
    :try_start_2f
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 553
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-lt v2, v3, :cond_59

    if-gt v2, p2, :cond_59

    .line 554
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_59

    sub-int/2addr v2, v3

    .line 555
    invoke-interface {p1, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_4f} :catch_50

    return v3

    :catch_50
    move-exception p1

    .line 559
    new-instance p2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :cond_59
    :goto_59
    return v0
.end method

.method public static parseMyMemoryNextAvailableMinutes(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 774
    :cond_4
    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->MYMEMORY_NEXT_AVAILABLE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 775
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_11

    return-object v0

    :cond_11
    const/4 v1, 0x1

    .line 776
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 777
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-nez v1, :cond_1e

    return-object v0

    .line 779
    :cond_1e
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    if-eqz p0, :cond_2d

    .line 780
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    int-to-long v2, p0

    add-long/2addr v0, v2

    .line 779
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static parseOpenRouterErrorCode(Ljava/lang/String;)I
    .registers 2

    .line 737
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "error"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return p0

    :catch_12
    const/4 p0, -0x1

    return p0
.end method

.method private static pickNextBatch(Ljava/util/List;Ljava/util/List;J)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;J)I"
        }
    .end annotation

    .line 424
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 425
    invoke-static {p0, p2, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->findBatchAtTime(Ljava/util/List;J)I

    move-result p0

    move p2, p0

    :goto_9
    if-ge p2, v0, :cond_1b

    .line 427
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_18

    return p2

    :cond_18
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_1b
    add-int/lit8 p0, p0, -0x1

    :goto_1d
    if-ltz p0, :cond_2f

    .line 430
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2c

    return p0

    :cond_2c
    add-int/lit8 p0, p0, -0x1

    goto :goto_1d

    :cond_2f
    const/4 p0, -0x1

    return p0
.end method

.method private static positionalFallback(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 603
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_26

    aget-object v3, p0, v2

    .line 604
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 605
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_23

    .line 606
    :cond_1c
    invoke-static {v3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->stripNumberPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 608
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, p1, :cond_2d

    return-object v0

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static readErrorBody(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 6

    .line 718
    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_e

    if-eqz p0, :cond_d

    .line 726
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_4c

    :cond_d
    return-object v0

    .line 720
    :cond_e
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 721
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_36

    .line 723
    :goto_1f
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_29

    goto :goto_1f

    :catchall_29
    move-exception v1

    goto :goto_38

    .line 724
    :cond_2b
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 725
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_36

    .line 726
    :try_start_32
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_4c

    return-object v1

    :catchall_36
    move-exception v1

    goto :goto_41

    .line 721
    :goto_38
    :try_start_38
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v2

    :try_start_3d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw v1
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_36

    :goto_41
    if-eqz p0, :cond_4b

    .line 718
    :try_start_43
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception p0

    :try_start_48
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4b
    :goto_4b
    throw v1
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4c} :catch_4c

    :catch_4c
    return-object v0
.end method

.method public static requestAbort()V
    .registers 1

    const/4 v0, 0x1

    .line 124
    sput-boolean v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->abortTranslation:Z

    .line 125
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->activeConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_a

    .line 126
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    return-void
.end method

.method private static splitBatchAtPlayhead(Ljava/util/List;Ljava/util/List;IJ)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;IJ)I"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_7

    goto :goto_2e

    .line 373
    :cond_7
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 374
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_15

    goto :goto_2e

    :cond_15
    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v4, v1, :cond_2b

    .line 378
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-wide v5, v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    cmp-long v5, v5, p3

    if-lez v5, :cond_28

    if-lez v4, :cond_2b

    goto :goto_2c

    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_2b
    const/4 v4, -0x1

    :goto_2c
    if-gtz v4, :cond_2f

    :goto_2e
    return p2

    .line 384
    :cond_2f
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 385
    new-instance p4, Ljava/util/ArrayList;

    invoke-interface {v0, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 386
    invoke-interface {p0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/2addr p2, v2

    .line 387
    invoke-interface {p0, p2, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 388
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return p2
.end method

.method private static splitByCharBudget(Ljava/util/List;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;>;"
        }
    .end annotation

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 517
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    .line 518
    iget-object v5, v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 519
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3b

    add-int v6, v3, v5

    if-le v6, p1, :cond_3b

    .line 520
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 524
    :cond_3b
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v5

    goto :goto_14

    .line 527
    :cond_40
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_49

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    return-object v0
.end method

.method private static streamCallback(Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)Ljava/util/function/Consumer;
    .registers 13
    .param p0  # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;>;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 466
    :cond_4
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda4;

    move-object v6, p0

    move-object v5, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;Ljava/util/List;ILjava/lang/String;Landroid/os/Handler;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private static stripNumberPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 584
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_14

    .line 585
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_14

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    if-lez v1, :cond_32

    if-ge v1, v0, :cond_32

    .line 587
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_28

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_28

    const/16 v2, 0x29

    if-ne v0, v2, :cond_32

    :cond_28
    add-int/lit8 v1, v1, 0x1

    .line 589
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_32
    return-object p0
.end method

.method private static toBoolArray(Ljava/util/List;)[Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    .line 358
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 359
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_18

    .line 360
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    return-object v1
.end method

.method public static translate(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/BooleanSupplier;)Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;>;",
            "Ljava/util/function/BooleanSupplier;",
            ")",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v6, p4

    .line 196
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 197
    :cond_b
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 199
    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->VOT_TRANSLATION_SERVICE:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v1

    .line 200
    const-string v2, "mymemory"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 201
    const-string v3, "openrouter"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v2, :cond_25

    const/16 v1, 0x1c2

    goto :goto_2c

    :cond_25
    if-eqz v7, :cond_2a

    const/16 v1, 0x5dc

    goto :goto_2c

    :cond_2a
    const/16 v1, 0xfa0

    .line 208
    :goto_2c
    new-instance v8, Ljava/util/ArrayList;

    .line 209
    invoke-static {v0, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->splitByCharBudget(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v9, 0x1

    .line 210
    sput-boolean v9, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->reportNextTranslationError:Z

    const/4 v10, 0x0

    .line 211
    sput-boolean v10, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->abortTranslation:Z

    .line 212
    sput-boolean v10, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->reprioritize:Z

    move v1, v2

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v3, v1

    .line 216
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 220
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 221
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    move v5, v10

    :goto_5b
    if-ge v5, v4, :cond_65

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5b

    :cond_65
    if-eqz v3, :cond_6b

    const/16 v3, 0x7d0

    :goto_69
    move v12, v3

    goto :goto_72

    :cond_6b
    if-eqz v7, :cond_6f

    move v12, v10

    goto :goto_72

    :cond_6f
    const/16 v3, 0x1f4

    goto :goto_69

    .line 229
    :goto_72
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveBatches:Ljava/util/List;

    .line 230
    invoke-static {v11}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->toBoolArray(Ljava/util/List;)[Z

    move-result-object v3

    sput-object v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveBatchDone:[Z

    .line 231
    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveOriginals:Ljava/util/List;

    const/4 v13, -0x1

    .line 232
    sput v13, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->translatingBatchIndex:I

    .line 233
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveSession:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v14

    move v3, v9

    move v0, v10

    const/16 v16, 0x0

    .line 242
    :goto_8e
    :try_start_8e
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_98

    .line 243
    sget-boolean v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->abortTranslation:Z

    if-eqz v4, :cond_9e

    :cond_98
    :goto_98
    move/from16 p1, v13

    const/16 v18, 0x0

    goto/16 :goto_1dd

    .line 244
    :cond_9e
    sput-boolean v10, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->reprioritize:Z

    .line 246
    sget-wide v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->videoPositionHint:J

    .line 247
    invoke-static {v8, v11, v4, v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->pickNextBatch(Ljava/util/List;Ljava/util/List;J)I

    move-result v9

    if-gez v9, :cond_a9

    goto :goto_98

    .line 254
    :cond_a9
    invoke-static {v8, v11, v9, v4, v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->splitBatchAtPlayhead(Ljava/util/List;Ljava/util/List;IJ)I

    move-result v9

    if-gez v9, :cond_b0

    goto :goto_98

    :cond_b0
    if-eqz v7, :cond_bf

    if-eqz v3, :cond_bf

    .line 259
    invoke-static {v8, v11, v9}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->capFirstBatch(Ljava/util/List;Ljava/util/List;I)V

    goto :goto_bf

    :catchall_b8
    move-exception v0

    move/from16 p1, v13

    :goto_bb
    const/16 v18, 0x0

    goto/16 :goto_1ea

    .line 263
    :cond_bf
    :goto_bf
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move v4, v10

    move v5, v4

    :goto_c7
    if-ge v4, v9, :cond_d8

    .line 265
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    add-int v5, v5, v17

    add-int/lit8 v4, v4, 0x1

    goto :goto_c7

    .line 268
    :cond_d8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveBatches:Ljava/util/List;

    .line 270
    sput v9, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->translatingBatchIndex:I
    :try_end_e1
    .catchall {:try_start_8e .. :try_end_e1} :catchall_b8

    move/from16 v17, v0

    move v4, v5

    move/from16 p1, v13

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    .line 272
    :try_start_ea
    invoke-static/range {v0 .. v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->streamCallback(Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)Ljava/util/function/Consumer;

    move-result-object v13
    :try_end_ee
    .catchall {:try_start_ea .. :try_end_ee} :catchall_1da

    move-object/from16 v15, p0

    const/16 v18, 0x0

    .line 271
    :try_start_f2
    invoke-static {v15, v3, v5, v13}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->translateBatchSafe(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/function/Consumer;)Ljava/util/List;

    move-result-object v13

    .line 273
    sput p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->translatingBatchIndex:I

    .line 277
    sget-boolean v19, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->reprioritize:Z

    if-eqz v19, :cond_113

    sget-boolean v19, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->abortTranslation:Z

    if-nez v19, :cond_113

    .line 278
    new-instance v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda15;

    invoke-direct {v3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    move/from16 v13, p1

    move/from16 v0, v17

    const/4 v3, 0x1

    const/4 v9, 0x1

    goto/16 :goto_8e

    :catchall_110
    move-exception v0

    goto/16 :goto_1ea

    .line 283
    :cond_113
    sget-boolean v19, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->abortTranslation:Z

    if-eqz v19, :cond_119

    goto/16 :goto_1dd

    .line 285
    :cond_119
    invoke-static {v2, v3, v4, v13, v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->applyBatch(Ljava/util/List;Ljava/util/List;ILjava/util/List;Ljava/lang/String;)V

    if-eqz v13, :cond_15b

    .line 291
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_157

    .line 292
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v20, v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v3, v10, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 293
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v10

    const/4 v13, 0x0

    invoke-interface {v3, v13, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v8, v9, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v9, 0x1

    .line 294
    invoke-interface {v8, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 295
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v11, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_15e

    :cond_157
    move/from16 v20, v7

    const/4 v13, 0x0

    goto :goto_15e

    :cond_15b
    move/from16 v20, v7

    move v13, v10

    .line 298
    :goto_15e
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v11, v9, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v17, 0x1

    .line 306
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveBatches:Ljava/util/List;

    .line 311
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 312
    invoke-static {v11}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->toBoolArray(Ljava/util/List;)[Z

    move-result-object v7

    if-eqz v0, :cond_180

    .line 314
    new-instance v9, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda16;

    invoke-direct {v9, v14, v0, v4, v7}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda16;-><init>(ILjava/util/function/Consumer;Ljava/util/List;[Z)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_182

    .line 320
    :cond_180
    sput-object v7, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveBatchDone:[Z

    :goto_182
    if-nez v16, :cond_186

    move-object/from16 v16, v4

    :cond_186
    if-eqz v6, :cond_1bb

    .line 326
    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v7, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda17;

    invoke-direct {v7, v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda17;-><init>(Ljava/util/function/BooleanSupplier;)V

    invoke-direct {v4, v7}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 327
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_195
    .catchall {:try_start_f2 .. :try_end_195} :catchall_110

    .line 329
    :try_start_195
    invoke-virtual {v4}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1bb

    .line 330
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda18;

    invoke-direct {v0, v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_1a9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_195 .. :try_end_1a9} :catch_1b4
    .catch Ljava/lang/InterruptedException; {:try_start_195 .. :try_end_1a9} :catch_1b2
    .catchall {:try_start_195 .. :try_end_1a9} :catchall_110

    .line 350
    :goto_1a9
    sput-object v18, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveBatches:Ljava/util/List;

    .line 351
    sput-object v18, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveBatchDone:[Z

    .line 352
    sput-object v18, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveOriginals:Ljava/util/List;

    .line 353
    sput p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->translatingBatchIndex:I

    return-object v16

    :catch_1b2
    move-exception v0

    goto :goto_1b5

    :catch_1b4
    move-exception v0

    .line 334
    :goto_1b5
    :try_start_1b5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 338
    :cond_1bb
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4
    :try_end_1bf
    .catchall {:try_start_1b5 .. :try_end_1bf} :catchall_110

    if-ge v3, v4, :cond_1d0

    if-lez v12, :cond_1d0

    int-to-long v9, v12

    .line 341
    :try_start_1c4
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c7
    .catch Ljava/lang/InterruptedException; {:try_start_1c4 .. :try_end_1c7} :catch_1c8
    .catchall {:try_start_1c4 .. :try_end_1c7} :catchall_110

    goto :goto_1d0

    .line 343
    :catch_1c8
    :try_start_1c8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1cf
    .catchall {:try_start_1c8 .. :try_end_1cf} :catchall_110

    goto :goto_1a9

    :cond_1d0
    :goto_1d0
    move v0, v3

    move v3, v13

    move v10, v3

    move/from16 v7, v20

    const/4 v9, 0x1

    move/from16 v13, p1

    goto/16 :goto_8e

    :catchall_1da
    move-exception v0

    goto/16 :goto_bb

    :goto_1dd
    if-eqz v16, :cond_1e1

    move-object/from16 v2, v16

    .line 350
    :cond_1e1
    sput-object v18, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveBatches:Ljava/util/List;

    .line 351
    sput-object v18, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveBatchDone:[Z

    .line 352
    sput-object v18, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveOriginals:Ljava/util/List;

    .line 353
    sput p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->translatingBatchIndex:I

    return-object v2

    .line 350
    :goto_1ea
    sput-object v18, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveBatches:Ljava/util/List;

    .line 351
    sput-object v18, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveBatchDone:[Z

    .line 352
    sput-object v18, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->liveOriginals:Ljava/util/List;

    .line 353
    sput p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->translatingBatchIndex:I

    .line 354
    throw v0
.end method

.method private static translateBatch(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/function/Consumer;)Ljava/util/List;
    .registers 6
    .param p3  # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 535
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->VOT_TRANSLATION_SERVICE:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    .line 536
    const-string v1, "mymemory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 537
    invoke-static {p0, p1, p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->translateBatchMyMemory(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 539
    :cond_13
    const-string v1, "openrouter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 540
    invoke-static {p0, p1, p2, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->translateBatchOpenRouter(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/function/Consumer;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 542
    :cond_20
    invoke-static {p0, p1, p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->translateBatchGoogle(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static translateBatchGoogle(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 614
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 616
    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 618
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 619
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    .line 620
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_35

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    :cond_35
    iget-object v2, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 624
    :cond_3b
    new-instance p1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&dt=t&tl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 625
    const-string v2, "POST"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x2710

    .line 626
    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x3a98

    .line 627
    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 628
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v2, "User-Agent"

    const-string v3, "Mozilla/5.0"

    invoke-virtual {p1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 630
    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "q="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 634
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 635
    array-length v2, p0

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 636
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 637
    :try_start_9d
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_116

    .line 638
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 640
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 v2, 0xc8

    if-ne p0, v2, :cond_eb

    .line 649
    new-instance p0, Lorg/json/JSONArray;

    invoke-static {p1}, Lcom/gold/extension/shared/requests/Requester;->parseString(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p0

    .line 650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 651
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v4, p1

    :goto_c3
    if-ge v4, v3, :cond_d3

    .line 652
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_c3

    .line 654
    :cond_d3
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda6;

    invoke-direct {p0, p2, v0, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 656
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n"

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 642
    :cond_eb
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->notifyHttpError(I)V

    .line 643
    new-instance v0, Ljava/lang/Exception;

    .line 644
    invoke-static {p1}, Lcom/gold/extension/shared/requests/Requester;->parseString(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Google HTTP status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " language: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " response: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_116
    move-exception p0

    if-eqz v2, :cond_121

    .line 636
    :try_start_119
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_11c
    .catchall {:try_start_119 .. :try_end_11c} :catchall_11d

    goto :goto_121

    :catchall_11d
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_121
    :goto_121
    throw p0
.end method

.method private static translateBatchMyMemory(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 665
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 667
    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 669
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 670
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    .line 671
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_35

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 672
    :cond_35
    iget-object v2, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 675
    :cond_3b
    sget-object p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->lastSourceLang:Ljava/lang/String;

    .line 677
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 679
    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->VOT_MYMEMORY_EMAIL:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v3}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v3

    .line 681
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5a

    const-string v2, ""

    goto :goto_70

    :cond_5a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&de="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 682
    :goto_70
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://api.mymemory.translated.net/get?q="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&langpair="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 p1, 0x2710

    .line 685
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 p1, 0x3a98

    .line 686
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 687
    const-string p1, "User-Agent"

    const-string v2, "Mozilla/5.0"

    invoke-virtual {p0, p1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_10d

    .line 701
    new-instance p1, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/gold/extension/shared/requests/Requester;->parseString(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 702
    const-string p0, "responseStatus"

    invoke-virtual {p1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_e6

    .line 709
    const-string p0, "responseData"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "translatedText"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 710
    const-string p1, "\n"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 712
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2, v0, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;J)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object p0

    .line 704
    :cond_e6
    const-string p2, "responseDetails"

    const-string v0, "unknown error"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 705
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->notifyMyMemoryError(ILjava/lang/String;)V

    .line 706
    new-instance p2, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MyMemory error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 693
    :cond_10d
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->readErrorBody(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    .line 694
    invoke-static {p1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->notifyMyMemoryError(ILjava/lang/String;)V

    .line 695
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyMemory HTTP status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " language: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " response: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static translateBatchOpenRouter(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/function/Consumer;)Ljava/util/List;
    .registers 22
    .param p3  # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 787
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 789
    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->VOT_OPENROUTER_MODEL:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v2

    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 791
    new-instance v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda7;

    move-object/from16 v6, p0

    invoke-direct {v5, v6, v0, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 793
    sget-object v5, Lcom/gold/extension/youtube/settings/Settings;->VOT_OPENROUTER_API_KEY:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v5}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 794
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2f9

    .line 797
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 798
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_36
    const/16 v10, 0xa

    if-ge v9, v7, :cond_58

    if-lez v9, :cond_3f

    .line 799
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3f
    add-int/lit8 v10, v9, 0x1

    .line 800
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p1

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-object v9, v9, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, v10

    goto :goto_36

    :cond_58
    move-object/from16 v11, p1

    .line 803
    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 804
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "system"

    .line 805
    const-string v13, "role"

    invoke-virtual {v9, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "Translate numbered YouTube caption lines to "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "). The text may have misspellings or noise - translate the intent. Prefix each translation with its original line number and a colon. One line per number. Do not merge or skip."

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 806
    const-string v12, "content"

    invoke-virtual {v9, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 809
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "user"

    .line 810
    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 811
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 814
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "sort"

    const-string v14, "latency"

    .line 815
    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 816
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "model"

    .line 817
    invoke-virtual {v13, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v13, "temperature"

    .line 818
    invoke-virtual {v2, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v13, "stream"

    const/4 v14, 0x1

    .line 819
    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 820
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    mul-int/lit8 v13, v13, 0x1e

    const-string v15, "max_tokens"

    invoke-virtual {v2, v15, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v13, "provider"

    .line 821
    invoke-virtual {v2, v13, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 822
    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "messages"

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 824
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 827
    new-instance v6, Ljava/net/URL;

    const-string v7, "https://openrouter.ai/api/v1/chat/completions"

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 829
    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v7, 0x2710

    .line 830
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v7, 0x7530

    .line 831
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 832
    const-string v7, "Content-Type"

    const-string v9, "application/json"

    invoke-virtual {v6, v7, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v7, "Bearer "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Authorization"

    invoke-virtual {v6, v7, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v5, "Accept-Encoding"

    const-string v7, "identity"

    invoke-virtual {v6, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-virtual {v6, v14}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 836
    array-length v5, v2

    invoke-virtual {v6, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 837
    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 838
    :try_start_139
    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_13c
    .catchall {:try_start_139 .. :try_end_13c} :catchall_2ec

    .line 839
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 841
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 842
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-object v7, v7, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14c

    .line 843
    :cond_15e
    new-array v5, v14, [I

    aput v8, v5, v8

    .line 845
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 847
    sput-object v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->activeConnection:Ljava/net/HttpURLConnection;

    .line 849
    :try_start_169
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_2b1

    .line 860
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 861
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;
    :try_end_17a
    .catchall {:try_start_169 .. :try_end_17a} :catchall_2ad

    const/16 p0, 0x0

    .line 862
    :try_start_17c
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v15, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v14, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_188
    .catchall {:try_start_17c .. :try_end_188} :catchall_2a2

    .line 864
    :cond_188
    :goto_188
    :try_start_188
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1a8

    .line 865
    const-string v10, "data: "

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_197

    goto :goto_188

    :cond_197
    const/4 v10, 0x6

    .line 866
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 867
    const-string v10, "[DONE]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1a6
    .catchall {:try_start_188 .. :try_end_1a6} :catchall_208

    if-eqz v10, :cond_1ac

    :cond_1a8
    move-object/from16 v17, v7

    goto/16 :goto_21c

    .line 871
    :cond_1ac
    :try_start_1ac
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1b1} :catch_215
    .catchall {:try_start_1ac .. :try_end_1b1} :catchall_208

    .line 875
    :try_start_1b1
    const-string v9, "choices"

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_188

    .line 876
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-nez v10, :cond_1c0

    goto :goto_188

    .line 877
    :cond_1c0
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "delta"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_1cd

    goto :goto_188

    .line 880
    :cond_1cd
    const-string v10, ""

    invoke-virtual {v9, v12, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 881
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    move v15, v8

    :goto_1db
    if-ge v15, v10, :cond_188

    .line 883
    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move-object/from16 v17, v7

    const/16 v7, 0xa

    if-ne v8, v7, :cond_20c

    .line 885
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    .line 886
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 887
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v8, v2, v7, v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->applyStreamedLine(Ljava/lang/String;Ljava/util/List;I[I)Z

    move-result v7

    if-eqz v7, :cond_20f

    if-eqz v1, :cond_20f

    .line 889
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_20f

    :catchall_208
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2a4

    .line 892
    :cond_20c
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_20f
    :goto_20f
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v17

    const/4 v8, 0x0

    goto :goto_1db

    :catch_215
    move-object/from16 v17, v7

    move-object/from16 v7, v17

    const/4 v8, 0x0

    goto/16 :goto_188

    .line 897
    :goto_21c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_23e

    .line 898
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 899
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v2, v8, v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->applyStreamedLine(Ljava/lang/String;Ljava/util/List;I[I)Z

    move-result v7

    if-eqz v7, :cond_23e

    if-eqz v1, :cond_23e

    .line 901
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_23e
    .catchall {:try_start_1b1 .. :try_end_23e} :catchall_208

    .line 904
    :cond_23e
    :try_start_23e
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_241
    .catchall {:try_start_23e .. :try_end_241} :catchall_2a2

    .line 906
    sget-object v7, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->activeConnection:Ljava/net/HttpURLConnection;

    if-ne v7, v6, :cond_247

    sput-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->activeConnection:Ljava/net/HttpURLConnection;

    .line 909
    :cond_247
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    const/16 v16, 0x0

    .line 913
    aget v7, v5, v16

    if-eq v7, v6, :cond_280

    .line 914
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->positionalFallback(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_280

    const/4 v8, 0x0

    :goto_25c
    if-ge v8, v6, :cond_26a

    .line 916
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v2, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_25c

    :cond_26a
    const/16 v16, 0x0

    .line 917
    aput v6, v5, v16

    if-eqz v1, :cond_278

    .line 918
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 919
    :cond_278
    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda8;

    invoke-direct {v1, v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_280
    const/4 v7, 0x0

    .line 923
    aget v1, v5, v7

    .line 924
    new-instance v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda9;

    invoke-direct {v5, v0, v3, v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;J)V

    invoke-static {v5}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    if-eq v1, v6, :cond_2a1

    .line 928
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda10;

    invoke-direct {v0, v6, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda10;-><init>(II)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    if-lez v1, :cond_2a1

    .line 933
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2, v7, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_2a1
    return-object v2

    :catchall_2a2
    move-exception v0

    goto :goto_2e5

    .line 861
    :goto_2a4
    :try_start_2a4
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_2a7
    .catchall {:try_start_2a4 .. :try_end_2a7} :catchall_2a8

    goto :goto_2ac

    :catchall_2a8
    move-exception v0

    :try_start_2a9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2ac
    throw v1

    :catchall_2ad
    move-exception v0

    const/16 p0, 0x0

    goto :goto_2e5

    :cond_2b1
    const/16 p0, 0x0

    .line 851
    invoke-static {v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->readErrorBody(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x0

    .line 852
    sput-boolean v16, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->reportNextTranslationError:Z

    .line 853
    invoke-static {v13, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->notifyOpenRouterError(ILjava/lang/String;)V

    .line 854
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenRouter HTTP status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " language: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " response: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2e5
    .catchall {:try_start_2a9 .. :try_end_2e5} :catchall_2a2

    .line 906
    :goto_2e5
    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->activeConnection:Ljava/net/HttpURLConnection;

    if-ne v1, v6, :cond_2eb

    sput-object p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->activeConnection:Ljava/net/HttpURLConnection;

    .line 907
    :cond_2eb
    throw v0

    :catchall_2ec
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_2f8

    .line 837
    :try_start_2f0
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2f3
    .catchall {:try_start_2f0 .. :try_end_2f3} :catchall_2f4

    goto :goto_2f8

    :catchall_2f4
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2f8
    :goto_2f8
    throw v1

    .line 794
    :cond_2f9
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "OpenRouter API key is not set"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static translateBatchSafe(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/function/Consumer;)Ljava/util/List;
    .registers 4
    .param p3  # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 478
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->translateBatch(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/function/Consumer;)Ljava/util/List;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 480
    sget-boolean p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->abortTranslation:Z

    const/4 p2, 0x0

    if-nez p1, :cond_56

    sget-boolean p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->reprioritize:Z

    if-eqz p1, :cond_10

    goto :goto_56

    .line 484
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 487
    instance-of p3, p0, Ljava/io/FileNotFoundException;

    if-nez p3, :cond_3a

    if-eqz p1, :cond_3d

    const-string p3, "402"

    .line 488
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3a

    const-string p3, "429"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3a

    const-string p3, "401"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3a

    const-string p3, "403"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3d

    :cond_3a
    const/4 p3, 0x1

    .line 489
    sput-boolean p3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->abortTranslation:Z

    .line 491
    :cond_3d
    sget-boolean p3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->reportNextTranslationError:Z

    if-eqz p3, :cond_4d

    const/4 p3, 0x0

    .line 492
    sput-boolean p3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->reportNextTranslationError:Z

    .line 493
    new-instance p3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda12;

    invoke-direct {p3, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    goto :goto_55

    .line 495
    :cond_4d
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda13;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :goto_55
    return-object p2

    .line 481
    :cond_56
    :goto_56
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Exception;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object p2
.end method
