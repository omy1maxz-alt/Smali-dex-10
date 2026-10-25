.class public Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;
.super Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
.source "is.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "second"

    const-string v1, "seconds"

    const-string v2, "sekúndu"

    const-string v3, "sekúndum"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;->SECONDS:[Ljava/lang/String;

    const-string v0, "minute"

    const-string v1, "minutes"

    const-string v2, "mínútu"

    const-string v3, "mínútum"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;->MINUTES:[Ljava/lang/String;

    const-string v0, "hour"

    const-string v1, "hours"

    const-string v2, "klukkustund"

    const-string v3, "klukkustundum"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;->HOURS:[Ljava/lang/String;

    const-string v0, "day"

    const-string v1, "days"

    const-string v2, "degi"

    const-string v3, "dögum"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;->DAYS:[Ljava/lang/String;

    const-string v0, "week"

    const-string v1, "weeks"

    const-string v2, "viku"

    const-string v3, "vikum"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;->WEEKS:[Ljava/lang/String;

    const-string v0, "mánuði"

    const-string v1, "mánuðum"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;->MONTHS:[Ljava/lang/String;

    const-string v0, "ári"

    const-string v1, "árum"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;->YEARS:[Ljava/lang/String;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    sget-object v2, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;->HOURS:[Ljava/lang/String;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;->DAYS:[Ljava/lang/String;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/is;

    return-object v0
.end method
