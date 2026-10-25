.class final Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;
.super Ljava/lang/Object;
.source "TranscriptFetcher.java"


# static fields
.field private static final BRACKETS_PATTERN:Ljava/util/regex/Pattern;

.field private static final CLOSE_GAP_THRESHOLD_MS:J = 0x9c4L

.field private static final CONNECT_TIMEOUT_MS:I = 0x2710

.field private static final INNERTUBE_PLAYER_URL:Ljava/lang/String; = "https://www.youtube.com/youtubei/v1/player?prettyPrint=false"

.field private static final MAX_SENTENCE_CHARS:I = 0x12c

.field private static final MAX_SENTENCE_GAP_MS:J = 0x5dcL

.field private static final MAX_UNPUNCTUATED_CHARS:I = 0xc8

.field private static final MIN_SEGMENT_DURATION_MS:J = 0x7d0L

.field private static final PARENTHESES_PATTERN:Ljava/util/regex/Pattern;

.field private static final READ_TIMEOUT_MS:I = 0x3a98

.field private static final UNPUNCTUATED_GAP_MS:J = 0x2bcL

.field private static final UNPUNCTUATED_SOFT_GAP_MS:J = 0xfaL

.field static volatile lastSourceLang:Ljava/lang/String; = "en"


# direct methods
.method public static synthetic $r8$lambda$I9JhsioxXLFOpyS_As9uaMMy_uk(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No captions available for video: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WbjI547k4LvmdGDoSFmEerlKpEA()Ljava/lang/String;
    .registers 1

    .line 104
    const-string v0, "Caption fetch failed, trying direct"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Xzh0pIm6k5N9ElVnY_6o2dGvRbg()Ljava/lang/String;
    .registers 1

    .line 88
    const-string v0, "Innertube player failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$vZwsBDWifGHRMqddGL-2LidW-0Y(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Direct caption fetch failed lang: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 240
    const-string v0, "\\[[^]]*]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->BRACKETS_PATTERN:Ljava/util/regex/Pattern;

    .line 241
    const-string v0, "\\([^)]*\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->PARENTHESES_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static detectPunctuation(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;)Z"
        }
    .end annotation

    .line 395
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    .line 396
    iget-object v3, v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    .line 397
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v1

    :goto_19
    if-ge v5, v4, :cond_6

    .line 398
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_2f

    const/16 v7, 0x21

    if-eq v6, v7, :cond_2f

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_2c

    goto :goto_2f

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_32
    mul-int/lit8 v2, v2, 0xa

    .line 407
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lt v2, p0, :cond_3c

    const/4 p0, 0x1

    return p0

    :cond_3c
    return v1
.end method

.method private static endsSentence(Ljava/lang/CharSequence;)Z
    .registers 7

    .line 419
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 420
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_23

    const/16 v4, 0x21

    if-eq v0, v4, :cond_23

    const/16 v4, 0x3f

    if-eq v0, v4, :cond_23

    const/16 v4, 0x2026

    if-eq v0, v4, :cond_23

    return v1

    :cond_23
    if-ne v0, v3, :cond_92

    .line 425
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 426
    const-string v0, "Mr."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_91

    const-string v0, "Ms."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_91

    const-string v0, "Dr."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_91

    const-string v0, "St."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_91

    const-string v0, "Inc."

    .line 427
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_91

    const-string v0, "Ltd."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_91

    const-string v0, "Jr."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_91

    const-string v0, "Sr."

    .line 428
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_91

    const-string v0, "vs."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    goto :goto_91

    .line 432
    :cond_72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_90

    add-int/lit8 v4, v0, -0x2

    .line 433
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_90

    sub-int/2addr v0, v3

    .line 434
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    if-nez p0, :cond_8f

    goto :goto_90

    :cond_8f
    return v1

    :cond_90
    :goto_90
    return v2

    :cond_91
    :goto_91
    return v1

    :cond_92
    return v2
.end method

.method private static extractLangFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 220
    const-string v0, "&lang="

    const-string v1, "?lang="

    invoke-static {v0, v1}, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_c

    .line 223
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    const/16 v0, 0x26

    .line 224
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_30

    .line 225
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_30
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 228
    :cond_35
    const-string p0, "en"

    return-object p0
.end method

.method private static extractPoToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 143
    const-string v0, "\"poToken\":\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_a

    return-object v1

    :cond_a
    add-int/lit8 v0, v0, 0xb

    const/16 v2, 0x22

    .line 146
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_15

    return-object v1

    .line 147
    :cond_15
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fetch(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/BooleanSupplier;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 57
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->fetchEnglishSegments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 60
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveTargetLang()Ljava/lang/String;

    move-result-object v1

    .line 61
    sget-object v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->lastSourceLang:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->isSpokenLanguageDifferent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 62
    invoke-static {p0, v0, v1, p1, p2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptTranslator;->translate(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/BooleanSupplier;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1b
    return-object v0
.end method

.method private static fetchDirect(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;"
        }
    .end annotation

    .line 198
    const-string v0, "en-US"

    const-string v1, "en-GB"

    const-string v2, "en"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/youtube/patches/DisableLayoutUpdatesPatch$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.youtube.com/api/timedtext?v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&lang="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&kind=asr&fmt=json3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {v3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->fetchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 204
    invoke-static {v3, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->parseJson3(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 205
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 206
    sput-object v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->lastSourceLang:Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4e} :catch_4f

    return-object v3

    :catch_4f
    move-exception v3

    .line 212
    new-instance v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    goto :goto_e

    .line 215
    :cond_59
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 216
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static fetchEnglishSegments(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    :try_start_2
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->fetchFromInnertube(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 85
    aget-object v3, v2, v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_e

    const/4 v4, 0x1

    .line 86
    :try_start_9
    aget-object v1, v2, v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_b} :catch_c

    goto :goto_18

    :catch_c
    move-exception v2

    goto :goto_10

    :catch_e
    move-exception v2

    move-object v3, v1

    .line 88
    :goto_10
    new-instance v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v4, v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    :goto_18
    if-eqz v3, :cond_71

    .line 93
    :try_start_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&fmt=[^&]*"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&fmt=json3"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4c

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&pot="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4c

    :catch_4a
    move-exception v0

    goto :goto_69

    .line 96
    :cond_4c
    :goto_4c
    invoke-static {v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->fetchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {v3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->extractLangFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    .line 98
    invoke-static {v1, v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->parseJson3(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_71

    .line 100
    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->lastSourceLang:Ljava/lang/String;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_68} :catch_4a

    return-object v1

    .line 104
    :goto_69
    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 108
    :cond_71
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->fetchDirect(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static fetchFromInnertube(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"context\":{\"client\":{\"clientName\":\"ANDROID\",\"clientVersion\":\"20.10.38\"}},\"videoId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 119
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://www.youtube.com/youtubei/v1/player?prettyPrint=false"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 120
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x2710

    .line 121
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x3a98

    .line 122
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 123
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "User-Agent"

    const-string v2, "com.google.android.youtube/20.10.38 (Linux; U; Android 11) gzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "X-YouTube-Client-Name"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "X-YouTube-Client-Version"

    const-string v2, "20.10.38"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 128
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 130
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 131
    :try_start_56
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_8f

    .line 132
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 134
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 v1, 0xc8

    if-ne p0, v1, :cond_7b

    .line 137
    invoke-static {v0}, Lcom/gold/extension/shared/requests/Requester;->parseString(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    .line 138
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->findBestCaptionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->extractPoToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 135
    :cond_7b
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected response status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_8f
    move-exception p0

    if-eqz v1, :cond_9a

    .line 130
    :try_start_92
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_9a

    :catchall_96
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9a
    :goto_9a
    throw p0
.end method

.method private static fetchUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 452
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x2710

    .line 454
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x3a98

    .line 455
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 456
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/gold/extension/youtube/patches/CaptionCookiesPatch;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/gold/extension/youtube/patches/CaptionCookiesPatch;->getCookies()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 459
    const-string v2, "Cookie"

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_2d
    invoke-static {}, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->getRequestHeader()Ljava/util/Map;

    move-result-object v1

    .line 462
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 463
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_39

    .line 464
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 468
    :cond_61
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_6e

    .line 472
    invoke-static {v0}, Lcom/gold/extension/shared/requests/Requester;->parseString(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 470
    :cond_6e
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " url: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findBestCaptionUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 157
    const-string v0, "\"captionTracks\":["

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_a

    return-object v1

    .line 160
    :cond_a
    invoke-static {}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->resolveTargetLang()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->getIso639(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v6, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    .line 168
    :goto_16
    const-string v7, "\"baseUrl\":\""

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_8a

    const v7, 0xc350

    add-int/2addr v7, v0

    if-le v6, v7, :cond_25

    goto :goto_8a

    :cond_25
    add-int/lit8 v6, v6, 0xb

    const/16 v7, 0x22

    .line 172
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-gez v7, :cond_30

    goto :goto_8a

    .line 175
    :cond_30
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v8, "\\u0026"

    const-string v9, "&"

    .line 176
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "\\u003d"

    const-string v9, "="

    .line 177
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "\\u003e"

    const-string v9, ">"

    .line 178
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "\\u003c"

    const-string v9, "<"

    .line 179
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_57

    move-object v1, v6

    .line 182
    :cond_57
    const-string v8, "variant=gemini"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v3, :cond_62

    if-nez v8, :cond_62

    move-object v3, v6

    .line 185
    :cond_62
    invoke-static {v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->extractLangFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    if-nez v4, :cond_7a

    if-nez v8, :cond_7a

    .line 186
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7a

    move-object v4, v6

    :cond_7a
    if-nez v5, :cond_87

    if-nez v8, :cond_87

    .line 187
    const-string v8, "en"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_87

    move-object v5, v6

    :cond_87
    add-int/lit8 v6, v7, 0x1

    goto :goto_16

    :cond_8a
    :goto_8a
    if-eqz v4, :cond_8d

    return-object v4

    :cond_8d
    if-eqz v5, :cond_90

    return-object v5

    :cond_90
    if-eqz v3, :cond_93

    return-object v3

    :cond_93
    return-object v1
.end method

.method private static findLastSentenceEnd(Ljava/lang/String;)I
    .registers 4

    .line 440
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_2d

    .line 441
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x21

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_1c

    const/16 v2, 0x2026

    if-ne v1, v2, :cond_2a

    :cond_1c
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    .line 443
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->endsSentence(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    return v0

    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_2d
    const/4 p0, -0x1

    return p0
.end method

.method public static isSpokenLanguageDifferent(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p0, :cond_25

    if-nez p1, :cond_6

    goto :goto_25

    .line 75
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x0

    return p0

    .line 76
    :cond_e
    const-string v1, "pt-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    return v0

    .line 77
    :cond_17
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->getIso639(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->getIso639(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_25
    :goto_25
    return v0
.end method

.method private static mergeIntoSentences(Ljava/util/List;)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 323
    invoke-static {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->detectPunctuation(Ljava/util/List;)Z

    move-result v1

    .line 324
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const-string v7, ""

    const/4 v8, 0x0

    move v9, v8

    const-wide/16 v10, 0x0

    :goto_1a
    if-ge v9, v4, :cond_101

    .line 331
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    .line 332
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-nez v13, :cond_30

    .line 333
    iget-wide v10, v12, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    .line 334
    iget-object v7, v12, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->lang:Ljava/lang/String;

    :goto_2c
    move-object/from16 v20, v7

    move-wide v15, v10

    goto :goto_36

    :cond_30
    const/16 v13, 0x20

    .line 336
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 338
    :goto_36
    iget-object v7, v12, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-wide v10, v12, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    add-int/lit8 v7, v4, -0x1

    const/4 v12, 0x1

    if-ne v9, v7, :cond_45

    const-wide/16 v21, 0x0

    goto :goto_a4

    :cond_45
    add-int/lit8 v13, v9, 0x1

    .line 345
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    const-wide/16 v21, 0x0

    iget-wide v5, v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    sub-long/2addr v5, v10

    if-eqz v1, :cond_73

    .line 347
    invoke-static {v3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->endsSentence(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_95

    .line 348
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const/16 v14, 0x12c

    if-ge v13, v14, :cond_95

    const-wide/16 v13, 0x5dc

    cmp-long v13, v5, v13

    if-lez v13, :cond_71

    .line 349
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const/16 v14, 0x50

    if-le v13, v14, :cond_71

    goto :goto_95

    :cond_71
    move v12, v8

    goto :goto_95

    :cond_73
    const-wide/16 v17, 0x2bc

    cmp-long v14, v5, v17

    if-gtz v14, :cond_95

    const-wide/16 v17, 0xfa

    cmp-long v14, v5, v17

    if-lez v14, :cond_8d

    .line 353
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-object v13, v13, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    invoke-static {v13}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->startsWithUpperCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_95

    .line 354
    :cond_8d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const/16 v14, 0xc8

    if-lt v13, v14, :cond_71

    :cond_95
    :goto_95
    if-eqz v12, :cond_a4

    sub-long v13, v10, v15

    const-wide/16 v17, 0x7d0

    cmp-long v13, v13, v17

    if-gez v13, :cond_a4

    cmp-long v5, v5, v21

    if-gtz v5, :cond_a4

    move v12, v8

    :cond_a4
    :goto_a4
    if-eqz v12, :cond_fa

    .line 363
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-ge v9, v7, :cond_eb

    .line 365
    invoke-static {v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->findLastSentenceEnd(Ljava/lang/String;)I

    move-result v6

    .line 366
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v12, -0x1

    if-eq v6, v12, :cond_eb

    add-int/lit8 v12, v7, -0x1

    if-ge v6, v12, :cond_eb

    add-int/lit8 v6, v6, 0x1

    .line 368
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 369
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sub-long/2addr v10, v15

    long-to-double v10, v10

    .line 372
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v6

    int-to-double v12, v6

    int-to-double v6, v7

    div-double/2addr v12, v6

    mul-double/2addr v10, v12

    double-to-long v6, v10

    add-long v17, v15, v6

    .line 373
    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    invoke-direct/range {v14 .. v20}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 376
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v17

    goto :goto_fb

    .line 381
    :cond_eb
    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    move-object/from16 v19, v5

    move-wide/from16 v17, v10

    invoke-direct/range {v14 .. v20}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_fa
    move-wide v10, v15

    :goto_fb
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v20

    goto/16 :goto_1a

    :cond_101
    return-object v2
.end method

.method private static parseJson3(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 254
    const-string v2, "events"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_15

    return-object v0

    .line 257
    :cond_15
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    const/4 v5, 0x1

    if-ge v4, v2, :cond_bb

    .line 258
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 261
    const-string v7, "aAppend"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2c

    goto/16 :goto_b7

    .line 263
    :cond_2c
    const-string v5, "segs"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_36

    goto/16 :goto_b7

    .line 266
    :cond_36
    const-string v7, "tStartMs"

    const-wide/16 v8, -0x1

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    const-wide/16 v7, 0x0

    cmp-long v7, v11, v7

    if-gez v7, :cond_45

    goto :goto_b7

    .line 268
    :cond_45
    const-string v7, "dDurationMs"

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 270
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    move v10, v3

    :goto_57
    const-string v13, ""

    if-ge v10, v9, :cond_6b

    .line 272
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "utf8"

    invoke-virtual {v14, v15, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_57

    .line 276
    :cond_6b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xa

    const/16 v9, 0x20

    .line 277
    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    const-string v8, ">>"

    .line 278
    invoke-virtual {v5, v8, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "♪"

    .line 279
    invoke-virtual {v5, v8, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "♫"

    .line 280
    invoke-virtual {v5, v8, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 281
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 284
    sget-object v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->BRACKETS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 285
    sget-object v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->PARENTHESES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 288
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b7

    .line 289
    new-instance v10, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    add-long v13, v11, v6

    move-object/from16 v16, p1

    invoke-direct/range {v10 .. v16}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b7
    :goto_b7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    .line 298
    :cond_bb
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    :goto_c0
    if-ge v3, v1, :cond_118

    .line 299
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    add-int/lit8 v4, v3, 0x1

    .line 300
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    .line 302
    iget-wide v6, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    .line 303
    iget-wide v11, v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    cmp-long v8, v6, v11

    if-lez v8, :cond_e7

    .line 305
    new-instance v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    iget-wide v9, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    iget-object v13, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    iget-object v14, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->lang:Ljava/lang/String;

    invoke-direct/range {v8 .. v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_116

    :cond_e7
    sub-long v8, v11, v6

    const-wide/16 v13, 0x9c4

    cmp-long v8, v8, v13

    if-gtz v8, :cond_116

    add-long/2addr v6, v11

    const-wide/16 v8, 0x2

    .line 307
    div-long v11, v6, v8

    .line 308
    new-instance v10, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    move-wide v13, v11

    iget-wide v11, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->startMs:J

    iget-object v15, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    iget-object v2, v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->lang:Ljava/lang/String;

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 309
    new-instance v10, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;

    move-wide v11, v13

    iget-wide v13, v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->endMs:J

    iget-object v15, v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->text:Ljava/lang/String;

    iget-object v2, v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;->lang:Ljava/lang/String;

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptSegment;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_116
    :goto_116
    move v3, v4

    goto :goto_c0

    .line 313
    :cond_118
    invoke-static {v0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TranscriptFetcher;->mergeIntoSentences(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static startsWithUpperCase(Ljava/lang/String;)Z
    .registers 6

    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_1a

    .line 412
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 413
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    return p0

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    return v1
.end method
