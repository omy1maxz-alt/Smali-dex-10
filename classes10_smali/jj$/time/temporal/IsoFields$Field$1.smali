.class final enum Ljj$/time/temporal/IsoFields$Field$1;
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

    invoke-direct {p0, p1, p2}, Ljj$/time/temporal/IsoFields$Field$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;
    .registers 11

    invoke-virtual {p0, p1}, Ljj$/time/temporal/IsoFields$Field$1;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    invoke-virtual {p0}, Ljj$/time/temporal/IsoFields$Field$1;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Ljj$/time/temporal/ValueRange;->checkValidValue(JLjj$/time/temporal/TemporalField;)J

    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    sget-object v3, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljj$/time/temporal/Temporal;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sub-long v5, p2, v0

    add-long/2addr v3, v5

    invoke-interface {p1, v2, v3, v4}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v2

    return-object v2
.end method

.method public getBaseUnit()Ljj$/time/temporal/TemporalUnit;
    .registers 2

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public getFrom(Ljj$/time/temporal/TemporalAccessor;)J
    .registers 9

    invoke-virtual {p0, p1}, Ljj$/time/temporal/IsoFields$Field$1;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljj$/time/temporal/TemporalAccessor;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {}, Ljj$/time/temporal/IsoFields$Field;->-$$Nest$sfgetQUARTER_DAYS()[I

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    div-int/lit8 v5, v5, 0x3

    sget-object v6, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v6, v2, v3}, Ljj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v6

    if-eqz v6, :cond_2a

    const/4 v6, 0x4

    goto :goto_2b

    :cond_2a
    const/4 v6, 0x0

    :goto_2b
    add-int/2addr v5, v6

    aget v4, v4, v5

    sub-int v4, v0, v4

    int-to-long v4, v4

    return-wide v4

    :cond_32
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: DayOfQuarter"

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRangeUnit()Ljj$/time/temporal/TemporalUnit;
    .registers 2

    sget-object v0, Ljj$/time/temporal/IsoFields;->QUARTER_YEARS:Ljj$/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z
    .registers 3

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p1}, Ljj$/time/temporal/IsoFields;->isIso(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public range()Ljj$/time/temporal/ValueRange;
    .registers 7

    const-wide/16 v2, 0x5a

    const-wide/16 v4, 0x5c

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Ljj$/time/temporal/ValueRange;->of(JJJ)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;
    .registers 11

    invoke-virtual {p0, p1}, Ljj$/time/temporal/IsoFields$Field$1;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_4e

    sget-object v0, Ljj$/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljj$/time/temporal/IsoFields$Field;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    const-wide/16 v2, 0x5b

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_2a

    sget-object v6, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v6}, Ljj$/time/temporal/TemporalAccessor;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v6

    sget-object v8, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v8, v6, v7}, Ljj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v8

    if-eqz v8, :cond_23

    goto :goto_25

    :cond_23
    const-wide/16 v2, 0x5a

    :goto_25
    invoke-static {v4, v5, v2, v3}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    :cond_2a
    const-wide/16 v6, 0x2

    cmp-long v8, v0, v6

    if-nez v8, :cond_35

    invoke-static {v4, v5, v2, v3}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    :cond_35
    const-wide/16 v2, 0x3

    cmp-long v6, v0, v2

    if-eqz v6, :cond_47

    const-wide/16 v2, 0x4

    cmp-long v6, v0, v2

    if-nez v6, :cond_42

    goto :goto_47

    :cond_42
    invoke-virtual {p0}, Ljj$/time/temporal/IsoFields$Field$1;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    :cond_47
    :goto_47
    const-wide/16 v2, 0x5c

    invoke-static {v4, v5, v2, v3}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    :cond_4e
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: DayOfQuarter"

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolve(Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    sget-object v3, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    sget-object v4, Ljj$/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljj$/time/temporal/IsoFields$Field;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v3, :cond_a0

    if-nez v4, :cond_1c

    goto/16 :goto_a0

    :cond_1c
    sget-object v5, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v5

    sget-object v6, Ljj$/time/temporal/IsoFields$Field$1;->DAY_OF_QUARTER:Ljj$/time/temporal/IsoFields$Field;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static/range {p2 .. p2}, Ljj$/time/temporal/IsoFields$Field;->-$$Nest$smensureIso(Ljj$/time/temporal/TemporalAccessor;)V

    sget-object v8, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    const/4 v9, 0x3

    const-wide/16 v10, 0x1

    const/4 v12, 0x1

    if-ne v2, v8, :cond_56

    invoke-static {v5, v12, v12}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13, v10, v11}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v12

    invoke-static {v12, v13, v9}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v8

    invoke-static {v6, v7, v10, v11}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v6

    goto :goto_8e

    :cond_56
    sget-object v8, Ljj$/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljj$/time/temporal/IsoFields$Field;

    invoke-virtual {v8}, Ljj$/time/temporal/IsoFields$Field;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sget-object v15, Ljj$/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljj$/time/temporal/IsoFields$Field;

    invoke-virtual {v8, v13, v14, v15}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v8

    add-int/lit8 v13, v8, -0x1

    mul-int/lit8 v13, v13, 0x3

    add-int/2addr v13, v12

    invoke-static {v5, v13, v12}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v9

    cmp-long v12, v6, v10

    if-ltz v12, :cond_79

    const-wide/16 v12, 0x5a

    cmp-long v14, v6, v12

    if-lez v14, :cond_8c

    :cond_79
    sget-object v12, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    if-ne v2, v12, :cond_85

    invoke-virtual {v0, v9}, Ljj$/time/temporal/IsoFields$Field$1;->rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;

    move-result-object v12

    invoke-virtual {v12, v6, v7, v0}, Ljj$/time/temporal/ValueRange;->checkValidValue(JLjj$/time/temporal/TemporalField;)J

    goto :goto_8c

    :cond_85
    invoke-virtual {v0}, Ljj$/time/temporal/IsoFields$Field$1;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v12

    invoke-virtual {v12, v6, v7, v0}, Ljj$/time/temporal/ValueRange;->checkValidValue(JLjj$/time/temporal/TemporalField;)J

    :cond_8c
    :goto_8c
    sub-long/2addr v6, v10

    move-object v8, v9

    :goto_8e
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Ljj$/time/temporal/IsoFields$Field$1;->QUARTER_OF_YEAR:Ljj$/time/temporal/IsoFields$Field;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v6, v7}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v9

    return-object v9

    :cond_a0
    :goto_a0
    const/4 v5, 0x0

    return-object v5
.end method

.method public bridge synthetic resolve(Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/temporal/TemporalAccessor;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/temporal/IsoFields$Field$1;->resolve(Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "DayOfQuarter"

    return-object v0
.end method
