.class public final Ljj$/time/chrono/JapaneseEra;
.super Ljava/lang/Object;
.source "JapaneseEra.java"

# interfaces
.implements Ljj$/time/chrono/Era;
.implements Ljava/io/Serializable;


# static fields
.field static final ERA_OFFSET:I = 0x2

.field public static final HEISEI:Ljj$/time/chrono/JapaneseEra;

.field private static final KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

.field public static final MEIJI:Ljj$/time/chrono/JapaneseEra;

.field private static final N_ERA_CONSTANTS:I

.field public static final REIWA:Ljj$/time/chrono/JapaneseEra;

.field public static final SHOWA:Ljj$/time/chrono/JapaneseEra;

.field public static final TAISHO:Ljj$/time/chrono/JapaneseEra;

.field private static final serialVersionUID:J = 0x145a0d680453ed8aL


# instance fields
.field private final transient abbreviation:Ljava/lang/String;

.field private final transient eraValue:I

.field private final transient name:Ljava/lang/String;

.field private final transient since:Ljj$/time/LocalDate;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Ljj$/time/chrono/JapaneseEra;

    const/16 v1, 0x74c

    const/4 v2, 0x1

    invoke-static {v1, v2, v2}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v1

    const-string v3, "Meiji"

    const-string v4, "M"

    const/4 v5, -0x1

    invoke-direct {v0, v5, v1, v3, v4}, Ljj$/time/chrono/JapaneseEra;-><init>(ILjj$/time/LocalDate;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljj$/time/chrono/JapaneseEra;->MEIJI:Ljj$/time/chrono/JapaneseEra;

    new-instance v0, Ljj$/time/chrono/JapaneseEra;

    const/4 v1, 0x7

    const/16 v3, 0x1e

    const/16 v4, 0x778

    invoke-static {v4, v1, v3}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v1

    const-string v3, "Taisho"

    const-string v4, "T"

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1, v3, v4}, Ljj$/time/chrono/JapaneseEra;-><init>(ILjj$/time/LocalDate;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljj$/time/chrono/JapaneseEra;->TAISHO:Ljj$/time/chrono/JapaneseEra;

    new-instance v0, Ljj$/time/chrono/JapaneseEra;

    const/16 v1, 0xc

    const/16 v3, 0x19

    const/16 v4, 0x786

    invoke-static {v4, v1, v3}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v1

    const-string v3, "Showa"

    const-string v4, "S"

    invoke-direct {v0, v2, v1, v3, v4}, Ljj$/time/chrono/JapaneseEra;-><init>(ILjj$/time/LocalDate;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljj$/time/chrono/JapaneseEra;->SHOWA:Ljj$/time/chrono/JapaneseEra;

    new-instance v0, Ljj$/time/chrono/JapaneseEra;

    const/16 v1, 0x7c5

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v1

    const-string v3, "Heisei"

    const-string v4, "H"

    const/4 v6, 0x2

    invoke-direct {v0, v6, v1, v3, v4}, Ljj$/time/chrono/JapaneseEra;-><init>(ILjj$/time/LocalDate;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljj$/time/chrono/JapaneseEra;->HEISEI:Ljj$/time/chrono/JapaneseEra;

    new-instance v0, Ljj$/time/chrono/JapaneseEra;

    const/16 v1, 0x7e3

    const/4 v3, 0x5

    invoke-static {v1, v3, v2}, Ljj$/time/LocalDate;->of(III)Ljj$/time/LocalDate;

    move-result-object v1

    const-string v3, "Reiwa"

    const-string v4, "R"

    const/4 v7, 0x3

    invoke-direct {v0, v7, v1, v3, v4}, Ljj$/time/chrono/JapaneseEra;-><init>(ILjj$/time/LocalDate;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljj$/time/chrono/JapaneseEra;->REIWA:Ljj$/time/chrono/JapaneseEra;

    sget-object v0, Ljj$/time/chrono/JapaneseEra;->REIWA:Ljj$/time/chrono/JapaneseEra;

    invoke-virtual {v0}, Ljj$/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    add-int/2addr v0, v6

    sput v0, Ljj$/time/chrono/JapaneseEra;->N_ERA_CONSTANTS:I

    sget v0, Ljj$/time/chrono/JapaneseEra;->N_ERA_CONSTANTS:I

    new-array v0, v0, [Ljj$/time/chrono/JapaneseEra;

    sput-object v0, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    sget-object v0, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    sget-object v1, Ljj$/time/chrono/JapaneseEra;->MEIJI:Ljj$/time/chrono/JapaneseEra;

    aput-object v1, v0, v5

    sget-object v0, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    sget-object v1, Ljj$/time/chrono/JapaneseEra;->TAISHO:Ljj$/time/chrono/JapaneseEra;

    aput-object v1, v0, v2

    sget-object v0, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    sget-object v1, Ljj$/time/chrono/JapaneseEra;->SHOWA:Ljj$/time/chrono/JapaneseEra;

    aput-object v1, v0, v6

    sget-object v0, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    sget-object v1, Ljj$/time/chrono/JapaneseEra;->HEISEI:Ljj$/time/chrono/JapaneseEra;

    aput-object v1, v0, v7

    sget-object v0, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    const/4 v1, 0x4

    sget-object v2, Ljj$/time/chrono/JapaneseEra;->REIWA:Ljj$/time/chrono/JapaneseEra;

    aput-object v2, v0, v1

    return-void
.end method

.method private constructor <init>(ILjj$/time/LocalDate;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljj$/time/chrono/JapaneseEra;->eraValue:I

    iput-object p2, p0, Ljj$/time/chrono/JapaneseEra;->since:Ljj$/time/LocalDate;

    iput-object p3, p0, Ljj$/time/chrono/JapaneseEra;->name:Ljava/lang/String;

    iput-object p4, p0, Ljj$/time/chrono/JapaneseEra;->abbreviation:Ljava/lang/String;

    return-void
.end method

.method static from(Ljj$/time/LocalDate;)Ljj$/time/chrono/JapaneseEra;
    .registers 4

    sget-object v0, Ljj$/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljj$/time/LocalDate;

    invoke-virtual {p0, v0}, Ljj$/time/LocalDate;->isBefore(Ljj$/time/chrono/ChronoLocalDate;)Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_1f

    sget-object v1, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    aget-object v1, v1, v0

    iget-object v2, v1, Ljj$/time/chrono/JapaneseEra;->since:Ljj$/time/LocalDate;

    invoke-virtual {p0, v2}, Ljj$/time/LocalDate;->compareTo(Ljj$/time/chrono/ChronoLocalDate;)I

    move-result v2

    if-ltz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1f
    const/4 v0, 0x0

    return-object v0

    :cond_21
    new-instance v0, Ljj$/time/DateTimeException;

    const-string v1, "JapaneseDate before Meiji 6 are not supported"

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getCurrentEra()Ljj$/time/chrono/JapaneseEra;
    .registers 2

    sget-object v0, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    sget-object v1, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static of(I)Ljj$/time/chrono/JapaneseEra;
    .registers 5

    invoke-static {p0}, Ljj$/time/chrono/JapaneseEra;->ordinal(I)I

    move-result v0

    if-ltz v0, :cond_10

    sget-object v1, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    sget-object v1, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    aget-object v1, v1, v0

    return-object v1

    :cond_10
    new-instance v1, Ljj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid era: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static ordinal(I)I
    .registers 2

    add-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/chrono/JapaneseEra;
    .registers 3

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-static {v0}, Ljj$/time/chrono/JapaneseEra;->of(I)Ljj$/time/chrono/JapaneseEra;

    move-result-object v1

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static shortestDaysOfYear()J
    .registers 8

    sget-object v0, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljj$/time/temporal/ChronoField;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/temporal/ValueRange;->getSmallestMaximum()J

    move-result-wide v0

    sget-object v2, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_40

    aget-object v5, v2, v4

    iget-object v6, v5, Ljj$/time/chrono/JapaneseEra;->since:Ljj$/time/LocalDate;

    invoke-virtual {v6}, Ljj$/time/LocalDate;->lengthOfYear()I

    move-result v6

    iget-object v7, v5, Ljj$/time/chrono/JapaneseEra;->since:Ljj$/time/LocalDate;

    invoke-virtual {v7}, Ljj$/time/LocalDate;->getDayOfYear()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v5}, Ljj$/time/chrono/JapaneseEra;->next()Ljj$/time/chrono/JapaneseEra;

    move-result-object v6

    if-eqz v6, :cond_3d

    invoke-virtual {v5}, Ljj$/time/chrono/JapaneseEra;->next()Ljj$/time/chrono/JapaneseEra;

    move-result-object v6

    iget-object v6, v6, Ljj$/time/chrono/JapaneseEra;->since:Ljj$/time/LocalDate;

    invoke-virtual {v6}, Ljj$/time/LocalDate;->getDayOfYear()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_40
    return-wide v0
.end method

.method static shortestYearsOfEra()J
    .registers 6

    invoke-static {}, Ljj$/time/chrono/JapaneseEra;->getCurrentEra()Ljj$/time/chrono/JapaneseEra;

    move-result-object v0

    iget-object v0, v0, Ljj$/time/chrono/JapaneseEra;->since:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getYear()I

    move-result v0

    const v1, 0x3b9ac9ff

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    sget-object v0, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget-object v0, v0, Ljj$/time/chrono/JapaneseEra;->since:Ljj$/time/LocalDate;

    invoke-virtual {v0}, Ljj$/time/LocalDate;->getYear()I

    move-result v0

    const/4 v2, 0x1

    :goto_1c
    sget-object v3, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    array-length v3, v3

    if-ge v2, v3, :cond_3b

    sget-object v3, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    aget-object v3, v3, v2

    iget-object v4, v3, Ljj$/time/chrono/JapaneseEra;->since:Ljj$/time/LocalDate;

    invoke-virtual {v4}, Ljj$/time/LocalDate;->getYear()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v5, v3, Ljj$/time/chrono/JapaneseEra;->since:Ljj$/time/LocalDate;

    invoke-virtual {v5}, Ljj$/time/LocalDate;->getYear()I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_3b
    int-to-long v2, v1

    return-wide v2
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/time/chrono/JapaneseEra;
    .registers 6

    const-string v0, "japaneseEra"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljj$/time/chrono/JapaneseEra;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    return-object v3

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "japaneseEra is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static values()[Ljj$/time/chrono/JapaneseEra;
    .registers 2

    sget-object v0, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    sget-object v1, Ljj$/time/chrono/JapaneseEra;->KNOWN_ERAS:[Ljj$/time/chrono/JapaneseEra;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/chrono/JapaneseEra;

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/chrono/Ser;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Ljj$/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public synthetic adjustInto(Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/Era$-CC;->$default$adjustInto(Ljj$/time/chrono/Era;Ljj$/time/temporal/Temporal;)Ljj$/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method

.method public synthetic get(Ljj$/time/temporal/TemporalField;)I
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/Era$-CC;->$default$get(Ljj$/time/chrono/Era;Ljj$/time/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method getAbbreviation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/JapaneseEra;->abbreviation:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName(Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    sget v1, Ljj$/time/chrono/JapaneseEra;->N_ERA_CONSTANTS:I

    add-int/lit8 v1, v1, -0x2

    if-le v0, v1, :cond_21

    const-string v0, "locale"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljj$/time/format/TextStyle;->asNormal()Ljj$/time/format/TextStyle;

    move-result-object v0

    sget-object v1, Ljj$/time/format/TextStyle;->NARROW:Ljj$/time/format/TextStyle;

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseEra;->getAbbreviation()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1c
    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseEra;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, p1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendText(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Ljj$/time/chrono/JapaneseChronology;->INSTANCE:Ljj$/time/chrono/JapaneseChronology;

    invoke-virtual {v0, v1}, Ljj$/time/format/DateTimeFormatter;->withChronology(Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Ljj$/time/chrono/JapaneseEra;->MEIJI:Ljj$/time/chrono/JapaneseEra;

    if-ne p0, v1, :cond_3d

    sget-object v1, Ljj$/time/chrono/JapaneseDate;->MEIJI_6_ISODATE:Ljj$/time/LocalDate;

    goto :goto_3f

    :cond_3d
    iget-object v1, p0, Ljj$/time/chrono/JapaneseEra;->since:Ljj$/time/LocalDate;

    :goto_3f
    invoke-virtual {v0, v1}, Ljj$/time/format/DateTimeFormatter;->format(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLong(Ljj$/time/temporal/TemporalField;)J
    .registers 4

    invoke-static {p0, p1}, Ljj$/time/chrono/Era$-CC;->$default$getLong(Ljj$/time/chrono/Era;Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    return-wide v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/JapaneseEra;->name:Ljava/lang/String;

    return-object v0
.end method

.method getSince()Ljj$/time/LocalDate;
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/JapaneseEra;->since:Ljj$/time/LocalDate;

    return-object v0
.end method

.method public getValue()I
    .registers 2

    iget v0, p0, Ljj$/time/chrono/JapaneseEra;->eraValue:I

    return v0
.end method

.method public synthetic isSupported(Ljj$/time/temporal/TemporalField;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/Era$-CC;->$default$isSupported(Ljj$/time/chrono/Era;Ljj$/time/temporal/TemporalField;)Z

    move-result p1

    return p1
.end method

.method next()Ljj$/time/chrono/JapaneseEra;
    .registers 2

    invoke-static {}, Ljj$/time/chrono/JapaneseEra;->getCurrentEra()Ljj$/time/chrono/JapaneseEra;

    move-result-object v0

    if-ne p0, v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    iget v0, p0, Ljj$/time/chrono/JapaneseEra;->eraValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljj$/time/chrono/JapaneseEra;->of(I)Ljj$/time/chrono/JapaneseEra;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public synthetic query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/Era$-CC;->$default$query(Ljj$/time/chrono/Era;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 4

    sget-object v0, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_d

    sget-object v0, Ljj$/time/chrono/JapaneseChronology;->INSTANCE:Ljj$/time/chrono/JapaneseChronology;

    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1}, Ljj$/time/chrono/JapaneseChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-static {p0, p1}, Ljj$/time/chrono/Era$-CC;->$default$range(Ljj$/time/chrono/Era;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseEra;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3

    invoke-virtual {p0}, Ljj$/time/chrono/JapaneseEra;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method
