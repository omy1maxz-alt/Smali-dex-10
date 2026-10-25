.class final Lorg/mozilla/javascript/NativeDate;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeDate.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ConstructorId_UTC:I = -0x1

.field private static final ConstructorId_now:I = -0x3

.field private static final ConstructorId_parse:I = -0x2

.field private static final DATE_TAG:Ljava/lang/Object;

.field private static final HalfTimeDomain:D = 8.64E15

.field private static final HoursPerDay:D = 24.0

.field private static final Id_constructor:I = 0x1

.field private static final Id_getDate:I = 0x11

.field private static final Id_getDay:I = 0x13

.field private static final Id_getFullYear:I = 0xd

.field private static final Id_getHours:I = 0x15

.field private static final Id_getMilliseconds:I = 0x1b

.field private static final Id_getMinutes:I = 0x17

.field private static final Id_getMonth:I = 0xf

.field private static final Id_getSeconds:I = 0x19

.field private static final Id_getTime:I = 0xb

.field private static final Id_getTimezoneOffset:I = 0x1d

.field private static final Id_getUTCDate:I = 0x12

.field private static final Id_getUTCDay:I = 0x14

.field private static final Id_getUTCFullYear:I = 0xe

.field private static final Id_getUTCHours:I = 0x16

.field private static final Id_getUTCMilliseconds:I = 0x1c

.field private static final Id_getUTCMinutes:I = 0x18

.field private static final Id_getUTCMonth:I = 0x10

.field private static final Id_getUTCSeconds:I = 0x1a

.field private static final Id_getYear:I = 0xc

.field private static final Id_setDate:I = 0x27

.field private static final Id_setFullYear:I = 0x2b

.field private static final Id_setHours:I = 0x25

.field private static final Id_setMilliseconds:I = 0x1f

.field private static final Id_setMinutes:I = 0x23

.field private static final Id_setMonth:I = 0x29

.field private static final Id_setSeconds:I = 0x21

.field private static final Id_setTime:I = 0x1e

.field private static final Id_setUTCDate:I = 0x28

.field private static final Id_setUTCFullYear:I = 0x2c

.field private static final Id_setUTCHours:I = 0x26

.field private static final Id_setUTCMilliseconds:I = 0x20

.field private static final Id_setUTCMinutes:I = 0x24

.field private static final Id_setUTCMonth:I = 0x2a

.field private static final Id_setUTCSeconds:I = 0x22

.field private static final Id_setYear:I = 0x2d

.field private static final Id_toDateString:I = 0x4

.field private static final Id_toGMTString:I = 0x8

.field private static final Id_toISOString:I = 0x2e

.field private static final Id_toJSON:I = 0x2f

.field private static final Id_toLocaleDateString:I = 0x7

.field private static final Id_toLocaleString:I = 0x5

.field private static final Id_toLocaleTimeString:I = 0x6

.field private static final Id_toSource:I = 0x9

.field private static final Id_toString:I = 0x2

.field private static final Id_toTimeString:I = 0x3

.field private static final Id_toUTCString:I = 0x8

.field private static final Id_valueOf:I = 0xa

.field private static final LocalTZA:D

.field private static final MAXARGS:I = 0x7

.field private static final MAX_PROTOTYPE_ID:I = 0x2f

.field private static final MinutesPerDay:D = 1440.0

.field private static final MinutesPerHour:D = 60.0

.field private static final SecondsPerDay:D = 86400.0

.field private static final SecondsPerHour:D = 3600.0

.field private static final SecondsPerMinute:D = 60.0

.field private static final js_NaN_date_str:Ljava/lang/String; = "Invalid Date"

.field private static final localeDateFormatter:Ljava/text/DateFormat;

.field private static final localeDateTimeFormatter:Ljava/text/DateFormat;

.field private static final localeTimeFormatter:Ljava/text/DateFormat;

.field private static final msPerDay:D = 8.64E7

.field private static final msPerHour:D = 3600000.0

.field private static final msPerMinute:D = 60000.0

.field private static final msPerSecond:D = 1000.0

.field private static final serialVersionUID:J = -0x7349f3ade5310b76L

.field private static final thisTimeZone:Ljava/util/TimeZone;

.field private static final timeZoneFormatter:Ljava/text/DateFormat;


# instance fields
.field private date:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lorg/mozilla/javascript/NativeDate;

    const-string v0, "Date"

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->thisTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-double v0, v0

    sput-wide v0, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "zzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->timeZoneFormatter:Ljava/text/DateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM d, yyyy h:mm:ss a z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->localeDateTimeFormatter:Ljava/text/DateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->localeDateFormatter:Ljava/text/DateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm:ss a z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->localeTimeFormatter:Ljava/text/DateFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method private static DateFromTime(D)I
    .registers 5

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide p0

    int-to-double v1, v0

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v1

    sub-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p0, p0, -0x3b

    const/16 p1, 0x1f

    if-gez p0, :cond_1f

    const/16 v0, -0x1c

    if-ge p0, v0, :cond_1a

    add-int/2addr p0, p1

    :cond_1a
    add-int/lit8 p0, p0, 0x1c

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1f
    invoke-static {v0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    if-nez p0, :cond_2a

    const/16 p0, 0x1d

    return p0

    :cond_2a
    add-int/lit8 p0, p0, -0x1

    :cond_2c
    div-int/lit8 v0, p0, 0x1e

    const/16 v1, 0x113

    const/16 v2, 0x1e

    packed-switch v0, :pswitch_data_6a

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_3a  #0xa
    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_3e  #0x9
    const/16 p1, 0x113

    goto :goto_60

    :pswitch_41  #0x8
    const/16 v0, 0xf5

    const/16 p1, 0xf5

    goto :goto_5e

    :pswitch_46  #0x7
    const/16 p1, 0xd6

    goto :goto_60

    :pswitch_49  #0x6
    const/16 v0, 0xb8

    const/16 p1, 0xb8

    goto :goto_5e

    :pswitch_4e  #0x5
    const/16 v0, 0x99

    const/16 p1, 0x99

    goto :goto_5e

    :pswitch_53  #0x4
    const/16 p1, 0x7a

    goto :goto_60

    :pswitch_56  #0x3
    const/16 v0, 0x5c

    const/16 p1, 0x5c

    goto :goto_5e

    :pswitch_5b  #0x2
    const/16 p1, 0x3d

    goto :goto_60

    :goto_5e
    :pswitch_5e  #0x1
    const/16 v2, 0x1f

    :goto_60
    sub-int/2addr p0, p1

    if-gez p0, :cond_64

    add-int/2addr p0, v2

    :cond_64
    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_67  #0x0
    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_67  #00000000
        :pswitch_5e  #00000001
        :pswitch_5b  #00000002
        :pswitch_56  #00000003
        :pswitch_53  #00000004
        :pswitch_4e  #00000005
        :pswitch_49  #00000006
        :pswitch_46  #00000007
        :pswitch_41  #00000008
        :pswitch_3e  #00000009
        :pswitch_3a  #0000000a
    .end packed-switch
.end method

.method private static Day(D)D
    .registers 4

    const-wide v0, 0x4194997000000000L  # 8.64E7

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static DayFromMonth(II)D
    .registers 5

    mul-int/lit8 v0, p0, 0x1e

    const/4 v1, 0x2

    const/4 v2, 0x7

    if-lt p0, v2, :cond_c

    div-int/lit8 v2, p0, 0x2

    :goto_8
    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    goto :goto_13

    :cond_c
    if-lt p0, v1, :cond_12

    add-int/lit8 v2, p0, -0x1

    div-int/2addr v2, v1

    goto :goto_8

    :cond_12
    add-int/2addr v0, p0

    :goto_13
    if-lt p0, v1, :cond_1d

    invoke-static {p1}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_1d

    add-int/lit8 v0, v0, 0x1

    :cond_1d
    int-to-double p0, v0

    return-wide p0
.end method

.method private static DayFromYear(D)D
    .registers 8

    const-wide v0, 0x409ec80000000000L  # 1970.0

    sub-double v0, p0, v0

    const-wide v2, 0x4076d00000000000L  # 365.0

    mul-double v0, v0, v2

    const-wide v2, 0x409ec40000000000L  # 1969.0

    sub-double v2, p0, v2

    const-wide/high16 v4, 0x4010000000000000L  # 4.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide v2, 0x409db40000000000L  # 1901.0

    sub-double v2, p0, v2

    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x4099040000000000L  # 1601.0

    sub-double/2addr p0, v2

    const-wide/high16 v2, 0x4079000000000000L  # 400.0

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static DaylightSavingTA(D)D
    .registers 11

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_25

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v2

    invoke-static {v2}, Lorg/mozilla/javascript/NativeDate;->EquivalentYear(I)I

    move-result v2

    int-to-double v3, v2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v2

    int-to-double v5, v2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v2

    int-to-double v7, v2

    invoke-static/range {v3 .. v8}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p0

    :cond_25
    new-instance v2, Ljava/util/Date;

    double-to-long p0, p0

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object p0, Lorg/mozilla/javascript/NativeDate;->thisTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_39

    const-wide p0, 0x414b774000000000L  # 3600000.0

    return-wide p0

    :cond_39
    return-wide v0
.end method

.method private static DaysInMonth(II)I
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0x1d

    goto :goto_e

    :cond_c
    const/16 p0, 0x1c

    :goto_e
    return p0

    :cond_f
    const/16 p0, 0x8

    if-lt p1, p0, :cond_18

    and-int/lit8 p0, p1, 0x1

    rsub-int/lit8 p0, p0, 0x1f

    goto :goto_1c

    :cond_18
    and-int/lit8 p0, p1, 0x1

    add-int/lit8 p0, p0, 0x1e

    :goto_1c
    return p0
.end method

.method private static DaysInYear(D)D
    .registers 3

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_20

    :cond_d
    double-to-int p0, p0

    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_1a

    const-wide p0, 0x4076e00000000000L  # 366.0

    goto :goto_1f

    :cond_1a
    const-wide p0, 0x4076d00000000000L  # 365.0

    :goto_1f
    return-wide p0

    :cond_20
    :goto_20
    const-wide/high16 p0, 0x7ff8000000000000L  # Double.NaN

    return-wide p0
.end method

.method private static EquivalentYear(I)I
    .registers 3

    int-to-double v0, p0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x7

    if-gez v0, :cond_e

    add-int/lit8 v0, v0, 0x7

    :cond_e
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_2d

    packed-switch v0, :pswitch_data_4c

    goto :goto_46

    :pswitch_18  #0x6
    const/16 p0, 0x7b4

    return p0

    :pswitch_1b  #0x5
    const/16 p0, 0x7c4

    return p0

    :pswitch_1e  #0x4
    const/16 p0, 0x7b8

    return p0

    :pswitch_21  #0x3
    const/16 p0, 0x7c8

    return p0

    :pswitch_24  #0x2
    const/16 p0, 0x7bc

    return p0

    :pswitch_27  #0x1
    const/16 p0, 0x7cc

    return p0

    :pswitch_2a  #0x0
    const/16 p0, 0x7c0

    return p0

    :cond_2d
    packed-switch v0, :pswitch_data_5e

    goto :goto_46

    :pswitch_31  #0x6
    const/16 p0, 0x7b9

    return p0

    :pswitch_34  #0x5
    const/16 p0, 0x7b3

    return p0

    :pswitch_37  #0x4
    const/16 p0, 0x7bd

    return p0

    :pswitch_3a  #0x3
    const/16 p0, 0x7c2

    return p0

    :pswitch_3d  #0x2
    const/16 p0, 0x7c1

    return p0

    :pswitch_40  #0x1
    const/16 p0, 0x7b5

    return p0

    :pswitch_43  #0x0
    const/16 p0, 0x7ba

    return p0

    :goto_46
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_27  #00000001
        :pswitch_24  #00000002
        :pswitch_21  #00000003
        :pswitch_1e  #00000004
        :pswitch_1b  #00000005
        :pswitch_18  #00000006
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_43  #00000000
        :pswitch_40  #00000001
        :pswitch_3d  #00000002
        :pswitch_3a  #00000003
        :pswitch_37  #00000004
        :pswitch_34  #00000005
        :pswitch_31  #00000006
    .end packed-switch
.end method

.method private static HourFromTime(D)I
    .registers 7

    const-wide v0, 0x414b774000000000L  # 3600000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4038000000000000L  # 24.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_14

    add-double/2addr p0, v0

    :cond_14
    double-to-int p0, p0

    return p0
.end method

.method private static IsLeapYear(I)Z
    .registers 2

    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_e

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_c

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static LocalTime(D)D
    .registers 4

    sget-wide v0, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    add-double/2addr v0, p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DaylightSavingTA(D)D

    move-result-wide p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static MakeDate(DD)D
    .registers 6

    const-wide v0, 0x4194997000000000L  # 8.64E7

    mul-double p0, p0, v0

    add-double/2addr p0, p2

    return-wide p0
.end method

.method private static MakeDay(DDD)D
    .registers 11

    const-wide/high16 v0, 0x4028000000000000L  # 12.0

    div-double v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr p0, v2

    rem-double/2addr p2, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p2, v2

    if-gez v4, :cond_11

    add-double/2addr p2, v0

    :cond_11
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->TimeFromYear(D)D

    move-result-wide v0

    const-wide v2, 0x4194997000000000L  # 8.64E7

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p2, p2

    double-to-int p0, p0

    invoke-static {p2, p0}, Lorg/mozilla/javascript/NativeDate;->DayFromMonth(II)D

    move-result-wide p0

    add-double/2addr v0, p0

    add-double/2addr v0, p4

    const-wide/high16 p0, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method private static MakeTime(DDDD)D
    .registers 10

    const-wide/high16 v0, 0x404e000000000000L  # 60.0

    mul-double p0, p0, v0

    add-double/2addr p0, p2

    mul-double p0, p0, v0

    add-double/2addr p0, p4

    const-wide p2, 0x408f400000000000L  # 1000.0

    mul-double p0, p0, p2

    add-double/2addr p0, p6

    return-wide p0
.end method

.method private static MinFromTime(D)I
    .registers 7

    const-wide v0, 0x40ed4c0000000000L  # 60000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x404e000000000000L  # 60.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_14

    add-double/2addr p0, v0

    :cond_14
    double-to-int p0, p0

    return p0
.end method

.method private static MonthFromTime(D)I
    .registers 5

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide p0

    int-to-double v1, v0

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v1

    sub-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p0, p0, -0x3b

    const/4 p1, 0x1

    if-gez p0, :cond_1a

    const/16 v0, -0x1c

    if-ge p0, v0, :cond_19

    const/4 p1, 0x0

    :cond_19
    return p1

    :cond_1a
    invoke-static {v0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_25

    if-nez p0, :cond_23

    return p1

    :cond_23
    add-int/lit8 p0, p0, -0x1

    :cond_25
    div-int/lit8 v0, p0, 0x1e

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_54

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_30  #0xa
    const/16 p0, 0xb

    return p0

    :pswitch_33  #0x9
    const/16 v2, 0x113

    goto :goto_4d

    :pswitch_36  #0x8
    const/16 v2, 0xf5

    goto :goto_4d

    :pswitch_39  #0x7
    const/16 v2, 0xd6

    goto :goto_4d

    :pswitch_3c  #0x6
    const/16 v2, 0xb8

    goto :goto_4d

    :pswitch_3f  #0x5
    const/16 v2, 0x99

    goto :goto_4d

    :pswitch_42  #0x4
    const/16 v2, 0x7a

    goto :goto_4d

    :pswitch_45  #0x3
    const/16 v2, 0x5c

    goto :goto_4d

    :pswitch_48  #0x2
    const/16 v2, 0x3d

    goto :goto_4d

    :pswitch_4b  #0x1
    const/16 v2, 0x1f

    :goto_4d
    if-lt p0, v2, :cond_51

    add-int/2addr v0, v1

    goto :goto_52

    :cond_51
    add-int/2addr v0, p1

    :goto_52
    return v0

    :pswitch_53  #0x0
    return v1

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_53  #00000000
        :pswitch_4b  #00000001
        :pswitch_48  #00000002
        :pswitch_45  #00000003
        :pswitch_42  #00000004
        :pswitch_3f  #00000005
        :pswitch_3c  #00000006
        :pswitch_39  #00000007
        :pswitch_36  #00000008
        :pswitch_33  #00000009
        :pswitch_30  #0000000a
    .end packed-switch
.end method

.method private static SecFromTime(D)I
    .registers 7

    const-wide v0, 0x408f400000000000L  # 1000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x404e000000000000L  # 60.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_14

    add-double/2addr p0, v0

    :cond_14
    double-to-int p0, p0

    return p0
.end method

.method private static TimeClip(D)D
    .registers 7

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_32

    const-wide/high16 v0, 0x7ff0000000000000L  # Double.POSITIVE_INFINITY

    cmpl-double v2, p0, v0

    if-eqz v2, :cond_32

    const-wide/high16 v0, -0x10000000000000L  # Double.NEGATIVE_INFINITY

    cmpl-double v2, p0, v0

    if-eqz v2, :cond_32

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x433eb208c2dc0000L  # 8.64E15

    cmpl-double v4, v0, v2

    if-lez v4, :cond_20

    goto :goto_32

    :cond_20
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_2c

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0

    :cond_2c
    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    return-wide p0

    :cond_32
    :goto_32
    const-wide/high16 p0, 0x7ff8000000000000L  # Double.NaN

    return-wide p0
.end method

.method private static TimeFromYear(D)D
    .registers 4

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide p0

    const-wide v0, 0x4194997000000000L  # 8.64E7

    mul-double p0, p0, v0

    return-wide p0
.end method

.method private static TimeWithinDay(D)D
    .registers 7

    const-wide v0, 0x4194997000000000L  # 8.64E7

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_d

    add-double/2addr p0, v0

    :cond_d
    return-wide p0
.end method

.method private static WeekDay(D)I
    .registers 7

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4010000000000000L  # 4.0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x401c000000000000L  # 7.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_11

    add-double/2addr p0, v0

    :cond_11
    double-to-int p0, p0

    return p0
.end method

.method private static YearFromTime(D)I
    .registers 12

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3d

    :cond_d
    const-wide v0, 0x421d63c37f000000L  # 3.1556952E10

    div-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide v2, 0x409ec80000000000L  # 1970.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeFromYear(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    cmpl-double v6, v2, p0

    if-lez v6, :cond_2a

    sub-double/2addr v0, v4

    goto :goto_3b

    :cond_2a
    const-wide v6, 0x4194997000000000L  # 8.64E7

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->DaysInYear(D)D

    move-result-wide v8

    mul-double v8, v8, v6

    add-double/2addr v2, v8

    cmpg-double v6, v2, p0

    if-gtz v6, :cond_3b

    add-double/2addr v0, v4

    :cond_3b
    :goto_3b
    double-to-int p0, v0

    return p0

    :cond_3d
    :goto_3d
    const/4 p0, 0x0

    return p0
.end method

.method private static append0PaddedUint(Ljava/lang/StringBuilder;II)V
    .registers 6

    if-gez p1, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    add-int/lit8 p2, p2, -0x1

    const v0, 0x3b9aca00

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-lt p1, v2, :cond_1e

    if-ge p1, v0, :cond_1b

    const/4 v0, 0x1

    :goto_12
    mul-int/lit8 v2, v0, 0xa

    if-ge p1, v2, :cond_17

    goto :goto_1f

    :cond_17
    add-int/lit8 p2, p2, -0x1

    move v0, v2

    goto :goto_12

    :cond_1b
    add-int/lit8 p2, p2, -0x9

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    const/16 v2, 0x30

    if-lez p2, :cond_29

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    goto :goto_1f

    :cond_29
    :goto_29
    if-eq v0, v1, :cond_36

    div-int p2, p1, v0

    add-int/2addr p2, v2

    int-to-char p2, p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/2addr p1, v0

    div-int/lit8 v0, v0, 0xa

    goto :goto_29

    :cond_36
    add-int/2addr p1, v2

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static appendMonthName(Ljava/lang/StringBuilder;I)V
    .registers 6

    const/4 v0, 0x3

    mul-int/lit8 p1, p1, 0x3

    const/4 v1, 0x0

    :goto_4
    if-eq v1, v0, :cond_14

    add-int v2, p1, v1

    const-string v3, "JanFebMarAprMayJunJulAugSepOctNovDec"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method private static appendWeekDayName(Ljava/lang/StringBuilder;I)V
    .registers 6

    const/4 v0, 0x3

    mul-int/lit8 p1, p1, 0x3

    const/4 v1, 0x0

    :goto_4
    if-eq v1, v0, :cond_14

    add-int v2, p1, v1

    const-string v3, "SunMonTueWedThuFriSat"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method private static date_format(DI)Ljava/lang/String;
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq p2, v6, :cond_44

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->WeekDay(D)I

    move-result v6

    invoke-static {v0, v6}, Lorg/mozilla/javascript/NativeDate;->appendWeekDayName(Ljava/lang/StringBuilder;I)V

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v7

    invoke-static {v0, v7}, Lorg/mozilla/javascript/NativeDate;->appendMonthName(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v7

    invoke-static {v0, v7, v4}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v7

    if-gez v7, :cond_3c

    const/16 v8, 0x2d

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v7, v7

    :cond_3c
    invoke-static {v0, v7, v5}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    if-eq p2, v5, :cond_44

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_44
    if-eq p2, v5, :cond_d0

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result p2

    invoke-static {v0, p2, v4}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 p2, 0x3a

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v6

    invoke-static {v0, v6, v4}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result p2

    invoke-static {v0, p2, v4}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    sget-wide v6, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DaylightSavingTA(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide v8, 0x40ed4c0000000000L  # 60000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int p2, v6

    div-int/lit8 v4, p2, 0x3c

    mul-int/lit8 v4, v4, 0x64

    rem-int/2addr p2, v1

    add-int/2addr v4, p2

    if-lez v4, :cond_83

    const-string p2, " GMT+"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_89

    :cond_83
    const-string p2, " GMT-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v4, v4

    :goto_89
    invoke-static {v0, v4, v5}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const-wide/16 v4, 0x0

    cmpg-double p2, p0, v4

    if-gez p2, :cond_b1

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result p2

    invoke-static {p2}, Lorg/mozilla/javascript/NativeDate;->EquivalentYear(I)I

    move-result p2

    int-to-double v1, p2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result p2

    int-to-double v3, p2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result p2

    int-to-double v5, p2

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide p0

    invoke-static {v1, v2, p0, p1}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p0

    :cond_b1
    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/util/Date;

    double-to-long p0, p0

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    sget-object p0, Lorg/mozilla/javascript/NativeDate;->timeZoneFormatter:Ljava/text/DateFormat;

    monitor-enter p0

    :try_start_bf
    invoke-virtual {p0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit p0
    :try_end_c7
    .catchall {:try_start_bf .. :try_end_c7} :catchall_cd

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d0

    :catchall_cd
    move-exception p1

    :try_start_ce
    monitor-exit p0
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw p1

    :cond_d0
    :goto_d0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static date_msecFromArgs([Ljava/lang/Object;)D
    .registers 21

    move-object/from16 v0, p0

    const/4 v1, 0x7

    new-array v2, v1, [D

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    if-ge v4, v1, :cond_3a

    array-length v8, v0

    if-ge v4, v8, :cond_2e

    aget-object v5, v0, v4

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_2b

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_22

    goto :goto_2b

    :cond_22
    aget-object v5, v0, v4

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v5

    aput-wide v5, v2, v4

    goto :goto_37

    :cond_2b
    :goto_2b
    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    return-wide v0

    :cond_2e
    if-ne v4, v5, :cond_35

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    aput-wide v5, v2, v4

    goto :goto_37

    :cond_35
    aput-wide v6, v2, v4

    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_3a
    aget-wide v0, v2, v3

    cmpl-double v4, v0, v6

    if-ltz v4, :cond_55

    aget-wide v0, v2, v3

    const-wide v6, 0x4058c00000000000L  # 99.0

    cmpg-double v4, v0, v6

    if-gtz v4, :cond_55

    aget-wide v0, v2, v3

    const-wide v6, 0x409db00000000000L  # 1900.0

    add-double/2addr v0, v6

    aput-wide v0, v2, v3

    :cond_55
    aget-wide v6, v2, v3

    const/4 v0, 0x1

    aget-wide v8, v2, v0

    aget-wide v10, v2, v5

    const/4 v0, 0x3

    aget-wide v12, v2, v0

    const/4 v0, 0x4

    aget-wide v14, v2, v0

    const/4 v0, 0x5

    aget-wide v16, v2, v0

    const/4 v0, 0x6

    aget-wide v18, v2, v0

    invoke-static/range {v6 .. v19}, Lorg/mozilla/javascript/NativeDate;->date_msecFromDate(DDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static date_msecFromDate(DDDDDDD)D
    .registers 14

    invoke-static/range {p0 .. p5}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide p0

    invoke-static/range {p6 .. p13}, Lorg/mozilla/javascript/NativeDate;->MakeTime(DDDD)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static date_parseString(Ljava/lang/String;)D
    .registers 36

    move-object/from16 v6, p0

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/NativeDate;->parseISOString(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_d

    return-wide v0

    :cond_d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v0, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const-wide/high16 v16, -0x4010000000000000L  # -1.0

    const/16 v18, 0x0

    :cond_1e
    :goto_1e
    const-wide/high16 v19, 0x7ff8000000000000L  # Double.NaN

    if-ge v0, v7, :cond_1f3

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x39

    const/16 v3, 0x20

    const/16 v10, 0x30

    const/16 v8, 0x2d

    if-le v1, v3, :cond_1d9

    const/16 v9, 0x2c

    if-eq v1, v9, :cond_1d9

    if-ne v1, v8, :cond_3a

    goto/16 :goto_1d9

    :cond_3a
    const/16 v3, 0x28

    const/16 v22, 0x1

    if-ne v1, v3, :cond_56

    :cond_40
    :goto_40
    if-ge v0, v7, :cond_1e

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v0, v0, 0x1

    if-ne v1, v3, :cond_4d

    add-int/lit8 v22, v22, 0x1

    goto :goto_40

    :cond_4d
    const/16 v2, 0x29

    if-ne v1, v2, :cond_40

    add-int/lit8 v22, v22, -0x1

    if-gtz v22, :cond_40

    goto :goto_1e

    :cond_56
    const/16 v9, 0x2b

    const-wide/16 v25, 0x0

    if-gt v10, v1, :cond_119

    if-gt v1, v2, :cond_119

    add-int/lit8 v27, v1, -0x30

    move/from16 v3, v27

    :goto_62
    if-ge v0, v7, :cond_73

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v10, v1, :cond_73

    if-gt v1, v2, :cond_73

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v1

    sub-int/2addr v3, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_73
    const/16 v2, 0x3c

    if-eq v4, v9, :cond_f5

    if-ne v4, v8, :cond_7b

    goto/16 :goto_f5

    :cond_7b
    const/16 v9, 0x46

    if-ge v3, v9, :cond_da

    const/16 v9, 0x2f

    if-ne v4, v9, :cond_8a

    if-ltz v12, :cond_8a

    if-ltz v13, :cond_8a

    if-gez v11, :cond_8a

    goto :goto_da

    :cond_8a
    const/16 v4, 0x3a

    if-ne v1, v4, :cond_97

    if-gez v5, :cond_93

    move v5, v3

    goto/16 :goto_116

    :cond_93
    if-gez v15, :cond_96

    goto :goto_cd

    :cond_96
    return-wide v19

    :cond_97
    const/16 v4, 0x2f

    if-ne v1, v4, :cond_a6

    if-gez v12, :cond_a2

    add-int/lit8 v3, v3, -0x1

    move v12, v3

    goto/16 :goto_116

    :cond_a2
    if-gez v13, :cond_a5

    goto :goto_d7

    :cond_a5
    return-wide v19

    :cond_a6
    if-ge v0, v7, :cond_b3

    const/16 v4, 0x2c

    if-eq v1, v4, :cond_b3

    const/16 v4, 0x20

    if-le v1, v4, :cond_b3

    if-eq v1, v8, :cond_b3

    return-wide v19

    :cond_b3
    if-eqz v18, :cond_c9

    if-ge v3, v2, :cond_c9

    cmpg-double v1, v16, v25

    if-gez v1, :cond_c2

    int-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v16, v16, v1

    goto :goto_116

    :cond_c2
    int-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double v16, v16, v1

    goto :goto_116

    :cond_c9
    if-ltz v5, :cond_cf

    if-gez v15, :cond_cf

    :goto_cd
    move v15, v3

    goto :goto_116

    :cond_cf
    if-ltz v15, :cond_d5

    if-gez v14, :cond_d5

    move v14, v3

    goto :goto_116

    :cond_d5
    if-gez v13, :cond_d9

    :goto_d7
    move v13, v3

    goto :goto_116

    :cond_d9
    return-wide v19

    :cond_da
    :goto_da
    if-ltz v11, :cond_dd

    return-wide v19

    :cond_dd
    const/16 v2, 0x20

    if-le v1, v2, :cond_ed

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_ed

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_ed

    if-lt v0, v7, :cond_ec

    goto :goto_ed

    :cond_ec
    return-wide v19

    :cond_ed
    :goto_ed
    const/16 v1, 0x64

    if-ge v3, v1, :cond_f3

    add-int/lit16 v3, v3, 0x76c

    :cond_f3
    move v11, v3

    goto :goto_116

    :cond_f5
    :goto_f5
    const/16 v1, 0x18

    if-ge v3, v1, :cond_fc

    mul-int/lit8 v3, v3, 0x3c

    goto :goto_103

    :cond_fc
    rem-int/lit8 v1, v3, 0x64

    div-int/lit8 v3, v3, 0x64

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, v1

    :goto_103
    if-ne v4, v9, :cond_106

    neg-int v3, v3

    :cond_106
    cmpl-double v1, v16, v25

    if-eqz v1, :cond_111

    const-wide/high16 v1, -0x4010000000000000L  # -1.0

    cmpl-double v4, v16, v1

    if-eqz v4, :cond_111

    return-wide v19

    :cond_111
    int-to-double v1, v3

    move-wide/from16 v16, v1

    const/16 v18, 0x1

    :goto_116
    const/4 v4, 0x0

    goto/16 :goto_1e

    :cond_119
    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1d7

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1d7

    if-eq v1, v9, :cond_1d7

    if-ne v1, v8, :cond_127

    goto/16 :goto_1d7

    :cond_127
    add-int/lit8 v8, v0, -0x1

    move v9, v0

    :goto_12a
    if-ge v9, v7, :cond_144

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-gt v1, v0, :cond_138

    const/16 v1, 0x5a

    if-le v0, v1, :cond_141

    :cond_138
    const/16 v1, 0x61

    if-gt v1, v0, :cond_144

    const/16 v1, 0x7a

    if-le v0, v1, :cond_141

    goto :goto_144

    :cond_141
    add-int/lit8 v9, v9, 0x1

    goto :goto_12a

    :cond_144
    :goto_144
    sub-int v10, v9, v8

    const/4 v3, 0x2

    if-ge v10, v3, :cond_14a

    return-wide v19

    :cond_14a
    const-string v2, "am;pm;monday;tuesday;wednesday;thursday;friday;saturday;sunday;january;february;march;april;may;june;july;august;september;october;november;december;gmt;ut;utc;est;edt;cst;cdt;mst;mdt;pst;pdt;"

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_14e
    const/16 v3, 0x3b

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v22

    if-gez v22, :cond_157

    return-wide v19

    :cond_157
    const/4 v3, 0x1

    move/from16 v23, v9

    move v9, v0

    move-object v0, v2

    move/from16 v24, v1

    move v1, v3

    move-object/from16 v27, v2

    move/from16 v2, v24

    move-object/from16 v3, p0

    move/from16 v21, v4

    move v4, v8

    move/from16 v24, v8

    move v8, v5

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1c7

    const-wide v0, 0x407a400000000000L  # 420.0

    const-wide v4, 0x4072c00000000000L  # 300.0

    const/16 v10, 0xc

    const/4 v2, 0x2

    if-ge v9, v2, :cond_192

    if-gt v8, v10, :cond_191

    if-gez v8, :cond_186

    goto :goto_191

    :cond_186
    if-nez v9, :cond_18c

    if-ne v8, v10, :cond_1c0

    const/4 v5, 0x0

    goto :goto_1c1

    :cond_18c
    if-eq v8, v10, :cond_1c0

    add-int/lit8 v5, v8, 0xc

    goto :goto_1c1

    :cond_191
    :goto_191
    return-wide v19

    :cond_192
    add-int/lit8 v2, v9, -0x2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_198

    goto :goto_1c0

    :cond_198
    add-int/lit8 v2, v2, -0x7

    if-ge v2, v10, :cond_1a1

    if-gez v12, :cond_1a0

    move v12, v2

    goto :goto_1c0

    :cond_1a0
    return-wide v19

    :cond_1a1
    add-int/lit8 v2, v2, -0xc

    packed-switch v2, :pswitch_data_234

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_1c0

    :pswitch_1aa  #0x9
    const-wide/high16 v0, 0x407e000000000000L  # 480.0

    goto :goto_1b6

    :pswitch_1ad  #0x5, 0x8
    move v5, v8

    const-wide v16, 0x4076800000000000L  # 360.0

    goto :goto_1c1

    :pswitch_1b4  #0x4
    const-wide/high16 v0, 0x406e000000000000L  # 240.0

    :goto_1b6
    :pswitch_1b6  #0x7, 0xa
    move-wide/from16 v16, v0

    goto :goto_1c0

    :pswitch_1b9  #0x3, 0x6
    move-wide/from16 v16, v4

    goto :goto_1c0

    :pswitch_1bc  #0x0, 0x1, 0x2
    move v5, v8

    move-wide/from16 v16, v25

    goto :goto_1c1

    :cond_1c0
    :goto_1c0
    move v5, v8

    :goto_1c1
    move/from16 v4, v21

    move/from16 v0, v23

    goto/16 :goto_1e

    :cond_1c7
    const/4 v2, 0x2

    add-int/lit8 v1, v22, 0x1

    add-int/lit8 v0, v9, 0x1

    move v5, v8

    move/from16 v4, v21

    move/from16 v9, v23

    move/from16 v8, v24

    move-object/from16 v2, v27

    goto/16 :goto_14e

    :cond_1d7
    :goto_1d7
    move v8, v5

    goto :goto_1ea

    :cond_1d9
    :goto_1d9
    move/from16 v21, v4

    move v8, v5

    const/16 v3, 0x2d

    if-ge v0, v7, :cond_1ee

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v1, v3, :cond_1ee

    if-gt v10, v4, :cond_1ee

    if-gt v4, v2, :cond_1ee

    :goto_1ea
    move v4, v1

    move v5, v8

    goto/16 :goto_1e

    :cond_1ee
    move v5, v8

    move/from16 v4, v21

    goto/16 :goto_1e

    :cond_1f3
    move v8, v5

    if-ltz v11, :cond_233

    if-ltz v12, :cond_233

    if-gez v13, :cond_1fb

    goto :goto_233

    :cond_1fb
    if-gez v14, :cond_1fe

    const/4 v14, 0x0

    :cond_1fe
    if-gez v15, :cond_201

    const/4 v15, 0x0

    :cond_201
    if-gez v8, :cond_205

    const/4 v10, 0x0

    goto :goto_206

    :cond_205
    move v10, v8

    :goto_206
    int-to-double v0, v11

    int-to-double v2, v12

    int-to-double v4, v13

    int-to-double v6, v10

    int-to-double v8, v15

    int-to-double v10, v14

    const-wide/16 v33, 0x0

    move-wide/from16 v21, v0

    move-wide/from16 v23, v2

    move-wide/from16 v25, v4

    move-wide/from16 v27, v6

    move-wide/from16 v29, v8

    move-wide/from16 v31, v10

    invoke-static/range {v21 .. v34}, Lorg/mozilla/javascript/NativeDate;->date_msecFromDate(DDDDDDD)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    cmpl-double v4, v16, v2

    if-nez v4, :cond_229

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide v0

    return-wide v0

    :cond_229
    const-wide v2, 0x40ed4c0000000000L  # 60000.0

    mul-double v16, v16, v2

    add-double v0, v0, v16

    return-wide v0

    :cond_233
    :goto_233
    return-wide v19

    :pswitch_data_234
    .packed-switch 0x0
        :pswitch_1bc  #00000000
        :pswitch_1bc  #00000001
        :pswitch_1bc  #00000002
        :pswitch_1b9  #00000003
        :pswitch_1b4  #00000004
        :pswitch_1ad  #00000005
        :pswitch_1b9  #00000006
        :pswitch_1b6  #00000007
        :pswitch_1ad  #00000008
        :pswitch_1aa  #00000009
        :pswitch_1b6  #0000000a
    .end packed-switch
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/NativeDate;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeDate;-><init>()V

    const-wide/high16 v1, 0x7ff8000000000000L  # Double.NaN

    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private static internalUTC(D)D
    .registers 6

    sget-wide v0, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    sub-double v2, p0, v0

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DaylightSavingTA(D)D

    move-result-wide p0

    sub-double/2addr v2, p0

    return-wide v2
.end method

.method private static jsConstructor([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/NativeDate;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeDate;-><init>()V

    array-length v1, p0

    if-nez v1, :cond_f

    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->now()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-object v0

    :cond_f
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_44

    const/4 v1, 0x0

    aget-object p0, p0, v1

    instance-of v1, p0, Lorg/mozilla/javascript/NativeDate;

    if-eqz v1, :cond_21

    check-cast p0, Lorg/mozilla/javascript/NativeDate;

    iget-wide v1, p0, Lorg/mozilla/javascript/NativeDate;->date:D

    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-object v0

    :cond_21
    instance-of v1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_2c

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    :cond_2c
    instance-of v1, p0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->date_parseString(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_3d

    :cond_39
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    :goto_3d
    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-object v0

    :cond_44
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->date_msecFromArgs([Ljava/lang/Object;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_5c

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_5c

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v1

    :cond_5c
    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-object v0
.end method

.method private static jsStaticFunction_UTC([Ljava/lang/Object;)D
    .registers 3

    array-length v0, p0

    if-nez v0, :cond_6

    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    return-wide v0

    :cond_6
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->date_msecFromArgs([Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static js_toISOString(D)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v1

    const/4 v2, 0x6

    const/16 v3, 0x2d

    if-gez v1, :cond_18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v1, v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    goto :goto_24

    :cond_18
    const/16 v4, 0x270f

    if-le v1, v4, :cond_20

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    goto :goto_24

    :cond_20
    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    :goto_24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v3

    invoke-static {v0, v3, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->msFromTime(D)I

    move-result p0

    const/4 p1, 0x3

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 p0, 0x5a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static js_toUTCString(D)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->WeekDay(D)I

    move-result v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->appendWeekDayName(Ljava/lang/StringBuilder;I)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v3

    invoke-static {v0, v3}, Lorg/mozilla/javascript/NativeDate;->appendMonthName(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v3

    if-gez v3, :cond_36

    const/16 v4, 0x2d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v3, v3

    :cond_36
    const/4 v4, 0x4

    invoke-static {v0, v3, v4}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v3

    invoke-static {v0, v3, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result p0

    invoke-static {v0, p0, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const-string p0, " GMT"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makeDate(D[Ljava/lang/Object;I)D
    .registers 23

    move-object/from16 v0, p2

    array-length v1, v0

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    if-nez v1, :cond_8

    return-wide v2

    :cond_8
    const/4 v1, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch p3, :pswitch_data_aa

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_14  #0x2c
    const/4 v7, 0x0

    goto :goto_17

    :pswitch_16  #0x2b
    const/4 v7, 0x1

    :goto_17
    const/4 v8, 0x3

    goto :goto_22

    :pswitch_19  #0x2a
    const/4 v7, 0x0

    goto :goto_1c

    :pswitch_1b  #0x29
    const/4 v7, 0x1

    :goto_1c
    const/4 v8, 0x2

    goto :goto_22

    :pswitch_1e  #0x28
    const/4 v7, 0x0

    goto :goto_21

    :pswitch_20  #0x27
    const/4 v7, 0x1

    :goto_21
    const/4 v8, 0x1

    :goto_22
    array-length v9, v0

    if-ge v9, v8, :cond_27

    array-length v9, v0

    goto :goto_28

    :cond_27
    move v9, v8

    :goto_28
    new-array v10, v4, [D

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2c
    if-ge v11, v9, :cond_4c

    aget-object v13, v0, v11

    invoke-static {v13}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v15

    if-nez v15, :cond_48

    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v15

    if-eqz v15, :cond_41

    goto :goto_48

    :cond_41
    invoke-static {v13, v14}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(D)D

    move-result-wide v13

    aput-wide v13, v10, v11

    goto :goto_49

    :cond_48
    :goto_48
    const/4 v12, 0x1

    :goto_49
    add-int/lit8 v11, v11, 0x1

    goto :goto_2c

    :cond_4c
    if-eqz v12, :cond_4f

    return-wide v2

    :cond_4f
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_5b

    if-ge v8, v4, :cond_58

    return-wide v2

    :cond_58
    const-wide/16 v2, 0x0

    goto :goto_64

    :cond_5b
    if-eqz v7, :cond_62

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v2

    goto :goto_64

    :cond_62
    move-wide/from16 v2, p0

    :goto_64
    if-lt v8, v4, :cond_6d

    if-lez v9, :cond_6d

    aget-wide v4, v10, v5

    move-wide v13, v4

    const/4 v5, 0x1

    goto :goto_73

    :cond_6d
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v0

    int-to-double v11, v0

    move-wide v13, v11

    :goto_73
    if-lt v8, v1, :cond_7e

    if-ge v5, v9, :cond_7e

    add-int/lit8 v0, v5, 0x1

    aget-wide v4, v10, v5

    move-wide v15, v4

    move v5, v0

    goto :goto_84

    :cond_7e
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v0

    int-to-double v0, v0

    move-wide v15, v0

    :goto_84
    if-lt v8, v6, :cond_8b

    if-ge v5, v9, :cond_8b

    aget-wide v0, v10, v5

    goto :goto_90

    :cond_8b
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v0

    int-to-double v0, v0

    :goto_90
    move-wide/from16 v17, v0

    invoke-static/range {v13 .. v18}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v0

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide v0

    if-eqz v7, :cond_a4

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide v0

    :cond_a4
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_aa
    .packed-switch 0x27
        :pswitch_20  #00000027
        :pswitch_1e  #00000028
        :pswitch_1b  #00000029
        :pswitch_19  #0000002a
        :pswitch_16  #0000002b
        :pswitch_14  #0000002c
    .end packed-switch
.end method

.method private static makeTime(D[Ljava/lang/Object;I)D
    .registers 26

    move-object/from16 v0, p2

    array-length v1, v0

    const-wide/high16 v2, 0x7ff8000000000000L  # Double.NaN

    if-nez v1, :cond_8

    return-wide v2

    :cond_8
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p3, :pswitch_data_c0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_15  #0x26
    const/4 v8, 0x0

    goto :goto_18

    :pswitch_17  #0x25
    const/4 v8, 0x1

    :goto_18
    const/4 v9, 0x4

    goto :goto_28

    :pswitch_1a  #0x24
    const/4 v8, 0x0

    goto :goto_1d

    :pswitch_1c  #0x23
    const/4 v8, 0x1

    :goto_1d
    const/4 v9, 0x3

    goto :goto_28

    :pswitch_1f  #0x22
    const/4 v8, 0x0

    goto :goto_22

    :pswitch_21  #0x21
    const/4 v8, 0x1

    :goto_22
    const/4 v9, 0x2

    goto :goto_28

    :pswitch_24  #0x20
    const/4 v8, 0x0

    goto :goto_27

    :pswitch_26  #0x1f
    const/4 v8, 0x1

    :goto_27
    const/4 v9, 0x1

    :goto_28
    array-length v10, v0

    if-ge v10, v9, :cond_2d

    array-length v10, v0

    goto :goto_2e

    :cond_2d
    move v10, v9

    :goto_2e
    new-array v11, v5, [D

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_32
    if-ge v12, v10, :cond_52

    aget-object v14, v0, v12

    invoke-static {v14}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_4e

    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v16

    if-eqz v16, :cond_47

    goto :goto_4e

    :cond_47
    invoke-static {v14, v15}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(D)D

    move-result-wide v14

    aput-wide v14, v11, v12

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 v13, 0x1

    :goto_4f
    add-int/lit8 v12, v12, 0x1

    goto :goto_32

    :cond_52
    if-nez v13, :cond_bf

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_5c

    goto/16 :goto_bf

    :cond_5c
    if-eqz v8, :cond_63

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v2

    goto :goto_65

    :cond_63
    move-wide/from16 v2, p0

    :goto_65
    if-lt v9, v5, :cond_6e

    if-lez v10, :cond_6e

    aget-wide v5, v11, v6

    move-wide v14, v5

    const/4 v6, 0x1

    goto :goto_74

    :cond_6e
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result v0

    int-to-double v12, v0

    move-wide v14, v12

    :goto_74
    if-lt v9, v1, :cond_80

    if-ge v6, v10, :cond_80

    add-int/lit8 v0, v6, 0x1

    aget-wide v5, v11, v6

    move-wide/from16 v16, v5

    move v6, v0

    goto :goto_87

    :cond_80
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v0

    int-to-double v0, v0

    move-wide/from16 v16, v0

    :goto_87
    if-lt v9, v4, :cond_93

    if-ge v6, v10, :cond_93

    add-int/lit8 v0, v6, 0x1

    aget-wide v4, v11, v6

    move v6, v0

    move-wide/from16 v18, v4

    goto :goto_9a

    :cond_93
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result v0

    int-to-double v0, v0

    move-wide/from16 v18, v0

    :goto_9a
    if-lt v9, v7, :cond_a1

    if-ge v6, v10, :cond_a1

    aget-wide v0, v11, v6

    goto :goto_a6

    :cond_a1
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->msFromTime(D)I

    move-result v0

    int-to-double v0, v0

    :goto_a6
    move-wide/from16 v20, v0

    invoke-static/range {v14 .. v21}, Lorg/mozilla/javascript/NativeDate;->MakeTime(DDDD)D

    move-result-wide v0

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide v0

    if-eqz v8, :cond_ba

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide v0

    :cond_ba
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v0

    return-wide v0

    :cond_bf
    :goto_bf
    return-wide v2

    :pswitch_data_c0
    .packed-switch 0x1f
        :pswitch_26  #0000001f
        :pswitch_24  #00000020
        :pswitch_21  #00000021
        :pswitch_1f  #00000022
        :pswitch_1c  #00000023
        :pswitch_1a  #00000024
        :pswitch_17  #00000025
        :pswitch_15  #00000026
    .end packed-switch
.end method

.method private static msFromTime(D)I
    .registers 7

    const-wide v0, 0x408f400000000000L  # 1000.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_d

    add-double/2addr p0, v0

    :cond_d
    double-to-int p0, p0

    return p0
.end method

.method private static now()D
    .registers 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method private static parseISOString(Ljava/lang/String;)D
    .registers 35

    move-object/from16 v0, p0

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_1cc

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x54

    const/16 v4, 0x2b

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/4 v7, 0x3

    const/16 v8, 0x2d

    const/4 v9, 0x0

    const/4 v11, -0x1

    if-eqz v2, :cond_32

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v4, :cond_29

    if-ne v12, v8, :cond_23

    goto :goto_29

    :cond_23
    if-ne v12, v3, :cond_32

    const/4 v12, 0x1

    const/4 v13, 0x3

    const/4 v14, 0x1

    goto :goto_35

    :cond_29
    :goto_29
    if-ne v12, v8, :cond_2d

    const/4 v12, -0x1

    goto :goto_2e

    :cond_2d
    const/4 v12, 0x1

    :goto_2e
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x6

    goto :goto_36

    :cond_32
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_35
    const/4 v15, 0x4

    :goto_36
    const/16 v16, 0x1

    :goto_38
    const/16 v17, 0x2

    const/16 v18, 0x8

    const/4 v10, 0x5

    const/4 v3, 0x7

    if-eq v13, v11, :cond_11d

    if-nez v13, :cond_45

    move/from16 v19, v15

    goto :goto_4c

    :cond_45
    if-ne v13, v6, :cond_4a

    const/16 v19, 0x3

    goto :goto_4c

    :cond_4a
    const/16 v19, 0x2

    :goto_4c
    add-int v11, v14, v19

    if-le v11, v2, :cond_54

    :cond_50
    :goto_50
    const/4 v0, -0x1

    const/4 v13, -0x1

    goto/16 :goto_11e

    :cond_54
    const/16 v19, 0x0

    :goto_56
    if-ge v14, v11, :cond_72

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v4, 0x30

    if-lt v8, v4, :cond_50

    const/16 v4, 0x39

    if-le v8, v4, :cond_65

    goto :goto_50

    :cond_65
    mul-int/lit8 v19, v19, 0xa

    add-int/lit8 v8, v8, -0x30

    add-int v19, v19, v8

    add-int/lit8 v14, v14, 0x1

    const/16 v4, 0x2b

    const/16 v8, 0x2d

    goto :goto_56

    :cond_72
    aput v19, v1, v13

    if-ne v14, v2, :cond_7f

    if-eq v13, v7, :cond_7c

    if-eq v13, v3, :cond_7c

    goto/16 :goto_11d

    :cond_7c
    const/4 v13, -0x1

    goto/16 :goto_11d

    :cond_7f
    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x5a

    if-ne v8, v11, :cond_98

    aput v9, v1, v3

    aput v9, v1, v18

    if-eq v13, v5, :cond_95

    if-eq v13, v10, :cond_95

    if-eq v13, v6, :cond_95

    move v14, v4

    goto :goto_50

    :cond_95
    move v14, v4

    goto/16 :goto_11d

    :cond_98
    const/16 v11, 0x3a

    packed-switch v13, :pswitch_data_1b6

    const/16 v10, 0x2d

    const/16 v11, 0x54

    :goto_a1
    const/16 v14, 0x2b

    goto/16 :goto_10a

    :pswitch_a5  #0x8
    const/16 v10, 0x2d

    const/16 v11, 0x54

    const/4 v13, -0x1

    goto :goto_a1

    :pswitch_ab  #0x7
    if-eq v8, v11, :cond_af

    add-int/lit8 v4, v4, -0x1

    :cond_af
    const/16 v10, 0x2d

    const/16 v11, 0x54

    const/16 v13, 0x8

    goto :goto_a1

    :pswitch_b6  #0x6
    const/16 v14, 0x2b

    const/16 v13, 0x2d

    if-eq v8, v14, :cond_d0

    if-ne v8, v13, :cond_ce

    goto :goto_d0

    :pswitch_bf  #0x5
    const/16 v13, 0x2d

    const/16 v14, 0x2b

    const/16 v10, 0x2e

    if-ne v8, v10, :cond_c9

    const/4 v10, 0x6

    goto :goto_d1

    :cond_c9
    if-eq v8, v14, :cond_d0

    if-ne v8, v13, :cond_ce

    goto :goto_d0

    :cond_ce
    const/4 v10, -0x1

    goto :goto_d1

    :cond_d0
    :goto_d0
    const/4 v10, 0x7

    :goto_d1
    move v13, v10

    goto :goto_e9

    :pswitch_d3  #0x4
    const/16 v13, 0x2d

    const/16 v14, 0x2b

    if-ne v8, v11, :cond_db

    const/4 v13, 0x5

    goto :goto_e9

    :cond_db
    if-eq v8, v14, :cond_e2

    if-ne v8, v13, :cond_e0

    goto :goto_e2

    :cond_e0
    const/4 v13, -0x1

    goto :goto_e9

    :cond_e2
    :goto_e2
    const/4 v13, 0x7

    goto :goto_e9

    :pswitch_e4  #0x3
    const/16 v14, 0x2b

    if-ne v8, v11, :cond_e0

    const/4 v13, 0x4

    :goto_e9
    const/16 v10, 0x2d

    const/16 v11, 0x54

    goto :goto_10a

    :pswitch_ee  #0x2
    const/16 v11, 0x54

    const/16 v14, 0x2b

    if-ne v8, v11, :cond_f6

    const/4 v13, 0x3

    goto :goto_f7

    :cond_f6
    const/4 v13, -0x1

    :goto_f7
    const/16 v10, 0x2d

    goto :goto_10a

    :pswitch_fa  #0x0, 0x1
    const/16 v10, 0x2d

    const/16 v11, 0x54

    const/16 v14, 0x2b

    if-ne v8, v10, :cond_105

    add-int/lit8 v13, v13, 0x1

    goto :goto_10a

    :cond_105
    if-ne v8, v11, :cond_109

    const/4 v13, 0x3

    goto :goto_10a

    :cond_109
    const/4 v13, -0x1

    :goto_10a
    if-ne v13, v3, :cond_113

    if-ne v8, v10, :cond_111

    const/16 v16, -0x1

    goto :goto_113

    :cond_111
    const/16 v16, 0x1

    :cond_113
    :goto_113
    move v14, v4

    const/16 v3, 0x54

    const/16 v4, 0x2b

    const/16 v8, 0x2d

    const/4 v11, -0x1

    goto/16 :goto_38

    :cond_11d
    :goto_11d
    const/4 v0, -0x1

    :goto_11e
    if-eq v13, v0, :cond_1b3

    if-eq v14, v2, :cond_124

    goto/16 :goto_1b3

    :cond_124
    aget v0, v1, v9

    const/4 v2, 0x1

    aget v4, v1, v2

    aget v8, v1, v17

    aget v7, v1, v7

    aget v5, v1, v5

    aget v9, v1, v10

    aget v6, v1, v6

    aget v3, v1, v3

    aget v1, v1, v18

    const v10, 0x435e7

    if-gt v0, v10, :cond_1b3

    if-lt v4, v2, :cond_1b3

    const/16 v10, 0xc

    if-gt v4, v10, :cond_1b3

    if-lt v8, v2, :cond_1b3

    invoke-static {v0, v4}, Lorg/mozilla/javascript/NativeDate;->DaysInMonth(II)I

    move-result v2

    if-gt v8, v2, :cond_1b3

    const/16 v2, 0x18

    if-gt v7, v2, :cond_1b3

    if-ne v7, v2, :cond_156

    if-gtz v5, :cond_1b3

    if-gtz v9, :cond_1b3

    if-gtz v6, :cond_1b3

    :cond_156
    const/16 v2, 0x3b

    if-gt v5, v2, :cond_1b3

    if-gt v9, v2, :cond_1b3

    const/16 v10, 0x17

    if-gt v3, v10, :cond_1b3

    if-le v1, v2, :cond_163

    goto :goto_1b3

    :cond_163
    mul-int v0, v0, v12

    int-to-double v10, v0

    const/4 v0, 0x1

    sub-int/2addr v4, v0

    int-to-double v12, v4

    int-to-double v14, v8

    int-to-double v7, v7

    int-to-double v4, v5

    move/from16 p0, v1

    int-to-double v0, v9

    move v9, v3

    int-to-double v2, v6

    move-wide/from16 v20, v10

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    move-wide/from16 v26, v7

    move-wide/from16 v28, v4

    move-wide/from16 v30, v0

    move-wide/from16 v32, v2

    invoke-static/range {v20 .. v33}, Lorg/mozilla/javascript/NativeDate;->date_msecFromDate(DDDDDDD)D

    move-result-wide v0

    const/4 v2, -0x1

    if-ne v9, v2, :cond_187

    goto :goto_19f

    :cond_187
    mul-int/lit8 v3, v9, 0x3c

    add-int v3, v3, p0

    int-to-double v2, v3

    const-wide v4, 0x40ed4c0000000000L  # 60000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    move/from16 v10, v16

    int-to-double v4, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    :goto_19f
    const-wide v2, -0x3cc14df73d240000L  # -8.64E15

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_1b3

    const-wide v2, 0x433eb208c2dc0000L  # 8.64E15

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1b2

    goto :goto_1b3

    :cond_1b2
    return-wide v0

    :cond_1b3
    :goto_1b3
    const-wide/high16 v0, 0x7ff8000000000000L  # Double.NaN

    return-wide v0

    :pswitch_data_1b6
    .packed-switch 0x0
        :pswitch_fa  #00000000
        :pswitch_fa  #00000001
        :pswitch_ee  #00000002
        :pswitch_e4  #00000003
        :pswitch_d3  #00000004
        :pswitch_bf  #00000005
        :pswitch_b6  #00000006
        :pswitch_ab  #00000007
        :pswitch_a5  #00000008
    .end packed-switch

    :array_1cc
    .array-data 4
        0x7b2
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method private static toLocale_helper(DI)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x5

    if-eq p2, v0, :cond_15

    const/4 v0, 0x6

    if-eq p2, v0, :cond_12

    const/4 v0, 0x7

    if-ne p2, v0, :cond_c

    sget-object p2, Lorg/mozilla/javascript/NativeDate;->localeDateFormatter:Ljava/text/DateFormat;

    goto :goto_17

    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_12
    sget-object p2, Lorg/mozilla/javascript/NativeDate;->localeTimeFormatter:Ljava/text/DateFormat;

    goto :goto_17

    :cond_15
    sget-object p2, Lorg/mozilla/javascript/NativeDate;->localeDateTimeFormatter:Ljava/text/DateFormat;

    :goto_17
    monitor-enter p2

    :try_start_18
    new-instance v0, Ljava/util/Date;

    double-to-long p0, p0

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    monitor-exit p2

    return-object p0

    :catchall_24
    move-exception p0

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    sget-object v0, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_296

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_289

    const/4 v1, -0x1

    if-eq v0, v1, :cond_280

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26f

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_20a

    instance-of p3, p4, Lorg/mozilla/javascript/NativeDate;

    if-eqz p3, :cond_205

    check-cast p4, Lorg/mozilla/javascript/NativeDate;

    iget-wide v3, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    const-string p1, "Invalid Date"

    const-wide v5, 0x409db00000000000L  # 1900.0

    packed-switch v0, :pswitch_data_2a0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3e  #0x2e
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_49

    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->js_toISOString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_49
    const-string p1, "msg.invalid.date"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->rangeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :pswitch_54  #0x2d
    invoke-static {p5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p3

    if-nez p3, :cond_a1

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p3

    if-eqz p3, :cond_65

    goto :goto_a1

    :cond_65
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p3

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_6f

    move-wide v2, v0

    goto :goto_73

    :cond_6f
    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v2

    :goto_73
    cmpl-double p3, p1, v0

    if-ltz p3, :cond_81

    const-wide v0, 0x4058c00000000000L  # 99.0

    cmpg-double p3, p1, v0

    if-gtz p3, :cond_81

    add-double/2addr p1, v5

    :cond_81
    move-wide v4, p1

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result p1

    int-to-double v6, p1

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result p1

    int-to-double v8, p1

    invoke-static/range {v4 .. v9}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide p1

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide p1

    goto :goto_a3

    :cond_a1
    :goto_a1
    const-wide/high16 p1, 0x7ff8000000000000L  # Double.NaN

    :goto_a3
    iput-wide p1, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_aa  #0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c
    invoke-static {v3, v4, p5, v0}, Lorg/mozilla/javascript/NativeDate;->makeDate(D[Ljava/lang/Object;I)D

    move-result-wide p1

    iput-wide p1, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_b5  #0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26
    invoke-static {v3, v4, p5, v0}, Lorg/mozilla/javascript/NativeDate;->makeTime(D[Ljava/lang/Object;I)D

    move-result-wide p1

    iput-wide p1, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_c0  #0x1e
    invoke-static {p5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide p1

    iput-wide p1, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_cf  #0x1d
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_e0

    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide p1

    sub-double/2addr v3, p1

    const-wide p1, 0x40ed4c0000000000L  # 60000.0

    div-double/2addr v3, p1

    :cond_e0
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_e5  #0x1b, 0x1c
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_f8

    const/16 p1, 0x1b

    if-ne v0, p1, :cond_f3

    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v3

    :cond_f3
    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->msFromTime(D)I

    move-result p1

    int-to-double v3, p1

    :cond_f8
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_fd  #0x19, 0x1a
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_110

    const/16 p1, 0x19

    if-ne v0, p1, :cond_10b

    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v3

    :cond_10b
    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result p1

    int-to-double v3, p1

    :cond_110
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_115  #0x17, 0x18
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_128

    const/16 p1, 0x17

    if-ne v0, p1, :cond_123

    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v3

    :cond_123
    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result p1

    int-to-double v3, p1

    :cond_128
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_12d  #0x15, 0x16
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_140

    const/16 p1, 0x15

    if-ne v0, p1, :cond_13b

    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v3

    :cond_13b
    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result p1

    int-to-double v3, p1

    :cond_140
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_145  #0x13, 0x14
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_158

    const/16 p1, 0x13

    if-ne v0, p1, :cond_153

    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v3

    :cond_153
    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->WeekDay(D)I

    move-result p1

    int-to-double v3, p1

    :cond_158
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_15d  #0x11, 0x12
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_170

    const/16 p1, 0x11

    if-ne v0, p1, :cond_16b

    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v3

    :cond_16b
    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result p1

    int-to-double v3, p1

    :cond_170
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_175  #0xf, 0x10
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_188

    const/16 p1, 0xf

    if-ne v0, p1, :cond_183

    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v3

    :cond_183
    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result p1

    int-to-double v3, p1

    :cond_188
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_18d  #0xc, 0xd, 0xe
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_1bf

    const/16 p1, 0xe

    if-eq v0, p1, :cond_19b

    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v3

    :cond_19b
    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result p1

    int-to-double v3, p1

    const/16 p1, 0xc

    if-ne v0, p1, :cond_1bf

    invoke-virtual {p2, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_1bb

    cmpg-double p1, v5, v3

    if-gtz p1, :cond_1bf

    const-wide p1, 0x409f400000000000L  # 2000.0

    cmpg-double p3, v3, p1

    if-gez p3, :cond_1bf

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1be

    :cond_1bb
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    :goto_1be
    sub-double/2addr v3, v5

    :cond_1bf
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_1c4  #0xa, 0xb
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_1c9  #0x9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "(new Date("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "))"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1e4  #0x8
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_1ee

    invoke-static {v3, v4}, Lorg/mozilla/javascript/NativeDate;->js_toUTCString(D)Ljava/lang/String;

    move-result-object p1

    :cond_1ee
    return-object p1

    :pswitch_1ef  #0x5, 0x6, 0x7
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_1f9

    invoke-static {v3, v4, v0}, Lorg/mozilla/javascript/NativeDate;->toLocale_helper(DI)Ljava/lang/String;

    move-result-object p1

    :cond_1f9
    return-object p1

    :pswitch_1fa  #0x2, 0x3, 0x4
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_204

    invoke-static {v3, v4, v0}, Lorg/mozilla/javascript/NativeDate;->date_format(DI)Ljava/lang/String;

    move-result-object p1

    :cond_204
    return-object p1

    :cond_205
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_20a
    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    sget-object p4, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-static {p1, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toPrimitive(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    instance-of p5, p4, Ljava/lang/Number;

    if-eqz p5, :cond_22c

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_22a

    invoke-static {p4, p5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p4

    if-eqz p4, :cond_22c

    :cond_22a
    const/4 p1, 0x0

    return-object p1

    :cond_22c
    const-string/jumbo p4, "toISOString"

    invoke-static {p1, p4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p5, v0, :cond_264

    instance-of v0, p5, Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_255

    check-cast p5, Lorg/mozilla/javascript/Callable;

    sget-object p4, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {p5, p2, p3, p1, p4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isPrimitive(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24a

    return-object p1

    :cond_24a
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.toisostring.must.return.primitive"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_255
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p5}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "msg.isnt.function.in"

    invoke-static {p3, p4, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_264
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.function.not.found.in"

    invoke-static {p2, p4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_26f
    if-eqz p4, :cond_27b

    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->now()D

    move-result-wide p1

    const/4 p3, 0x2

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/NativeDate;->date_format(DI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_27b
    invoke-static {p5}, Lorg/mozilla/javascript/NativeDate;->jsConstructor([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_280
    invoke-static {p5}, Lorg/mozilla/javascript/NativeDate;->jsStaticFunction_UTC([Ljava/lang/Object;)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_289
    invoke-static {p5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/NativeDate;->date_parseString(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :cond_296
    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->now()D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_2a0
    .packed-switch 0x2
        :pswitch_1fa  #00000002
        :pswitch_1fa  #00000003
        :pswitch_1fa  #00000004
        :pswitch_1ef  #00000005
        :pswitch_1ef  #00000006
        :pswitch_1ef  #00000007
        :pswitch_1e4  #00000008
        :pswitch_1c9  #00000009
        :pswitch_1c4  #0000000a
        :pswitch_1c4  #0000000b
        :pswitch_18d  #0000000c
        :pswitch_18d  #0000000d
        :pswitch_18d  #0000000e
        :pswitch_175  #0000000f
        :pswitch_175  #00000010
        :pswitch_15d  #00000011
        :pswitch_15d  #00000012
        :pswitch_145  #00000013
        :pswitch_145  #00000014
        :pswitch_12d  #00000015
        :pswitch_12d  #00000016
        :pswitch_115  #00000017
        :pswitch_115  #00000018
        :pswitch_fd  #00000019
        :pswitch_fd  #0000001a
        :pswitch_e5  #0000001b
        :pswitch_e5  #0000001c
        :pswitch_cf  #0000001d
        :pswitch_c0  #0000001e
        :pswitch_b5  #0000001f
        :pswitch_b5  #00000020
        :pswitch_b5  #00000021
        :pswitch_b5  #00000022
        :pswitch_b5  #00000023
        :pswitch_b5  #00000024
        :pswitch_b5  #00000025
        :pswitch_b5  #00000026
        :pswitch_aa  #00000027
        :pswitch_aa  #00000028
        :pswitch_aa  #00000029
        :pswitch_aa  #0000002a
        :pswitch_aa  #0000002b
        :pswitch_aa  #0000002c
        :pswitch_54  #0000002d
        :pswitch_3e  #0000002e
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .registers 9

    sget-object v6, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    const/4 v3, -0x3

    const-string v4, "now"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x2

    const-string v4, "parse"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x1

    const-string v4, "UTC"

    const/4 v5, 0x7

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    const/16 v3, 0x8

    const/16 v4, 0x53

    const/16 v5, 0x9

    const/16 v6, 0x54

    const/16 v7, 0x44

    const/16 v8, 0x4d

    const/4 v9, 0x3

    const/16 v10, 0x74

    const/16 v11, 0x73

    const/16 v12, 0x67

    const/4 v13, 0x0

    packed-switch v0, :pswitch_data_242

    :pswitch_1d  #0x10
    goto/16 :goto_232

    :pswitch_1f  #0x12
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_2b

    const/16 v1, 0x1c

    const-string v0, "getUTCMilliseconds"

    goto/16 :goto_234

    :cond_2b
    if-ne v0, v11, :cond_34

    const/16 v1, 0x20

    const-string/jumbo v0, "setUTCMilliseconds"

    goto/16 :goto_234

    :cond_34
    if-ne v0, v10, :cond_232

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_42

    const/4 v1, 0x7

    const-string/jumbo v0, "toLocaleDateString"

    goto/16 :goto_234

    :cond_42
    if-ne v0, v6, :cond_232

    const-string/jumbo v0, "toLocaleTimeString"

    const/4 v1, 0x6

    goto/16 :goto_234

    :pswitch_4a  #0x11
    const/16 v1, 0x1d

    const-string v0, "getTimezoneOffset"

    goto/16 :goto_234

    :pswitch_50  #0xf
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_5c

    const/16 v1, 0x1b

    const-string v0, "getMilliseconds"

    goto/16 :goto_234

    :cond_5c
    if-ne v0, v11, :cond_232

    const/16 v1, 0x1f

    const-string/jumbo v0, "setMilliseconds"

    goto/16 :goto_234

    :pswitch_65  #0xe
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_71

    const/16 v1, 0xe

    const-string v0, "getUTCFullYear"

    goto/16 :goto_234

    :cond_71
    if-ne v0, v11, :cond_7a

    const/16 v1, 0x2c

    const-string/jumbo v0, "setUTCFullYear"

    goto/16 :goto_234

    :cond_7a
    if-ne v0, v10, :cond_232

    const/4 v1, 0x5

    const-string/jumbo v0, "toLocaleString"

    goto/16 :goto_234

    :pswitch_82  #0xd
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_9c

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_94

    const/16 v1, 0x18

    const-string v0, "getUTCMinutes"

    goto/16 :goto_234

    :cond_94
    if-ne v0, v4, :cond_232

    const/16 v1, 0x1a

    const-string v0, "getUTCSeconds"

    goto/16 :goto_234

    :cond_9c
    if-ne v0, v11, :cond_232

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_ab

    const/16 v1, 0x24

    const-string/jumbo v0, "setUTCMinutes"

    goto/16 :goto_234

    :cond_ab
    if-ne v0, v4, :cond_232

    const/16 v1, 0x22

    const-string/jumbo v0, "setUTCSeconds"

    goto/16 :goto_234

    :pswitch_b4  #0xc
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_c0

    const/4 v1, 0x4

    const-string/jumbo v0, "toDateString"

    goto/16 :goto_234

    :cond_c0
    if-ne v0, v6, :cond_232

    const-string/jumbo v0, "toTimeString"

    const/4 v1, 0x3

    goto/16 :goto_234

    :pswitch_c8  #0xb
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_124

    if-eq v0, v8, :cond_11d

    if-eq v0, v11, :cond_118

    packed-switch v0, :pswitch_data_260

    goto/16 :goto_232

    :pswitch_d9  #0x55
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x72

    if-ne v0, v12, :cond_f5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_ed

    const/16 v1, 0x16

    const-string v0, "getUTCHours"

    goto/16 :goto_234

    :cond_ed
    if-ne v0, v10, :cond_232

    const/16 v1, 0x10

    const-string v0, "getUTCMonth"

    goto/16 :goto_234

    :cond_f5
    if-ne v0, v11, :cond_232

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_104

    const/16 v1, 0x26

    const-string/jumbo v0, "setUTCHours"

    goto/16 :goto_234

    :cond_104
    if-ne v0, v10, :cond_232

    const/16 v1, 0x2a

    const-string/jumbo v0, "setUTCMonth"

    goto/16 :goto_234

    :pswitch_10d  #0x54
    const-string/jumbo v0, "toUTCString"

    goto :goto_120

    :pswitch_111  #0x53
    const/16 v1, 0x2e

    const-string/jumbo v0, "toISOString"

    goto/16 :goto_234

    :cond_118
    const/4 v1, 0x1

    const-string v0, "constructor"

    goto/16 :goto_234

    :cond_11d
    const-string/jumbo v0, "toGMTString"

    :goto_120
    const/16 v1, 0x8

    goto/16 :goto_234

    :cond_124
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_130

    const/16 v1, 0xd

    const-string v0, "getFullYear"

    goto/16 :goto_234

    :cond_130
    if-ne v0, v11, :cond_232

    const/16 v1, 0x2b

    const-string v0, "setFullYear"

    goto/16 :goto_234

    :pswitch_138  #0xa
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_153

    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_14a

    const/16 v1, 0x17

    const-string v0, "getMinutes"

    goto/16 :goto_234

    :cond_14a
    if-ne v0, v11, :cond_232

    const/16 v1, 0x23

    const-string/jumbo v0, "setMinutes"

    goto/16 :goto_234

    :cond_153
    if-ne v0, v4, :cond_16a

    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_161

    const/16 v1, 0x19

    const-string v0, "getSeconds"

    goto/16 :goto_234

    :cond_161
    if-ne v0, v11, :cond_232

    const/16 v1, 0x21

    const-string/jumbo v0, "setSeconds"

    goto/16 :goto_234

    :cond_16a
    const/16 v1, 0x55

    if-ne v0, v1, :cond_232

    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_17a

    const/16 v1, 0x12

    const-string v0, "getUTCDate"

    goto/16 :goto_234

    :cond_17a
    if-ne v0, v11, :cond_232

    const/16 v1, 0x28

    const-string/jumbo v0, "setUTCDate"

    goto/16 :goto_234

    :pswitch_183  #0x9
    const/16 v1, 0x14

    const-string v0, "getUTCDay"

    goto/16 :goto_234

    :pswitch_189  #0x8
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x48

    if-eq v0, v2, :cond_1bc

    if-eq v0, v8, :cond_1a7

    const/16 v2, 0x6f

    if-eq v0, v2, :cond_1a0

    if-eq v0, v10, :cond_19b

    goto/16 :goto_232

    :cond_19b
    const-string/jumbo v0, "toString"

    goto/16 :goto_234

    :cond_1a0
    const-string/jumbo v0, "toSource"

    const/16 v1, 0x9

    goto/16 :goto_234

    :cond_1a7
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_1b3

    const/16 v1, 0xf

    const-string v0, "getMonth"

    goto/16 :goto_234

    :cond_1b3
    if-ne v0, v11, :cond_232

    const/16 v1, 0x29

    const-string/jumbo v0, "setMonth"

    goto/16 :goto_234

    :cond_1bc
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_1c8

    const/16 v1, 0x15

    const-string v0, "getHours"

    goto/16 :goto_234

    :cond_1c8
    if-ne v0, v11, :cond_232

    const/16 v1, 0x25

    const-string v0, "setHours"

    goto/16 :goto_234

    :pswitch_1d0  #0x7
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_20d

    if-eq v0, v6, :cond_1fa

    const/16 v1, 0x59

    if-eq v0, v1, :cond_1e7

    const/16 v1, 0x75

    if-eq v0, v1, :cond_1e1

    goto :goto_232

    :cond_1e1
    const/16 v1, 0xa

    const-string/jumbo v0, "valueOf"

    goto :goto_234

    :cond_1e7
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_1f2

    const/16 v1, 0xc

    const-string v0, "getYear"

    goto :goto_234

    :cond_1f2
    if-ne v0, v11, :cond_232

    const/16 v1, 0x2d

    const-string/jumbo v0, "setYear"

    goto :goto_234

    :cond_1fa
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_205

    const/16 v1, 0xb

    const-string v0, "getTime"

    goto :goto_234

    :cond_205
    if-ne v0, v11, :cond_232

    const/16 v1, 0x1e

    const-string/jumbo v0, "setTime"

    goto :goto_234

    :cond_20d
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_218

    const/16 v1, 0x11

    const-string v0, "getDate"

    goto :goto_234

    :cond_218
    if-ne v0, v11, :cond_232

    const/16 v1, 0x27

    const-string v0, "setDate"

    goto :goto_234

    :pswitch_21f  #0x6
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_22a

    const/16 v1, 0x13

    const-string v0, "getDay"

    goto :goto_234

    :cond_22a
    if-ne v0, v10, :cond_232

    const/16 v1, 0x2f

    const-string/jumbo v0, "toJSON"

    goto :goto_234

    :cond_232
    :goto_232
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_234
    if-eqz v0, :cond_23f

    if-eq v0, p1, :cond_23f

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23f

    goto :goto_240

    :cond_23f
    move v13, v1

    :goto_240
    return v13

    nop

    :pswitch_data_242
    .packed-switch 0x6
        :pswitch_21f  #00000006
        :pswitch_1d0  #00000007
        :pswitch_189  #00000008
        :pswitch_183  #00000009
        :pswitch_138  #0000000a
        :pswitch_c8  #0000000b
        :pswitch_b4  #0000000c
        :pswitch_82  #0000000d
        :pswitch_65  #0000000e
        :pswitch_50  #0000000f
        :pswitch_1d  #00000010
        :pswitch_4a  #00000011
        :pswitch_1f  #00000012
    .end packed-switch

    :pswitch_data_260
    .packed-switch 0x53
        :pswitch_111  #00000053
        :pswitch_10d  #00000054
        :pswitch_d9  #00000055
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Date"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    if-nez p1, :cond_4

    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    :cond_4
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getJSTimeValue()D
    .registers 3

    iget-wide v0, p0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-wide v0
.end method

.method protected initPrototypeId(I)V
    .registers 7

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_ce

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12  #0x2f
    const-string/jumbo v0, "toJSON"

    goto :goto_5e

    :pswitch_16  #0x2e
    const-string/jumbo v0, "toISOString"

    goto/16 :goto_c7

    :pswitch_1b  #0x2d
    const-string/jumbo v0, "setYear"

    goto :goto_5e

    :pswitch_1f  #0x2c
    const-string/jumbo v0, "setUTCFullYear"

    goto :goto_46

    :pswitch_23  #0x2b
    const-string v0, "setFullYear"

    goto :goto_46

    :pswitch_26  #0x2a
    const-string/jumbo v0, "setUTCMonth"

    goto :goto_50

    :pswitch_2a  #0x29
    const-string/jumbo v0, "setMonth"

    goto :goto_50

    :pswitch_2e  #0x28
    const-string/jumbo v0, "setUTCDate"

    goto :goto_5e

    :pswitch_32  #0x27
    const-string v0, "setDate"

    goto :goto_5e

    :pswitch_35  #0x26
    const-string/jumbo v1, "setUTCHours"

    goto :goto_3b

    :pswitch_39  #0x25
    const-string v1, "setHours"

    :goto_3b
    move-object v0, v1

    const/4 v4, 0x4

    goto/16 :goto_c7

    :pswitch_3f  #0x24
    const-string/jumbo v0, "setUTCMinutes"

    goto :goto_46

    :pswitch_43  #0x23
    const-string/jumbo v0, "setMinutes"

    :goto_46
    const/4 v4, 0x3

    goto/16 :goto_c7

    :pswitch_49  #0x22
    const-string/jumbo v0, "setUTCSeconds"

    goto :goto_50

    :pswitch_4d  #0x21
    const-string/jumbo v0, "setSeconds"

    :goto_50
    const/4 v4, 0x2

    goto/16 :goto_c7

    :pswitch_53  #0x20
    const-string/jumbo v0, "setUTCMilliseconds"

    goto :goto_5e

    :pswitch_57  #0x1f
    const-string/jumbo v0, "setMilliseconds"

    goto :goto_5e

    :pswitch_5b  #0x1e
    const-string/jumbo v0, "setTime"

    :goto_5e
    const/4 v4, 0x1

    goto/16 :goto_c7

    :pswitch_61  #0x1d
    const-string v0, "getTimezoneOffset"

    goto/16 :goto_c7

    :pswitch_65  #0x1c
    const-string v0, "getUTCMilliseconds"

    goto/16 :goto_c7

    :pswitch_69  #0x1b
    const-string v0, "getMilliseconds"

    goto/16 :goto_c7

    :pswitch_6d  #0x1a
    const-string v0, "getUTCSeconds"

    goto/16 :goto_c7

    :pswitch_71  #0x19
    const-string v0, "getSeconds"

    goto :goto_c7

    :pswitch_74  #0x18
    const-string v0, "getUTCMinutes"

    goto :goto_c7

    :pswitch_77  #0x17
    const-string v0, "getMinutes"

    goto :goto_c7

    :pswitch_7a  #0x16
    const-string v0, "getUTCHours"

    goto :goto_c7

    :pswitch_7d  #0x15
    const-string v0, "getHours"

    goto :goto_c7

    :pswitch_80  #0x14
    const-string v0, "getUTCDay"

    goto :goto_c7

    :pswitch_83  #0x13
    const-string v0, "getDay"

    goto :goto_c7

    :pswitch_86  #0x12
    const-string v0, "getUTCDate"

    goto :goto_c7

    :pswitch_89  #0x11
    const-string v0, "getDate"

    goto :goto_c7

    :pswitch_8c  #0x10
    const-string v0, "getUTCMonth"

    goto :goto_c7

    :pswitch_8f  #0xf
    const-string v0, "getMonth"

    goto :goto_c7

    :pswitch_92  #0xe
    const-string v0, "getUTCFullYear"

    goto :goto_c7

    :pswitch_95  #0xd
    const-string v0, "getFullYear"

    goto :goto_c7

    :pswitch_98  #0xc
    const-string v0, "getYear"

    goto :goto_c7

    :pswitch_9b  #0xb
    const-string v0, "getTime"

    goto :goto_c7

    :pswitch_9e  #0xa
    const-string/jumbo v0, "valueOf"

    goto :goto_c7

    :pswitch_a2  #0x9
    const-string/jumbo v0, "toSource"

    goto :goto_c7

    :pswitch_a6  #0x8
    const-string/jumbo v0, "toUTCString"

    goto :goto_c7

    :pswitch_aa  #0x7
    const-string/jumbo v0, "toLocaleDateString"

    goto :goto_c7

    :pswitch_ae  #0x6
    const-string/jumbo v0, "toLocaleTimeString"

    goto :goto_c7

    :pswitch_b2  #0x5
    const-string/jumbo v0, "toLocaleString"

    goto :goto_c7

    :pswitch_b6  #0x4
    const-string/jumbo v0, "toDateString"

    goto :goto_c7

    :pswitch_ba  #0x3
    const-string/jumbo v0, "toTimeString"

    goto :goto_c7

    :pswitch_be  #0x2
    const-string/jumbo v0, "toString"

    goto :goto_c7

    :pswitch_c2  #0x1
    const/4 v0, 0x7

    const-string v1, "constructor"

    move-object v0, v1

    const/4 v4, 0x7

    :goto_c7
    sget-object v1, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0, v4}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    nop

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_c2  #00000001
        :pswitch_be  #00000002
        :pswitch_ba  #00000003
        :pswitch_b6  #00000004
        :pswitch_b2  #00000005
        :pswitch_ae  #00000006
        :pswitch_aa  #00000007
        :pswitch_a6  #00000008
        :pswitch_a2  #00000009
        :pswitch_9e  #0000000a
        :pswitch_9b  #0000000b
        :pswitch_98  #0000000c
        :pswitch_95  #0000000d
        :pswitch_92  #0000000e
        :pswitch_8f  #0000000f
        :pswitch_8c  #00000010
        :pswitch_89  #00000011
        :pswitch_86  #00000012
        :pswitch_83  #00000013
        :pswitch_80  #00000014
        :pswitch_7d  #00000015
        :pswitch_7a  #00000016
        :pswitch_77  #00000017
        :pswitch_74  #00000018
        :pswitch_71  #00000019
        :pswitch_6d  #0000001a
        :pswitch_69  #0000001b
        :pswitch_65  #0000001c
        :pswitch_61  #0000001d
        :pswitch_5b  #0000001e
        :pswitch_57  #0000001f
        :pswitch_53  #00000020
        :pswitch_4d  #00000021
        :pswitch_49  #00000022
        :pswitch_43  #00000023
        :pswitch_3f  #00000024
        :pswitch_39  #00000025
        :pswitch_35  #00000026
        :pswitch_32  #00000027
        :pswitch_2e  #00000028
        :pswitch_2a  #00000029
        :pswitch_26  #0000002a
        :pswitch_23  #0000002b
        :pswitch_1f  #0000002c
        :pswitch_1b  #0000002d
        :pswitch_16  #0000002e
        :pswitch_12  #0000002f
    .end packed-switch
.end method
