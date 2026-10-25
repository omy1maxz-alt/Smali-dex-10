.class public Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;
.super Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
.source "sr_Latn.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "sekunde"

    const-string v1, "sekundi"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;->SECONDS:[Ljava/lang/String;

    const-string v0, "minuta"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;->MINUTES:[Ljava/lang/String;

    const-string v0, "sati"

    const-string v1, "sata"

    const-string v2, "sat"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;->HOURS:[Ljava/lang/String;

    const-string v5, "Pre 5 dana"

    const-string v6, "Pre 6 dana"

    const-string v1, "Pre 1 dan"

    const-string v2, "Pre 2 dana"

    const-string v3, "Pre 3 dana"

    const-string v4, "Pre 4 dana"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;->DAYS:[Ljava/lang/String;

    const-string v0, "nedelje"

    const-string v1, "nedelju"

    const-string v2, "nedelja"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;->WEEKS:[Ljava/lang/String;

    const-string v0, "meseci"

    const-string v1, "meseca"

    const-string v2, "mesec"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;->MONTHS:[Ljava/lang/String;

    const-string v0, "godina"

    const-string v1, "godinu"

    const-string v2, "godine"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;->YEARS:[Ljava/lang/String;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    sget-object v2, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;->HOURS:[Ljava/lang/String;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;->DAYS:[Ljava/lang/String;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/sr_Latn;

    return-object v0
.end method
