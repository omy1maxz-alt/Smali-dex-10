.class public final Ljj$/time/chrono/DesugarIsoChronology;
.super Ljava/lang/Object;
.source "DesugarIsoChronology.java"


# static fields
.field private static final DAYS_0000_TO_1970:J = 0xafaa8L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static epochSecond(Ljj$/time/chrono/IsoChronology;IIIIIILjj$/time/ZoneOffset;)J
    .registers 24

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    sget-object v6, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v6, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v6, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    int-to-long v7, v2

    invoke-virtual {v6, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v6, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    int-to-long v7, v3

    invoke-virtual {v6, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v6, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    int-to-long v7, v4

    invoke-virtual {v6, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v6, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    const-string v6, "zoneOffset"

    move-object/from16 v7, p7

    invoke-static {v7, v6}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v6, 0x1c

    if-le v2, v6, :cond_95

    invoke-static/range {p1 .. p2}, Ljj$/time/chrono/DesugarIsoChronology;->numberOfDaysOfMonth(II)I

    move-result v6

    if-le v2, v6, :cond_95

    const/16 v8, 0x1d

    if-ne v2, v8, :cond_64

    new-instance v8, Ljj$/time/DateTimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid date \'February 29\' as \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' is not a leap year"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_64
    new-instance v8, Ljj$/time/DateTimeException;

    invoke-static {v1}, Ljj$/time/Month;->of(I)Ljj$/time/Month;

    move-result-object v9

    invoke-virtual {v9}, Ljj$/time/Month;->name()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid date \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_95
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const-wide/16 v10, 0x16d

    int-to-long v12, v0

    mul-long v12, v12, v10

    add-long/2addr v8, v12

    if-ltz v0, :cond_b9

    int-to-long v10, v0

    const-wide/16 v12, 0x3

    add-long/2addr v10, v12

    const-wide/16 v12, 0x4

    div-long/2addr v10, v12

    int-to-long v12, v0

    const-wide/16 v14, 0x63

    add-long/2addr v12, v14

    const-wide/16 v14, 0x64

    div-long/2addr v12, v14

    sub-long/2addr v10, v12

    int-to-long v12, v0

    const-wide/16 v14, 0x18f

    add-long/2addr v12, v14

    const-wide/16 v14, 0x190

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    goto :goto_c3

    :cond_b9
    div-int/lit8 v10, v0, -0x4

    div-int/lit8 v11, v0, -0x64

    sub-int/2addr v10, v11

    div-int/lit16 v11, v0, -0x190

    add-int/2addr v10, v11

    int-to-long v10, v10

    sub-long/2addr v8, v10

    :goto_c3
    mul-int/lit16 v10, v1, 0x16f

    add-int/lit16 v10, v10, -0x16a

    div-int/lit8 v10, v10, 0xc

    int-to-long v10, v10

    add-long/2addr v8, v10

    add-int/lit8 v10, v2, -0x1

    int-to-long v10, v10

    add-long/2addr v8, v10

    const/4 v10, 0x2

    if-le v1, v10, :cond_df

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    sget-object v12, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    int-to-long v13, v0

    invoke-virtual {v12, v13, v14}, Ljj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v12

    if-nez v12, :cond_df

    sub-long/2addr v8, v10

    :cond_df
    const-wide/32 v10, 0xafaa8

    sub-long/2addr v8, v10

    mul-int/lit8 v10, v3, 0x3c

    add-int/2addr v10, v4

    mul-int/lit8 v10, v10, 0x3c

    add-int/2addr v10, v5

    const-wide/32 v11, 0x15180

    invoke-static {v8, v9, v11, v12}, Ljj$/time/Duration$$ExternalSyntheticBackport1;->m(JJ)J

    move-result-wide v11

    invoke-virtual {v7}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    sub-int v6, v10, v6

    int-to-long v13, v6

    invoke-static {v11, v12, v13, v14}, Ljj$/time/Clock$OffsetClock$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v11

    return-wide v11
.end method

.method private static numberOfDaysOfMonth(II)I
    .registers 5

    sparse-switch p1, :sswitch_data_1a

    const/16 v0, 0x1f

    goto :goto_18

    :sswitch_6
    const/16 v0, 0x1e

    goto :goto_18

    :sswitch_9
    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x1d

    goto :goto_17

    :cond_15
    const/16 v0, 0x1c

    :goto_17
    nop

    :goto_18
    return v0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x2 -> :sswitch_9
        0x4 -> :sswitch_6
        0x6 -> :sswitch_6
        0x9 -> :sswitch_6
        0xb -> :sswitch_6
    .end sparse-switch
.end method
