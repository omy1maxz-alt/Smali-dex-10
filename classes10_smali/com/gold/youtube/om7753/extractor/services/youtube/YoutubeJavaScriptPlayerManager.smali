.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;
.super Ljava/lang/Object;
.source "YoutubeJavaScriptPlayerManager.java"


# static fields
.field private static final CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;

.field private static cachedJavaScriptPlayerCode:Ljava/lang/String;

.field private static cachedSignatureDeobfuscationFunction:Ljava/lang/String;

.field private static cachedSignatureTimestamp:Ljava/lang/Integer;

.field private static cachedThrottlingDeobfuscationFunction:Ljava/lang/String;

.field private static cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

.field private static sigDeobFuncExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

.field private static sigTimestampExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

.field private static throttlingDeobfFuncExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAllCaches()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureTimestamp:Ljava/lang/Integer;

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->clearThrottlingParametersCache()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->throttlingDeobfFuncExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigDeobFuncExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigTimestampExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    return-void
.end method

.method public static clearThrottlingParametersCache()V
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static deobfuscateSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigDeobFuncExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    if-nez v0, :cond_41

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->extractJavaScriptCodeIfNeeded(Ljava/lang/String;)V

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;

    if-nez v0, :cond_23

    :try_start_b
    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeSignatureUtils;->getDeobfuscationCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;
    :try_end_13
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_b .. :try_end_13} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_23

    :catch_14
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get signature parameter deobfuscation JavaScript function"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigDeobFuncExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    throw v0

    :catch_1f
    move-exception v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigDeobFuncExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    throw v0

    :cond_23
    :goto_23
    :try_start_23
    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureDeobfuscationFunction:Ljava/lang/String;

    const-string v1, "deobfuscate"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/gold/youtube/om7753/extractor/utils/JavaScript;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_37} :catch_38

    return-object v0

    :catch_38
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not run signature parameter deobfuscation JavaScript function"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_41
    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigDeobFuncExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    throw v0
.end method

.method private static extractJavaScriptCodeIfNeeded(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptExtractor;->extractJavaScriptPlayerCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public static getSignatureTimestamp(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureTimestamp:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureTimestamp:Ljava/lang/Integer;

    return-object v0

    :cond_7
    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigTimestampExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    if-nez v0, :cond_38

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->extractJavaScriptCodeIfNeeded(Ljava/lang/String;)V

    :try_start_e
    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeSignatureUtils;->getSignatureTimestamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureTimestamp:Ljava/lang/Integer;
    :try_end_1a
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_e .. :try_end_1a} :catch_34
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_1a} :catch_26
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_1b

    goto :goto_30

    :catch_1b
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get signature timestamp"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigTimestampExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    throw v0

    :catch_26
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not convert signature timestamp to a number"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigTimestampExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    :goto_30
    nop

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedSignatureTimestamp:Ljava/lang/Integer;

    return-object v0

    :catch_34
    move-exception v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigTimestampExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    throw v0

    :cond_38
    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->sigTimestampExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    throw v0
.end method

.method public static getThrottlingParametersCacheSize()I
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static getUrlWithThrottlingParameterDeobfuscated(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    nop

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeThrottlingParameterUtils;->getThrottlingParameterFromStreamingUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    return-object p1

    :cond_8
    sget-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_17

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_17
    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->extractJavaScriptCodeIfNeeded(Ljava/lang/String;)V

    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->throttlingDeobfFuncExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    if-nez v2, :cond_71

    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;

    if-nez v2, :cond_44

    :try_start_22
    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeThrottlingParameterUtils;->getDeobfuscationFunctionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeThrottlingParameterUtils;->getDeobfuscationFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;
    :try_end_34
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_22 .. :try_end_34} :catch_40
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_34} :catch_35

    goto :goto_44

    :catch_35
    move-exception v2

    new-instance v3, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v4, "Could not get throttling parameter deobfuscation JavaScript function"

    invoke-direct {v3, v4, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->throttlingDeobfFuncExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    throw v2

    :catch_40
    move-exception v2

    sput-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->throttlingDeobfFuncExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    throw v2

    :cond_44
    :goto_44
    :try_start_44
    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunction:Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/gold/youtube/om7753/extractor/utils/JavaScript;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_60

    sget-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->CACHED_THROTTLING_PARAMETERS:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_60
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Extracted n-parameter is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_68} :catch_68

    :catch_68
    move-exception v2

    new-instance v3, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v4, "Could not run throttling parameter deobfuscation JavaScript function"

    invoke-direct {v3, v4, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_71
    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->throttlingDeobfFuncExtractionEx:Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    throw v2
.end method
