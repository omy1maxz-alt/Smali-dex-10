.class public final Ljj$/time/Period;
.super Ljava/lang/Object;
.source "Period.java"

# interfaces
.implements Ljj$/time/chrono/ChronoPeriod;
.implements Ljava/io/Serializable;


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final SUPPORTED_UNITS:Ljava/util/List;

.field public static final ZERO:Ljj$/time/Period;

.field private static final serialVersionUID:J = -0xcbe97ad039fbcL


# instance fields
.field private final days:I

.field private final months:I

.field private final years:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljj$/time/Period;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Ljj$/time/Period;-><init>(III)V

    sput-object v0, Ljj$/time/Period;->ZERO:Ljj$/time/Period;

    nop

    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljj$/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-static {v0, v1, v2}, Ljj$/time/Period$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljj$/time/Period;->SUPPORTED_UNITS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljj$/time/Period;->years:I

    iput p2, p0, Ljj$/time/Period;->months:I

    iput p3, p0, Ljj$/time/Period;->days:I

    return-void
.end method

.method public static between(Ljj$/time/LocalDate;Ljj$/time/LocalDate;)Ljj$/time/Period;
    .registers 3

    invoke-virtual {p0, p1}, Ljj$/time/LocalDate;->until(Ljj$/time/chrono/ChronoLocalDate;)Ljj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method private static charMatch(Ljava/lang/CharSequence;IIC)Z
    .registers 5

    if-ltz p1, :cond_e

    add-int/lit8 v0, p1, 0x1

    if-ne p2, v0, :cond_e

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static create(III)Ljj$/time/Period;
    .registers 4

    or-int v0, p0, p1

    or-int/2addr v0, p2

    if-nez v0, :cond_8

    sget-object v0, Ljj$/time/Period;->ZERO:Ljj$/time/Period;

    return-object v0

    :cond_8
    new-instance v0, Ljj$/time/Period;

    invoke-direct {v0, p0, p1, p2}, Ljj$/time/Period;-><init>(III)V

    return-object v0
.end method

.method public static from(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Period;
    .registers 10

    instance-of v0, p0, Ljj$/time/Period;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljj$/time/Period;

    return-object v0

    :cond_8
    instance-of v0, p0, Ljj$/time/chrono/ChronoPeriod;

    if-eqz v0, :cond_35

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    move-object v1, p0

    check-cast v1, Ljj$/time/chrono/ChronoPeriod;

    invoke-interface {v1}, Ljj$/time/chrono/ChronoPeriod;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_35

    :cond_1c
    new-instance v0, Ljj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period requires ISO chronology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    :goto_35
    const-string v0, "amount"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0}, Ljj$/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljj$/time/temporal/TemporalUnit;

    invoke-interface {p0, v4}, Ljj$/time/temporal/TemporalAmount;->get(Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v5

    sget-object v7, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    if-ne v4, v7, :cond_5e

    invoke-static {v5, v6}, Ljj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    goto :goto_6f

    :cond_5e
    sget-object v7, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    if-ne v4, v7, :cond_67

    invoke-static {v5, v6}, Ljj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    goto :goto_6f

    :cond_67
    sget-object v7, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    if-ne v4, v7, :cond_70

    invoke-static {v5, v6}, Ljj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    :goto_6f
    goto :goto_45

    :cond_70
    new-instance v3, Ljj$/time/DateTimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unit must be Years, Months or Days, but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_89
    invoke-static {v0, v1, v2}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v3

    return-object v3
.end method

.method public static of(III)Ljj$/time/Period;
    .registers 4

    invoke-static {p0, p1, p2}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofDays(I)Ljj$/time/Period;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofMonths(I)Ljj$/time/Period;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0, v0}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofWeeks(I)Ljj$/time/Period;
    .registers 3

    const/4 v0, 0x7

    invoke-static {p0, v0}, Ljj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static ofYears(I)Ljj$/time/Period;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljj$/time/Period;
    .registers 20

    move-object/from16 v1, p0

    const-string v0, "text"

    invoke-static {v1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v4, "Text cannot be parsed to a Period"

    if-eqz v0, :cond_89

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v6

    const/16 v7, 0x2d

    invoke-static {v1, v5, v6, v7}, Ljj$/time/Period;->charMatch(Ljava/lang/CharSequence;IIC)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v0, -0x1

    :cond_27
    move v5, v0

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v7

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v9

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v10

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v11

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v12

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v13

    if-gez v6, :cond_59

    if-gez v8, :cond_59

    if-gez v10, :cond_59

    if-ltz v12, :cond_55

    goto :goto_59

    :cond_55
    move-object/from16 v18, v2

    const/4 v3, 0x0

    goto :goto_8c

    :cond_59
    :goto_59
    :try_start_59
    invoke-static {v1, v6, v7, v5}, Ljj$/time/Period;->parseNumber(Ljava/lang/CharSequence;III)I

    move-result v0

    invoke-static {v1, v8, v9, v5}, Ljj$/time/Period;->parseNumber(Ljava/lang/CharSequence;III)I

    move-result v14

    invoke-static {v1, v10, v11, v5}, Ljj$/time/Period;->parseNumber(Ljava/lang/CharSequence;III)I

    move-result v15

    invoke-static {v1, v12, v13, v5}, Ljj$/time/Period;->parseNumber(Ljava/lang/CharSequence;III)I

    move-result v16

    move/from16 v17, v16

    const/4 v3, 0x7

    invoke-static {v15, v3}, Ljj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v3
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_70} :catch_7f

    move-object/from16 v18, v2

    move/from16 v2, v17

    :try_start_74
    invoke-static {v2, v3}, Ljj$/time/Period$$ExternalSyntheticBackport3;->m(II)I

    move-result v3

    invoke-static {v0, v14, v3}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v2
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_7c} :catch_7d

    return-object v2

    :catch_7d
    move-exception v0

    goto :goto_82

    :catch_7f
    move-exception v0

    move-object/from16 v18, v2

    :goto_82
    new-instance v2, Ljj$/time/format/DateTimeParseException;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v1, v3, v0}, Ljj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    throw v2

    :cond_89
    move-object/from16 v18, v2

    const/4 v3, 0x0

    :goto_8c
    new-instance v0, Ljj$/time/format/DateTimeParseException;

    invoke-direct {v0, v4, v1, v3}, Ljj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method private static parseNumber(Ljava/lang/CharSequence;III)I
    .registers 9

    const/4 v0, 0x0

    if-ltz p1, :cond_24

    if-gez p2, :cond_6

    goto :goto_24

    :cond_6
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_10

    add-int/lit8 p1, p1, 0x1

    :cond_10
    const/16 v1, 0xa

    invoke-static {p0, p1, p2, v1}, Ljj$/net/URLDecoder$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;III)I

    move-result v1

    :try_start_16
    invoke-static {v1, p3}, Ljj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v0
    :try_end_1a
    .catch Ljava/lang/ArithmeticException; {:try_start_16 .. :try_end_1a} :catch_1b

    return v0

    :catch_1b
    move-exception v2

    new-instance v3, Ljj$/time/format/DateTimeParseException;

    const-string v4, "Text cannot be parsed to a Period"

    invoke-direct {v3, v4, p0, v0, v2}, Ljj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    throw v3

    :cond_24
    :goto_24
    return v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/Period;
    .registers 5

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljj$/time/Period;->of(III)Ljj$/time/Period;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateChrono(Ljj$/time/temporal/TemporalAccessor;)V
    .registers 7

    const-string v0, "temporal"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/Chronology;

    if-eqz v0, :cond_37

    sget-object v1, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v1, v0}, Ljj$/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_37

    :cond_1a
    new-instance v1, Ljj$/time/DateTimeException;

    invoke-interface {v0}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Chronology mismatch, expected: ISO, actual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    :goto_37
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/Ser;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Ljj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addTo(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 7

    invoke-direct {p0, p1}, Ljj$/time/Period;->validateChrono(Ljj$/time/temporal/TemporalAccessor;)V

    iget v0, p0, Ljj$/time/Period;->months:I

    if-nez v0, :cond_15

    iget v0, p0, Ljj$/time/Period;->years:I

    if-eqz v0, :cond_25

    iget v0, p0, Ljj$/time/Period;->years:I

    int-to-long v0, v0

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_25

    :cond_15
    invoke-virtual {p0}, Ljj$/time/Period;->toTotalMonths()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_25

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    :cond_25
    :goto_25
    iget v0, p0, Ljj$/time/Period;->days:I

    if-eqz v0, :cond_32

    iget v0, p0, Ljj$/time/Period;->days:I

    int-to-long v0, v0

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    :cond_32
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/Period;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    move-object v1, p1

    check-cast v1, Ljj$/time/Period;

    iget v3, p0, Ljj$/time/Period;->years:I

    iget v4, v1, Ljj$/time/Period;->years:I

    if-ne v3, v4, :cond_1f

    iget v3, p0, Ljj$/time/Period;->months:I

    iget v4, v1, Ljj$/time/Period;->months:I

    if-ne v3, v4, :cond_1f

    iget v3, p0, Ljj$/time/Period;->days:I

    iget v4, v1, Ljj$/time/Period;->days:I

    if-ne v3, v4, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0

    :cond_21
    return v2
.end method

.method public get(Ljj$/time/temporal/TemporalUnit;)J
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Ljj$/time/Period;->getYears()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_a
    sget-object v0, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_14

    invoke-virtual {p0}, Ljj$/time/Period;->getMonths()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_14
    sget-object v0, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_1e

    invoke-virtual {p0}, Ljj$/time/Period;->getDays()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1e
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getChronology()Ljj$/time/chrono/Chronology;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/Period;->getChronology()Ljj$/time/chrono/IsoChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Ljj$/time/chrono/IsoChronology;
    .registers 2

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    return-object v0
.end method

.method public getDays()I
    .registers 2

    iget v0, p0, Ljj$/time/Period;->days:I

    return v0
.end method

.method public getMonths()I
    .registers 2

    iget v0, p0, Ljj$/time/Period;->months:I

    return v0
.end method

.method public getUnits()Ljava/util/List;
    .registers 2

    sget-object v0, Ljj$/time/Period;->SUPPORTED_UNITS:Ljava/util/List;

    return-object v0
.end method

.method public getYears()I
    .registers 2

    iget v0, p0, Ljj$/time/Period;->years:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Ljj$/time/Period;->years:I

    iget v1, p0, Ljj$/time/Period;->months:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljj$/time/Period;->days:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isNegative()Z
    .registers 2

    iget v0, p0, Ljj$/time/Period;->years:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljj$/time/Period;->months:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljj$/time/Period;->days:I

    if-gez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isZero()Z
    .registers 2

    sget-object v0, Ljj$/time/Period;->ZERO:Ljj$/time/Period;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Period;
    .registers 7

    invoke-static {p1}, Ljj$/time/Period;->from(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Period;

    move-result-object v0

    iget v1, p0, Ljj$/time/Period;->years:I

    iget v2, v0, Ljj$/time/Period;->years:I

    invoke-static {v1, v2}, Ljj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v1

    iget v2, p0, Ljj$/time/Period;->months:I

    iget v3, v0, Ljj$/time/Period;->months:I

    invoke-static {v2, v3}, Ljj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v2

    iget v3, p0, Ljj$/time/Period;->days:I

    iget v4, v0, Ljj$/time/Period;->days:I

    invoke-static {v3, v4}, Ljj$/time/Period$$ExternalSyntheticBackport1;->m(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoPeriod;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/Period;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Ljj$/time/Period;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/Period;->plusDays(J)Ljj$/time/Period;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/Period;->plusDays(J)Ljj$/time/Period;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/Period;->plusDays(J)Ljj$/time/Period;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusMonths(J)Ljj$/time/Period;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/Period;->plusMonths(J)Ljj$/time/Period;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/Period;->plusMonths(J)Ljj$/time/Period;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/Period;->plusMonths(J)Ljj$/time/Period;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusYears(J)Ljj$/time/Period;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/Period;->plusYears(J)Ljj$/time/Period;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/Period;->plusYears(J)Ljj$/time/Period;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/Period;->plusYears(J)Ljj$/time/Period;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public multipliedBy(I)Ljj$/time/Period;
    .registers 5

    sget-object v0, Ljj$/time/Period;->ZERO:Ljj$/time/Period;

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    goto :goto_1f

    :cond_8
    iget v0, p0, Ljj$/time/Period;->years:I

    invoke-static {v0, p1}, Ljj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    iget v1, p0, Ljj$/time/Period;->months:I

    invoke-static {v1, p1}, Ljj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v1

    iget v2, p0, Ljj$/time/Period;->days:I

    invoke-static {v2, p1}, Ljj$/time/Period$$ExternalSyntheticBackport0;->m(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v0

    return-object v0

    :cond_1f
    :goto_1f
    return-object p0
.end method

.method public bridge synthetic multipliedBy(I)Ljj$/time/chrono/ChronoPeriod;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/Period;->multipliedBy(I)Ljj$/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public negated()Ljj$/time/Period;
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljj$/time/Period;->multipliedBy(I)Ljj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic negated()Ljj$/time/chrono/ChronoPeriod;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/Period;->negated()Ljj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public normalized()Ljj$/time/Period;
    .registers 9

    invoke-virtual {p0}, Ljj$/time/Period;->toTotalMonths()J

    move-result-wide v0

    const-wide/16 v2, 0xc

    div-long v4, v0, v2

    rem-long v2, v0, v2

    long-to-int v3, v2

    iget v2, p0, Ljj$/time/Period;->years:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-nez v2, :cond_17

    iget v2, p0, Ljj$/time/Period;->months:I

    if-ne v3, v2, :cond_17

    return-object p0

    :cond_17
    invoke-static {v4, v5}, Ljj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    iget v6, p0, Ljj$/time/Period;->days:I

    invoke-static {v2, v3, v6}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic normalized()Ljj$/time/chrono/ChronoPeriod;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/Period;->normalized()Ljj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Period;
    .registers 7

    invoke-static {p1}, Ljj$/time/Period;->from(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Period;

    move-result-object v0

    iget v1, p0, Ljj$/time/Period;->years:I

    iget v2, v0, Ljj$/time/Period;->years:I

    invoke-static {v1, v2}, Ljj$/time/Period$$ExternalSyntheticBackport3;->m(II)I

    move-result v1

    iget v2, p0, Ljj$/time/Period;->months:I

    iget v3, v0, Ljj$/time/Period;->months:I

    invoke-static {v2, v3}, Ljj$/time/Period$$ExternalSyntheticBackport3;->m(II)I

    move-result v2

    iget v3, p0, Ljj$/time/Period;->days:I

    iget v4, v0, Ljj$/time/Period;->days:I

    invoke-static {v3, v4}, Ljj$/time/Period$$ExternalSyntheticBackport3;->m(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoPeriod;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/Period;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Period;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Ljj$/time/Period;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-object p0

    :cond_7
    iget v0, p0, Ljj$/time/Period;->years:I

    iget v1, p0, Ljj$/time/Period;->months:I

    iget v2, p0, Ljj$/time/Period;->days:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public plusMonths(J)Ljj$/time/Period;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-object p0

    :cond_7
    iget v0, p0, Ljj$/time/Period;->years:I

    iget v1, p0, Ljj$/time/Period;->months:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    iget v2, p0, Ljj$/time/Period;->days:I

    invoke-static {v0, v1, v2}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public plusYears(J)Ljj$/time/Period;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-object p0

    :cond_7
    iget v0, p0, Ljj$/time/Period;->years:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    iget v1, p0, Ljj$/time/Period;->months:I

    iget v2, p0, Ljj$/time/Period;->days:I

    invoke-static {v0, v1, v2}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public subtractFrom(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 7

    invoke-direct {p0, p1}, Ljj$/time/Period;->validateChrono(Ljj$/time/temporal/TemporalAccessor;)V

    iget v0, p0, Ljj$/time/Period;->months:I

    if-nez v0, :cond_15

    iget v0, p0, Ljj$/time/Period;->years:I

    if-eqz v0, :cond_25

    iget v0, p0, Ljj$/time/Period;->years:I

    int-to-long v0, v0

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    goto :goto_25

    :cond_15
    invoke-virtual {p0}, Ljj$/time/Period;->toTotalMonths()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_25

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    :cond_25
    :goto_25
    iget v0, p0, Ljj$/time/Period;->days:I

    if-eqz v0, :cond_32

    iget v0, p0, Ljj$/time/Period;->days:I

    int-to-long v0, v0

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    :cond_32
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    sget-object v0, Ljj$/time/Period;->ZERO:Ljj$/time/Period;

    if-ne p0, v0, :cond_7

    const-string v0, "P0D"

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Ljj$/time/Period;->years:I

    if-eqz v1, :cond_20

    iget v1, p0, Ljj$/time/Period;->years:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_20
    iget v1, p0, Ljj$/time/Period;->months:I

    if-eqz v1, :cond_2f

    iget v1, p0, Ljj$/time/Period;->months:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2f
    iget v1, p0, Ljj$/time/Period;->days:I

    if-eqz v1, :cond_3e

    iget v1, p0, Ljj$/time/Period;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toTotalMonths()J
    .registers 5

    iget v0, p0, Ljj$/time/Period;->years:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget v2, p0, Ljj$/time/Period;->months:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public withDays(I)Ljj$/time/Period;
    .registers 4

    iget v0, p0, Ljj$/time/Period;->days:I

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget v0, p0, Ljj$/time/Period;->years:I

    iget v1, p0, Ljj$/time/Period;->months:I

    invoke-static {v0, v1, p1}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public withMonths(I)Ljj$/time/Period;
    .registers 4

    iget v0, p0, Ljj$/time/Period;->months:I

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget v0, p0, Ljj$/time/Period;->years:I

    iget v1, p0, Ljj$/time/Period;->days:I

    invoke-static {v0, p1, v1}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method public withYears(I)Ljj$/time/Period;
    .registers 4

    iget v0, p0, Ljj$/time/Period;->years:I

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    iget v0, p0, Ljj$/time/Period;->months:I

    iget v1, p0, Ljj$/time/Period;->days:I

    invoke-static {p1, v0, v1}, Ljj$/time/Period;->create(III)Ljj$/time/Period;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3

    iget v0, p0, Ljj$/time/Period;->years:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Ljj$/time/Period;->months:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Ljj$/time/Period;->days:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
