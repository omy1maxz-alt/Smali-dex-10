.class public Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;
.super Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
.source "sk.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "sekundami"

    const-string v1, "sekundou"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;->SECONDS:[Ljava/lang/String;

    const-string v0, "minútami"

    const-string v1, "minútou"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;->MINUTES:[Ljava/lang/String;

    const-string v0, "hodinami"

    const-string v1, "hodinou"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;->HOURS:[Ljava/lang/String;

    const-string v0, "dňami"

    const-string v1, "dňom"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;->DAYS:[Ljava/lang/String;

    const-string v0, "týždňami"

    const-string v1, "týždňom"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;->WEEKS:[Ljava/lang/String;

    const-string v0, "mesiacmi"

    const-string v1, "mesiacom"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;->MONTHS:[Ljava/lang/String;

    const-string v0, "rokmi"

    const-string v1, "rokom"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;->YEARS:[Ljava/lang/String;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    sget-object v2, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;->HOURS:[Ljava/lang/String;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;->DAYS:[Ljava/lang/String;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/sk;

    return-object v0
.end method
