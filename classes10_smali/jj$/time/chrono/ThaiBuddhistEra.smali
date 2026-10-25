.class public final enum Ljj$/time/chrono/ThaiBuddhistEra;
.super Ljava/lang/Enum;
.source "ThaiBuddhistEra.java"

# interfaces
.implements Ljj$/time/chrono/Era;


# static fields
.field private static final synthetic $VALUES:[Ljj$/time/chrono/ThaiBuddhistEra;

.field public static final enum BE:Ljj$/time/chrono/ThaiBuddhistEra;

.field public static final enum BEFORE_BE:Ljj$/time/chrono/ThaiBuddhistEra;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljj$/time/chrono/ThaiBuddhistEra;

    const-string v1, "BEFORE_BE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/time/chrono/ThaiBuddhistEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/chrono/ThaiBuddhistEra;->BEFORE_BE:Ljj$/time/chrono/ThaiBuddhistEra;

    new-instance v0, Ljj$/time/chrono/ThaiBuddhistEra;

    const-string v1, "BE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/time/chrono/ThaiBuddhistEra;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/chrono/ThaiBuddhistEra;->BE:Ljj$/time/chrono/ThaiBuddhistEra;

    const/4 v0, 0x2

    new-array v0, v0, [Ljj$/time/chrono/ThaiBuddhistEra;

    sget-object v1, Ljj$/time/chrono/ThaiBuddhistEra;->BEFORE_BE:Ljj$/time/chrono/ThaiBuddhistEra;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/chrono/ThaiBuddhistEra;->BE:Ljj$/time/chrono/ThaiBuddhistEra;

    aput-object v1, v0, v3

    sput-object v0, Ljj$/time/chrono/ThaiBuddhistEra;->$VALUES:[Ljj$/time/chrono/ThaiBuddhistEra;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(I)Ljj$/time/chrono/ThaiBuddhistEra;
    .registers 4

    packed-switch p0, :pswitch_data_22

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

    :pswitch_1c  #0x1
    sget-object v0, Ljj$/time/chrono/ThaiBuddhistEra;->BE:Ljj$/time/chrono/ThaiBuddhistEra;

    return-object v0

    :pswitch_1f  #0x0
    sget-object v0, Ljj$/time/chrono/ThaiBuddhistEra;->BEFORE_BE:Ljj$/time/chrono/ThaiBuddhistEra;

    return-object v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f  #00000000
        :pswitch_1c  #00000001
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/time/chrono/ThaiBuddhistEra;
    .registers 2

    const-class v0, Ljj$/time/chrono/ThaiBuddhistEra;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/ThaiBuddhistEra;

    return-object v0
.end method

.method public static values()[Ljj$/time/chrono/ThaiBuddhistEra;
    .registers 1

    sget-object v0, Ljj$/time/chrono/ThaiBuddhistEra;->$VALUES:[Ljj$/time/chrono/ThaiBuddhistEra;

    invoke-virtual {v0}, [Ljj$/time/chrono/ThaiBuddhistEra;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/chrono/ThaiBuddhistEra;

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
    .registers 6

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, p1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendText(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Ljj$/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljj$/time/chrono/ThaiBuddhistChronology;

    invoke-virtual {v0, v1}, Ljj$/time/format/DateTimeFormatter;->withChronology(Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Ljj$/time/chrono/ThaiBuddhistEra;->BE:Ljj$/time/chrono/ThaiBuddhistEra;

    const/4 v2, 0x1

    if-ne p0, v1, :cond_1f

    invoke-static {v2, v2, v2}, Ljj$/time/chrono/ThaiBuddhistDate;->of(III)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v1

    goto :goto_24

    :cond_1f
    const/4 v1, 0x0

    invoke-static {v1, v2, v2}, Ljj$/time/chrono/ThaiBuddhistDate;->of(III)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v1

    :goto_24
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

    invoke-virtual {p0}, Ljj$/time/chrono/ThaiBuddhistEra;->ordinal()I

    move-result v0

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

.method public synthetic range(Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/Era$-CC;->$default$range(Ljj$/time/chrono/Era;Ljj$/time/temporal/TemporalField;)Ljj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method
