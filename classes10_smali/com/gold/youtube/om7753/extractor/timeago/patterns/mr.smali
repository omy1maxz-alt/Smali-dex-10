.class public Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;
.super Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
.source "mr.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = ""

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "सेकंदांपूर्वी"

    const-string v1, "सेकंदापूर्वी"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;->SECONDS:[Ljava/lang/String;

    const-string v0, "मिनिटांपूर्वी"

    const-string v1, "मिनिटापूर्वी"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;->MINUTES:[Ljava/lang/String;

    const-string v0, "तासांपूर्वी"

    const-string v1, "तासापूर्वी"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;->HOURS:[Ljava/lang/String;

    const-string v0, "दिवसांपूर्वी"

    const-string v1, "दिवसापूर्वी"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;->DAYS:[Ljava/lang/String;

    const-string v0, "आठवड्यांपूर्वी"

    const-string v1, "आठवड्यापूर्वी"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;->WEEKS:[Ljava/lang/String;

    const-string v0, "महिन्यांपूर्वी"

    const-string v1, "महिन्यापूर्वी"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;->MONTHS:[Ljava/lang/String;

    const-string v0, "वर्षांपूर्वी"

    const-string v1, "वर्षापूर्वी"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;->YEARS:[Ljava/lang/String;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    sget-object v2, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;->HOURS:[Ljava/lang/String;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;->DAYS:[Ljava/lang/String;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;->YEARS:[Ljava/lang/String;

    const-string v1, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/mr;

    return-object v0
.end method
