.class public Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;
.super Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;
.source "iw.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "שניות"

    const-string v1, "שנייה"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->SECONDS:[Ljava/lang/String;

    const-string v0, "דקה"

    const-string v1, "דקות"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->MINUTES:[Ljava/lang/String;

    const-string v0, "שעה"

    const-string v1, "שעות"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->HOURS:[Ljava/lang/String;

    const-string v0, "יום"

    const-string v1, "ימים"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->DAYS:[Ljava/lang/String;

    const-string v0, "שבוע"

    const-string v1, "שבועות"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->WEEKS:[Ljava/lang/String;

    const-string v0, "חודש"

    const-string v1, "חודשים"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->MONTHS:[Ljava/lang/String;

    const-string v0, "שנה"

    const-string v1, "שנים"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->YEARS:[Ljava/lang/String;

    new-instance v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;

    return-void
.end method

.method private constructor <init>()V
    .registers 10

    sget-object v2, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->HOURS:[Ljava/lang/String;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->DAYS:[Ljava/lang/String;

    sget-object v6, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gold/youtube/om7753/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->HOURS:Ljj$/time/temporal/ChronoUnit;

    const-string v2, "שעתיים"

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->putSpecialCase(Ljj$/time/temporal/ChronoUnit;Ljava/lang/String;I)V

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    const-string v2, "יומיים"

    invoke-virtual {p0, v1, v2, v3}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->putSpecialCase(Ljj$/time/temporal/ChronoUnit;Ljava/lang/String;I)V

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    const-string v2, "שבועיים"

    invoke-virtual {p0, v1, v2, v3}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->putSpecialCase(Ljj$/time/temporal/ChronoUnit;Ljava/lang/String;I)V

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    const-string v2, "חודשיים"

    invoke-virtual {p0, v1, v2, v3}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->putSpecialCase(Ljj$/time/temporal/ChronoUnit;Ljava/lang/String;I)V

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    const-string v2, "שנתיים"

    invoke-virtual {p0, v1, v2, v3}, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->putSpecialCase(Ljj$/time/temporal/ChronoUnit;Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;->INSTANCE:Lcom/gold/youtube/om7753/extractor/timeago/patterns/iw;

    return-object v0
.end method
