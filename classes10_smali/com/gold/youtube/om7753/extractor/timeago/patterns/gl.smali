.class public Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;
.super Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
.source "gl.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "segundo"

    const-string v1, "segundos"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;->SECONDS:[Ljava/lang/String;

    const-string v0, "minuto"

    const-string v1, "minutos"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;->MINUTES:[Ljava/lang/String;

    const-string v0, "hora"

    const-string v1, "horas"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;->HOURS:[Ljava/lang/String;

    const-string v0, "día"

    const-string v1, "días"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;->DAYS:[Ljava/lang/String;

    const-string v0, "semana"

    const-string v1, "semanas"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;->WEEKS:[Ljava/lang/String;

    const-string v0, "mes"

    const-string v1, "meses"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;->MONTHS:[Ljava/lang/String;

    const-string v0, "ano"

    const-string v1, "anos"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;->YEARS:[Ljava/lang/String;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    sget-object v2, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;->HOURS:[Ljava/lang/String;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;->DAYS:[Ljava/lang/String;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/gl;

    return-object v0
.end method
