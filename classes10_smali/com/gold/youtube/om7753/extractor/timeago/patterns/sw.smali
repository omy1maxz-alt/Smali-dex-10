.class public Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;
.super Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
.source "sw.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "sekunde"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;->SECONDS:[Ljava/lang/String;

    const-string v0, "dakika"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;->MINUTES:[Ljava/lang/String;

    const-string v0, "saa"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;->HOURS:[Ljava/lang/String;

    const-string v0, "siku"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;->DAYS:[Ljava/lang/String;

    const-string v0, "wiki"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;->WEEKS:[Ljava/lang/String;

    const-string v0, "Mwezi"

    const-string v1, "miezi"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;->MONTHS:[Ljava/lang/String;

    const-string v0, "Miaka"

    const-string v1, "Mwaka"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;->YEARS:[Ljava/lang/String;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    sget-object v2, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;->HOURS:[Ljava/lang/String;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;->DAYS:[Ljava/lang/String;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/sw;

    return-object v0
.end method
