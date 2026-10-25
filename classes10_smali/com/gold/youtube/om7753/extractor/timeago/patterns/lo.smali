.class public Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;
.super Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
.source "lo.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = ""

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "ວິນາທີກ່ອນນີ້"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;->SECONDS:[Ljava/lang/String;

    const-string v0, "ນາທີກ່ອນນີ້"

    const-string v1, "ນາ\u200bທີ\u200bກ່ອນ\u200bນີ້"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;->MINUTES:[Ljava/lang/String;

    const-string v0, "ຊົ່ວ\u200bໂມງ\u200bກ່ອນ\u200bນີ້"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;->HOURS:[Ljava/lang/String;

    const-string v0, "ມື້ກ່ອນນີ້"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;->DAYS:[Ljava/lang/String;

    const-string v0, "ອາ\u200bທິດ\u200bກ່ອນ\u200bນີ້"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;->WEEKS:[Ljava/lang/String;

    const-string v0, "ເດືອນ\u200bກ່ອນ\u200bນີ້"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;->MONTHS:[Ljava/lang/String;

    const-string v0, "ປີ\u200bກ່ອນ\u200bນີ້"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;->YEARS:[Ljava/lang/String;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    sget-object v2, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;->HOURS:[Ljava/lang/String;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;->DAYS:[Ljava/lang/String;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;->YEARS:[Ljava/lang/String;

    const-string v1, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/lo;

    return-object v0
.end method
