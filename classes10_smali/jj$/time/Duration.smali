.class public final Ljj$/time/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Ljj$/time/temporal/TemporalAmount;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field private static final BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

.field public static final ZERO:Ljj$/time/Duration;

.field private static final serialVersionUID:J = 0x2aba9d02d1c4f832L


# instance fields
.field private final nanos:I

.field private final seconds:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljj$/time/Duration;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljj$/time/Duration;-><init>(JI)V

    sput-object v0, Ljj$/time/Duration;->ZERO:Ljj$/time/Duration;

    const-wide/32 v0, 0x3b9aca00

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ljj$/time/Duration;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(JI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljj$/time/Duration;->seconds:J

    iput p3, p0, Ljj$/time/Duration;->nanos:I

    return-void
.end method

.method public static between(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/Temporal;)Ljj$/time/Duration;
    .registers 12

    :try_start_0
    sget-object v0, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p0, p1, v0}, Ljj$/time/temporal/Temporal;->until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljj$/time/Duration;->ofNanos(J)Ljj$/time/Duration;

    move-result-object v0
    :try_end_a
    .catch Ljj$/time/DateTimeException; {:try_start_0 .. :try_end_a} :catch_d
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    goto :goto_e

    :catch_d
    move-exception v0

    :goto_e
    sget-object v1, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p0, p1, v1}, Ljj$/time/temporal/Temporal;->until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v1

    :try_start_14
    sget-object v3, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljj$/time/temporal/Temporal;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v3

    sget-object v5, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {p0, v5}, Ljj$/time/temporal/Temporal;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v5
    :try_end_20
    .catch Ljj$/time/DateTimeException; {:try_start_14 .. :try_end_20} :catch_39

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-lez v9, :cond_2f

    cmp-long v9, v3, v7

    if-gez v9, :cond_2f

    add-long/2addr v1, v5

    goto :goto_38

    :cond_2f
    cmp-long v9, v1, v7

    if-gez v9, :cond_38

    cmp-long v9, v3, v7

    if-lez v9, :cond_38

    sub-long/2addr v1, v5

    :cond_38
    :goto_38
    goto :goto_3d

    :catch_39
    move-exception v3

    const-wide/16 v4, 0x0

    move-wide v3, v4

    :goto_3d
    invoke-static {v1, v2, v3, v4}, Ljj$/time/Duration;->ofSeconds(JJ)Ljj$/time/Duration;

    move-result-object v5

    return-object v5
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

.method private static create(JI)Ljj$/time/Duration;
    .registers 8

    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    sget-object v0, Ljj$/time/Duration;->ZERO:Ljj$/time/Duration;

    return-object v0

    :cond_b
    new-instance v0, Ljj$/time/Duration;

    invoke-direct {v0, p0, p1, p2}, Ljj$/time/Duration;-><init>(JI)V

    return-object v0
.end method

.method private static create(Ljava/math/BigDecimal;)Ljj$/time/Duration;
    .registers 7

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljj$/time/Duration;->BI_NANOS_PER_SECOND:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0x3f

    if-gt v3, v4, :cond_2e

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljj$/time/Duration;->ofSeconds(JJ)Ljj$/time/Duration;

    move-result-object v2

    return-object v2

    :cond_2e
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exceeds capacity of Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static create(ZJJJJI)Ljj$/time/Duration;
    .registers 14

    invoke-static {p5, p6, p7, p8}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    if-eqz p0, :cond_18

    int-to-long v2, p9

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Duration;->ofSeconds(JJ)Ljj$/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/Duration;->negated()Ljj$/time/Duration;

    move-result-object v2

    return-object v2

    :cond_18
    int-to-long v2, p9

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Duration;->ofSeconds(JJ)Ljj$/time/Duration;

    move-result-object v2

    return-object v2
.end method

.method public static from(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/Duration;
    .registers 6

    const-string v0, "amount"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/Duration;->ZERO:Ljj$/time/Duration;

    invoke-interface {p0}, Ljj$/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/time/temporal/TemporalUnit;

    invoke-interface {p0, v2}, Ljj$/time/temporal/TemporalAmount;->get(Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Ljj$/time/Duration;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Duration;

    move-result-object v0

    goto :goto_f

    :cond_24
    return-object v0
.end method

.method public static of(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Duration;
    .registers 4

    sget-object v0, Ljj$/time/Duration;->ZERO:Ljj$/time/Duration;

    invoke-virtual {v0, p0, p1, p2}, Ljj$/time/Duration;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofDays(J)Ljj$/time/Duration;
    .registers 5

    const v0, 0x15180

    invoke-static {p0, p1, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljj$/time/Duration;->create(JI)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofHours(J)Ljj$/time/Duration;
    .registers 5

    const/16 v0, 0xe10

    invoke-static {p0, p1, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljj$/time/Duration;->create(JI)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofMillis(J)Ljj$/time/Duration;
    .registers 8

    const-wide/16 v0, 0x3e8

    div-long v2, p0, v0

    rem-long v0, p0, v0

    long-to-int v1, v0

    if-gez v1, :cond_e

    add-int/lit16 v1, v1, 0x3e8

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    :cond_e
    const v0, 0xf4240

    mul-int v0, v0, v1

    invoke-static {v2, v3, v0}, Ljj$/time/Duration;->create(JI)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofMinutes(J)Ljj$/time/Duration;
    .registers 5

    const/16 v0, 0x3c

    invoke-static {p0, p1, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljj$/time/Duration;->create(JI)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofNanos(J)Ljj$/time/Duration;
    .registers 10

    const-wide/32 v0, 0x3b9aca00

    div-long v2, p0, v0

    rem-long v4, p0, v0

    long-to-int v5, v4

    if-gez v5, :cond_10

    int-to-long v6, v5

    add-long/2addr v6, v0

    long-to-int v5, v6

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    :cond_10
    invoke-static {v2, v3, v5}, Ljj$/time/Duration;->create(JI)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofSeconds(J)Ljj$/time/Duration;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljj$/time/Duration;->create(JI)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static ofSeconds(JJ)Ljj$/time/Duration;
    .registers 8

    const-wide/32 v0, 0x3b9aca00

    invoke-static {p2, p3, v0, v1}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    invoke-static {p0, p1, v2, v3}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v2

    invoke-static {p2, p3, v0, v1}, Ljj$/nio/file/attribute/FileTime$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v2, v3, v1}, Ljj$/time/Duration;->create(JI)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljj$/time/Duration;
    .registers 30

    move-object/from16 v1, p0

    const-string v0, "text"

    invoke-static {v1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/Duration$Lazy;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_df

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    const/16 v5, 0x54

    invoke-static {v1, v4, v0, v5}, Ljj$/time/Duration;->charMatch(Ljava/lang/CharSequence;IIC)Z

    move-result v0

    if-nez v0, :cond_db

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    const/16 v6, 0x2d

    invoke-static {v1, v4, v5, v6}, Ljj$/time/Duration;->charMatch(Ljava/lang/CharSequence;IIC)Z

    move-result v7

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v9

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->end(I)I

    move-result v8

    const/4 v10, 0x5

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->end(I)I

    move-result v10

    const/4 v12, 0x6

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->start(I)I

    move-result v13

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    const/4 v14, 0x7

    invoke-virtual {v2, v14}, Ljava/util/regex/Matcher;->start(I)I

    move-result v15

    invoke-virtual {v2, v14}, Ljava/util/regex/Matcher;->end(I)I

    move-result v14

    if-gez v5, :cond_6e

    if-gez v9, :cond_6e

    if-gez v11, :cond_6e

    if-ltz v13, :cond_69

    goto :goto_6e

    :cond_69
    move-object/from16 v24, v2

    const/4 v4, 0x0

    goto/16 :goto_e2

    :cond_6e
    :goto_6e
    const v3, 0x15180

    const-string v6, "days"

    invoke-static {v1, v5, v4, v3, v6}, Ljj$/time/Duration;->parseNumber(Ljava/lang/CharSequence;IIILjava/lang/String;)J

    move-result-wide v17

    const/16 v3, 0xe10

    const-string v6, "hours"

    invoke-static {v1, v9, v8, v3, v6}, Ljj$/time/Duration;->parseNumber(Ljava/lang/CharSequence;IIILjava/lang/String;)J

    move-result-wide v19

    const/16 v3, 0x3c

    const-string v6, "minutes"

    invoke-static {v1, v11, v10, v3, v6}, Ljj$/time/Duration;->parseNumber(Ljava/lang/CharSequence;IIILjava/lang/String;)J

    move-result-wide v21

    const-string v3, "seconds"

    invoke-static {v1, v13, v12, v0, v3}, Ljj$/time/Duration;->parseNumber(Ljava/lang/CharSequence;IIILjava/lang/String;)J

    move-result-wide v23

    if-ltz v13, :cond_99

    invoke-interface {v1, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v6, 0x2d

    if-ne v3, v6, :cond_99

    const/4 v3, 0x1

    goto :goto_9a

    :cond_99
    const/4 v3, 0x0

    :goto_9a
    if-eqz v3, :cond_9d

    const/4 v0, -0x1

    :cond_9d
    invoke-static {v1, v15, v14, v0}, Ljj$/time/Duration;->parseFraction(Ljava/lang/CharSequence;III)I

    move-result v16

    move v6, v9

    move-wide/from16 v27, v17

    move/from16 v17, v8

    move/from16 v18, v11

    move-wide/from16 v8, v27

    move-wide/from16 v27, v19

    move/from16 v19, v10

    move/from16 v20, v13

    move-wide/from16 v10, v27

    move-wide/from16 v27, v21

    move/from16 v21, v12

    move/from16 v22, v15

    move-wide/from16 v12, v27

    move-wide/from16 v27, v23

    move/from16 v23, v14

    move-wide/from16 v14, v27

    :try_start_c0
    invoke-static/range {v7 .. v16}, Ljj$/time/Duration;->create(ZJJJJI)Ljj$/time/Duration;

    move-result-object v0
    :try_end_c4
    .catch Ljava/lang/ArithmeticException; {:try_start_c0 .. :try_end_c4} :catch_c5

    return-object v0

    :catch_c5
    move-exception v0

    move-object/from16 v24, v2

    new-instance v2, Ljj$/time/format/DateTimeParseException;

    move/from16 v25, v3

    const-string v3, "Text cannot be parsed to a Duration: overflow"

    move/from16 v26, v4

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Ljj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v0}, Ljj$/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljj$/time/format/DateTimeParseException;

    throw v2

    :cond_db
    move-object/from16 v24, v2

    const/4 v4, 0x0

    goto :goto_e2

    :cond_df
    move-object/from16 v24, v2

    const/4 v4, 0x0

    :goto_e2
    new-instance v0, Ljj$/time/format/DateTimeParseException;

    const-string v2, "Text cannot be parsed to a Duration"

    invoke-direct {v0, v2, v1, v4}, Ljj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v0
.end method

.method private static parseFraction(Ljava/lang/CharSequence;III)I
    .registers 8

    const/4 v0, 0x0

    if-ltz p1, :cond_2f

    if-ltz p2, :cond_2f

    sub-int v1, p2, p1

    if-nez v1, :cond_a

    goto :goto_2f

    :cond_a
    const/16 v1, 0xa

    :try_start_c
    invoke-static {p0, p1, p2, v1}, Ljj$/net/URLDecoder$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;III)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_10} :catch_20
    .catch Ljava/lang/ArithmeticException; {:try_start_c .. :try_end_10} :catch_1e

    sub-int v1, p2, p1

    :goto_12
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1b

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1b
    mul-int v1, v0, p3

    return v1

    :catch_1e
    move-exception v1

    goto :goto_21

    :catch_20
    move-exception v1

    :goto_21
    new-instance v2, Ljj$/time/format/DateTimeParseException;

    const-string v3, "Text cannot be parsed to a Duration: fraction"

    invoke-direct {v2, v3, p0, v0}, Ljj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v1}, Ljj$/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljj$/time/format/DateTimeParseException;

    throw v0

    :cond_2f
    :goto_2f
    return v0
.end method

.method private static parseNumber(Ljava/lang/CharSequence;IIILjava/lang/String;)J
    .registers 9

    if-ltz p1, :cond_33

    if-gez p2, :cond_5

    goto :goto_33

    :cond_5
    const/16 v0, 0xa

    :try_start_7
    invoke-static {p0, p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport2;->m(Ljava/lang/CharSequence;III)J

    move-result-wide v0

    invoke-static {v0, v1, p3}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v2
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_f} :catch_12
    .catch Ljava/lang/ArithmeticException; {:try_start_7 .. :try_end_f} :catch_10

    return-wide v2

    :catch_10
    move-exception v0

    goto :goto_13

    :catch_12
    move-exception v0

    :goto_13
    new-instance v1, Ljj$/time/format/DateTimeParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text cannot be parsed to a Duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Ljj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v0}, Ljj$/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljj$/time/format/DateTimeParseException;

    throw v1

    :cond_33
    :goto_33
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private plus(JJ)Ljj$/time/Duration;
    .registers 11

    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-object p0

    :cond_9
    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    invoke-static {v0, v1, p1, p2}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    div-long v4, p3, v2

    invoke-static {v0, v1, v4, v5}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    rem-long/2addr p3, v2

    iget v2, p0, Ljj$/time/Duration;->nanos:I

    int-to-long v2, v2

    add-long/2addr v2, p3

    invoke-static {v0, v1, v2, v3}, Ljj$/time/Duration;->ofSeconds(JJ)Ljj$/time/Duration;

    move-result-object v4

    return-object v4
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/Duration;
    .registers 6

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Ljj$/time/Duration;->ofSeconds(JJ)Ljj$/time/Duration;

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

.method private toBigDecimalSeconds()Ljava/math/BigDecimal;
    .registers 5

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iget v1, p0, Ljj$/time/Duration;->nanos:I

    int-to-long v1, v1

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abs()Ljj$/time/Duration;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljj$/time/Duration;->negated()Ljj$/time/Duration;

    move-result-object v0

    goto :goto_c

    :cond_b
    move-object v0, p0

    :goto_c
    return-object v0
.end method

.method public addTo(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 7

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    :cond_10
    iget v0, p0, Ljj$/time/Duration;->nanos:I

    if-eqz v0, :cond_1d

    iget v0, p0, Ljj$/time/Duration;->nanos:I

    int-to-long v0, v0

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    :cond_1d
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/time/Duration;

    invoke-virtual {p0, p1}, Ljj$/time/Duration;->compareTo(Ljj$/time/Duration;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljj$/time/Duration;)I
    .registers 6

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    iget-wide v2, p1, Ljj$/time/Duration;->seconds:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_b
    iget v1, p0, Ljj$/time/Duration;->nanos:I

    iget v2, p1, Ljj$/time/Duration;->nanos:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public dividedBy(Ljj$/time/Duration;)J
    .registers 6

    const-string v0, "divisor"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Ljj$/time/Duration;->toBigDecimalSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {p1}, Ljj$/time/Duration;->toBigDecimalSeconds()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v2

    return-wide v2
.end method

.method public dividedBy(J)Ljj$/time/Duration;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_20

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    return-object p0

    :cond_d
    invoke-direct {p0}, Ljj$/time/Duration;->toBigDecimalSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/Duration;->create(Ljava/math/BigDecimal;)Ljj$/time/Duration;

    move-result-object v0

    return-object v0

    :cond_20
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Cannot divide by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/Duration;

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    move-object v1, p1

    check-cast v1, Ljj$/time/Duration;

    iget-wide v3, p0, Ljj$/time/Duration;->seconds:J

    iget-wide v5, v1, Ljj$/time/Duration;->seconds:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1b

    iget v3, p0, Ljj$/time/Duration;->nanos:I

    iget v4, v1, Ljj$/time/Duration;->nanos:I

    if-ne v3, v4, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :cond_1d
    return v2
.end method

.method public get(Ljj$/time/temporal/TemporalUnit;)J
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_7

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    return-wide v0

    :cond_7
    sget-object v0, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_f

    iget v0, p0, Ljj$/time/Duration;->nanos:I

    int-to-long v0, v0

    return-wide v0

    :cond_f
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

.method public getNano()I
    .registers 2

    iget v0, p0, Ljj$/time/Duration;->nanos:I

    return v0
.end method

.method public getSeconds()J
    .registers 3

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    return-wide v0
.end method

.method public getUnits()Ljava/util/List;
    .registers 2

    sget-object v0, Ljj$/time/Duration$DurationUnits;->UNITS:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    iget-wide v2, p0, Ljj$/time/Duration;->seconds:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v1, v0

    iget v0, p0, Ljj$/time/Duration;->nanos:I

    mul-int/lit8 v0, v0, 0x33

    add-int/2addr v1, v0

    return v1
.end method

.method public isNegative()Z
    .registers 6

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isZero()Z
    .registers 6

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    iget v2, p0, Ljj$/time/Duration;->nanos:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Duration;
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/Duration;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2, p3}, Ljj$/time/Duration;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1, p3}, Ljj$/time/Duration;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minus(Ljj$/time/Duration;)Ljj$/time/Duration;
    .registers 10

    invoke-virtual {p1}, Ljj$/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Ljj$/time/Duration;->getNano()I

    move-result v2

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v0, v3

    if-nez v5, :cond_22

    neg-int v3, v2

    int-to-long v3, v3

    const-wide v5, 0x7fffffffffffffffL

    invoke-direct {p0, v5, v6, v3, v4}, Ljj$/time/Duration;->plus(JJ)Ljj$/time/Duration;

    move-result-object v3

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljj$/time/Duration;->plus(JJ)Ljj$/time/Duration;

    move-result-object v3

    return-object v3

    :cond_22
    neg-long v3, v0

    neg-int v5, v2

    int-to-long v5, v5

    invoke-direct {p0, v3, v4, v5, v6}, Ljj$/time/Duration;->plus(JJ)Ljj$/time/Duration;

    move-result-object v3

    return-object v3
.end method

.method public minusDays(J)Ljj$/time/Duration;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/Duration;->plusDays(J)Ljj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/Duration;->plusDays(J)Ljj$/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/Duration;->plusDays(J)Ljj$/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusHours(J)Ljj$/time/Duration;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/Duration;->plusHours(J)Ljj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/Duration;->plusHours(J)Ljj$/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/Duration;->plusHours(J)Ljj$/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusMillis(J)Ljj$/time/Duration;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/Duration;->plusMillis(J)Ljj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/Duration;->plusMillis(J)Ljj$/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/Duration;->plusMillis(J)Ljj$/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusMinutes(J)Ljj$/time/Duration;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/Duration;->plusMinutes(J)Ljj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/Duration;->plusMinutes(J)Ljj$/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/Duration;->plusMinutes(J)Ljj$/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusNanos(J)Ljj$/time/Duration;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/Duration;->plusNanos(J)Ljj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/Duration;->plusNanos(J)Ljj$/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/Duration;->plusNanos(J)Ljj$/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public minusSeconds(J)Ljj$/time/Duration;
    .registers 6

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ljj$/time/Duration;->plusSeconds(J)Ljj$/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljj$/time/Duration;->plusSeconds(J)Ljj$/time/Duration;

    move-result-object v0

    goto :goto_1b

    :cond_16
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljj$/time/Duration;->plusSeconds(J)Ljj$/time/Duration;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method public multipliedBy(J)Ljj$/time/Duration;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_9

    sget-object v0, Ljj$/time/Duration;->ZERO:Ljj$/time/Duration;

    return-object v0

    :cond_9
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_10

    return-object p0

    :cond_10
    invoke-direct {p0}, Ljj$/time/Duration;->toBigDecimalSeconds()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/Duration;->create(Ljava/math/BigDecimal;)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public negated()Ljj$/time/Duration;
    .registers 3

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ljj$/time/Duration;->multipliedBy(J)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/Duration;
    .registers 10

    const-string v0, "unit"

    invoke-static {p3, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x0

    if-ne p3, v0, :cond_17

    const v0, 0x15180

    invoke-static {p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v1, v2}, Ljj$/time/Duration;->plus(JJ)Ljj$/time/Duration;

    move-result-object v0

    return-object v0

    :cond_17
    invoke-interface {p3}, Ljj$/time/temporal/TemporalUnit;->isDurationEstimated()Z

    move-result v0

    if-nez v0, :cond_82

    cmp-long v0, p1, v1

    if-nez v0, :cond_22

    return-object p0

    :cond_22
    instance-of v0, p3, Ljj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_68

    sget-object v0, Ljj$/time/Duration$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v1, p3

    check-cast v1, Ljj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8a

    invoke-interface {p3}, Ljj$/time/temporal/TemporalUnit;->getDuration()Ljj$/time/Duration;

    move-result-object v0

    iget-wide v0, v0, Ljj$/time/Duration;->seconds:J

    invoke-static {v0, v1, p1, p2}, Ljj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/Duration;->plusSeconds(J)Ljj$/time/Duration;

    move-result-object v0

    return-object v0

    :pswitch_43  #0x4
    invoke-virtual {p0, p1, p2}, Ljj$/time/Duration;->plusSeconds(J)Ljj$/time/Duration;

    move-result-object v0

    return-object v0

    :pswitch_48  #0x3
    invoke-virtual {p0, p1, p2}, Ljj$/time/Duration;->plusMillis(J)Ljj$/time/Duration;

    move-result-object v0

    return-object v0

    :pswitch_4d  #0x2
    const-wide/32 v0, 0x3b9aca00

    div-long v2, p1, v0

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {p0, v2, v3}, Ljj$/time/Duration;->plusSeconds(J)Ljj$/time/Duration;

    move-result-object v2

    rem-long v0, p1, v0

    mul-long v0, v0, v4

    invoke-virtual {v2, v0, v1}, Ljj$/time/Duration;->plusNanos(J)Ljj$/time/Duration;

    move-result-object v0

    return-object v0

    :pswitch_63  #0x1
    invoke-virtual {p0, p1, p2}, Ljj$/time/Duration;->plusNanos(J)Ljj$/time/Duration;

    move-result-object v0

    return-object v0

    :cond_68
    invoke-interface {p3}, Ljj$/time/temporal/TemporalUnit;->getDuration()Ljj$/time/Duration;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljj$/time/Duration;->multipliedBy(J)Ljj$/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/Duration;->getSeconds()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljj$/time/Duration;->plusSeconds(J)Ljj$/time/Duration;

    move-result-object v1

    invoke-virtual {v0}, Ljj$/time/Duration;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljj$/time/Duration;->plusNanos(J)Ljj$/time/Duration;

    move-result-object v1

    return-object v1

    :cond_82
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v1, "Unit must not have an estimated duration"

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_63  #00000001
        :pswitch_4d  #00000002
        :pswitch_48  #00000003
        :pswitch_43  #00000004
    .end packed-switch
.end method

.method public plus(Ljj$/time/Duration;)Ljj$/time/Duration;
    .registers 6

    invoke-virtual {p1}, Ljj$/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Ljj$/time/Duration;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Ljj$/time/Duration;->plus(JJ)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(J)Ljj$/time/Duration;
    .registers 7

    const v0, 0x15180

    invoke-static {p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljj$/time/Duration;->plus(JJ)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusHours(J)Ljj$/time/Duration;
    .registers 7

    const/16 v0, 0xe10

    invoke-static {p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljj$/time/Duration;->plus(JJ)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusMillis(J)Ljj$/time/Duration;
    .registers 9

    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    rem-long v0, p1, v0

    const-wide/32 v4, 0xf4240

    mul-long v0, v0, v4

    invoke-direct {p0, v2, v3, v0, v1}, Ljj$/time/Duration;->plus(JJ)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusMinutes(J)Ljj$/time/Duration;
    .registers 7

    const/16 v0, 0x3c

    invoke-static {p1, p2, v0}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljj$/time/Duration;->plus(JJ)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusNanos(J)Ljj$/time/Duration;
    .registers 5

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ljj$/time/Duration;->plus(JJ)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public plusSeconds(J)Ljj$/time/Duration;
    .registers 5

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljj$/time/Duration;->plus(JJ)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public subtractFrom(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 7

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_10

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    :cond_10
    iget v0, p0, Ljj$/time/Duration;->nanos:I

    if-eqz v0, :cond_1d

    iget v0, p0, Ljj$/time/Duration;->nanos:I

    int-to-long v0, v0

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    :cond_1d
    return-object p1
.end method

.method public toDays()J
    .registers 5

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toDaysPart()J
    .registers 5

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toHours()J
    .registers 5

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toHoursPart()I
    .registers 5

    invoke-virtual {p0}, Ljj$/time/Duration;->toHours()J

    move-result-wide v0

    const-wide/16 v2, 0x18

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public toMillis()J
    .registers 9

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    iget v2, p0, Ljj$/time/Duration;->nanos:I

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_12

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    const-wide/32 v4, 0x3b9aca00

    sub-long/2addr v2, v4

    :cond_12
    const/16 v4, 0x3e8

    invoke-static {v0, v1, v4}, Ljj$/time/Duration$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long v6, v2, v6

    invoke-static {v4, v5, v6, v7}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public toMillisPart()I
    .registers 3

    iget v0, p0, Ljj$/time/Duration;->nanos:I

    const v1, 0xf4240

    div-int/2addr v0, v1

    return v0
.end method

.method public toMinutes()J
    .registers 5

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public toMinutesPart()I
    .registers 5

    invoke-virtual {p0}, Ljj$/time/Duration;->toMinutes()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public toNanos()J
    .registers 10

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    iget v2, p0, Ljj$/time/Duration;->nanos:I

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x3b9aca00

    cmp-long v8, v0, v4

    if-gez v8, :cond_12

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    sub-long/2addr v2, v6

    :cond_12
    invoke-static {v0, v1, v6, v7}, Ljj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public toNanosPart()I
    .registers 2

    iget v0, p0, Ljj$/time/Duration;->nanos:I

    return v0
.end method

.method public toSeconds()J
    .registers 3

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    return-wide v0
.end method

.method public toSecondsPart()I
    .registers 5

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    sget-object v0, Ljj$/time/Duration;->ZERO:Ljj$/time/Duration;

    if-ne p0, v0, :cond_7

    const-string v0, "PT0S"

    return-object v0

    :cond_7
    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    iget-wide v2, p0, Ljj$/time/Duration;->seconds:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_18

    iget v2, p0, Ljj$/time/Duration;->nanos:I

    if-lez v2, :cond_18

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_18
    const-wide/16 v2, 0xe10

    div-long v6, v0, v2

    rem-long v2, v0, v2

    const-wide/16 v8, 0x3c

    div-long/2addr v2, v8

    long-to-int v3, v2

    rem-long v8, v0, v8

    long-to-int v2, v8

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x18

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "PT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v9, v6, v4

    if-eqz v9, :cond_3e

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x48

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3e
    if-eqz v3, :cond_49

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x4d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_49
    if-nez v2, :cond_5b

    iget v9, p0, Ljj$/time/Duration;->nanos:I

    if-nez v9, :cond_5b

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_5b

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_5b
    iget-wide v9, p0, Ljj$/time/Duration;->seconds:J

    cmp-long v11, v9, v4

    if-gez v11, :cond_71

    iget v9, p0, Ljj$/time/Duration;->nanos:I

    if-lez v9, :cond_71

    if-nez v2, :cond_6d

    const-string v9, "-0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_74

    :cond_6d
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_74

    :cond_71
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_74
    iget v9, p0, Ljj$/time/Duration;->nanos:I

    if-lez v9, :cond_b4

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    iget-wide v10, p0, Ljj$/time/Duration;->seconds:J

    cmp-long v12, v10, v4

    if-gez v12, :cond_8d

    iget v4, p0, Ljj$/time/Duration;->nanos:I

    int-to-long v4, v4

    const-wide/32 v10, 0x77359400

    sub-long/2addr v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_97

    :cond_8d
    iget v4, p0, Ljj$/time/Duration;->nanos:I

    int-to-long v4, v4

    const-wide/32 v10, 0x3b9aca00

    add-long/2addr v4, v10

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_97
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_af

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_97

    :cond_af
    const/16 v4, 0x2e

    invoke-virtual {v8, v9, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_b4
    const/16 v4, 0x53

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public truncatedTo(Ljj$/time/temporal/TemporalUnit;)Ljj$/time/Duration;
    .registers 12

    const-string v0, "unit"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x0

    if-ne p1, v0, :cond_1e

    iget-wide v3, p0, Ljj$/time/Duration;->seconds:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_15

    iget v0, p0, Ljj$/time/Duration;->nanos:I

    if-nez v0, :cond_1e

    :cond_15
    new-instance v0, Ljj$/time/Duration;

    iget-wide v1, p0, Ljj$/time/Duration;->seconds:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljj$/time/Duration;-><init>(JI)V

    return-object v0

    :cond_1e
    sget-object v0, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    if-ne p1, v0, :cond_23

    return-object p0

    :cond_23
    invoke-interface {p1}, Ljj$/time/temporal/TemporalUnit;->getDuration()Ljj$/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/Duration;->getSeconds()J

    move-result-wide v3

    const-wide/32 v5, 0x15180

    cmp-long v7, v3, v5

    if-gtz v7, :cond_5f

    invoke-virtual {v0}, Ljj$/time/Duration;->toNanos()J

    move-result-wide v3

    const-wide v7, 0x4e94914f0000L

    rem-long/2addr v7, v3

    cmp-long v9, v7, v1

    if-nez v9, :cond_57

    iget-wide v1, p0, Ljj$/time/Duration;->seconds:J

    rem-long/2addr v1, v5

    const-wide/32 v5, 0x3b9aca00

    mul-long v1, v1, v5

    iget v5, p0, Ljj$/time/Duration;->nanos:I

    int-to-long v5, v5

    add-long/2addr v1, v5

    div-long v5, v1, v3

    mul-long v5, v5, v3

    sub-long v7, v5, v1

    invoke-virtual {p0, v7, v8}, Ljj$/time/Duration;->plusNanos(J)Ljj$/time/Duration;

    move-result-object v7

    return-object v7

    :cond_57
    new-instance v1, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v2, "Unit must divide into a standard day without remainder"

    invoke-direct {v1, v2}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5f
    new-instance v1, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v2, "Unit is too large to be used for truncation"

    invoke-direct {v1, v2}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public withNanos(I)Ljj$/time/Duration;
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    invoke-static {v0, v1, p1}, Ljj$/time/Duration;->create(JI)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public withSeconds(J)Ljj$/time/Duration;
    .registers 4

    iget v0, p0, Ljj$/time/Duration;->nanos:I

    invoke-static {p1, p2, v0}, Ljj$/time/Duration;->create(JI)Ljj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 4

    iget-wide v0, p0, Ljj$/time/Duration;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget v0, p0, Ljj$/time/Duration;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
