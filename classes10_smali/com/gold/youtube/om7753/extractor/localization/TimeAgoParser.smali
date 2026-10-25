.class public Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;
.super Ljava/lang/Object;
.source "TimeAgoParser.java"


# instance fields
.field private final now:Ljj$/time/LocalDateTime;

.field private final patternsHolder:Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;Ljj$/time/LocalDateTime;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->patternsHolder:Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->now:Ljj$/time/LocalDateTime;

    return-void
.end method

.method private getResultFor(ILjj$/time/temporal/ChronoUnit;)Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;
    .registers 7

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    if-ne p2, v0, :cond_12

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->now:Ljj$/time/LocalDateTime;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/LocalDateTime;->minusYears(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/LocalDateTime;->minusDays(J)Ljj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_19

    :cond_12
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->now:Ljj$/time/LocalDateTime;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Ljj$/time/LocalDateTime;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;

    move-result-object v0

    :goto_19
    nop

    invoke-virtual {p2}, Ljj$/time/temporal/ChronoUnit;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v0, v2}, Ljj$/time/LocalDateTime;->truncatedTo(Ljj$/time/temporal/TemporalUnit;)Ljj$/time/LocalDateTime;

    move-result-object v2

    goto :goto_28

    :cond_27
    move-object v2, v0

    :goto_28
    new-instance v3, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    invoke-direct {v3, v2, v1}, Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;-><init>(Ljj$/time/LocalDateTime;Z)V

    return-object v3
.end method

.method static synthetic lambda$parseChronoUnit$2(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;
    .registers 4

    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse the date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseChronoUnit(Ljava/lang/String;)Ljj$/time/temporal/ChronoUnit;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->patternsHolder:Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda1;-><init>(Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/temporal/ChronoUnit;

    return-object v0
.end method

.method private parseTimeAgoAmount(Ljava/lang/String;)I
    .registers 4

    :try_start_0
    const-string v0, "\\D+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    const/4 v1, 0x1

    return v1
.end method

.method private textualDateMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->patternsHolder:Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->wordSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_21
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->patternsHolder:Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->wordSeparator()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "[ \\t\\xA0\\u1680\\u180e\\u2000-\\u200a\\u202f\\u205f\\u3000\\d]"

    goto :goto_44

    :cond_3a
    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->patternsHolder:Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->wordSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_44
    nop

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(^|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "($|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3
.end method


# virtual methods
.method synthetic lambda$parseChronoUnit$0$com-gold-youtube-om7753-extractor-localization-TimeAgoParser(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->textualDateMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$parseChronoUnit$1$com-gold-youtube-om7753-extractor-localization-TimeAgoParser(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .registers 5

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda0;-><init>(Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;
    .registers 10

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->patternsHolder:Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;->specialCases()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, p1, v5}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->textualDateMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-direct {p0, v6, v2}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->getResultFor(ILjj$/time/temporal/ChronoUnit;)Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    move-result-object v0

    return-object v0

    :cond_55
    goto :goto_2e

    :cond_56
    goto :goto_e

    :cond_57
    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->parseTimeAgoAmount(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->parseChronoUnit(Ljava/lang/String;)Ljj$/time/temporal/ChronoUnit;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;->getResultFor(ILjj$/time/temporal/ChronoUnit;)Lcom/gold/youtube/om7753/extractor/localization/DateWrapper;

    move-result-object v0

    return-object v0
.end method
