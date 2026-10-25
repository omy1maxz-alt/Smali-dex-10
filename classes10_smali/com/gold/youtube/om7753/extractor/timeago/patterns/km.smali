.class public Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;
.super Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
.source "km.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = ""

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "វិនាទី\u200bមុន"

    const-string v1, "១វិនាទីមុន"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;->SECONDS:[Ljava/lang/String;

    const-string v0, "នាទីមុន"

    const-string v1, "១នាទីមុន"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;->MINUTES:[Ljava/lang/String;

    const-string v0, "ម៉ោង\u200bមុន"

    const-string v1, "១ម៉ោង\u200bមុន"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;->HOURS:[Ljava/lang/String;

    const-string v0, "ថ្ងៃមុន"

    const-string v1, "១ថ្ងៃ\u200bមុន"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;->DAYS:[Ljava/lang/String;

    const-string v0, "ស\u200bប្តា\u200bហ៍\u200bមុន"

    const-string v1, "១ស\u200bប្តា\u200bហ៍\u200bមុន"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;->WEEKS:[Ljava/lang/String;

    const-string v0, "ខែមុន"

    const-string v1, "១ខែមុន"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;->MONTHS:[Ljava/lang/String;

    const-string v0, "ឆ្នាំ\u200bមុន"

    const-string v1, "១ឆ្នាំមុន"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;->YEARS:[Ljava/lang/String;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    sget-object v2, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;->HOURS:[Ljava/lang/String;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;->DAYS:[Ljava/lang/String;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;->YEARS:[Ljava/lang/String;

    const-string v1, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/km;

    return-object v0
.end method
