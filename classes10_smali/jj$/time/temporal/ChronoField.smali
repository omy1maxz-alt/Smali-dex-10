.class public final enum Ljj$/time/temporal/ChronoField;
.super Ljava/lang/Enum;
.source "ChronoField.java"

# interfaces
.implements Ljj$/time/temporal/TemporalField;


# static fields
.field private static final synthetic $VALUES:[Ljj$/time/temporal/ChronoField;

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljj$/time/temporal/ChronoField;

.field public static final enum ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljj$/time/temporal/ChronoField;

.field public static final enum ALIGNED_WEEK_OF_MONTH:Ljj$/time/temporal/ChronoField;

.field public static final enum ALIGNED_WEEK_OF_YEAR:Ljj$/time/temporal/ChronoField;

.field public static final enum AMPM_OF_DAY:Ljj$/time/temporal/ChronoField;

.field public static final enum CLOCK_HOUR_OF_AMPM:Ljj$/time/temporal/ChronoField;

.field public static final enum CLOCK_HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

.field public static final enum DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

.field public static final enum DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

.field public static final enum DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

.field public static final enum EPOCH_DAY:Ljj$/time/temporal/ChronoField;

.field public static final enum ERA:Ljj$/time/temporal/ChronoField;

.field public static final enum HOUR_OF_AMPM:Ljj$/time/temporal/ChronoField;

.field public static final enum HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

.field public static final enum INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

.field public static final enum MICRO_OF_DAY:Ljj$/time/temporal/ChronoField;

.field public static final enum MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

.field public static final enum MILLI_OF_DAY:Ljj$/time/temporal/ChronoField;

.field public static final enum MILLI_OF_SECOND:Ljj$/time/temporal/ChronoField;

.field public static final enum MINUTE_OF_DAY:Ljj$/time/temporal/ChronoField;

.field public static final enum MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

.field public static final enum MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

.field public static final enum NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

.field public static final enum NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

.field public static final enum OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

.field public static final enum PROLEPTIC_MONTH:Ljj$/time/temporal/ChronoField;

.field public static final enum SECOND_OF_DAY:Ljj$/time/temporal/ChronoField;

.field public static final enum SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

.field public static final enum YEAR:Ljj$/time/temporal/ChronoField;

.field public static final enum YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;


# instance fields
.field private final baseUnit:Ljj$/time/temporal/TemporalUnit;

.field private final displayNameKey:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final range:Ljj$/time/temporal/ValueRange;

.field private final rangeUnit:Ljj$/time/temporal/TemporalUnit;


# direct methods
.method static constructor <clinit>()V
    .registers 27

    new-instance v0, Ljj$/time/temporal/ChronoField;

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    sget-object v5, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v7, 0x0

    const-wide/32 v9, 0x3b9ac9ff

    invoke-static {v7, v8, v9, v10}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "NANO_OF_SECOND"

    const/4 v2, 0x0

    const-string v3, "NanoOfSecond"

    invoke-direct/range {v0 .. v6}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v0, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    new-instance v11, Ljj$/time/temporal/ChronoField;

    sget-object v15, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    sget-object v16, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    const-wide v0, 0x4e94914effffL

    invoke-static {v7, v8, v0, v1}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v17

    const-string v12, "NANO_OF_DAY"

    const/4 v13, 0x1

    const-string v14, "NanoOfDay"

    invoke-direct/range {v11 .. v17}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v11, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    new-instance v0, Ljj$/time/temporal/ChronoField;

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->MICROS:Ljj$/time/temporal/ChronoUnit;

    sget-object v5, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    const-wide/32 v1, 0xf423f

    invoke-static {v7, v8, v1, v2}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "MICRO_OF_SECOND"

    const/4 v2, 0x2

    const-string v3, "MicroOfSecond"

    invoke-direct/range {v0 .. v6}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v0, Ljj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    new-instance v11, Ljj$/time/temporal/ChronoField;

    sget-object v15, Ljj$/time/temporal/ChronoUnit;->MICROS:Ljj$/time/temporal/ChronoUnit;

    sget-object v16, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    const-wide v0, 0x141dd75fffL

    invoke-static {v7, v8, v0, v1}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v17

    const-string v12, "MICRO_OF_DAY"

    const/4 v13, 0x3

    const-string v14, "MicroOfDay"

    invoke-direct/range {v11 .. v17}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v11, Ljj$/time/temporal/ChronoField;->MICRO_OF_DAY:Ljj$/time/temporal/ChronoField;

    new-instance v0, Ljj$/time/temporal/ChronoField;

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->MILLIS:Ljj$/time/temporal/ChronoUnit;

    sget-object v5, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x3e7

    invoke-static {v7, v8, v1, v2}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "MILLI_OF_SECOND"

    const/4 v2, 0x4

    const-string v3, "MilliOfSecond"

    invoke-direct/range {v0 .. v6}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v0, Ljj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljj$/time/temporal/ChronoField;

    new-instance v11, Ljj$/time/temporal/ChronoField;

    sget-object v15, Ljj$/time/temporal/ChronoUnit;->MILLIS:Ljj$/time/temporal/ChronoUnit;

    sget-object v16, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    const-wide/32 v0, 0x5265bff

    invoke-static {v7, v8, v0, v1}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v17

    const-string v12, "MILLI_OF_DAY"

    const/4 v13, 0x5

    const-string v14, "MilliOfDay"

    invoke-direct/range {v11 .. v17}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v11, Ljj$/time/temporal/ChronoField;->MILLI_OF_DAY:Ljj$/time/temporal/ChronoField;

    new-instance v12, Ljj$/time/temporal/ChronoField;

    sget-object v16, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    sget-object v17, Ljj$/time/temporal/ChronoUnit;->MINUTES:Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v0, 0x3b

    invoke-static {v7, v8, v0, v1}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v18

    const-string v19, "second"

    const-string v13, "SECOND_OF_MINUTE"

    const/4 v14, 0x6

    const-string v15, "SecondOfMinute"

    invoke-direct/range {v12 .. v19}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v12, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    new-instance v13, Ljj$/time/temporal/ChronoField;

    sget-object v17, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    sget-object v18, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    const-wide/32 v2, 0x1517f

    invoke-static {v7, v8, v2, v3}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v19

    const-string v14, "SECOND_OF_DAY"

    const/4 v15, 0x7

    const-string v16, "SecondOfDay"

    invoke-direct/range {v13 .. v19}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v13, Ljj$/time/temporal/ChronoField;->SECOND_OF_DAY:Ljj$/time/temporal/ChronoField;

    new-instance v14, Ljj$/time/temporal/ChronoField;

    sget-object v18, Ljj$/time/temporal/ChronoUnit;->MINUTES:Ljj$/time/temporal/ChronoUnit;

    sget-object v19, Ljj$/time/temporal/ChronoUnit;->HOURS:Ljj$/time/temporal/ChronoUnit;

    invoke-static {v7, v8, v0, v1}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v20

    const-string v21, "minute"

    const-string v15, "MINUTE_OF_HOUR"

    const/16 v16, 0x8

    const-string v17, "MinuteOfHour"

    invoke-direct/range {v14 .. v21}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v14, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    new-instance v0, Ljj$/time/temporal/ChronoField;

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->MINUTES:Ljj$/time/temporal/ChronoUnit;

    sget-object v5, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x59f

    invoke-static {v7, v8, v1, v2}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "MINUTE_OF_DAY"

    const/16 v2, 0x9

    const-string v3, "MinuteOfDay"

    invoke-direct/range {v0 .. v6}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v0, Ljj$/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljj$/time/temporal/ChronoField;

    new-instance v11, Ljj$/time/temporal/ChronoField;

    sget-object v15, Ljj$/time/temporal/ChronoUnit;->HOURS:Ljj$/time/temporal/ChronoUnit;

    sget-object v16, Ljj$/time/temporal/ChronoUnit;->HALF_DAYS:Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v0, 0xb

    invoke-static {v7, v8, v0, v1}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v17

    const-string v12, "HOUR_OF_AMPM"

    const/16 v13, 0xa

    const-string v14, "HourOfAmPm"

    invoke-direct/range {v11 .. v17}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v11, Ljj$/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljj$/time/temporal/ChronoField;

    new-instance v0, Ljj$/time/temporal/ChronoField;

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->HOURS:Ljj$/time/temporal/ChronoUnit;

    sget-object v5, Ljj$/time/temporal/ChronoUnit;->HALF_DAYS:Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v11, 0x1

    const-wide/16 v13, 0xc

    invoke-static {v11, v12, v13, v14}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "CLOCK_HOUR_OF_AMPM"

    const/16 v2, 0xb

    const-string v3, "ClockHourOfAmPm"

    invoke-direct/range {v0 .. v6}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v0, Ljj$/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljj$/time/temporal/ChronoField;

    new-instance v15, Ljj$/time/temporal/ChronoField;

    sget-object v19, Ljj$/time/temporal/ChronoUnit;->HOURS:Ljj$/time/temporal/ChronoUnit;

    sget-object v20, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v0, 0x17

    invoke-static {v7, v8, v0, v1}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v21

    const-string v22, "hour"

    const-string v16, "HOUR_OF_DAY"

    const/16 v17, 0xc

    const-string v18, "HourOfDay"

    invoke-direct/range {v15 .. v22}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v15, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    new-instance v0, Ljj$/time/temporal/ChronoField;

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->HOURS:Ljj$/time/temporal/ChronoUnit;

    sget-object v5, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v1, 0x18

    invoke-static {v11, v12, v1, v2}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "CLOCK_HOUR_OF_DAY"

    const/16 v2, 0xd

    const-string v3, "ClockHourOfDay"

    invoke-direct/range {v0 .. v6}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v0, Ljj$/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    new-instance v15, Ljj$/time/temporal/ChronoField;

    sget-object v19, Ljj$/time/temporal/ChronoUnit;->HALF_DAYS:Ljj$/time/temporal/ChronoUnit;

    sget-object v20, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-static {v7, v8, v11, v12}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v21

    const-string v22, "dayperiod"

    const-string v16, "AMPM_OF_DAY"

    const/16 v17, 0xe

    const-string v18, "AmPmOfDay"

    invoke-direct/range {v15 .. v22}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v15, Ljj$/time/temporal/ChronoField;->AMPM_OF_DAY:Ljj$/time/temporal/ChronoField;

    new-instance v16, Ljj$/time/temporal/ChronoField;

    sget-object v20, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    sget-object v21, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v0, 0x7

    invoke-static {v11, v12, v0, v1}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v22

    const-string v23, "weekday"

    const-string v17, "DAY_OF_WEEK"

    const/16 v18, 0xf

    const-string v19, "DayOfWeek"

    invoke-direct/range {v16 .. v23}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v16, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    new-instance v17, Ljj$/time/temporal/ChronoField;

    sget-object v21, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    sget-object v22, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    invoke-static {v11, v12, v0, v1}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v23

    const-string v18, "ALIGNED_DAY_OF_WEEK_IN_MONTH"

    const/16 v19, 0x10

    const-string v20, "AlignedDayOfWeekInMonth"

    invoke-direct/range {v17 .. v23}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v17, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljj$/time/temporal/ChronoField;

    new-instance v18, Ljj$/time/temporal/ChronoField;

    sget-object v22, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    sget-object v23, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    invoke-static {v11, v12, v0, v1}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v24

    const-string v19, "ALIGNED_DAY_OF_WEEK_IN_YEAR"

    const/16 v20, 0x11

    const-string v21, "AlignedDayOfWeekInYear"

    invoke-direct/range {v18 .. v24}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v18, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljj$/time/temporal/ChronoField;

    new-instance v19, Ljj$/time/temporal/ChronoField;

    sget-object v23, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    sget-object v24, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v2, 0x1c

    const-wide/16 v4, 0x1f

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Ljj$/time/temporal/ValueRange;->of(JJJ)Ljj$/time/temporal/ValueRange;

    move-result-object v25

    const-string v26, "day"

    const-string v20, "DAY_OF_MONTH"

    const/16 v21, 0x12

    const-string v22, "DayOfMonth"

    invoke-direct/range {v19 .. v26}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v19, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    new-instance v0, Ljj$/time/temporal/ChronoField;

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    sget-object v5, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v17, 0x16d

    const-wide/16 v19, 0x16e

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v20}, Ljj$/time/temporal/ValueRange;->of(JJJ)Ljj$/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "DAY_OF_YEAR"

    const/16 v2, 0x13

    const-string v3, "DayOfYear"

    invoke-direct/range {v0 .. v6}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    new-instance v15, Ljj$/time/temporal/ChronoField;

    sget-object v19, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    sget-object v20, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    const-wide v0, -0x550a313cdaL

    const-wide v2, 0x550a1b48f7L

    invoke-static {v0, v1, v2, v3}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v21

    const-string v16, "EPOCH_DAY"

    const/16 v17, 0x14

    const-string v18, "EpochDay"

    invoke-direct/range {v15 .. v21}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v15, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    new-instance v0, Ljj$/time/temporal/ChronoField;

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    sget-object v5, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v17, 0x4

    const-wide/16 v19, 0x5

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v20}, Ljj$/time/temporal/ValueRange;->of(JJJ)Ljj$/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "ALIGNED_WEEK_OF_MONTH"

    const/16 v2, 0x15

    const-string v3, "AlignedWeekOfMonth"

    invoke-direct/range {v0 .. v6}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v0, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljj$/time/temporal/ChronoField;

    new-instance v15, Ljj$/time/temporal/ChronoField;

    sget-object v19, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    sget-object v20, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    const-wide/16 v0, 0x35

    invoke-static {v11, v12, v0, v1}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v21

    const-string v16, "ALIGNED_WEEK_OF_YEAR"

    const/16 v17, 0x16

    const-string v18, "AlignedWeekOfYear"

    invoke-direct/range {v15 .. v21}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v15, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljj$/time/temporal/ChronoField;

    new-instance v16, Ljj$/time/temporal/ChronoField;

    sget-object v20, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    sget-object v21, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    invoke-static {v11, v12, v13, v14}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v22

    const-string v23, "month"

    const-string v17, "MONTH_OF_YEAR"

    const/16 v18, 0x17

    const-string v19, "MonthOfYear"

    invoke-direct/range {v16 .. v23}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v16, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    new-instance v0, Ljj$/time/temporal/ChronoField;

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    sget-object v5, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    const-wide v1, -0x2cb4177f4L

    const-wide v13, 0x2cb4177ffL

    invoke-static {v1, v2, v13, v14}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "PROLEPTIC_MONTH"

    const/16 v2, 0x18

    const-string v3, "ProlepticMonth"

    invoke-direct/range {v0 .. v6}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v0, Ljj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljj$/time/temporal/ChronoField;

    new-instance v13, Ljj$/time/temporal/ChronoField;

    sget-object v17, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    sget-object v18, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    const-wide/32 v2, 0x3b9ac9ff

    const-wide/32 v4, 0x3b9aca00

    const-wide/16 v0, 0x1

    invoke-static/range {v0 .. v5}, Ljj$/time/temporal/ValueRange;->of(JJJ)Ljj$/time/temporal/ValueRange;

    move-result-object v19

    const-string v14, "YEAR_OF_ERA"

    const/16 v15, 0x19

    const-string v16, "YearOfEra"

    invoke-direct/range {v13 .. v19}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v13, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    new-instance v14, Ljj$/time/temporal/ChronoField;

    sget-object v18, Ljj$/time/temporal/ChronoUnit;->YEARS:Ljj$/time/temporal/ChronoUnit;

    sget-object v19, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    const-wide/32 v0, -0x3b9ac9ff

    invoke-static {v0, v1, v9, v10}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v20

    const-string v21, "year"

    const-string v15, "YEAR"

    const/16 v16, 0x1a

    const-string v17, "Year"

    invoke-direct/range {v14 .. v21}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v14, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    new-instance v15, Ljj$/time/temporal/ChronoField;

    sget-object v19, Ljj$/time/temporal/ChronoUnit;->ERAS:Ljj$/time/temporal/ChronoUnit;

    sget-object v20, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    invoke-static {v7, v8, v11, v12}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v21

    const-string v22, "era"

    const-string v16, "ERA"

    const/16 v17, 0x1b

    const-string v18, "Era"

    invoke-direct/range {v15 .. v22}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;Ljava/lang/String;)V

    sput-object v15, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    new-instance v0, Ljj$/time/temporal/ChronoField;

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    sget-object v5, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    const-wide/high16 v1, -0x8000000000000000L

    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v1, v2, v6, v7}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v6

    const-string v1, "INSTANT_SECONDS"

    const/16 v2, 0x1c

    const-string v3, "InstantSeconds"

    invoke-direct/range {v0 .. v6}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v0, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    new-instance v1, Ljj$/time/temporal/ChronoField;

    sget-object v5, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    sget-object v6, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    const-wide/32 v2, -0xfd20

    const-wide/32 v7, 0xfd20

    invoke-static {v2, v3, v7, v8}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v7

    const-string v2, "OFFSET_SECONDS"

    const/16 v3, 0x1d

    const-string v4, "OffsetSeconds"

    invoke-direct/range {v1 .. v7}, Ljj$/time/temporal/ChronoField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V

    sput-object v1, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    const/16 v0, 0x1e

    new-array v0, v0, [Ljj$/time/temporal/ChronoField;

    sget-object v1, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->MICRO_OF_DAY:Ljj$/time/temporal/ChronoField;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljj$/time/temporal/ChronoField;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->MILLI_OF_DAY:Ljj$/time/temporal/ChronoField;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->SECOND_OF_DAY:Ljj$/time/temporal/ChronoField;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->MINUTE_OF_DAY:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->AMPM_OF_DAY:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->INSTANT_SECONDS:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sput-object v0, Ljj$/time/temporal/ChronoField;->$VALUES:[Ljj$/time/temporal/ChronoField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ljj$/time/temporal/ChronoField;->name:Ljava/lang/String;

    iput-object p4, p0, Ljj$/time/temporal/ChronoField;->baseUnit:Ljj$/time/temporal/TemporalUnit;

    iput-object p5, p0, Ljj$/time/temporal/ChronoField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    iput-object p6, p0, Ljj$/time/temporal/ChronoField;->range:Ljj$/time/temporal/ValueRange;

    const/4 p1, 0x0

    iput-object p1, p0, Ljj$/time/temporal/ChronoField;->displayNameKey:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/ValueRange;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ljj$/time/temporal/ChronoField;->name:Ljava/lang/String;

    iput-object p4, p0, Ljj$/time/temporal/ChronoField;->baseUnit:Ljj$/time/temporal/TemporalUnit;

    iput-object p5, p0, Ljj$/time/temporal/ChronoField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    iput-object p6, p0, Ljj$/time/temporal/ChronoField;->range:Ljj$/time/temporal/ValueRange;

    iput-object p7, p0, Ljj$/time/temporal/ChronoField;->displayNameKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/time/temporal/ChronoField;
    .registers 2

    const-class v0, Ljj$/time/temporal/ChronoField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/time/temporal/ChronoField;

    return-object v0
.end method

.method public static values()[Ljj$/time/temporal/ChronoField;
    .registers 1

    sget-object v0, Ljj$/time/temporal/ChronoField;->$VALUES:[Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, [Ljj$/time/temporal/ChronoField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/temporal/ChronoField;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;
    .registers 5

    invoke-interface {p1, p0, p2, p3}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public checkValidIntValue(J)I
    .registers 4

    invoke-virtual {p0}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public checkValidValue(J)J
    .registers 5

    invoke-virtual {p0}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Ljj$/time/temporal/ValueRange;->checkValidValue(JLjj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBaseUnit()Ljj$/time/temporal/TemporalUnit;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/ChronoField;->baseUnit:Ljj$/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    const-string v0, "locale"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/time/temporal/ChronoField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom(Ljj$/time/temporal/TemporalAccessor;)J
    .registers 4

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAccessor;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRangeUnit()Ljj$/time/temporal/TemporalUnit;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/ChronoField;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public isDateBased()Z
    .registers 3

    invoke-virtual {p0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1a

    invoke-virtual {p0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public isTimeBased()Z
    .registers 3

    invoke-virtual {p0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public range()Ljj$/time/temporal/ValueRange;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/ChronoField;->range:Ljj$/time/temporal/ValueRange;

    return-object v0
.end method

.method public rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;
    .registers 3

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalAccessor;->range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public synthetic resolve(Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/temporal/TemporalAccessor;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljj$/time/temporal/TemporalField$-CC;->$default$resolve(Ljj$/time/temporal/TemporalField;Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/ChronoField;->name:Ljava/lang/String;

    return-object v0
.end method
