.class public final Lcom/gold/youtube/om7753/extractor/utils/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compatParseMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 5

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/utils/Parser$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/utils/Parser$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/utils/Parser$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/utils/Parser$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/utils/Parser$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/utils/Parser$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/utils/Parser$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/gold/youtube/om7753/extractor/utils/Parser$$ExternalSyntheticLambda3;-><init>()V

    new-instance v3, Lcom/gold/youtube/om7753/extractor/utils/Parser$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/gold/youtube/om7753/extractor/utils/Parser$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static isMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMatch(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$compatParseMap$0(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$compatParseMap$1([Ljava/lang/String;)Z
    .registers 3

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    return v1
.end method

.method static synthetic lambda$compatParseMap$2([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic lambda$compatParseMap$3([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->decodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$compatParseMap$4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public static matchGroup(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static matchGroup(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchOrThrow(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static matchGroup1(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static matchGroup1MultiplePatterns([Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchMultiplePatterns([Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static matchMultiplePatterns([Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .registers 13

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_60

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_12

    return-object v4

    :cond_12
    if-nez v0, :cond_5d

    new-instance v5, Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException;

    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x3e8

    const-string v9, "\""

    if-gt v7, v8, :cond_3c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inside of \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3e

    :cond_3c
    const-string v7, ""

    :goto_3e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to find pattern \""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_60
    if-eqz v0, :cond_64

    move-object v1, v0

    goto :goto_6b

    :cond_64
    new-instance v1, Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException;

    const-string v2, "Empty patterns array passed to matchMultiplePatterns"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException;-><init>(Ljava/lang/String;)V

    :goto_6b
    throw v1
.end method

.method public static matchOrThrow(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .registers 7

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find pattern \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x400

    if-gt v3, v4, :cond_4b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " inside of \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4b
    new-instance v2, Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException;

    invoke-direct {v2, v1}, Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
