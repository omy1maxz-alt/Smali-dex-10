.class public final Lcom/gold/youtube/om7753/extractor/localization/TimeAgoPatternsManager;
.super Ljava/lang/Object;
.source "TimeAgoPatternsManager.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPatternsFor(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
    .registers 3

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsManager;->getPatterns(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeAgoParserFor(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;
    .registers 2

    invoke-static {}, Ljj$/time/LocalDateTime;->now()Ljj$/time/LocalDateTime;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoPatternsManager;->getTimeAgoParserFor(Lcom/gold/youtube/om7753/extractor/localization/Localization;Ljj$/time/LocalDateTime;)Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeAgoParserFor(Lcom/gold/youtube/om7753/extractor/localization/Localization;Ljj$/time/LocalDateTime;)Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;
    .registers 4

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoPatternsManager;->getPatternsFor(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    new-instance v1, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;

    invoke-direct {v1, v0, p1}, Lcom/gold/youtube/om7753/extractor/localization/TimeAgoParser;-><init>(Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;Ljj$/time/LocalDateTime;)V

    :goto_d
    return-object v1
.end method
