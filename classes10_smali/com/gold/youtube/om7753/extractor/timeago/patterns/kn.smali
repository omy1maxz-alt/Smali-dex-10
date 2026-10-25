.class public Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;
.super Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
.source "kn.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "ಸೆಕೆಂಡುಗಳ"

    const-string v1, "ಸೆಕೆಂಡ್"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;->SECONDS:[Ljava/lang/String;

    const-string v0, "ನಿಮಿಷಗಳ"

    const-string v1, "ನಿಮಿಷದ"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;->MINUTES:[Ljava/lang/String;

    const-string v0, "ಗಂಟೆಗಳ"

    const-string v1, "ಗಂಟೆಯ"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;->HOURS:[Ljava/lang/String;

    const-string v0, "ದಿನಗಳ"

    const-string v1, "ದಿನದ"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;->DAYS:[Ljava/lang/String;

    const-string v0, "ವಾರಗಳ"

    const-string v1, "ವಾರದ"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;->WEEKS:[Ljava/lang/String;

    const-string v0, "ತಿಂಗಳ"

    const-string v1, "ತಿಂಗಳುಗಳ"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;->MONTHS:[Ljava/lang/String;

    const-string v0, "ವರ್ಷಗಳ"

    const-string v1, "ವರ್ಷದ"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;->YEARS:[Ljava/lang/String;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    sget-object v2, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;->HOURS:[Ljava/lang/String;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;->DAYS:[Ljava/lang/String;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/kn;

    return-object v0
.end method
