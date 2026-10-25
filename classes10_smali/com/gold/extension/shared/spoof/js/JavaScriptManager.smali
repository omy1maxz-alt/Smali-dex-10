.class public final Lcom/gold/extension/shared/spoof/js/JavaScriptManager;
.super Ljava/lang/Object;
.source "JavaScriptManager.java"


# static fields
.field private static final BASE_JS_PLAYER_URL_FORMAT:Ljava/lang/String;

.field private static final IFRAME_API_URL:Ljava/lang/String; = "https://www.youtube.com/iframe_api"

.field private static final PLAYER_JS_CACHE_EXPIRATION_MILLISECONDS:J = 0xf731400L

.field private static final PLAYER_JS_HASH:Lcom/gold/extension/shared/settings/StringSetting;

.field private static final PLAYER_JS_HASH_PATTERN:Ljava/util/regex/Pattern;

.field private static final PLAYER_JS_SAVED_MILLISECONDS:Lcom/gold/extension/shared/settings/LongSetting;

.field private static final PLAYER_JS_VARIANT:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

.field private static final SIGNATURE_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

.field private static final THROTTLING_PARAM_N_PATTERN:Ljava/util/regex/Pattern;

.field private static final THROTTLING_PARAM_S_PATTERN:Ljava/util/regex/Pattern;

.field private static final THROTTLING_PARAM_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static final USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Android 13; Mobile; rv:100.0) Gecko/100.0 Firefox/100.0"

.field private static volatile cachedPlayerDataExtractor:Lcom/gold/extension/shared/spoof/js/PlayerDataExtractor;

.field private static volatile cachedPlayerJs:Ljava/lang/String;

.field private static volatile cachedPlayerJsFile:Ljava/io/File;

.field private static volatile cachedPlayerJsHash:Ljava/lang/String;

.field private static volatile cachedPlayerJsUrl:Ljava/lang/String;

.field private static volatile cachedSignatureTimestamp:Ljava/lang/Integer;


# direct methods
.method public static synthetic $r8$lambda$28QdY-4BFyMCDlM0yHANeo6bZMw(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Player js cache found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4B8Ozv8JpC7iziSO8KmlQ3yyRpc(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Download timed out: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4FXik9nE2OIiUPizD6-Hixfegd0()Ljava/lang/String;
    .registers 1

    .line 482
    const-string v0, "Failed to decode url"

    return-object v0
.end method

.method public static synthetic $r8$lambda$7y84nhSG1hB4cKe2cxusZACpLn8()Ljava/lang/String;
    .registers 1

    .line 194
    const-string v0, "playerJsUrl not found"

    return-object v0
.end method

.method public static synthetic $r8$lambda$A2L3Rk7X3NixvNLi0G9009psKzc(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saved Player js cache: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HS3cf9_1sI22qvHEElC55rB4l5k(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not download URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$I9PzI83C_1LqnnHHhCQRXHHMEII()Ljava/lang/String;
    .registers 1

    .line 501
    const-string v0, "Failed to save file"

    return-object v0
.end method

.method public static synthetic $r8$lambda$JHpl6_LJPjuVpyIYd0gFpmLl_6s(JLjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Download took: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms for URL: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Kq9hjku-Q11bRpH39Atg-YHkmQ0()Ljava/lang/String;
    .registers 1

    .line 264
    const-string v0, "SignatureTimestamp not found"

    return-object v0
.end method

.method public static synthetic $r8$lambda$SN1tee5do24CB-eq3O9dACWo_o8()Ljava/lang/String;
    .registers 1

    .line 261
    const-string v0, "SignatureTimestamp is null or empty"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Sr6SIZMnWzCXdHr4AVYnAlwtQ5I()Ljava/lang/String;
    .registers 1

    .line 235
    const-string v0, "iframeContent not found"

    return-object v0
.end method

.method public static synthetic $r8$lambda$UUttIviYvGt5TyJnHfCTrPXYgWs(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$X8GR-IJQZ6559B_Gel6fOPCtFHw()Ljava/lang/String;
    .registers 1

    .line 157
    const-string v0, "playerJs not found"

    return-object v0
.end method

.method public static synthetic $r8$lambda$aPPQMkMccgd6csADHY_GgpF6grk()Ljava/lang/String;
    .registers 1

    .line 492
    const-string v0, "Failed to read file"

    return-object v0
.end method

.method public static synthetic $r8$lambda$eiDennGYdoTaKIjE3cIAPSQWg7U(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Player js hash found in cache: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gx8BmsWEDgbZmbazwgc417e2L_o()Ljava/lang/String;
    .registers 1

    .line 268
    const-string v0, "Failed to set SignatureTimestamp"

    return-object v0
.end method

.method public static synthetic $r8$lambda$pgKLXhA3baOn2CpP5zfOjUz2N_U(I)Ljava/lang/String;
    .registers 3

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring response code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$po14ySpVVQDpoMVtHLB-SmVVaKU()Ljava/lang/String;
    .registers 1

    .line 290
    const-string v0, "Debug: downloadUrl() called on main thread!"

    return-object v0
.end method

.method public static synthetic $r8$lambda$ygUzjyb-1L8xIVKOOn8Pnwn41qE(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting download of: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 55
    const-string v0, "signatureTimestamp[=:](\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->SIGNATURE_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 59
    const-string v0, "[&?]n=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->THROTTLING_PARAM_N_PATTERN:Ljava/util/regex/Pattern;

    .line 63
    const-string v0, "s=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->THROTTLING_PARAM_S_PATTERN:Ljava/util/regex/Pattern;

    .line 67
    const-string v0, "&url=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->THROTTLING_PARAM_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 71
    const-string v0, "player\\\\/([a-z0-9]{8})\\\\/"

    .line 72
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->PLAYER_JS_HASH_PATTERN:Ljava/util/regex/Pattern;

    .line 76
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS_PLAYER_JS_SAVED_MILLISECONDS:Lcom/gold/extension/shared/settings/LongSetting;

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->PLAYER_JS_SAVED_MILLISECONDS:Lcom/gold/extension/shared/settings/LongSetting;

    .line 81
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS_PLAYER_JS_HASH_VALUE:Lcom/gold/extension/shared/settings/StringSetting;

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->PLAYER_JS_HASH:Lcom/gold/extension/shared/settings/StringSetting;

    .line 86
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS_PLAYER_JS_VARIANT:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 87
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->PLAYER_JS_VARIANT:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    .line 91
    iget-object v0, v0, Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;->format:Ljava/lang/String;

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->BASE_JS_PLAYER_URL_FORMAT:Ljava/lang/String;

    const/4 v0, 0x0

    .line 112
    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerDataExtractor:Lcom/gold/extension/shared/spoof/js/PlayerDataExtractor;

    .line 117
    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJs:Ljava/lang/String;

    .line 122
    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsFile:Ljava/io/File;

    .line 127
    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsHash:Ljava/lang/String;

    .line 132
    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsUrl:Ljava/lang/String;

    .line 137
    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedSignatureTimestamp:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 480
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception v0

    .line 482
    new-instance v1, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static deobfuscateFormat(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;Ljava/util/List;Ljava/lang/String;Z)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .line 376
    invoke-static {}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->getPlayerDataExtractor()Lcom/gold/extension/shared/spoof/js/PlayerDataExtractor;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p3, :cond_15

    .line 380
    invoke-static {}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->newBuilder()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;->addFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;

    return v1

    :cond_15
    const/4 p3, 0x0

    if-eqz v0, :cond_139

    if-eqz p1, :cond_139

    .line 383
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_139

    .line 387
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 388
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 392
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-virtual {v4}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->getSignatureCipher()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    .line 394
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_3d
    :goto_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    if-eqz v4, :cond_90

    .line 397
    invoke-virtual {v7}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->getSignatureCipher()Ljava/lang/String;

    move-result-object v7

    .line 398
    sget-object v8, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->THROTTLING_PARAM_S_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 399
    sget-object v9, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->THROTTLING_PARAM_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 400
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3d

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 402
    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 404
    invoke-virtual {v7, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 405
    invoke-static {v8}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3d

    invoke-static {v7}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 406
    invoke-static {v7}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->decodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 408
    invoke-static {v8}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->decodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v6, :cond_3d

    .line 412
    invoke-static {v7}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->getNQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3d

    .line 417
    :cond_90
    invoke-virtual {v7}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->getNQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 418
    invoke-static {v7}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3d

    move-object v6, v7

    .line 426
    :cond_9f
    invoke-static {v6}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_139

    .line 428
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 427
    invoke-virtual {v0, v5, v2}, Lcom/gold/extension/shared/spoof/js/PlayerDataExtractor;->bulkSigExtract(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 433
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 434
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 435
    const-string p0, "Debug: Failed to deobfuscate n-parameter"

    invoke-static {p0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->handleDebugToast(Ljava/lang/String;)V

    return p3

    .line 438
    :cond_bd
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 439
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v4, :cond_d5

    .line 440
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 441
    const-string p0, "Debug: Failed to deobfuscate signatureCipher"

    invoke-static {p0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->handleDebugToast(Ljava/lang/String;)V

    return p3

    .line 446
    :cond_d5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_128

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    .line 447
    invoke-virtual {v5}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v7

    check-cast v7, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;

    if-eqz v4, :cond_10e

    .line 450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&sig="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_112

    .line 451
    :cond_10e
    invoke-virtual {v5}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 452
    :goto_112
    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;->setUrl(Ljava/lang/String;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;

    .line 453
    invoke-virtual {v7}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;->clearSignatureCipher()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;

    .line 454
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    .line 456
    invoke-virtual {p0, v5}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;->addAdaptiveFormats(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_d9

    .line 460
    :cond_128
    invoke-static {p2}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_133

    .line 461
    invoke-virtual {p2, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_135

    .line 462
    :cond_133
    const-string p1, ""

    .line 460
    :goto_135
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;->setServerAbrStreamingUrl(Ljava/lang/String;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;

    return v1

    :cond_139
    return p3
.end method

.method public static downloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 288
    :try_start_1
    new-instance v1, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 289
    sget-object v1, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {}, Lcom/gold/extension/shared/Utils;->isCurrentlyOnMainThread()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 290
    new-instance v1, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_26

    :catch_24
    move-exception v1

    goto :goto_68

    .line 293
    :cond_26
    :goto_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 295
    invoke-static {p0}, Lcom/gold/extension/shared/requests/Requester;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    const/4 v4, 0x0

    .line 296
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 297
    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 298
    const-string v4, "User-Agent"

    const-string v5, "Mozilla/5.0 (Android 13; Mobile; rv:100.0) Gecko/100.0 Firefox/100.0"

    invoke-virtual {v3, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1388

    .line 299
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 300
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 301
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_53

    .line 305
    invoke-static {v3}, Lcom/gold/extension/shared/requests/Requester;->parseStringAndDisconnect(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5c

    .line 307
    :cond_53
    new-instance v5, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda10;

    invoke-direct {v5, v4}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-static {v5}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    move-object v4, v0

    .line 310
    :goto_5c
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 312
    new-instance v3, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda11;

    invoke-direct {v3, v1, v2, p0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda11;-><init>(JLjava/lang/String;)V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_67
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_67} :catch_71
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_67} :catch_24

    return-object v4

    .line 317
    :goto_68
    new-instance v2, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    goto :goto_79

    .line 315
    :catch_71
    new-instance v1, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 320
    :goto_79
    sget-object v1, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not download URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    :cond_96
    return-object v0
.end method

.method public static getDeobfuscatedStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;
    .registers 5

    .line 340
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;

    .line 341
    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->getServerAbrStreamingUrl()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;->clearFormats()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;

    .line 349
    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->getFormatsList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 347
    invoke-static {v0, v2, v1, v3}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->deobfuscateFormat(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;Ljava/util/List;Ljava/lang/String;Z)Z

    .line 355
    invoke-virtual {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;->clearAdaptiveFormats()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;

    .line 360
    invoke-virtual {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->getAdaptiveFormatsList()Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x1

    .line 358
    invoke-static {v0, p0, v1, v2}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->deobfuscateFormat(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;Ljava/util/List;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_25

    const/4 p0, 0x0

    return-object p0

    :cond_25
    return-object v0
.end method

.method public static getJavaScriptHash()Ljava/lang/String;
    .registers 1

    .line 277
    sget-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsHash:Ljava/lang/String;

    return-object v0
.end method

.method public static getJavaScriptVariant()Ljava/lang/String;
    .registers 1

    .line 282
    sget-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->PLAYER_JS_VARIANT:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 473
    sget-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->THROTTLING_PARAM_N_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 474
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    const-string p0, ""

    return-object p0
.end method

.method private static getPlayerDataExtractor()Lcom/gold/extension/shared/spoof/js/PlayerDataExtractor;
    .registers 3

    .line 152
    sget-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerDataExtractor:Lcom/gold/extension/shared/spoof/js/PlayerDataExtractor;

    if-nez v0, :cond_23

    .line 153
    invoke-static {}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->getPlayerJs()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 155
    new-instance v1, Lcom/gold/extension/shared/spoof/js/PlayerDataExtractor;

    sget-object v2, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsHash:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v0, v2}, Lcom/gold/extension/shared/spoof/js/PlayerDataExtractor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerDataExtractor:Lcom/gold/extension/shared/spoof/js/PlayerDataExtractor;

    goto :goto_23

    .line 157
    :cond_1b
    new-instance v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 161
    :cond_23
    :goto_23
    sget-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerDataExtractor:Lcom/gold/extension/shared/spoof/js/PlayerDataExtractor;

    return-object v0
.end method

.method private static getPlayerJs()Ljava/lang/String;
    .registers 7

    .line 166
    sget-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJs:Ljava/lang/String;

    if-nez v0, :cond_62

    .line 167
    invoke-static {}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->getPlayerJsUrl()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 169
    sget-object v1, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsFile:Ljava/io/File;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xf731400

    cmp-long v3, v3, v5

    if-gez v3, :cond_42

    .line 176
    invoke-static {v1}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {v3}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 178
    new-instance v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, v2}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 179
    sput-object v3, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJs:Ljava/lang/String;

    return-object v3

    .line 187
    :cond_42
    invoke-static {v0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->downloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 189
    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJs:Ljava/lang/String;

    .line 190
    invoke-static {v1, v0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->saveToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, v2}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_62

    .line 194
    :cond_5a
    new-instance v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 198
    :cond_62
    :goto_62
    sget-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJs:Ljava/lang/String;

    return-object v0
.end method

.method private static getPlayerJsUrl()Ljava/lang/String;
    .registers 8

    .line 203
    sget-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsUrl:Ljava/lang/String;

    if-nez v0, :cond_ce

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 205
    sget-object v2, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->PLAYER_JS_SAVED_MILLISECONDS:Lcom/gold/extension/shared/settings/LongSetting;

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/LongSetting;->get()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 207
    sget-object v5, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->PLAYER_JS_HASH:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v5}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_44

    sget-object v6, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SPOOF_VIDEO_STREAMS_DISABLE_PLAYER_JS_UPDATE:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 210
    invoke-virtual {v6}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_33

    sub-long v3, v0, v3

    const-wide/32 v6, 0xf731400

    cmp-long v3, v3, v6

    if-gez v3, :cond_44

    .line 214
    :cond_33
    invoke-virtual {v5}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsHash:Ljava/lang/String;

    .line 215
    sget-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsHash:Ljava/lang/String;

    .line 216
    new-instance v1, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_80

    .line 221
    :cond_44
    const-string v3, "https://www.youtube.com/iframe_api"

    invoke-static {v3}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->downloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-static {v3}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 223
    sget-object v4, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->PLAYER_JS_HASH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 224
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_78

    const/4 v4, 0x1

    .line 225
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsHash:Ljava/lang/String;

    .line 228
    sput-boolean v4, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->settingImportInProgress:Z

    .line 229
    sget-object v3, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsHash:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/gold/extension/shared/settings/Setting;->privateSetValueFromString(Lcom/gold/extension/shared/settings/Setting;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v5}, Lcom/gold/extension/shared/settings/StringSetting;->saveToPreferences()V

    const/4 v3, 0x0

    .line 231
    sput-boolean v3, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->settingImportInProgress:Z

    .line 233
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    goto :goto_80

    .line 235
    :cond_78
    new-instance v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 240
    :cond_80
    :goto_80
    sget-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsHash:Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 241
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "player_js_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->PLAYER_JS_VARIANT:Lcom/gold/extension/shared/spoof/js/JavaScriptVariant;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsHash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".js"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsFile:Ljava/io/File;

    .line 242
    sget-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->BASE_JS_PLAYER_URL_FORMAT:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsHash:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsUrl:Ljava/lang/String;

    .line 246
    :cond_ce
    sget-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedPlayerJsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getSignatureTimestamp()Ljava/lang/Integer;
    .registers 2

    .line 251
    sget-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedSignatureTimestamp:Ljava/lang/Integer;

    if-nez v0, :cond_4b

    .line 253
    :try_start_4
    invoke-static {}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->getPlayerJs()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 255
    sget-object v1, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->SIGNATURE_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x1

    .line 257
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 259
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedSignatureTimestamp:Ljava/lang/Integer;

    goto :goto_4b

    .line 261
    :cond_30
    new-instance v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda16;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_4b

    .line 264
    :cond_39
    new-instance v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda17;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_41} :catch_42

    goto :goto_4b

    :catch_42
    move-exception v0

    .line 268
    new-instance v1, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 272
    :cond_4b
    :goto_4b
    sget-object v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->cachedSignatureTimestamp:Ljava/lang/Integer;

    return-object v0
.end method

.method private static handleDebugToast(Ljava/lang/String;)V
    .registers 2

    .line 143
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG_TOAST_ON_ERROR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 144
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 146
    :cond_1c
    new-instance v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method private static readFromFile(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 490
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception p0

    .line 492
    new-instance v0, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static saveToFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    .line 498
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_1c

    .line 499
    :try_start_5
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    .line 500
    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_1c

    return-void

    :catchall_12
    move-exception p0

    .line 498
    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception p1

    :try_start_18
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1b
    throw p0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1c} :catch_1c

    :catch_1c
    move-exception p0

    .line 501
    new-instance p1, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
