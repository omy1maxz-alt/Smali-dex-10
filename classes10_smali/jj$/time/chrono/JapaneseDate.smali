.class public final Ljj$/time/chrono/JapaneseDate;
.super Ljj$/time/chrono/ChronoLocalDateImpl;
.source "JapaneseDate.java"

# interfaces
.implements Ljj$/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# static fields
.field static final MEIJI_6_ISODATE:Ljj$/time/LocalDate;

.field private static final serialVersionUID:J = -0x43cbddbf9310f03L


# instance fields
.field private transient era:Ljj$/time/chrono/JapaneseEra;

.field private final transient isoDate:Ljj$/time/LocalDate;

.field private transient yearOfEra:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x751

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljj$/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljj$/time/LocalDate;

    return-void
.end method

.method constructor <init>(Ljj$/time/LocalDate;)V
    .registers 4

    invoke-direct {p0}, Ljj$/time/chrono/ChronoLocalDateImpl;-><init>()V

    sget-object v0, Ljj$/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljj$/time/LocalDate;

    invoke-virtual {p1, v0}, Ljj$/time/LocalDate;->isBefore(Ljj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {p1}, Ljj$/time/chrono/JapaneseEra;->from(Ljj$/time/LocalDate;)Ljj$/time/chrono/JapaneseEra;

    move-result-object v0

    iput-object v0, p0, Ljj$/time/chrono/JapaneseDate;->era:Ljj$/time/chrono/JapaneseEra;

    invoke-virtual {p1}, Ljj$/time/LocalDate;->getYear()I

    move-result v0

    iget-object v1, p0, Ljj$/time/chrono/JapaneseDate;->era:Ljj$/time/chrono/JapaneseEra;

    invoke-virtual {v1}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/LocalDate;->getYear()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$/time/chrono/JapaneseDate;->yearOfEra:I

    iput-object p1, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    return-void

    :cond_27
    new-instance v0, Ljj$/time/DateTimeException;

    const-string v1, "JapaneseDate before Meiji 6 is not supported"

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljj$/time/chrono/JapaneseEra;ILjj$/time/LocalDate;)V
    .registers 6

    invoke-direct {p0}, Ljj$/time/chrono/ChronoLocalDateImpl;-><init>()V

    sget-object v0, Ljj$/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljj$/time/LocalDate;

    invoke-virtual {p3, v0}, Ljj$/time/LocalDate;->isBefore(Ljj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_12

    iput-object p1, p0, Ljj$/time/chrono/JapaneseDate;->era:Ljj$/time/chrono/JapaneseEra;

    iput p2, p0, Ljj$/time/chrono/JapaneseDate;->yearOfEra:I

    iput-object p3, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    return-void

    :cond_12
    new-instance v0, Ljj$/time/DateTimeException;

    const-string v1, "JapaneseDate before Meiji 6 is not supported"

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/JapaneseDate;
    .registers 2

    sget-object v0, Ljj$/time/chrono/JapaneseChronology;->INSTANCE:Ljj$/time/chrono/JapaneseChronology;

    invoke-virtual {v0, p0}, Ljj$/time/chrono/JapaneseChronology;->date(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static now()Ljj$/time/chrono/JapaneseDate;
    .registers 1

    invoke-static {}, Ljj$/time/Clock;->systemDefaultZone()Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/chrono/JapaneseDate;->now(Ljj$/time/Clock;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljj$/time/Clock;)Ljj$/time/chrono/JapaneseDate;
    .registers 3

    new-instance v0, Ljj$/time/chrono/JapaneseDate;

    invoke-static {p0}, Ljj$/time/LocalDate;->now(Ljj$/time/Clock;)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/chrono/JapaneseDate;-><init>(Ljj$/time/LocalDate;)V

    return-object v0
.end method

.method public static now(Ljj$/time/ZoneId;)Ljj$/time/chrono/JapaneseDate;
    .registers 2

    invoke-static {p0}, Ljj$/time/Clock;->system(Ljj$/time/ZoneId;)Ljj$/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/chrono/JapaneseDate;->now(Ljj$/time/Clock;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Ljj$/time/chrono/JapaneseDate;
    .registers 5

    new-instance v0, Ljj$/time/chrono/JapaneseDate;

    invoke-static {p0, p1, p2}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/chrono/JapaneseDate;-><init>(Ljj$/time/LocalDate;)V

    return-object v0
.end method

.method public static of(Ljj$/time/chrono/JapaneseEra;III)Ljj$/time/chrono/JapaneseDate;
    .registers 7

    const-string v0, "era"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getYear()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p2, p3}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/LocalDate;->isBefore(Ljj$/time/chrono/ChronoLocalDate;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {v0}, Ljj$/time/chrono/JapaneseEra;->from(Ljj$/time/LocalDate;)Ljj$/time/chrono/JapaneseEra;

    move-result-object v1

    if-ne p0, v1, :cond_2a

    new-instance v1, Ljj$/time/chrono/JapaneseDate;

    invoke-direct {v1, p0, p1, v0}, Ljj$/time/chrono/JapaneseDate;-><init>(Ljj$/time/chrono/JapaneseEra;ILjj$/time/LocalDate;)V

    return-object v1

    :cond_2a
    new-instance v1, Ljj$/time/DateTimeException;

    const-string v2, "year, month, and day not valid for Era"

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static ofYearDay(Ljj$/time/chrono/JapaneseEra;II)Ljj$/time/chrono/JapaneseDate;
    .registers 6

    const-string v0, "era"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_20

    nop

    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/LocalDate;->getDayOfYear()I

    move-result v2

    add-int/2addr v2, p2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljj$/time/LocalDate;->ofYearDay(II)Ljj$/time/LocalDate;

    move-result-object v0

    goto :goto_2e

    :cond_20
    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/LocalDate;->getYear()I

    move-result v1

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    invoke-static {v1, p2}, Ljj$/time/LocalDate;->ofYearDay(II)Ljj$/time/LocalDate;

    move-result-object v0

    :goto_2e
    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/LocalDate;->isBefore(Ljj$/time/chrono/ChronoLocalDate;)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-static {v0}, Ljj$/time/chrono/JapaneseEra;->from(Ljj$/time/LocalDate;)Ljj$/time/chrono/JapaneseEra;

    move-result-object v1

    if-ne p0, v1, :cond_44

    new-instance v1, Ljj$/time/chrono/JapaneseDate;

    invoke-direct {v1, p0, p1, v0}, Ljj$/time/chrono/JapaneseDate;-><init>(Ljj$/time/chrono/JapaneseEra;ILjj$/time/LocalDate;)V

    return-object v1

    :cond_44
    new-instance v1, Ljj$/time/DateTimeException;

    const-string v2, "Invalid parameters"

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/chrono/JapaneseDate;
    .registers 5

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    sget-object v3, Ljj$/time/chrono/JapaneseChronology;->INSTANCE:Ljj$/time/chrono/JapaneseChronology;

    invoke-virtual {v3, v0, v1, v2}, Ljj$/time/chrono/JapaneseChronology;->date(III)Ljj$/time/chrono/JapaneseDate;

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

.method private with(Ljj$/time/LocalDate;)Ljj$/time/chrono/JapaneseDate;
    .registers 3

    iget-object v0, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {p1, v0}, Ljj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p0

    goto :goto_f

    :cond_a
    new-instance v0, Ljj$/time/chrono/JapaneseDate;

    invoke-direct {v0, p1}, Ljj$/time/chrono/JapaneseDate;-><init>(Ljj$/time/LocalDate;)V

    :goto_f
    return-object v0
.end method

.method private withYear(I)Ljj$/time/chrono/JapaneseDate;
    .registers 3

    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseDate;->getEra()Ljj$/time/chrono/JapaneseEra;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljj$/time/chrono/JapaneseDate;->withYear(Ljj$/time/chrono/JapaneseEra;I)Ljj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method private withYear(Ljj$/time/chrono/JapaneseEra;I)Ljj$/time/chrono/JapaneseDate;
    .registers 5

    sget-object v0, Ljj$/time/chrono/JapaneseChronology;->INSTANCE:Ljj$/time/chrono/JapaneseChronology;

    invoke-virtual {v0, p1, p2}, Ljj$/time/chrono/JapaneseChronology;->prolepticYear(Ljj$/time/chrono/Era;I)I

    move-result v0

    iget-object v1, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v1, v0}, Ljj$/time/LocalDate;->withYear(I)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {p0, v1}, Ljj$/time/chrono/JapaneseDate;->with(Ljj$/time/LocalDate;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/chrono/Ser;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Ljj$/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final atTime(Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 3

    invoke-super {p0, p1}, Ljj$/time/chrono/ChronoLocalDateImpl;->atTime(Ljj$/time/LocalTime;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Ljj$/time/chrono/JapaneseDate;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/JapaneseDate;

    iget-object v1, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    iget-object v2, v0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v1, v2}, Ljj$/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getChronology()Ljj$/time/chrono/Chronology;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseDate;->getChronology()Ljj$/time/chrono/JapaneseChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Ljj$/time/chrono/JapaneseChronology;
    .registers 2

    sget-object v0, Ljj$/time/chrono/JapaneseChronology;->INSTANCE:Ljj$/time/chrono/JapaneseChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Ljj$/time/chrono/Era;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseDate;->getEra()Ljj$/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Ljj$/time/chrono/JapaneseEra;
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/JapaneseDate;->era:Ljj$/time/chrono/JapaneseEra;

    return-object v0
.end method

.method public getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 5

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_5f

    sget-object v0, Ljj$/time/chrono/JapaneseDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_64

    iget-object v0, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0

    :pswitch_19  #0x8
    iget-object v0, p0, Ljj$/time/chrono/JapaneseDate;->era:Ljj$/time/chrono/JapaneseEra;

    invoke-virtual {v0}, Ljj$/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :pswitch_21  #0x4, 0x5, 0x6, 0x7
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3a  #0x3
    iget v0, p0, Ljj$/time/chrono/JapaneseDate;->yearOfEra:I

    int-to-long v0, v0

    return-wide v0

    :pswitch_3e  #0x2
    iget v0, p0, Ljj$/time/chrono/JapaneseDate;->yearOfEra:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_57

    iget-object v0, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getDayOfYear()I

    move-result v0

    iget-object v2, p0, Ljj$/time/chrono/JapaneseDate;->era:Ljj$/time/chrono/JapaneseEra;

    invoke-virtual {v2}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/LocalDate;->getDayOfYear()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    :cond_57
    iget-object v0, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getDayOfYear()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_5f
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->getFrom(Ljj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_64
    .packed-switch 0x2
        :pswitch_3e  #00000002
        :pswitch_3a  #00000003
        :pswitch_21  #00000004
        :pswitch_21  #00000005
        :pswitch_21  #00000006
        :pswitch_21  #00000007
        :pswitch_19  #00000008
    .end packed-switch
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseDate;->getChronology()Ljj$/time/chrono/JapaneseChronology;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/chrono/JapaneseChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v1}, Ljj$/time/LocalDate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSupported(Ljj$/time/temporal/TemporalField;)Z
    .registers 4

    sget-object v0, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljj$/time/temporal/ChronoField;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_25

    sget-object v0, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_25

    sget-object v0, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljj$/time/temporal/ChronoField;

    if-eq p1, v0, :cond_25

    sget-object v0, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_12

    goto :goto_25

    :cond_12
    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljj$/time/temporal/TemporalField;->isDateBased()Z

    move-result v0

    return v0

    :cond_1b
    if-eqz p1, :cond_24

    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1

    :cond_25
    :goto_25
    return v1
.end method

.method public lengthOfMonth()I
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .registers 5

    iget-object v0, p0, Ljj$/time/chrono/JapaneseDate;->era:Ljj$/time/chrono/JapaneseEra;

    invoke-virtual {v0}, Ljj$/time/chrono/JapaneseEra;->next()Ljj$/time/chrono/JapaneseEra;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/LocalDate;->getYear()I

    move-result v2

    iget-object v3, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v3}, Ljj$/time/LocalDate;->getYear()I

    move-result v3

    if-ne v2, v3, :cond_23

    invoke-virtual {v0}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljj$/time/LocalDate;->getDayOfYear()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_29

    :cond_23
    iget-object v2, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v2}, Ljj$/time/LocalDate;->lengthOfYear()I

    move-result v2

    :goto_29
    iget v3, p0, Ljj$/time/chrono/JapaneseDate;->yearOfEra:I

    if-ne v3, v1, :cond_39

    iget-object v3, p0, Ljj$/time/chrono/JapaneseDate;->era:Ljj$/time/chrono/JapaneseEra;

    invoke-virtual {v3}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Ljj$/time/LocalDate;->getDayOfYear()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v2, v3

    :cond_39
    return v2
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/JapaneseDate;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/JapaneseDate;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/JapaneseDate;
    .registers 5

    invoke-super {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateImpl;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/JapaneseDate;
    .registers 3

    invoke-super {p0, p1}, Ljj$/time/chrono/ChronoLocalDateImpl;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/JapaneseDate;->minus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/JapaneseDate;->minus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic minusDays(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/JapaneseDate;->minusDays(J)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method minusDays(J)Ljj$/time/chrono/JapaneseDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->minusDays(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method bridge synthetic minusMonths(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/JapaneseDate;->minusMonths(J)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method minusMonths(J)Ljj$/time/chrono/JapaneseDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->minusMonths(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method bridge synthetic minusWeeks(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/JapaneseDate;->minusWeeks(J)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method minusWeeks(J)Ljj$/time/chrono/JapaneseDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->minusWeeks(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method bridge synthetic minusYears(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/JapaneseDate;->minusYears(J)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method minusYears(J)Ljj$/time/chrono/JapaneseDate;
    .registers 4

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->minusYears(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/JapaneseDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/JapaneseDate;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/JapaneseDate;
    .registers 5

    invoke-super {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateImpl;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/JapaneseDate;
    .registers 3

    invoke-super {p0, p1}, Ljj$/time/chrono/ChronoLocalDateImpl;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/JapaneseDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/JapaneseDate;->plus(Ljj$/time/temporal/TemporalAmount;)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic plusDays(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/JapaneseDate;->plusDays(J)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method plusDays(J)Ljj$/time/chrono/JapaneseDate;
    .registers 4

    iget-object v0, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDate;->plusDays(J)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/chrono/JapaneseDate;->with(Ljj$/time/LocalDate;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusMonths(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/JapaneseDate;->plusMonths(J)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method plusMonths(J)Ljj$/time/chrono/JapaneseDate;
    .registers 4

    iget-object v0, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDate;->plusMonths(J)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/chrono/JapaneseDate;->with(Ljj$/time/LocalDate;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusWeeks(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/JapaneseDate;->plusWeeks(J)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method plusWeeks(J)Ljj$/time/chrono/JapaneseDate;
    .registers 4

    iget-object v0, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDate;->plusWeeks(J)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/chrono/JapaneseDate;->with(Ljj$/time/LocalDate;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusYears(J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/JapaneseDate;->plusYears(J)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method plusYears(J)Ljj$/time/chrono/JapaneseDate;
    .registers 4

    iget-object v0, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1, p2}, Ljj$/time/LocalDate;->plusYears(J)Ljj$/time/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/chrono/JapaneseDate;->with(Ljj$/time/LocalDate;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 9

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_7d

    invoke-virtual {p0, p1}, Ljj$/time/chrono/JapaneseDate;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_64

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    sget-object v1, Ljj$/time/chrono/JapaneseDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x1

    packed-switch v1, :pswitch_data_82

    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseDate;->getChronology()Ljj$/time/chrono/JapaneseChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljj$/time/chrono/JapaneseChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_23  #0x3
    iget-object v1, p0, Ljj$/time/chrono/JapaneseDate;->era:Ljj$/time/chrono/JapaneseEra;

    invoke-virtual {v1}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/LocalDate;->getYear()I

    move-result v1

    iget-object v4, p0, Ljj$/time/chrono/JapaneseDate;->era:Ljj$/time/chrono/JapaneseEra;

    invoke-virtual {v4}, Ljj$/time/chrono/JapaneseEra;->next()Ljj$/time/chrono/JapaneseEra;

    move-result-object v4

    if-eqz v4, :cond_46

    invoke-virtual {v4}, Ljj$/time/chrono/JapaneseEra;->getSince()Ljj$/time/LocalDate;

    move-result-object v5

    invoke-virtual {v5}, Ljj$/time/LocalDate;->getYear()I

    move-result v5

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    invoke-static {v2, v3, v5, v6}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    :cond_46
    const v5, 0x3b9ac9ff

    sub-int/2addr v5, v1

    int-to-long v5, v5

    invoke-static {v2, v3, v5, v6}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v2

    return-object v2

    :pswitch_50  #0x2
    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseDate;->lengthOfYear()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :pswitch_5a  #0x1
    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseDate;->lengthOfMonth()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    :cond_64
    new-instance v0, Ljj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    invoke-interface {p1, p0}, Ljj$/time/temporal/TemporalField;->rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_5a  #00000001
        :pswitch_50  #00000002
        :pswitch_23  #00000003
    .end packed-switch
.end method

.method public toEpochDay()J
    .registers 3

    iget-object v0, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljj$/time/chrono/ChronoLocalDateImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J
    .registers 3

    invoke-super {p0, p1, p2}, Ljj$/time/chrono/ChronoLocalDateImpl;->until(Ljj$/time/temporal/Temporal;Ljj$/time/temporal/TemporalUnit;)J

    move-result-wide p1

    return-wide p1
.end method

.method public until(Ljj$/time/chrono/ChronoLocalDate;)Ljj$/time/chrono/ChronoPeriod;
    .registers 7

    iget-object v0, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v0, p1}, Ljj$/time/LocalDate;->until(Ljj$/time/chrono/ChronoLocalDate;)Ljj$/time/Period;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseDate;->getChronology()Ljj$/time/chrono/JapaneseChronology;

    move-result-object v1

    invoke-virtual {v0}, Ljj$/time/Period;->getYears()I

    move-result v2

    invoke-virtual {v0}, Ljj$/time/Period;->getMonths()I

    move-result v3

    invoke-virtual {v0}, Ljj$/time/Period;->getDays()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljj$/time/chrono/JapaneseChronology;->period(III)Ljj$/time/chrono/ChronoPeriod;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/JapaneseDate;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/JapaneseDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/JapaneseDate;
    .registers 3

    invoke-super {p0, p1}, Ljj$/time/chrono/ChronoLocalDateImpl;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/JapaneseDate;

    return-object v0
.end method

.method public with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/JapaneseDate;
    .registers 8

    instance-of v0, p1, Ljj$/time/temporal/ChronoField;

    if-eqz v0, :cond_5a

    move-object v0, p1

    check-cast v0, Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/JapaneseDate;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-nez v3, :cond_10

    return-object p0

    :cond_10
    sget-object v1, Ljj$/time/chrono/JapaneseDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_62

    goto :goto_4f

    :sswitch_1c
    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseDate;->getChronology()Ljj$/time/chrono/JapaneseChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljj$/time/chrono/JapaneseChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v1

    sget-object v2, Ljj$/time/chrono/JapaneseDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_70

    goto :goto_4f

    :sswitch_34
    iget-object v2, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v2, v1}, Ljj$/time/LocalDate;->withYear(I)Ljj$/time/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Ljj$/time/chrono/JapaneseDate;->with(Ljj$/time/LocalDate;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    :sswitch_3f
    invoke-static {v1}, Ljj$/time/chrono/JapaneseEra;->of(I)Ljj$/time/chrono/JapaneseEra;

    move-result-object v2

    iget v3, p0, Ljj$/time/chrono/JapaneseDate;->yearOfEra:I

    invoke-direct {p0, v2, v3}, Ljj$/time/chrono/JapaneseDate;->withYear(Ljj$/time/chrono/JapaneseEra;I)Ljj$/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    :sswitch_4a
    invoke-direct {p0, v1}, Ljj$/time/chrono/JapaneseDate;->withYear(I)Ljj$/time/chrono/JapaneseDate;

    move-result-object v2

    return-object v2

    :goto_4f
    iget-object v1, p0, Ljj$/time/chrono/JapaneseDate;->isoDate:Ljj$/time/LocalDate;

    invoke-virtual {v1, p1, p2, p3}, Ljj$/time/LocalDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/LocalDate;

    move-result-object v1

    invoke-direct {p0, v1}, Ljj$/time/chrono/JapaneseDate;->with(Ljj$/time/LocalDate;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v1

    return-object v1

    :cond_5a
    invoke-super {p0, p1, p2, p3}, Ljj$/time/chrono/ChronoLocalDateImpl;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/JapaneseDate;

    return-object v0

    nop

    :sswitch_data_62
    .sparse-switch
        0x3 -> :sswitch_1c
        0x8 -> :sswitch_1c
        0x9 -> :sswitch_1c
    .end sparse-switch

    :sswitch_data_70
    .sparse-switch
        0x3 -> :sswitch_4a
        0x8 -> :sswitch_3f
        0x9 -> :sswitch_34
    .end sparse-switch
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/chrono/JapaneseDate;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/chrono/JapaneseDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/JapaneseDate;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/JapaneseDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    sget-object v0, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/JapaneseDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/JapaneseDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
