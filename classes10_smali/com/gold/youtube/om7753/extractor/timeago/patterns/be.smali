.class public Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;
.super Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
.source "be.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "секунду"

    const-string v1, "секунды"

    const-string v2, "секунд"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;->SECONDS:[Ljava/lang/String;

    const-string v0, "хвіліну"

    const-string v1, "хвіліны"

    const-string v2, "хвілін"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;->MINUTES:[Ljava/lang/String;

    const-string v0, "гадзіну"

    const-string v1, "гадзіны"

    const-string v2, "гадзін"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;->HOURS:[Ljava/lang/String;

    const-string v0, "дня"

    const-string v1, "дні"

    const-string v2, "дзень"

    const-string v3, "дзён"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;->DAYS:[Ljava/lang/String;

    const-string v0, "тыдня"

    const-string v1, "тыдні"

    const-string v2, "тыдзень"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;->WEEKS:[Ljava/lang/String;

    const-string v0, "месяцы"

    const-string v1, "месяцаў"

    const-string v2, "месяц"

    const-string v3, "месяца"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;->MONTHS:[Ljava/lang/String;

    const-string v0, "гады"

    const-string v1, "гадоў"

    const-string v2, "год"

    const-string v3, "года"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;->YEARS:[Ljava/lang/String;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    sget-object v2, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;->HOURS:[Ljava/lang/String;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;->DAYS:[Ljava/lang/String;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/be;

    return-object v0
.end method
