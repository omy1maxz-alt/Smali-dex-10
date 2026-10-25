.class final enum Ljj$/time/temporal/IsoFields$Field$4;
.super Ljj$/time/temporal/IsoFields$Field;
.source "IsoFields.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljj$/time/temporal/IsoFields$Field;-><init>(Ljava/lang/String;ILjj$/time/temporal/IsoFields-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjj$/time/temporal/IsoFields-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/time/temporal/IsoFields$Field$4;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;
    .registers 12

    invoke-virtual {p0, p1}, Ljj$/time/temporal/IsoFields$Field$4;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Ljj$/time/temporal/IsoFields$Field$4;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/IsoFields$Field$4;->WEEK_BASED_YEAR:Ljj$/time/temporal/IsoFields$Field;

    invoke-virtual {v0, p2, p3, v1}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-static {p1}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v2}, Ljj$/time/LocalDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v2

    invoke-static {v1}, Ljj$/time/temporal/IsoFields$Field;->-$$Nest$smgetWeek(Ljj$/time/LocalDate;)I

    move-result v3

    const/16 v4, 0x35

    if-ne v3, v4, :cond_2c

    invoke-static {v0}, Ljj$/time/temporal/IsoFields$Field;->-$$Nest$smgetWeekRange(I)I

    move-result v4

    const/16 v5, 0x34

    if-ne v4, v5, :cond_2c

    const/16 v3, 0x34

    :cond_2c
    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static {v0, v5, v4}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v4

    sget-object v5, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v4, v5}, Ljj$/time/LocalDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v5

    sub-int v5, v2, v5

    add-int/lit8 v6, v3, -0x1

    mul-int/lit8 v6, v6, 0x7

    add-int/2addr v5, v6

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v4

    invoke-interface {p1, v4}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;

    move-result-object v6

    return-object v6

    :cond_49
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekBasedYear"

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaseUnit()Ljj$/time/temporal/TemporalUnit;
    .registers 2

    sget-object v0, Ljj$/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljj$/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public getFrom(Ljj$/time/temporal/TemporalAccessor;)J
    .registers 4

    invoke-virtual {p0, p1}, Ljj$/time/temporal/IsoFields$Field$4;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/temporal/IsoFields$Field;->-$$Nest$smgetWeekBasedYear(Ljj$/time/LocalDate;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_10
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekBasedYear"

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRangeUnit()Ljj$/time/temporal/TemporalUnit;
    .registers 2

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z
    .registers 3

    sget-object v0, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljj$/time/temporal/IsoFields;->isIso(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public range()Ljj$/time/temporal/ValueRange;
    .registers 2

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;
    .registers 4

    invoke-virtual {p0, p1}, Ljj$/time/temporal/IsoFields$Field$4;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1}, Ljj$/time/temporal/IsoFields$Field;->rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekBasedYear"

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "WeekBasedYear"

    return-object v0
.end method
