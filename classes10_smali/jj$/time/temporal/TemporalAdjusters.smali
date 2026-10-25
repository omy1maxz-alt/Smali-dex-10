.class public final Ljj$/time/temporal/TemporalAdjusters;
.super Ljava/lang/Object;
.source "TemporalAdjusters.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dayOfWeekInMonth(ILjj$/time/DayOfWeek;)Ljj$/time/temporal/TemporalAdjuster;
    .registers 4

    const-string v0, "dayOfWeek"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljj$/time/DayOfWeek;->getValue()I

    move-result v0

    if-ltz p0, :cond_11

    new-instance v1, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda0;-><init>(II)V

    return-object v1

    :cond_11
    new-instance v1, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0}, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda1;-><init>(II)V

    return-object v1
.end method

.method public static firstDayOfMonth()Ljj$/time/temporal/TemporalAdjuster;
    .registers 1

    new-instance v0, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda3;-><init>()V

    return-object v0
.end method

.method public static firstDayOfNextMonth()Ljj$/time/temporal/TemporalAdjuster;
    .registers 1

    new-instance v0, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda12;-><init>()V

    return-object v0
.end method

.method public static firstDayOfNextYear()Ljj$/time/temporal/TemporalAdjuster;
    .registers 1

    new-instance v0, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda4;-><init>()V

    return-object v0
.end method

.method public static firstDayOfYear()Ljj$/time/temporal/TemporalAdjuster;
    .registers 1

    new-instance v0, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda7;-><init>()V

    return-object v0
.end method

.method public static firstInMonth(Ljj$/time/DayOfWeek;)Ljj$/time/temporal/TemporalAdjuster;
    .registers 2

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljj$/time/temporal/TemporalAdjusters;->dayOfWeekInMonth(ILjj$/time/DayOfWeek;)Ljj$/time/temporal/TemporalAdjuster;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$dayOfWeekInMonth$7(IILjj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 12

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    const-wide/16 v1, 0x1

    invoke-interface {p2, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    sget-object v3, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v3}, Ljj$/time/temporal/Temporal;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v3

    sub-int v4, p0, v3

    add-int/lit8 v4, v4, 0x7

    rem-int/lit8 v4, v4, 0x7

    int-to-long v5, v4

    int-to-long v7, p1

    sub-long/2addr v7, v1

    const-wide/16 v1, 0x7

    mul-long v7, v7, v1

    add-long/2addr v5, v7

    long-to-int v1, v5

    int-to-long v4, v1

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v4, v5, v2}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$dayOfWeekInMonth$8(IILjj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 13

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p2, v1}, Ljj$/time/temporal/Temporal;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1}, Ljj$/time/temporal/Temporal;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    sub-int v2, p0, v1

    if-nez v2, :cond_1c

    const/4 v3, 0x0

    goto :goto_22

    :cond_1c
    if-lez v2, :cond_21

    add-int/lit8 v3, v2, -0x7

    goto :goto_22

    :cond_21
    move v3, v2

    :goto_22
    int-to-long v4, v3

    neg-int v2, p1

    int-to-long v6, v2

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7

    mul-long v6, v6, v8

    sub-long/2addr v4, v6

    long-to-int v2, v4

    int-to-long v3, v2

    sget-object v5, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v3, v4, v5}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v3

    return-object v3
.end method

.method static synthetic lambda$firstDayOfMonth$1(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 4

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    const-wide/16 v1, 0x1

    invoke-interface {p0, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$firstDayOfNextMonth$3(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    const-wide/16 v1, 0x1

    invoke-interface {p0, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    sget-object v3, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v1, v2, v3}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$firstDayOfNextYear$6(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    const-wide/16 v1, 0x1

    invoke-interface {p0, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    sget-object v3, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v1, v2, v3}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$firstDayOfYear$4(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 4

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    const-wide/16 v1, 0x1

    invoke-interface {p0, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$lastDayOfMonth$2(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 4

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljj$/time/temporal/Temporal;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$lastDayOfYear$5(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 4

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v1}, Ljj$/time/temporal/Temporal;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$next$9(ILjj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 7

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/Temporal;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    sub-int v1, v0, p0

    if-ltz v1, :cond_d

    rsub-int/lit8 v2, v1, 0x7

    goto :goto_e

    :cond_d
    neg-int v2, v1

    :goto_e
    int-to-long v2, v2

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$nextOrSame$10(ILjj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 7

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/Temporal;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    if-ne v0, p0, :cond_9

    return-object p1

    :cond_9
    sub-int v1, v0, p0

    if-ltz v1, :cond_10

    rsub-int/lit8 v2, v1, 0x7

    goto :goto_11

    :cond_10
    neg-int v2, v1

    :goto_11
    int-to-long v2, v2

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$ofDateAdjuster$0(Ljava/util/function/UnaryOperator;Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 5

    invoke-static {p1}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/time/LocalDate;

    invoke-interface {p1, v1}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$previous$11(ILjj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 7

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/Temporal;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    sub-int v1, p0, v0

    if-ltz v1, :cond_d

    rsub-int/lit8 v2, v1, 0x7

    goto :goto_e

    :cond_d
    neg-int v2, v1

    :goto_e
    int-to-long v2, v2

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljj$/time/temporal/Temporal;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$previousOrSame$12(ILjj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 7

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/Temporal;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    if-ne v0, p0, :cond_9

    return-object p1

    :cond_9
    sub-int v1, p0, v0

    if-ltz v1, :cond_10

    rsub-int/lit8 v2, v1, 0x7

    goto :goto_11

    :cond_10
    neg-int v2, v1

    :goto_11
    int-to-long v2, v2

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Ljj$/time/temporal/Temporal;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method public static lastDayOfMonth()Ljj$/time/temporal/TemporalAdjuster;
    .registers 1

    new-instance v0, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda9;-><init>()V

    return-object v0
.end method

.method public static lastDayOfYear()Ljj$/time/temporal/TemporalAdjuster;
    .registers 1

    new-instance v0, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda10;-><init>()V

    return-object v0
.end method

.method public static lastInMonth(Ljj$/time/DayOfWeek;)Ljj$/time/temporal/TemporalAdjuster;
    .registers 2

    const/4 v0, -0x1

    invoke-static {v0, p0}, Ljj$/time/temporal/TemporalAdjusters;->dayOfWeekInMonth(ILjj$/time/DayOfWeek;)Ljj$/time/temporal/TemporalAdjuster;

    move-result-object v0

    return-object v0
.end method

.method public static next(Ljj$/time/DayOfWeek;)Ljj$/time/temporal/TemporalAdjuster;
    .registers 3

    invoke-virtual {p0}, Ljj$/time/DayOfWeek;->getValue()I

    move-result v0

    new-instance v1, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda11;-><init>(I)V

    return-object v1
.end method

.method public static nextOrSame(Ljj$/time/DayOfWeek;)Ljj$/time/temporal/TemporalAdjuster;
    .registers 3

    invoke-virtual {p0}, Ljj$/time/DayOfWeek;->getValue()I

    move-result v0

    new-instance v1, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda6;-><init>(I)V

    return-object v1
.end method

.method public static ofDateAdjuster(Ljava/util/function/UnaryOperator;)Ljj$/time/temporal/TemporalAdjuster;
    .registers 2

    const-string v0, "dateBasedAdjuster"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/UnaryOperator;)V

    return-object v0
.end method

.method public static previous(Ljj$/time/DayOfWeek;)Ljj$/time/temporal/TemporalAdjuster;
    .registers 3

    invoke-virtual {p0}, Ljj$/time/DayOfWeek;->getValue()I

    move-result v0

    new-instance v1, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda2;-><init>(I)V

    return-object v1
.end method

.method public static previousOrSame(Ljj$/time/DayOfWeek;)Ljj$/time/temporal/TemporalAdjuster;
    .registers 3

    invoke-virtual {p0}, Ljj$/time/DayOfWeek;->getValue()I

    move-result v0

    new-instance v1, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Ljj$/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda8;-><init>(I)V

    return-object v1
.end method
