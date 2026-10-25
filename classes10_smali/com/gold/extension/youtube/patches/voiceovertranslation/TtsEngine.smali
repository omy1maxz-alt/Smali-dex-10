.class final Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;
.super Ljava/lang/Object;
.source "TtsEngine.java"


# static fields
.field private static final AUDIO_FORMAT:Ljava/lang/String; = "audio-24khz-48kbitrate-mono-mp3"

.field private static final CONNECT_TIMEOUT_MS:I = 0x2710

.field public static final ESTIMATED_MS_PER_CHAR:J = 0x41L

.field public static final INSTANCE:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

.field private static final READ_TIMEOUT_MS:I = 0x4e20

.field private static final SEC_MS_GEC_VERSION:Ljava/lang/String; = "1-143.0.3650.75"

.field private static final SOCKET_MAX_IDLE_MS:J = 0x4e20L

.field private static final TOKEN:Ljava/lang/String; = "6A5AA1D4EAFF4E9FB37E23D68491D6F4"

.field private static final TTS_GAIN_MILLIBELS:I = 0x258

.field private static final WS_HOST:Ljava/lang/String; = "speech.platform.bing.com"

.field private static final WS_PORT:I = 0x1bb


# instance fields
.field public final SEGMENT_START_END_MAX_MOVEMENT_FROM_ORIGINAL_MS:J

.field private configSent:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "synthesisLock"
    .end annotation
.end field

.field private currentEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

.field private currentPlayer:Landroid/media/MediaPlayer;

.field private lastSynthesisEndMs:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "synthesisLock"
    .end annotation
.end field

.field private persistentIn:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "synthesisLock"
    .end annotation
.end field

.field private persistentOut:Ljava/io/OutputStream;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "synthesisLock"
    .end annotation
.end field

.field private persistentSocket:Ljavax/net/ssl/SSLSocket;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "synthesisLock"
    .end annotation
.end field

.field private playLatch:Ljava/util/concurrent/CountDownLatch;

.field private playbackId:J

.field private speaking:Z

.field private stopped:Z

.field private final synthesisLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$1TNJfK-bIXb2OZkiG0ondyFpOZ8()Ljava/lang/String;
    .registers 1

    .line 162
    const-string v0, "MediaPlayer stop failed in markBusy"

    return-object v0
.end method

.method public static synthetic $r8$lambda$28g01pSC0fha-tdUrZRn0pgXaVM()Ljava/lang/String;
    .registers 1

    .line 271
    const-string v0, "MediaPlayer pause failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$6ZjrI6hAwxoJ0CH4S87Ol5GZ97E(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;[BJFLjava/lang/Runnable;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->lambda$speak$0([BJFLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6oxOW3JhEJ4nW0KXNE2ur01pm_M(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;JLandroid/media/MediaPlayer;Ljava/util/concurrent/CountDownLatch;F[BFJ)V
    .registers 10

    .line 0
    invoke-direct/range {p0 .. p9}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->lambda$playMp3$25(JLandroid/media/MediaPlayer;Ljava/util/concurrent/CountDownLatch;F[BFJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$CwNDyySpL3i30Ob8j1RWWlo4Rso()Ljava/lang/String;
    .registers 1

    .line 182
    const-string v0, "clearing busy flag"

    return-object v0
.end method

.method public static synthetic $r8$lambda$IJByXeeV8Z8LpdE4oyroDXQz-iY()Ljava/lang/String;
    .registers 1

    .line 312
    const-string v0, "Stopping TTS"

    return-object v0
.end method

.method public static synthetic $r8$lambda$K3DXIM6GmOtZpSjVix8H7NMVDjw()Ljava/lang/String;
    .registers 1

    .line 328
    const-string v0, "MediaPlayer stop failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$K9QfhEbOpuRk_e1A1Kp1Htq7hcU(II)Ljava/lang/String;
    .registers 4

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaPlayer error what: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " extra: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$M2aKwTR-QOHWJ0m6lhfMGBpHCNw()Ljava/lang/String;
    .registers 1

    .line 134
    const-string v0, "Edge TTS speak failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$MpL7qIrCyJHH3YjQhaOPWFWM-84(Ljava/util/concurrent/CountDownLatch;Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 749
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda28;

    invoke-direct {p1, p2, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda28;-><init>(II)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 750
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$Oh--k4EYlLB1EBhg1xeVn-lFEjc(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFLjava/lang/Runnable;)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->lambda$speak$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QldkVmv-DbxB_CIxEJiimzKeifg()Ljava/lang/String;
    .registers 1

    .line 514
    const-string v0, "TTS synthesis failed, retrying... "

    return-object v0
.end method

.method public static synthetic $r8$lambda$RbexCkmuY7nBYG2KntIyq9-ITZ4(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;[BFFJJLjava/lang/Runnable;)V
    .registers 9

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->lambda$play$10([BFFJJLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SdkirAEXX2vitWFQqPQF0k50o44()Ljava/lang/String;
    .registers 1

    .line 767
    const-string v0, "MediaPlayer setup failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$XK48SIBMcNG3z2DfTEboITI_g6c()Ljava/lang/String;
    .registers 1

    .line 246
    const-string v0, "Playback failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Y94fgp6MFUfwicBsHOp3-TmA80M(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;Ljava/util/concurrent/CountDownLatch;Landroid/media/MediaPlayer;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->lambda$playMp3$28(Ljava/util/concurrent/CountDownLatch;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aIaaopwtNFQoDvxEtupBYdccoZI()Ljava/lang/String;
    .registers 1

    .line 785
    const-string v0, "MediaPlayer stop failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$bwFILkT2z-dk0GWbokVpPIKcEnQ()Ljava/lang/String;
    .registers 1

    .line 791
    const-string v0, "MediaPlayer release failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$gEib0ie5gflSOrAS4A01oGXV3Xo(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;JLjava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->lambda$speak$2(JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lB5_sVWwYj0wM4d5UHBFyYpV9LM(Ljava/util/concurrent/CountDownLatch;Landroid/media/MediaPlayer;)V
    .registers 2

    .line 747
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static synthetic $r8$lambda$mD479kI6gj3YB-TRcPPgh02TAt4()Ljava/lang/String;
    .registers 1

    .line 334
    const-string v0, "MediaPlayer release failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$mEzeNACU-Irrn0XHwBwLsIFAWeE(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;JLjava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->lambda$play$9(JLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pNTgHvYZdTUX1uHR1A9H_7EieDA()Ljava/lang/String;
    .registers 1

    .line 293
    const-string v0, "MediaPlayer setVolume failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$puhRhdwuym29yvplzBtngA6fzko()Ljava/lang/String;
    .registers 1

    .line 168
    const-string v0, "MediaPlayer release failed in markBusy"

    return-object v0
.end method

.method public static synthetic $r8$lambda$qk5oCNDTjVA-riJf5l_RjyaPdbU(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;JLjava/lang/Exception;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->lambda$play$8(JLjava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rDKDwANgDfVg-j9ikrWlHctj1BE()Ljava/lang/String;
    .registers 1

    .line 304
    const-string v0, "MediaPlayer setPlaybackRate failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$rk3lOA-oyREZ3NppBfBI2y2tmfo()Ljava/lang/String;
    .registers 1

    .line 727
    const-string v0, "LoudnessEnhancer attach failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$svcimSdz2tjaHol6ZxyiVuSqVP4()Ljava/lang/String;
    .registers 1

    .line 349
    const-string v0, "LoudnessEnhancer release failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$zyqkb2UC3sdY2ldOUjyWVc8SHWA()Ljava/lang/String;
    .registers 1

    .line 282
    const-string v0, "MediaPlayer resume failed"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->INSTANCE:Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xfa0

    .line 76
    iput-wide v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->SEGMENT_START_END_MAX_MOVEMENT_FROM_ORIGINAL_MS:J

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->synthesisLock:Ljava/lang/Object;

    return-void
.end method

.method private buildSsml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p3, :cond_9

    .line 522
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_d

    :cond_9
    invoke-static {p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->localePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 523
    :goto_d
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "<speak version=\'1.0\' xmlns=\'http://www.w3.org/2001/10/synthesis\' xml:lang=\'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'><voice name=\'"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-static {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->escapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</voice></speak>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private closeSocket()V
    .registers 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "synthesisLock"
    .end annotation

    .line 572
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 573
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->persistentSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_14

    .line 574
    :try_start_7
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_a

    :catch_a
    const/4 v0, 0x0

    .line 575
    iput-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->persistentSocket:Ljavax/net/ssl/SSLSocket;

    .line 576
    iput-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->persistentIn:Ljava/io/InputStream;

    .line 577
    iput-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->persistentOut:Ljava/io/OutputStream;

    const/4 v0, 0x0

    .line 578
    iput-boolean v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->configSent:Z

    :cond_14
    return-void
.end method

.method private collectAudio(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_99

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_99

    and-int/lit8 v0, v0, 0xf

    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_16

    move v2, v4

    goto :goto_17

    :cond_16
    move v2, v3

    :goto_17
    and-int/lit8 v1, v1, 0x7f

    int-to-long v5, v1

    const-wide/16 v7, 0x7e

    cmp-long v1, v5, v7

    const/16 v7, 0x8

    if-nez v1, :cond_33

    .line 656
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v5, v1

    shl-long/2addr v5, v7

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v8, v1

    or-long/2addr v5, v8

    goto :goto_4a

    :cond_33
    const-wide/16 v8, 0x7f

    cmp-long v1, v5, v8

    if-nez v1, :cond_4a

    const-wide/16 v5, 0x0

    move v1, v3

    :goto_3c
    if-ge v1, v7, :cond_4a

    shl-long/2addr v5, v7

    .line 659
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long/2addr v5, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_4a
    :goto_4a
    if-eqz v2, :cond_53

    const/4 v1, 0x4

    .line 664
    new-array v1, v1, [B

    .line 665
    invoke-direct {p0, p1, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->readFully(Ljava/io/InputStream;[B)V

    goto :goto_54

    :cond_53
    const/4 v1, 0x0

    :goto_54
    long-to-int v5, v5

    .line 668
    new-array v6, v5, [B

    .line 669
    invoke-direct {p0, p1, v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->readFully(Ljava/io/InputStream;[B)V

    if-eqz v2, :cond_6c

    move v2, v3

    :goto_5d
    if-ge v2, v5, :cond_6c

    .line 671
    aget-byte v8, v6, v2

    rem-int/lit8 v9, v2, 0x4

    aget-byte v9, v1, v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    :cond_6c
    if-ne v0, v7, :cond_6f

    goto :goto_99

    :cond_6f
    if-ne v0, v4, :cond_81

    .line 677
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v6, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v1, "Path:turn.end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_99

    :cond_81
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-le v5, v1, :cond_0

    .line 680
    aget-byte v0, v6, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v7

    aget-byte v2, v6, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    add-int/2addr v0, v1

    if-ge v0, v5, :cond_0

    sub-int/2addr v5, v0

    .line 683
    invoke-virtual {p2, v6, v0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_0

    :cond_99
    :goto_99
    return-void
.end method

.method private static edgeTimestamp()Ljava/lang/String;
    .registers 3

    .line 828
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 829
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 830
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ensureConnected()V
    .registers 6
    .annotation build Landroidx/annotation/GuardedBy;
        value = "synthesisLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 533
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 534
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->persistentSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->lastSynthesisEndMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1b

    return-void

    .line 538
    :cond_1b
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->closeSocket()V

    .line 541
    :cond_1e
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->genSecMsGec()Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->uuidHex()Ljava/lang/String;

    move-result-object v1

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/consumer/speech/synthesize/readaloud/edge/v1?TrustedClientToken=6A5AA1D4EAFF4E9FB37E23D68491D6F4&ConnectionId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&Sec-MS-GEC="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&Sec-MS-GEC-Version=1-143.0.3650.75"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 551
    :try_start_4b
    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "speech.platform.bing.com"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/16 v2, 0x4e20

    .line 552
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 553
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 554
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 555
    invoke-direct {p0, v1, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->sendHttpUpgrade(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->readHttpUpgrade(Ljava/io/InputStream;)V

    .line 557
    iput-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->persistentSocket:Ljavax/net/ssl/SSLSocket;

    .line 558
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->persistentOut:Ljava/io/OutputStream;

    .line 559
    iput-object v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->persistentIn:Ljava/io/InputStream;

    const/4 v0, 0x0

    .line 560
    iput-boolean v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->configSent:Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_78} :catch_79

    return-void

    :catch_79
    move-exception p0

    .line 562
    :try_start_7a
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7d

    .line 563
    :catch_7d
    throw p0
.end method

.method private static escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 844
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<"

    const-string v1, "&lt;"

    .line 845
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ">"

    const-string v1, "&gt;"

    .line 846
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'"

    const-string v1, "&apos;"

    .line 847
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    const-string v1, "&quot;"

    .line 848
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static genSecMsGec()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    const-wide v2, 0x19db1ded53e8000L

    add-long/2addr v0, v2

    const-wide v2, 0xb2d05e00L

    .line 810
    rem-long v2, v0, v2

    sub-long/2addr v0, v2

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "6A5AA1D4EAFF4E9FB37E23D68491D6F4"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 813
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 814
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 817
    array-length v2, v0

    const/4 v3, 0x0

    :goto_45
    if-ge v3, v2, :cond_5d

    aget-byte v4, v0, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 818
    :cond_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$play$10([BFFJJLjava/lang/Runnable;)V
    .registers 10

    .line 242
    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playMp3([BFFJJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_f
    .catchall {:try_start_0 .. :try_end_3} :catchall_c

    .line 250
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, p6, p7, p8}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda6;-><init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;JLjava/lang/Runnable;)V

    :goto_8
    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_c
    move-exception v0

    move-object p1, v0

    goto :goto_1f

    :catch_f
    move-exception v0

    move-object p1, v0

    .line 244
    :try_start_11
    new-instance p2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p6, p7, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;JLjava/lang/Exception;)V

    invoke-static {p2}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_c

    .line 250
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, p6, p7, p8}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda6;-><init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;JLjava/lang/Runnable;)V

    goto :goto_8

    :goto_1f
    new-instance p2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p6, p7, p8}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda6;-><init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;JLjava/lang/Runnable;)V

    invoke-static {p2}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 256
    throw p1
.end method

.method private synthetic lambda$play$8(JLjava/lang/Exception;)V
    .registers 6

    .line 245
    iget-boolean v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->stopped:Z

    if-nez v0, :cond_12

    iget-wide v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playbackId:J

    cmp-long p0, p1, v0

    if-nez p0, :cond_12

    .line 246
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda20;

    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda20;-><init>()V

    invoke-static {p0, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :cond_12
    return-void
.end method

.method private synthetic lambda$play$9(JLjava/lang/Runnable;)V
    .registers 6

    .line 251
    iget-wide v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playbackId:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_e

    const/4 p1, 0x0

    .line 252
    iput-boolean p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->speaking:Z

    if-eqz p3, :cond_e

    .line 253
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_e
    return-void
.end method

.method private synthetic lambda$playMp3$25(JLandroid/media/MediaPlayer;Ljava/util/concurrent/CountDownLatch;F[BFJ)V
    .registers 12

    .line 705
    iget-boolean v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->stopped:Z

    if-nez v0, :cond_a0

    iget-wide v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playbackId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    goto/16 :goto_a0

    .line 710
    :cond_c
    iput-object p4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playLatch:Ljava/util/concurrent/CountDownLatch;

    .line 711
    iput-object p3, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentPlayer:Landroid/media/MediaPlayer;

    .line 714
    :try_start_10
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xc

    .line 715
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 716
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 714
    invoke-virtual {p3, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 718
    invoke-virtual {p3, p5, p5}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2a} :catch_75

    .line 722
    :try_start_2a
    new-instance p5, Landroid/media/audiofx/LoudnessEnhancer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    invoke-direct {p5, v0}, Landroid/media/audiofx/LoudnessEnhancer;-><init>(I)V

    const/16 v0, 0x258

    .line 723
    invoke-virtual {p5, v0}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V

    .line 724
    invoke-virtual {p5, v1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    .line 725
    iput-object p5, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentEnhancer:Landroid/media/audiofx/LoudnessEnhancer;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3d} :catch_3e

    goto :goto_47

    :catch_3e
    move-exception p5

    .line 727
    :try_start_3f
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0, p5}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 729
    :goto_47
    new-instance p5, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$1;

    invoke-direct {p5, p0, p6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$1;-><init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;[B)V

    invoke-virtual {p3, p5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 747
    new-instance p5, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda10;

    invoke-direct {p5, p4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda10;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p3, p5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 748
    new-instance p5, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda11;

    invoke-direct {p5, p4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda11;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p3, p5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 754
    invoke-virtual {p3}, Landroid/media/MediaPlayer;->prepare()V

    const/high16 p5, 0x3f800000  # 1.0f

    cmpl-float p5, p7, p5

    if-eqz p5, :cond_77

    .line 756
    new-instance p5, Landroid/media/PlaybackParams;

    invoke-direct {p5}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {p5, p7}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    goto :goto_77

    :catch_75
    move-exception p0

    goto :goto_94

    .line 758
    :cond_77
    :goto_77
    iget-boolean p5, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->stopped:Z

    if-nez p5, :cond_90

    iget-wide p5, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playbackId:J

    cmp-long p0, p1, p5

    if-eqz p0, :cond_82

    goto :goto_90

    :cond_82
    const-wide/16 p0, 0x0

    cmp-long p0, p8, p0

    if-lez p0, :cond_8c

    long-to-int p0, p8

    .line 763
    invoke-virtual {p3, p0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 765
    :cond_8c
    invoke-virtual {p3}, Landroid/media/MediaPlayer;->start()V

    goto :goto_9f

    .line 759
    :cond_90
    :goto_90
    invoke-virtual {p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_93} :catch_75

    return-void

    .line 767
    :goto_94
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda12;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 768
    invoke-virtual {p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_9f
    return-void

    .line 706
    :cond_a0
    :goto_a0
    invoke-virtual {p3}, Landroid/media/MediaPlayer;->release()V

    .line 707
    invoke-virtual {p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$playMp3$28(Ljava/util/concurrent/CountDownLatch;Landroid/media/MediaPlayer;)V
    .registers 5

    .line 777
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_7

    .line 778
    iput-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playLatch:Ljava/util/concurrent/CountDownLatch;

    .line 781
    :cond_7
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentPlayer:Landroid/media/MediaPlayer;

    if-ne p1, p2, :cond_2a

    .line 783
    :try_start_b
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->stop()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_18

    :catch_f
    move-exception p1

    .line 785
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda26;-><init>()V

    invoke-static {v0, p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 787
    :goto_18
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->releaseEnhancerInternal()V

    .line 789
    :try_start_1b
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->release()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_28

    :catch_1f
    move-exception p1

    .line 791
    new-instance p2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda27;

    invoke-direct {p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda27;-><init>()V

    invoke-static {p2, p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 793
    :goto_28
    iput-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentPlayer:Landroid/media/MediaPlayer;

    :cond_2a
    return-void
.end method

.method private synthetic lambda$speak$0([BJFLjava/lang/Runnable;)V
    .registers 16

    .line 126
    array-length v0, p1

    if-lez v0, :cond_1c

    iget-boolean v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->stopped:Z

    if-nez v0, :cond_1c

    iget-wide v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playbackId:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_1c

    .line 127
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getPlaybackSpeed()F

    move-result v4

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v7, p2

    move v3, p4

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->play([BFFJJLjava/lang/Runnable;)V

    return-void

    :cond_1c
    move-object v1, p0

    move-wide v7, p2

    move-object v9, p5

    .line 128
    iget-wide p0, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playbackId:J

    cmp-long p0, v7, p0

    if-nez p0, :cond_2d

    const/4 p0, 0x0

    .line 129
    iput-boolean p0, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->speaking:Z

    if-eqz v9, :cond_2d

    .line 130
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    :cond_2d
    return-void
.end method

.method private synthetic lambda$speak$2(JLjava/lang/Runnable;)V
    .registers 6

    .line 136
    iget-wide v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playbackId:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_e

    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->speaking:Z

    if-eqz p3, :cond_e

    .line 138
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_e
    return-void
.end method

.method private synthetic lambda$speak$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFLjava/lang/Runnable;)V
    .registers 9

    .line 124
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->prefetch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_18

    move-object p1, p0

    .line 125
    :try_start_5
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda17;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7} :catch_14

    move-wide p3, p4

    move p5, p6

    move-object p6, p7

    :try_start_a
    invoke-direct/range {p0 .. p6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda17;-><init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;[BJFLjava/lang/Runnable;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    :goto_12
    move-object p0, v0

    goto :goto_1b

    :catch_14
    move-exception v0

    :goto_15
    move-wide p3, p4

    move-object p6, p7

    goto :goto_12

    :catch_18
    move-exception v0

    move-object p1, p0

    goto :goto_15

    .line 134
    :goto_1b
    new-instance p2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda18;

    invoke-direct {p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {p2, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 135
    new-instance p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda19;

    invoke-direct {p0, p1, p3, p4, p6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda19;-><init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;JLjava/lang/Runnable;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static localePart(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2d

    .line 823
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_14

    const/4 v1, 0x0

    .line 824
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    const-string p0, "en-US"

    return-object p0
.end method

.method public static mp3DurationMs(I)J
    .registers 5

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1770

    .line 214
    div-long/2addr v0, v2

    return-wide v0
.end method

.method private playMp3([BFFJJ)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 700
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 701
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 702
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    .line 704
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;

    move-object v1, p0

    move-object v7, p1

    move v6, p2

    move v8, p3

    move-wide v9, p4

    move-wide/from16 v2, p6

    invoke-direct/range {v0 .. v10}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda13;-><init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;JLandroid/media/MediaPlayer;Ljava/util/concurrent/CountDownLatch;F[BFJ)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 774
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 776
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0, v5, v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda14;-><init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;Ljava/util/concurrent/CountDownLatch;Landroid/media/MediaPlayer;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static randomBytes(I)[B
    .registers 2

    .line 838
    new-array p0, p0, [B

    .line 839
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method private readFully(Ljava/io/InputStream;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 692
    :goto_1
    array-length v0, p2

    if-ge p0, v0, :cond_16

    .line 693
    array-length v0, p2

    sub-int/2addr v0, p0

    invoke-virtual {p1, p2, p0, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_e

    add-int/2addr p0, v0

    goto :goto_1

    .line 694
    :cond_e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected end of stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    return-void
.end method

.method private readHttpUpgrade(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 606
    :cond_7
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5e

    int-to-char v0, v0

    .line 607
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "\r\n\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 609
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "101"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3b

    return-void

    .line 610
    :cond_3b
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x78

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebSocket upgrade failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 615
    :cond_5e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Connection closed during WebSocket handshake"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private releaseEnhancerInternal()V
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    if-nez v0, :cond_5

    return-void

    .line 347
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_12

    :catch_9
    move-exception v0

    .line 349
    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda16;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :goto_12
    const/4 v0, 0x0

    .line 351
    iput-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentEnhancer:Landroid/media/audiofx/LoudnessEnhancer;

    return-void
.end method

.method private sendHttpUpgrade(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x10

    .line 583
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->randomBytes(I)[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 584
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->uuidHex()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GET "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " HTTP/1.1\r\nHost: speech.platform.bing.com\r\nPragma: no-cache\r\nCache-Control: no-cache\r\nUpgrade: websocket\r\nConnection: Upgrade\r\nSec-WebSocket-Key: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\nSec-WebSocket-Version: 13\r\nOrigin: chrome-extension://jdiccldimpdaibmpdkjnbmckianbfold\r\nAccept-Language: en-US,en;q=0.9\r\nUser-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0\r\nCookie: muid="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n\r\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 599
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 600
    sget-object p2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 601
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private sendText(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 p2, 0x4

    .line 621
    invoke-static {p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->randomBytes(I)[B

    move-result-object p2

    .line 622
    array-length v0, p0

    .line 625
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v2, v0, 0xa

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v2, 0x81

    .line 626
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0x7e

    if-ge v0, v2, :cond_22

    or-int/lit16 v2, v0, 0x80

    .line 628
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4a

    :cond_22
    const/high16 v2, 0x10000

    const/16 v3, 0xff

    if-ge v0, v2, :cond_39

    const/16 v2, 0xfe

    .line 630
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v3

    .line 631
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 v2, v0, 0xff

    .line 632
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4a

    .line 634
    :cond_39
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x7

    :goto_3d
    if-ltz v2, :cond_4a

    mul-int/lit8 v4, v2, 0x8

    shr-int v4, v0, v4

    and-int/2addr v4, v3

    .line 635
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_3d

    .line 637
    :cond_4a
    :goto_4a
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v0, :cond_5d

    .line 638
    aget-byte v3, p0, v2

    rem-int/lit8 v4, v2, 0x4

    aget-byte v4, p2, v4

    xor-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 640
    :cond_5d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 641
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private synthesizeEdge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 474
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 475
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->synthesisLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v2

    :goto_9
    const/4 v4, 0x2

    if-gt v3, v4, :cond_98

    .line 479
    :try_start_c
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->edgeTimestamp()Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->uuidHex()Ljava/lang/String;

    move-result-object v4

    .line 481
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->buildSsml(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 484
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->ensureConnected()V

    .line 486
    iget-boolean v6, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->configSent:Z

    if-nez v6, :cond_26

    .line 487
    iput-boolean v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->configSent:Z

    goto :goto_26

    :catchall_22
    move-exception p0

    goto :goto_99

    :catch_24
    move-exception v1

    goto :goto_89

    :cond_26
    :goto_26
    if-nez v6, :cond_4d

    .line 491
    iget-object v6, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->persistentOut:Ljava/io/OutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Path: speech.config\r\nContent-Type: application/json; charset=utf-8\r\nX-Timestamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\r\n\r\n{\"context\":{\"synthesis\":{\"audio\":{\"metadataoptions\":{\"sentenceBoundaryEnabled\":\"false\",\"wordBoundaryEnabled\":\"false\"},\"outputFormat\":\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "audio-24khz-48kbitrate-mono-mp3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\"}}}}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->sendText(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 500
    :cond_4d
    iget-object v6, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->persistentOut:Ljava/io/OutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Path: ssml\r\nX-RequestId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\nX-Timestamp: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\nContent-Type: application/ssml+xml\r\n\r\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->sendText(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 506
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 507
    iget-object v4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->persistentIn:Ljava/io/InputStream;

    invoke-direct {p0, v4, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->collectAudio(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->lastSynthesisEndMs:J

    .line 510
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_87} :catch_24
    .catchall {:try_start_c .. :try_end_87} :catchall_22

    :try_start_87
    monitor-exit v0

    return-object p0

    .line 512
    :goto_89
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->closeSocket()V

    .line 514
    new-instance v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda22;

    invoke-direct {v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda22;-><init>()V

    invoke-static {v4, v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 517
    :cond_98
    throw v1

    .line 518
    :goto_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_87 .. :try_end_9a} :catchall_22

    throw p0
.end method

.method private static uuidHex()Ljava/lang/String;
    .registers 3

    .line 834
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public adjustPlaybackTimes(Ljava/util/List;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    if-ltz v1, :cond_188

    .line 372
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_16

    goto/16 :goto_188

    :cond_16
    move v6, v1

    :goto_17
    if-lez v6, :cond_32

    .line 376
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-wide v7, v7, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    add-int/lit8 v9, v6, -0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-wide v9, v9, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_32

    add-int/lit8 v6, v6, -0x1

    goto :goto_17

    .line 380
    :cond_32
    :goto_32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-wide v7, v7, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    add-int/lit8 v9, v1, 0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-wide v10, v10, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    cmp-long v7, v7, v10

    if-nez v7, :cond_52

    move v1, v9

    goto :goto_32

    :cond_52
    if-lt v2, v6, :cond_58

    if-gt v2, v1, :cond_58

    goto/16 :goto_188

    .line 392
    :cond_58
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-wide v7, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-wide v9, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    sub-long/2addr v7, v9

    move v2, v6

    const-wide/16 v11, 0x0

    :goto_6c
    const-wide/16 v13, 0x41

    if-gt v2, v1, :cond_9a

    .line 395
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    const-wide/16 p2, 0x0

    .line 396
    iget-wide v9, v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->durationMs:J

    cmp-long v16, v9, p2

    if-gtz v16, :cond_8a

    .line 398
    iget-object v9, v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5, v9}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->getDuration(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v16, v9, p2

    if-lez v16, :cond_8a

    .line 399
    iput-wide v9, v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->durationMs:J

    :cond_8a
    cmp-long v16, v9, p2

    if-gtz v16, :cond_96

    .line 402
    iget-object v9, v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v9, v13

    :cond_96
    add-long/2addr v11, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    :cond_9a
    const-wide/16 p2, 0x0

    .line 408
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-wide v9, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    .line 409
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    move-wide v15, v13

    iget-wide v13, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    if-lez v6, :cond_be

    add-int/lit8 v2, v6, -0x1

    .line 412
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    move/from16 p0, v6

    move-wide/from16 v17, v7

    iget-wide v6, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    goto :goto_c4

    :cond_be
    move/from16 p0, v6

    move-wide/from16 v17, v7

    move-wide/from16 v6, p2

    .line 414
    :goto_c4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_d9

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    move-wide/from16 v19, v6

    iget-wide v6, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    goto :goto_e0

    :cond_d9
    move-wide/from16 v19, v6

    const-wide v6, 0x7fffffffffffffffL

    :goto_e0
    sub-long v19, v9, v19

    const-wide/16 v21, 0x2

    move-wide/from16 v23, v6

    .line 417
    div-long v6, v19, v21

    move-wide/from16 v19, v9

    const-wide/16 v8, 0xfa0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long v23, v23, v13

    move-wide/from16 v25, v6

    .line 419
    div-long v6, v23, v21

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long v21, v19, v25

    add-long/2addr v6, v13

    cmp-long v2, v11, v17

    move-wide/from16 v23, v8

    if-lez v2, :cond_119

    sub-long v8, v11, v17

    sub-long/2addr v6, v13

    .line 432
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    add-long/2addr v13, v6

    sub-long/2addr v8, v6

    cmp-long v2, v8, p2

    if-lez v2, :cond_119

    sub-long v6, v19, v21

    .line 437
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long v9, v19, v6

    goto :goto_11b

    :cond_119
    move-wide/from16 v9, v19

    :goto_11b
    sub-long v6, v13, v9

    move/from16 v2, p0

    :goto_11f
    if-gt v2, v1, :cond_188

    .line 447
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    move-wide/from16 v17, v13

    .line 448
    iget-wide v13, v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->durationMs:J

    cmp-long v19, v13, p2

    if-gtz v19, :cond_13b

    .line 450
    iget-object v13, v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-static {v3, v2, v4, v5, v13}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->getDuration(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    cmp-long v19, v13, p2

    if-lez v19, :cond_13b

    .line 451
    iput-wide v13, v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->durationMs:J

    :cond_13b
    cmp-long v19, v13, p2

    if-gtz v19, :cond_147

    .line 453
    iget-object v13, v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    int-to-long v13, v13

    mul-long/2addr v13, v15

    .line 455
    :cond_147
    iput-wide v9, v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->playbackStartMs:J

    if-ne v2, v1, :cond_155

    sub-long v13, v17, v9

    move/from16 v19, v1

    move/from16 v20, v2

    move-wide v0, v13

    move-wide/from16 v13, v17

    goto :goto_17c

    :cond_155
    move/from16 v19, v1

    long-to-double v0, v6

    long-to-double v13, v13

    move-wide/from16 v20, v0

    long-to-double v0, v11

    div-double/2addr v13, v0

    mul-double v0, v20, v13

    double-to-long v0, v0

    add-long/2addr v0, v9

    .line 462
    iget-wide v13, v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    move/from16 v20, v2

    sub-long v2, v13, v23

    add-long v13, v13, v23

    .line 463
    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 462
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide/from16 v13, v17

    .line 465
    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sub-long/2addr v0, v9

    :goto_17c
    add-long/2addr v9, v0

    .line 469
    iput-wide v9, v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->playbackEndMs:J

    add-int/lit8 v2, v20, 0x1

    move-object/from16 v0, p1

    move-object/from16 v3, p4

    move/from16 v1, v19

    goto :goto_11f

    :cond_188
    :goto_188
    return-void
.end method

.method public clearBusy(J)V
    .registers 5

    .line 180
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 181
    iget-wide v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playbackId:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_14

    .line 182
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 p1, 0x0

    .line 183
    iput-boolean p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->speaking:Z

    :cond_14
    return-void
.end method

.method public getPlaybackId()J
    .registers 3

    .line 189
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 190
    iget-wide v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playbackId:J

    return-wide v0
.end method

.method public isSpeaking()Z
    .registers 1

    .line 110
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 111
    iget-boolean p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->speaking:Z

    return p0
.end method

.method public markBusy()J
    .registers 5

    .line 150
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 153
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 154
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 155
    iput-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playLatch:Ljava/util/concurrent/CountDownLatch;

    .line 157
    :cond_d
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_38

    const/4 v2, 0x0

    .line 159
    :try_start_12
    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 160
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1b

    goto :goto_24

    :catch_1b
    move-exception v0

    .line 162
    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda23;

    invoke-direct {v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda23;-><init>()V

    invoke-static {v2, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 164
    :goto_24
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->releaseEnhancerInternal()V

    .line 166
    :try_start_27
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_2d

    goto :goto_36

    :catch_2d
    move-exception v0

    .line 168
    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda24;

    invoke-direct {v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda24;-><init>()V

    invoke-static {v2, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 170
    :goto_36
    iput-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentPlayer:Landroid/media/MediaPlayer;

    :cond_38
    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->stopped:Z

    .line 173
    iget-wide v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playbackId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playbackId:J

    const/4 v2, 0x1

    .line 174
    iput-boolean v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->speaking:Z

    return-wide v0
.end method

.method public pause()V
    .registers 2

    .line 266
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 267
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentPlayer:Landroid/media/MediaPlayer;

    if-nez p0, :cond_8

    return-void

    .line 269
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 271
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method public play([BFFJJLjava/lang/Runnable;)V
    .registers 19
    .param p8  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 228
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 231
    iget-boolean v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->stopped:Z

    if-nez v0, :cond_20

    iget-wide v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playbackId:J

    cmp-long v0, p6, v2

    if-eqz v0, :cond_e

    goto :goto_20

    .line 239
    :cond_e
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;[BFFJJLjava/lang/Runnable;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void

    .line 232
    :cond_20
    :goto_20
    iget-wide v2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playbackId:J

    cmp-long v0, p6, v2

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->speaking:Z

    if-eqz p8, :cond_2e

    .line 234
    invoke-interface/range {p8 .. p8}, Ljava/lang/Runnable;->run()V

    :cond_2e
    return-void
.end method

.method public play([BFJLjava/lang/Runnable;)V
    .registers 15
    .param p5  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v3, 0x3f800000  # 1.0f

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v6, p3

    move-object v8, p5

    .line 221
    invoke-virtual/range {v0 .. v8}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->play([BFFJJLjava/lang/Runnable;)V

    return-void
.end method

.method public prefetch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->synthesizeEdge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public resume()V
    .registers 2

    .line 277
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 278
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentPlayer:Landroid/media/MediaPlayer;

    if-nez p0, :cond_8

    return-void

    .line 280
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 282
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method public setPlaybackRate(F)V
    .registers 3

    .line 299
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 300
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentPlayer:Landroid/media/MediaPlayer;

    if-nez p0, :cond_8

    return-void

    .line 302
    :cond_8
    :try_start_8
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p0

    .line 304
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda25;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda25;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method public setVolume(F)V
    .registers 2

    .line 288
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 289
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentPlayer:Landroid/media/MediaPlayer;

    if-nez p0, :cond_8

    return-void

    .line 291
    :cond_8
    :try_start_8
    invoke-virtual {p0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 293
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda15;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/Runnable;)V
    .registers 15

    .line 119
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 120
    invoke-virtual {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->markBusy()J

    move-result-wide v5

    .line 122
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda21;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda21;-><init>(Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JFLjava/lang/Runnable;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .registers 4

    .line 310
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 311
    iget-boolean v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->stopped:Z

    if-nez v0, :cond_f

    .line 312
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_f
    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->stopped:Z

    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->speaking:Z

    .line 318
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 319
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 320
    iput-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->playLatch:Ljava/util/concurrent/CountDownLatch;

    .line 323
    :cond_1f
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4a

    const/4 v2, 0x0

    .line 325
    :try_start_24
    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 326
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2c} :catch_2d

    goto :goto_36

    :catch_2d
    move-exception v0

    .line 328
    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v2, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 330
    :goto_36
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->releaseEnhancerInternal()V

    .line 332
    :try_start_39
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3e} :catch_3f

    goto :goto_48

    :catch_3f
    move-exception v0

    .line 334
    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v2, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->logError(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 336
    :goto_48
    iput-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->currentPlayer:Landroid/media/MediaPlayer;

    :cond_4a
    return-void
.end method

.method public warmConnection()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 204
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->synthesisLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_6
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->ensureConnected()V

    .line 206
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw p0
.end method
