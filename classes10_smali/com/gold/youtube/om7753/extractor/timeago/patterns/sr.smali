.class public Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;
.super Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
.source "sr.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "секунде"

    const-string v1, "секунди"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;->SECONDS:[Ljava/lang/String;

    const-string v0, "минута"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;->MINUTES:[Ljava/lang/String;

    const-string v0, "сата"

    const-string v1, "сати"

    const-string v2, "сат"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;->HOURS:[Ljava/lang/String;

    const-string v5, "Пре 5 дана"

    const-string v6, "Пре 6 дана"

    const-string v1, "Пре 1 дан"

    const-string v2, "Пре 2 дана"

    const-string v3, "Пре 3 дана"

    const-string v4, "Пре 4 дана"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;->DAYS:[Ljava/lang/String;

    const-string v0, "недеље"

    const-string v1, "недељу"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;->WEEKS:[Ljava/lang/String;

    const-string v0, "месеца"

    const-string v1, "месеци"

    const-string v2, "месец"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;->MONTHS:[Ljava/lang/String;

    const-string v0, "године"

    const-string v1, "годину"

    const-string v2, "година"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;->YEARS:[Ljava/lang/String;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    sget-object v2, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;->HOURS:[Ljava/lang/String;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;->DAYS:[Ljava/lang/String;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr;

    return-object v0
.end method
