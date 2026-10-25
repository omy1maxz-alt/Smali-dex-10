.class public final Ljj$/time/DesugarLocalDate;
.super Ljava/lang/Object;
.source "DesugarLocalDate.java"


# static fields
.field public static final EPOCH:Ljj$/time/LocalDate;

.field private static final SECONDS_PER_DAY:I = 0x15180


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x7b2

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljj$/time/DesugarLocalDate;->EPOCH:Ljj$/time/LocalDate;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static datesUntil(Ljj$/time/LocalDate;Ljj$/time/LocalDate;)Ljj$/util/stream/Stream;
    .registers 9

    invoke-virtual {p1}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p0}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1a

    invoke-static {v2, v3, v0, v1}, Ljj$/util/stream/LongStream$-CC;->range(JJ)Ljj$/util/stream/LongStream;

    move-result-object v4

    new-instance v5, Ljj$/time/DesugarLocalDate$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Ljj$/time/DesugarLocalDate$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v4, v5}, Ljj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Ljj$/util/stream/Stream;

    move-result-object v4

    return-object v4

    :cond_1a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static datesUntil(Ljj$/time/LocalDate;Ljj$/time/LocalDate;Ljj$/time/Period;)Ljj$/util/stream/Stream;
    .registers 33

    move-object/from16 v1, p0

    invoke-virtual/range {p2 .. p2}, Ljj$/time/Period;->isZero()Z

    move-result v0

    if-nez v0, :cond_13d

    invoke-virtual/range {p1 .. p1}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v6

    invoke-virtual {v1}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v8

    sub-long v10, v6, v8

    invoke-virtual/range {p2 .. p2}, Ljj$/time/Period;->toTotalMonths()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljj$/time/Period;->getDays()I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v12, 0x0

    cmp-long v0, v2, v12

    if-gez v0, :cond_25

    cmp-long v0, v4, v12

    if-gtz v0, :cond_2e

    :cond_25
    cmp-long v0, v2, v12

    if-lez v0, :cond_36

    cmp-long v0, v4, v12

    if-ltz v0, :cond_2e

    goto :goto_36

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v12, "period months and days are of opposite sign"

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    :goto_36
    cmp-long v0, v10, v12

    if-nez v0, :cond_3f

    invoke-static {}, Ljj$/util/stream/Stream$-CC;->empty()Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    :cond_3f
    const/4 v0, 0x1

    cmp-long v14, v2, v12

    if-gtz v14, :cond_4b

    cmp-long v14, v4, v12

    if-lez v14, :cond_49

    goto :goto_4b

    :cond_49
    const/4 v14, -0x1

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 v14, 0x1

    :goto_4c
    const/4 v15, 0x0

    if-gez v14, :cond_52

    const/16 v16, 0x1

    goto :goto_54

    :cond_52
    const/16 v16, 0x0

    :goto_54
    cmp-long v17, v10, v12

    if-gez v17, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    xor-int v0, v16, v0

    if-eqz v0, :cond_82

    new-instance v0, Ljava/lang/IllegalArgumentException;

    if-gez v14, :cond_65

    const-string v12, " > "

    goto :goto_67

    :cond_65
    const-string v12, " < "

    :goto_67
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, p1

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    move-object/from16 v15, p1

    cmp-long v0, v2, v12

    if-nez v0, :cond_9e

    int-to-long v12, v14

    sub-long v12, v10, v12

    div-long/2addr v12, v4

    move-wide/from16 v18, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v12, v13}, Ljj$/util/stream/LongStream$-CC;->rangeClosed(JJ)Ljj$/util/stream/LongStream;

    move-result-object v0

    new-instance v2, Ljj$/time/DesugarLocalDate$$ExternalSyntheticLambda2;

    invoke-direct {v2, v8, v9, v4, v5}, Ljj$/time/DesugarLocalDate$$ExternalSyntheticLambda2;-><init>(JJ)V

    invoke-interface {v0, v2}, Ljj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    :cond_9e
    move-wide/from16 v18, v2

    const-wide/16 v2, 0x640

    mul-long v12, v10, v2

    const-wide/32 v20, 0xbe3b

    mul-long v20, v20, v18

    mul-long v2, v2, v4

    add-long v20, v20, v2

    div-long v12, v12, v20

    const-wide/16 v2, 0x1

    add-long/2addr v12, v2

    move-wide/from16 v20, v2

    mul-long v2, v18, v12

    mul-long v22, v4, v12

    const-wide/16 v16, 0x0

    cmp-long v0, v18, v16

    if-lez v0, :cond_cb

    sget-object v0, Ljj$/time/LocalDate;->MAX:Ljj$/time/LocalDate;

    invoke-static {v0}, Ljj$/time/DesugarLocalDate;->getProlepticMonth(Ljj$/time/LocalDate;)J

    move-result-wide v24

    invoke-static {v1}, Ljj$/time/DesugarLocalDate;->getProlepticMonth(Ljj$/time/LocalDate;)J

    move-result-wide v26

    sub-long v24, v24, v26

    goto :goto_d7

    :cond_cb
    invoke-static {v1}, Ljj$/time/DesugarLocalDate;->getProlepticMonth(Ljj$/time/LocalDate;)J

    move-result-wide v24

    sget-object v0, Ljj$/time/LocalDate;->MIN:Ljj$/time/LocalDate;

    invoke-static {v0}, Ljj$/time/DesugarLocalDate;->getProlepticMonth(Ljj$/time/LocalDate;)J

    move-result-wide v26

    sub-long v24, v24, v26

    :goto_d7
    nop

    move-wide/from16 v26, v4

    int-to-long v4, v14

    mul-long v4, v4, v2

    cmp-long v0, v4, v24

    if-gtz v0, :cond_f8

    invoke-virtual {v1, v2, v3}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v4

    add-long v4, v4, v22

    move-wide/from16 v28, v2

    int-to-long v2, v14

    mul-long v4, v4, v2

    int-to-long v2, v14

    mul-long v2, v2, v6

    cmp-long v0, v4, v2

    if-ltz v0, :cond_123

    goto :goto_fa

    :cond_f8
    move-wide/from16 v28, v2

    :goto_fa
    sub-long v12, v12, v20

    sub-long v2, v28, v18

    sub-long v22, v22, v26

    int-to-long v4, v14

    mul-long v4, v4, v2

    cmp-long v0, v4, v24

    if-gtz v0, :cond_11f

    invoke-virtual {v1, v2, v3}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v4

    add-long v4, v4, v22

    int-to-long v0, v14

    mul-long v4, v4, v0

    int-to-long v0, v14

    mul-long v0, v0, v6

    cmp-long v28, v4, v0

    if-ltz v28, :cond_11c

    goto :goto_11f

    :cond_11c
    move-wide/from16 v28, v2

    goto :goto_123

    :cond_11f
    :goto_11f
    sub-long v12, v12, v20

    move-wide/from16 v28, v2

    :cond_123
    :goto_123
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v12, v13}, Ljj$/util/stream/LongStream$-CC;->rangeClosed(JJ)Ljj$/util/stream/LongStream;

    move-result-object v0

    move-object v1, v0

    new-instance v0, Ljj$/time/DesugarLocalDate$$ExternalSyntheticLambda3;

    move-wide/from16 v16, v6

    move-wide/from16 v2, v18

    move-wide/from16 v4, v26

    move-object v6, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Ljj$/time/DesugarLocalDate$$ExternalSyntheticLambda3;-><init>(Ljj$/time/LocalDate;JJ)V

    invoke-interface {v6, v0}, Ljj$/util/stream/LongStream;->mapToObj(Ljava/util/function/LongFunction;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    :cond_13d
    move-object/from16 v15, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "step is zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getProlepticMonth(Ljj$/time/LocalDate;)J
    .registers 7

    invoke-virtual {p0}, Ljj$/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p0}, Ljj$/time/LocalDate;->getMonthValue()I

    move-result v1

    int-to-long v2, v0

    const-wide/16 v4, 0xc

    mul-long v2, v2, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method static synthetic lambda$datesUntil$0(JJJ)Ljj$/time/LocalDate;
    .registers 8

    mul-long v0, p4, p2

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljj$/time/LocalDate;->ofEpochDay(J)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$datesUntil$1(Ljj$/time/LocalDate;JJJ)Ljj$/time/LocalDate;
    .registers 10

    mul-long v0, p1, p5

    invoke-virtual {p0, v0, v1}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v0

    mul-long v1, p3, p5

    invoke-virtual {v0, v1, v2}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static ofInstant(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/LocalDate;
    .registers 9

    const-string v0, "instant"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljj$/time/zone/ZoneRules;->getOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {p0}, Ljj$/time/Instant;->getEpochSecond()J

    move-result-wide v2

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    const v4, 0x15180

    invoke-static {v2, v3, v4}, Ljj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljj$/time/LocalDate;->ofEpochDay(J)Ljj$/time/LocalDate;

    move-result-object v6

    return-object v6
.end method

.method public static toEpochSecond(Ljj$/time/LocalDate;Ljj$/time/LocalTime;Ljj$/time/ZoneOffset;)J
    .registers 7

    const-string v0, "time"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offset"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    invoke-virtual {p1}, Ljj$/time/LocalTime;->toSecondOfDay()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p2}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method
