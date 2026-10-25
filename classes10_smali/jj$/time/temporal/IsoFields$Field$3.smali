.class final enum Ljj$/time/temporal/IsoFields$Field$3;
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

    invoke-direct {p0, p1, p2}, Ljj$/time/temporal/IsoFields$Field$3;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;
    .registers 7

    invoke-virtual {p0}, Ljj$/time/temporal/IsoFields$Field$3;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p0}, Ljj$/time/temporal/ValueRange;->checkValidValue(JLjj$/time/temporal/TemporalField;)J

    invoke-virtual {p0, p1}, Ljj$/time/temporal/IsoFields$Field$3;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public getBaseUnit()Ljj$/time/temporal/TemporalUnit;
    .registers 2

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    const-string v0, "locale"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Week"

    return-object v0
.end method

.method public getFrom(Ljj$/time/temporal/TemporalAccessor;)J
    .registers 4

    invoke-virtual {p0, p1}, Ljj$/time/temporal/IsoFields$Field$3;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/temporal/IsoFields$Field;->-$$Nest$smgetWeek(Ljj$/time/LocalDate;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_10
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRangeUnit()Ljj$/time/temporal/TemporalUnit;
    .registers 2

    sget-object v0, Ljj$/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljj$/time/temporal/TemporalUnit;

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
    .registers 7

    const-wide/16 v2, 0x34

    const-wide/16 v4, 0x35

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Ljj$/time/temporal/ValueRange;->of(JJJ)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;
    .registers 4

    invoke-virtual {p0, p1}, Ljj$/time/temporal/IsoFields$Field$3;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Ljj$/time/LocalDate;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/temporal/IsoFields$Field;->-$$Nest$smgetWeekRange(Ljj$/time/LocalDate;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolve(Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    sget-object v3, Ljj$/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Ljj$/time/temporal/IsoFields$Field;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    sget-object v4, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v3, :cond_cc

    if-nez v4, :cond_1c

    goto/16 :goto_cc

    :cond_1c
    sget-object v5, Ljj$/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Ljj$/time/temporal/IsoFields$Field;

    invoke-virtual {v5}, Ljj$/time/temporal/IsoFields$Field;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Ljj$/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Ljj$/time/temporal/IsoFields$Field;

    invoke-virtual {v5, v6, v7, v8}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v5

    sget-object v6, Ljj$/time/temporal/IsoFields$Field$3;->WEEK_OF_WEEK_BASED_YEAR:Ljj$/time/temporal/IsoFields$Field;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static/range {p2 .. p2}, Ljj$/time/temporal/IsoFields$Field;->-$$Nest$smensureIso(Ljj$/time/temporal/TemporalAccessor;)V

    const/4 v8, 0x1

    const/4 v9, 0x4

    invoke-static {v5, v8, v9}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v8

    sget-object v9, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    const-wide/16 v10, 0x1

    if-ne v2, v9, :cond_87

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x7

    cmp-long v9, v12, v14

    if-lez v9, :cond_61

    sub-long v16, v12, v10

    move-wide/from16 v18, v10

    div-long v10, v16, v14

    invoke-virtual {v8, v10, v11}, Ljj$/time/LocalDate;->plusWeeks(J)Ljj$/time/LocalDate;

    move-result-object v8

    sub-long v9, v12, v18

    rem-long/2addr v9, v14

    add-long v12, v9, v18

    goto :goto_76

    :cond_61
    move-wide/from16 v18, v10

    cmp-long v9, v12, v18

    if-gez v9, :cond_76

    invoke-static {v12, v13, v14, v15}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v9

    div-long/2addr v9, v14

    invoke-virtual {v8, v9, v10}, Ljj$/time/LocalDate;->plusWeeks(J)Ljj$/time/LocalDate;

    move-result-object v8

    const-wide/16 v9, 0x6

    add-long/2addr v9, v12

    rem-long/2addr v9, v14

    add-long v12, v9, v18

    :cond_76
    :goto_76
    move-wide/from16 v9, v18

    invoke-static {v6, v7, v9, v10}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljj$/time/LocalDate;->plusWeeks(J)Ljj$/time/LocalDate;

    move-result-object v9

    sget-object v10, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v9, v10, v12, v13}, Ljj$/time/LocalDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalDate;

    move-result-object v8

    goto :goto_be

    :cond_87
    move-wide v9, v10

    sget-object v11, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v11

    cmp-long v12, v6, v9

    if-ltz v12, :cond_9c

    const-wide/16 v9, 0x34

    cmp-long v12, v6, v9

    if-lez v12, :cond_af

    :cond_9c
    sget-object v9, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    if-ne v2, v9, :cond_a8

    invoke-static {v8}, Ljj$/time/temporal/IsoFields$Field;->-$$Nest$smgetWeekRange(Ljj$/time/LocalDate;)Ljj$/time/temporal/ValueRange;

    move-result-object v9

    invoke-virtual {v9, v6, v7, v0}, Ljj$/time/temporal/ValueRange;->checkValidValue(JLjj$/time/temporal/TemporalField;)J

    goto :goto_af

    :cond_a8
    invoke-virtual {v0}, Ljj$/time/temporal/IsoFields$Field$3;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v9

    invoke-virtual {v9, v6, v7, v0}, Ljj$/time/temporal/ValueRange;->checkValidValue(JLjj$/time/temporal/TemporalField;)J

    :cond_af
    :goto_af
    const-wide/16 v18, 0x1

    sub-long v9, v6, v18

    invoke-virtual {v8, v9, v10}, Ljj$/time/LocalDate;->plusWeeks(J)Ljj$/time/LocalDate;

    move-result-object v9

    sget-object v10, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    int-to-long v12, v11

    invoke-virtual {v9, v10, v12, v13}, Ljj$/time/LocalDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalDate;

    move-result-object v8

    :goto_be
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Ljj$/time/temporal/IsoFields$Field$3;->WEEK_BASED_YEAR:Ljj$/time/temporal/IsoFields$Field;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v8

    :cond_cc
    :goto_cc
    const/4 v5, 0x0

    return-object v5
.end method

.method public bridge synthetic resolve(Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/temporal/TemporalAccessor;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/temporal/IsoFields$Field$3;->resolve(Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "WeekOfWeekBasedYear"

    return-object v0
.end method
