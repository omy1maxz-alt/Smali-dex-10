.class final enum Ljj$/time/temporal/JulianFields$Field;
.super Ljava/lang/Enum;
.source "JulianFields.java"

# interfaces
.implements Ljj$/time/temporal/TemporalField;


# static fields
.field private static final synthetic $VALUES:[Ljj$/time/temporal/JulianFields$Field;

.field public static final enum JULIAN_DAY:Ljj$/time/temporal/JulianFields$Field;

.field public static final enum MODIFIED_JULIAN_DAY:Ljj$/time/temporal/JulianFields$Field;

.field public static final enum RATA_DIE:Ljj$/time/temporal/JulianFields$Field;

.field private static final serialVersionUID:J = -0x681b1f35efa83fd4L


# instance fields
.field private final transient baseUnit:Ljj$/time/temporal/TemporalUnit;

.field private final transient name:Ljava/lang/String;

.field private final transient offset:J

.field private final transient range:Ljj$/time/temporal/ValueRange;

.field private final transient rangeUnit:Ljj$/time/temporal/TemporalUnit;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Ljj$/time/temporal/JulianFields$Field;

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    sget-object v5, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    const-wide/32 v6, 0x253d8c

    const-string v1, "JULIAN_DAY"

    const/4 v2, 0x0

    const-string v3, "JulianDay"

    invoke-direct/range {v0 .. v7}, Ljj$/time/temporal/JulianFields$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;J)V

    sput-object v0, Ljj$/time/temporal/JulianFields$Field;->JULIAN_DAY:Ljj$/time/temporal/JulianFields$Field;

    new-instance v1, Ljj$/time/temporal/JulianFields$Field;

    sget-object v5, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    sget-object v6, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    const-wide/32 v7, 0x9e8b

    const-string v2, "MODIFIED_JULIAN_DAY"

    const/4 v3, 0x1

    const-string v4, "ModifiedJulianDay"

    invoke-direct/range {v1 .. v8}, Ljj$/time/temporal/JulianFields$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;J)V

    sput-object v1, Ljj$/time/temporal/JulianFields$Field;->MODIFIED_JULIAN_DAY:Ljj$/time/temporal/JulianFields$Field;

    new-instance v2, Ljj$/time/temporal/JulianFields$Field;

    sget-object v6, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    sget-object v7, Ljj$/time/temporal/ChronoUnit;->FOREVER:Ljj$/time/temporal/ChronoUnit;

    const-wide/32 v8, 0xaf93b

    const-string v3, "RATA_DIE"

    const/4 v4, 0x2

    const-string v5, "RataDie"

    invoke-direct/range {v2 .. v9}, Ljj$/time/temporal/JulianFields$Field;-><init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;J)V

    sput-object v2, Ljj$/time/temporal/JulianFields$Field;->RATA_DIE:Ljj$/time/temporal/JulianFields$Field;

    const/4 v0, 0x3

    new-array v0, v0, [Ljj$/time/temporal/JulianFields$Field;

    sget-object v1, Ljj$/time/temporal/JulianFields$Field;->JULIAN_DAY:Ljj$/time/temporal/JulianFields$Field;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/JulianFields$Field;->MODIFIED_JULIAN_DAY:Ljj$/time/temporal/JulianFields$Field;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/temporal/JulianFields$Field;->RATA_DIE:Ljj$/time/temporal/JulianFields$Field;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Ljj$/time/temporal/JulianFields$Field;->$VALUES:[Ljj$/time/temporal/JulianFields$Field;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljj$/time/temporal/TemporalUnit;Ljj$/time/temporal/TemporalUnit;J)V
    .registers 10

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ljj$/time/temporal/JulianFields$Field;->name:Ljava/lang/String;

    iput-object p4, p0, Ljj$/time/temporal/JulianFields$Field;->baseUnit:Ljj$/time/temporal/TemporalUnit;

    iput-object p5, p0, Ljj$/time/temporal/JulianFields$Field;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    const-wide p1, -0x550a313cdaL

    add-long/2addr p1, p6

    const-wide v0, 0x550a1b48f7L

    add-long/2addr v0, p6

    invoke-static {p1, p2, v0, v1}, Ljj$/time/temporal/ValueRange;->of(JJ)Ljj$/time/temporal/ValueRange;

    move-result-object p1

    iput-object p1, p0, Ljj$/time/temporal/JulianFields$Field;->range:Ljj$/time/temporal/ValueRange;

    iput-wide p6, p0, Ljj$/time/temporal/JulianFields$Field;->offset:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/time/temporal/JulianFields$Field;
    .registers 2

    const-class v0, Ljj$/time/temporal/JulianFields$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/time/temporal/JulianFields$Field;

    return-object v0
.end method

.method public static values()[Ljj$/time/temporal/JulianFields$Field;
    .registers 1

    sget-object v0, Ljj$/time/temporal/JulianFields$Field;->$VALUES:[Ljj$/time/temporal/JulianFields$Field;

    invoke-virtual {v0}, [Ljj$/time/temporal/JulianFields$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/temporal/JulianFields$Field;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljj$/time/temporal/Temporal;J)Ljj$/time/temporal/Temporal;
    .registers 8

    invoke-virtual {p0}, Ljj$/time/temporal/JulianFields$Field;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljj$/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    iget-wide v1, p0, Ljj$/time/temporal/JulianFields$Field;->offset:J

    invoke-static {p2, p3, v1, v2}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ljj$/time/temporal/Temporal;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljj$/time/DateTimeException;

    iget-object v1, p0, Ljj$/time/temporal/JulianFields$Field;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaseUnit()Ljj$/time/temporal/TemporalUnit;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/JulianFields$Field;->baseUnit:Ljj$/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public synthetic getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/temporal/TemporalField$-CC;->$default$getDisplayName(Ljj$/time/temporal/TemporalField;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFrom(Ljj$/time/temporal/TemporalAccessor;)J
    .registers 6

    sget-object v0, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->getLong(Ljj$/time/temporal/TemporalField;)J

    move-result-wide v0

    iget-wide v2, p0, Ljj$/time/temporal/JulianFields$Field;->offset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getRangeUnit()Ljj$/time/temporal/TemporalUnit;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/JulianFields$Field;->rangeUnit:Ljj$/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public isDateBased()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z
    .registers 3

    sget-object v0, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public isTimeBased()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public range()Ljj$/time/temporal/ValueRange;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/JulianFields$Field;->range:Ljj$/time/temporal/ValueRange;

    return-object v0
.end method

.method public rangeRefinedBy(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/ValueRange;
    .registers 5

    invoke-virtual {p0, p1}, Ljj$/time/temporal/JulianFields$Field;->isSupportedBy(Ljj$/time/temporal/TemporalAccessor;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljj$/time/temporal/JulianFields$Field;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolve(Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 9

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p2}, Ljj$/time/chrono/Chronology$-CC;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/Chronology;

    move-result-object v2

    sget-object v3, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-ne p3, v3, :cond_1d

    iget-wide v3, p0, Ljj$/time/temporal/JulianFields$Field;->offset:J

    invoke-static {v0, v1, v3, v4}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Ljj$/time/chrono/Chronology;->dateEpochDay(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v3

    return-object v3

    :cond_1d
    invoke-virtual {p0}, Ljj$/time/temporal/JulianFields$Field;->range()Ljj$/time/temporal/ValueRange;

    move-result-object v3

    invoke-virtual {v3, v0, v1, p0}, Ljj$/time/temporal/ValueRange;->checkValidValue(JLjj$/time/temporal/TemporalField;)J

    iget-wide v3, p0, Ljj$/time/temporal/JulianFields$Field;->offset:J

    sub-long v3, v0, v3

    invoke-interface {v2, v3, v4}, Ljj$/time/chrono/Chronology;->dateEpochDay(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic resolve(Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/temporal/TemporalAccessor;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/temporal/JulianFields$Field;->resolve(Ljava/util/Map;Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/time/temporal/JulianFields$Field;->name:Ljava/lang/String;

    return-object v0
.end method
