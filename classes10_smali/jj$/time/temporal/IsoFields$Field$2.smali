.class final enum Ljj$/time/temporal/IsoFields$Field$2;
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

    invoke-direct {p0, p1, p2}, Ljj$/time/temporal/IsoFields$Field$2;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;
    .registers 13

    invoke-virtual {p0, p1}, Ljj$/time/temporal/IsoFields$Field$2;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    invoke-virtual {p0}, Ljj$/time/temporal/IsoFields$Field$2;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Ljj$/time/temporal/ValueRange;->checkValidValue(JLjj$/time/temporal/TemporalField;)J

    sget-object v2, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    sget-object v3, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljj$/time/temporal/Temporal;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sub-long v5, p2, v0

    const-wide/16 v7, 0x3

    mul-long v5, v5, v7

    add-long/2addr v3, v5

    invoke-interface {p1, v2, v3, v4}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method public getBaseUnit()Ljj$/time/temporal/TemporalUnit;
    .registers 2

    sget-object v0, Ljj$/time/temporal/IsoFields;->QUARTER_YEARS:Ljj$/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public getFrom(Ljj$/time/temporal/TemporalAccessor;)J
    .registers 8

    invoke-virtual {p0, p1}, Ljj$/time/temporal/IsoFields$Field$2;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3

    div-long/2addr v2, v4

    return-wide v2

    :cond_13
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: QuarterOfYear"

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRangeUnit()Ljj$/time/temporal/TemporalUnit;
    .registers 2

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z
    .registers 3

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

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
    .registers 5

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x4

    invoke-static {v0, v1, v2, v3}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;
    .registers 4

    invoke-virtual {p0, p1}, Ljj$/time/temporal/IsoFields$Field$2;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1}, Ljj$/time/temporal/IsoFields$Field;->rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: QuarterOfYear"

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "QuarterOfYear"

    return-object v0
.end method
