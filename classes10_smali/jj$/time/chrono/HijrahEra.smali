.class public final enum Ljj$/time/chrono/HijrahEra;
.super Ljava/lang/Enum;
.source "HijrahEra.java"

# interfaces
.implements Ljj$/time/chrono/Era;


# static fields
.field private static final synthetic $VALUES:[Ljj$/time/chrono/HijrahEra;

.field public static final enum AH:Ljj$/time/chrono/HijrahEra;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljj$/time/chrono/HijrahEra;

    const-string v1, "AH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/time/chrono/HijrahEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/chrono/HijrahEra;->AH:Ljj$/time/chrono/HijrahEra;

    const/4 v0, 0x1

    new-array v0, v0, [Ljj$/time/chrono/HijrahEra;

    sget-object v1, Ljj$/time/chrono/HijrahEra;->AH:Ljj$/time/chrono/HijrahEra;

    aput-object v1, v0, v2

    sput-object v0, Ljj$/time/chrono/HijrahEra;->$VALUES:[Ljj$/time/chrono/HijrahEra;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(I)Ljj$/time/chrono/HijrahEra;
    .registers 4

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    sget-object v0, Ljj$/time/chrono/HijrahEra;->AH:Ljj$/time/chrono/HijrahEra;

    return-object v0

    :cond_6
    new-instance v0, Ljj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid era: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/time/chrono/HijrahEra;
    .registers 2

    const-class v0, Ljj$/time/chrono/HijrahEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/HijrahEra;

    return-object v0
.end method

.method public static values()[Ljj$/time/chrono/HijrahEra;
    .registers 1

    sget-object v0, Ljj$/time/chrono/HijrahEra;->$VALUES:[Ljj$/time/chrono/HijrahEra;

    invoke-virtual {v0}, [Ljj$/time/chrono/HijrahEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/chrono/HijrahEra;

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

.method public getDisplayName(Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, p1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendText(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Ljj$/time/chrono/HijrahChronology;->INSTANCE:Ljj$/time/chrono/HijrahChronology;

    invoke-virtual {v0, v1}, Ljj$/time/format/DateTimeFormatter;->withChronology(Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Ljj$/time/chrono/HijrahDate;->now()Ljj$/time/chrono/HijrahDate;

    move-result-object v1

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

.method public getValue()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic isSupported(Ljj$/time/temporal/TemporalField;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/Era$-CC;->$default$isSupported(Ljj$/time/chrono/Era;Ljj$/time/temporal/TemporalField;)Z

    move-result p1

    return p1
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

    if-ne p1, v0, :cond_b

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, v0, v1}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-static {p0, p1}, Ljj$/time/chrono/Era$-CC;->$default$range(Ljj$/time/chrono/Era;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method
