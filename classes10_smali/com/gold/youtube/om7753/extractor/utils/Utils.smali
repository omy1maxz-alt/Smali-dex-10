.class public final Lcom/gold/youtube/om7753/extractor/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final HTTP:Ljava/lang/String; = "http://"

.field public static final HTTPS:Ljava/lang/String; = "https://"

.field private static final M_PATTERN:Ljava/util/regex/Pattern;

.field private static final WWW_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(https?)?://m\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/utils/Utils;->M_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(https?)?://www\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/utils/Utils;->WWW_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->checkUrl(Ljava/util/regex/Pattern;Ljava/lang/String;)V

    return-void
.end method

.method public static checkUrl(Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v1, "Url doesn\'t match the pattern"

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Url can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Ljj$/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Ljj$/net/URLEncoder;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static followGoogleRedirectIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "&url=([^&]+)(?:&|$)"

    invoke-static {v1, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->decodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_28

    return-object v1

    :cond_27
    goto :goto_29

    :catch_28
    move-exception v0

    :goto_29
    return-object p0
.end method

.method public static getBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_23
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_23} :catch_24

    return-object v1

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3a
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    invoke-virtual {p0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_31

    aget-object v5, v1, v4

    const-string v6, "="

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    aget-object v7, v6, v3

    invoke-static {v7}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->decodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->decodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_31
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    nop

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/utils/Utils$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/utils/Utils$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/utils/Utils$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/regex/Pattern;

    invoke-static {p0, v0, p2}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringResultFromRegexArray(Ljava/lang/String;[Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringResultFromRegexArray(Ljava/lang/String;[Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .registers 7

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget-object v2, p1, v1

    :try_start_6
    invoke-static {v2, p0, p2}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3
    :try_end_a
    .catch Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException; {:try_start_6 .. :try_end_a} :catch_e

    if-eqz v3, :cond_d

    return-object v3

    :cond_d
    goto :goto_f

    :catch_e
    move-exception v3

    :goto_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    new-instance v0, Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No regex matched the input on group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_b

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/utils/Utils$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static isHTTP(Ljava/net/URL;)Z
    .registers 7

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {p0}, Ljava/net/URL;->getDefaultPort()I

    move-result v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_23

    move v1, v4

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2d

    move v3, v4

    goto :goto_2e

    :cond_2d
    move v3, v2

    :goto_2e
    if-nez v3, :cond_32

    if-eqz v1, :cond_33

    :cond_32
    move v2, v4

    :cond_33
    return v2
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static isNullOrEmpty(Ljava/util/Collection;)Z
    .registers 2

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static isNullOrEmpty(Ljava/util/Map;)Z
    .registers 2

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static join(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 5

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/utils/Utils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getStringResultFromRegexArray$2(I)[Ljava/util/regex/Pattern;
    .registers 2

    new-array v0, p0, [Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic lambda$join$0(Ljava/lang/String;Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 5

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$nonEmptyAndNullJoin$1(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static mixedNumberWordToLong(Ljava/lang/String;)J
    .registers 7

    const-string v0, ""

    const/4 v1, 0x2

    :try_start_3
    const-string v2, "[\\d]+([\\.,][\\d]+)?([KMBkmb])+"

    invoke-static {v2, p0, v1}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2
    :try_end_9
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_3 .. :try_end_9} :catch_b

    move-object v0, v2

    goto :goto_c

    :catch_b
    move-exception v2

    :goto_c
    nop

    const-string v2, "([\\d]+([\\.,][\\d]+)?)"

    invoke-static {v2, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, "."

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_66

    :cond_2a
    goto :goto_48

    :sswitch_2b
    const-string v1, "M"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_49

    :sswitch_35
    const-string v1, "K"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    goto :goto_49

    :sswitch_3f
    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_49

    :goto_48
    const/4 v1, -0x1

    :goto_49
    packed-switch v1, :pswitch_data_74

    double-to-long v4, v2

    return-wide v4

    :pswitch_4e  #0x2
    const-wide v4, 0x41cdcd6500000000L  # 1.0E9

    mul-double/2addr v4, v2

    double-to-long v4, v4

    return-wide v4

    :pswitch_56  #0x1
    const-wide v4, 0x412e848000000000L  # 1000000.0

    mul-double/2addr v4, v2

    double-to-long v4, v4

    return-wide v4

    :pswitch_5e  #0x0
    const-wide v4, 0x408f400000000000L  # 1000.0

    mul-double/2addr v4, v2

    double-to-long v4, v4

    return-wide v4

    :sswitch_data_66
    .sparse-switch
        0x42 -> :sswitch_3f
        0x4b -> :sswitch_35
        0x4d -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5e  #00000000
        :pswitch_56  #00000001
        :pswitch_4e  #00000002
    .end packed-switch
.end method

.method public static varargs nonEmptyAndNullJoin(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/utils/Utils$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static removeMAndWWWFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/Utils;->M_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_15

    const-string v0, "m."

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    sget-object v0, Lcom/gold/youtube/om7753/extractor/utils/Utils;->WWW_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "www."

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
    return-object p0
.end method

.method public static removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "\\D+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeUTF8BOM(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    move-object v0, p0

    const-string v1, "\ufeff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1e
    return-object v0
.end method

.method public static replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
    return-object p0
.end method

.method public static stringToURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_3d
    throw v0
.end method
