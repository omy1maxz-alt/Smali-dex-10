.class public Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;
.super Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
.source "ka.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "წამის"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;->SECONDS:[Ljava/lang/String;

    const-string v0, "წუთის"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;->MINUTES:[Ljava/lang/String;

    const-string v0, "საათის"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;->HOURS:[Ljava/lang/String;

    const-string v0, "დღის"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;->DAYS:[Ljava/lang/String;

    const-string v0, "კვირის"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;->WEEKS:[Ljava/lang/String;

    const-string v0, "თვის"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;->MONTHS:[Ljava/lang/String;

    const-string v0, "წლის"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;->YEARS:[Ljava/lang/String;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    sget-object v2, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;->HOURS:[Ljava/lang/String;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;->DAYS:[Ljava/lang/String;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/ka;

    return-object v0
.end method
