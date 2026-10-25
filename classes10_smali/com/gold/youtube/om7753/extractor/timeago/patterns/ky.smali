.class public Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;
.super Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
.source "ky.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "секунд"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;->SECONDS:[Ljava/lang/String;

    const-string v0, "мүнөт"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;->MINUTES:[Ljava/lang/String;

    const-string v0, "саат"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;->HOURS:[Ljava/lang/String;

    const-string v0, "күн"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;->DAYS:[Ljava/lang/String;

    const-string v0, "апта"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;->WEEKS:[Ljava/lang/String;

    const-string v0, "ай"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;->MONTHS:[Ljava/lang/String;

    const-string v0, "жыл"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;->YEARS:[Ljava/lang/String;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    sget-object v2, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;->HOURS:[Ljava/lang/String;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;->DAYS:[Ljava/lang/String;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/ky;

    return-object v0
.end method
