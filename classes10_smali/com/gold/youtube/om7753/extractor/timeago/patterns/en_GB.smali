.class public Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;
.super Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
.source "en_GB.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "seconds"

    const-string v1, "sec"

    const-string v2, "second"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;->SECONDS:[Ljava/lang/String;

    const-string v0, "minutes"

    const-string v1, "min"

    const-string v2, "minute"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;->MINUTES:[Ljava/lang/String;

    const-string v0, "hours"

    const-string v1, "hr"

    const-string v2, "hour"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;->HOURS:[Ljava/lang/String;

    const-string v0, "day"

    const-string v1, "days"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;->DAYS:[Ljava/lang/String;

    const-string v0, "weeks"

    const-string v1, "wk"

    const-string v2, "week"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;->WEEKS:[Ljava/lang/String;

    const-string v0, "months"

    const-string v1, "mo"

    const-string v2, "month"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;->MONTHS:[Ljava/lang/String;

    const-string v0, "years"

    const-string v1, "yr"

    const-string v2, "year"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;->YEARS:[Ljava/lang/String;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    sget-object v2, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;->HOURS:[Ljava/lang/String;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;->DAYS:[Ljava/lang/String;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/en_GB;

    return-object v0
.end method
