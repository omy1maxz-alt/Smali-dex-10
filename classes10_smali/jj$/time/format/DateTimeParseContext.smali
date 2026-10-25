.class final Ljj$/time/format/DateTimeParseContext;
.super Ljava/lang/Object;
.source "DateTimeParseContext.java"


# instance fields
.field private caseSensitive:Z

.field private chronoListeners:Ljava/util/ArrayList;

.field private formatter:Ljj$/time/format/DateTimeFormatter;

.field private final parsed:Ljava/util/ArrayList;

.field private strict:Z


# direct methods
.method constructor <init>(Ljj$/time/format/DateTimeFormatter;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/time/format/DateTimeParseContext;->caseSensitive:Z

    iput-boolean v0, p0, Ljj$/time/format/DateTimeParseContext;->strict:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Ljj$/time/format/DateTimeParseContext;->formatter:Ljj$/time/format/DateTimeFormatter;

    iget-object v0, p0, Ljj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    new-instance v1, Ljj$/time/format/Parsed;

    invoke-direct {v1}, Ljj$/time/format/Parsed;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static charEqualsIgnoreCase(CC)Z
    .registers 4

    if-eq p0, p1, :cond_19

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-eq v0, v1, :cond_19

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-ne v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method private currentParsed()Ljj$/time/format/Parsed;
    .registers 3

    iget-object v0, p0, Ljj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    iget-object v1, p0, Ljj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/format/Parsed;

    return-object v0
.end method


# virtual methods
.method addChronoChangedListener(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljj$/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Ljj$/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method charEquals(CC)Z
    .registers 4

    invoke-virtual {p0}, Ljj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v0

    if-eqz v0, :cond_c

    if-ne p1, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-static {p1, p2}, Ljj$/time/format/DateTimeParseContext;->charEqualsIgnoreCase(CC)Z

    move-result v0

    return v0
.end method

.method copy()Ljj$/time/format/DateTimeParseContext;
    .registers 3

    new-instance v0, Ljj$/time/format/DateTimeParseContext;

    iget-object v1, p0, Ljj$/time/format/DateTimeParseContext;->formatter:Ljj$/time/format/DateTimeFormatter;

    invoke-direct {v0, v1}, Ljj$/time/format/DateTimeParseContext;-><init>(Ljj$/time/format/DateTimeFormatter;)V

    iget-boolean v1, p0, Ljj$/time/format/DateTimeParseContext;->caseSensitive:Z

    iput-boolean v1, v0, Ljj$/time/format/DateTimeParseContext;->caseSensitive:Z

    iget-boolean v1, p0, Ljj$/time/format/DateTimeParseContext;->strict:Z

    iput-boolean v1, v0, Ljj$/time/format/DateTimeParseContext;->strict:Z

    return-object v0
.end method

.method endOptional(Z)V
    .registers 4

    if-eqz p1, :cond_10

    iget-object v0, p0, Ljj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    iget-object v1, p0, Ljj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1d

    :cond_10
    iget-object v0, p0, Ljj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    iget-object v1, p0, Ljj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1d
    return-void
.end method

.method getDecimalStyle()Ljj$/time/format/DecimalStyle;
    .registers 2

    iget-object v0, p0, Ljj$/time/format/DateTimeParseContext;->formatter:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatter;->getDecimalStyle()Ljj$/time/format/DecimalStyle;

    move-result-object v0

    return-object v0
.end method

.method getEffectiveChronology()Ljj$/time/chrono/Chronology;
    .registers 3

    invoke-direct {p0}, Ljj$/time/format/DateTimeParseContext;->currentParsed()Ljj$/time/format/Parsed;

    move-result-object v0

    iget-object v0, v0, Ljj$/time/format/Parsed;->chrono:Ljj$/time/chrono/Chronology;

    if-nez v0, :cond_12

    iget-object v1, p0, Ljj$/time/format/DateTimeParseContext;->formatter:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v1}, Ljj$/time/format/DateTimeFormatter;->getChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    if-nez v0, :cond_12

    sget-object v0, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    :cond_12
    return-object v0
.end method

.method getLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Ljj$/time/format/DateTimeParseContext;->formatter:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getParsed(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;
    .registers 3

    invoke-direct {p0}, Ljj$/time/format/DateTimeParseContext;->currentParsed()Ljj$/time/format/Parsed;

    move-result-object v0

    iget-object v0, v0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method isCaseSensitive()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/time/format/DateTimeParseContext;->caseSensitive:Z

    return v0
.end method

.method isStrict()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/time/format/DateTimeParseContext;->strict:Z

    return v0
.end method

.method setCaseSensitive(Z)V
    .registers 2

    iput-boolean p1, p0, Ljj$/time/format/DateTimeParseContext;->caseSensitive:Z

    return-void
.end method

.method setParsed(Ljj$/time/ZoneId;)V
    .registers 3

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Ljj$/time/format/DateTimeParseContext;->currentParsed()Ljj$/time/format/Parsed;

    move-result-object v0

    iput-object p1, v0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    return-void
.end method

.method setParsed(Ljj$/time/chrono/Chronology;)V
    .registers 7

    const-string v0, "chrono"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Ljj$/time/format/DateTimeParseContext;->currentParsed()Ljj$/time/format/Parsed;

    move-result-object v0

    iput-object p1, v0, Ljj$/time/format/Parsed;->chrono:Ljj$/time/chrono/Chronology;

    iget-object v0, p0, Ljj$/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_33

    iget-object v0, p0, Ljj$/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/function/Consumer;

    iget-object v1, p0, Ljj$/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/function/Consumer;

    iget-object v2, p0, Ljj$/time/format/DateTimeParseContext;->chronoListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    array-length v2, v1

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v2, :cond_33

    aget-object v4, v1, v3

    invoke-interface {v4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_33
    return-void
.end method

.method setParsedField(Ljj$/time/temporal/TemporalField;JII)I
    .registers 10

    const-string v0, "field"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Ljj$/time/format/DateTimeParseContext;->currentParsed()Ljj$/time/format/Parsed;

    move-result-object v0

    iget-object v0, v0, Ljj$/time/format/Parsed;->fieldValues:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-eqz v3, :cond_21

    not-int v1, p4

    goto :goto_22

    :cond_21
    move v1, p5

    :goto_22
    return v1
.end method

.method setParsedLeapSecond()V
    .registers 3

    invoke-direct {p0}, Ljj$/time/format/DateTimeParseContext;->currentParsed()Ljj$/time/format/Parsed;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljj$/time/format/Parsed;->leapSecond:Z

    return-void
.end method

.method setStrict(Z)V
    .registers 2

    iput-boolean p1, p0, Ljj$/time/format/DateTimeParseContext;->strict:Z

    return-void
.end method

.method startOptional()V
    .registers 3

    iget-object v0, p0, Ljj$/time/format/DateTimeParseContext;->parsed:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljj$/time/format/DateTimeParseContext;->currentParsed()Ljj$/time/format/Parsed;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/format/Parsed;->copy()Ljj$/time/format/Parsed;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .registers 12

    add-int v0, p2, p5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_59

    add-int v0, p4, p5

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_12

    goto :goto_59

    :cond_12
    invoke-virtual {p0}, Ljj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    :goto_19
    if-ge v0, p5, :cond_2d

    add-int v1, p2, v0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int v3, p4, v0

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_2a

    return v2

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2d
    goto :goto_57

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    if-ge v0, p5, :cond_57

    add-int v1, p2, v0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int v3, p4, v0

    invoke-interface {p3, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_54

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_54

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-eq v4, v5, :cond_54

    return v2

    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_57
    :goto_57
    const/4 v0, 0x1

    return v0

    :cond_59
    :goto_59
    return v2
.end method

.method toResolved(Ljj$/time/format/ResolverStyle;Ljava/util/Set;)Ljj$/time/temporal/TemporalAccessor;
    .registers 5

    invoke-direct {p0}, Ljj$/time/format/DateTimeParseContext;->currentParsed()Ljj$/time/format/Parsed;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/format/DateTimeParseContext;->getEffectiveChronology()Ljj$/time/chrono/Chronology;

    move-result-object v1

    iput-object v1, v0, Ljj$/time/format/Parsed;->chrono:Ljj$/time/chrono/Chronology;

    iget-object v1, v0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    if-eqz v1, :cond_11

    iget-object v1, v0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    goto :goto_17

    :cond_11
    iget-object v1, p0, Ljj$/time/format/DateTimeParseContext;->formatter:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v1}, Ljj$/time/format/DateTimeFormatter;->getZone()Ljj$/time/ZoneId;

    move-result-object v1

    :goto_17
    iput-object v1, v0, Ljj$/time/format/Parsed;->zone:Ljj$/time/ZoneId;

    invoke-virtual {v0, p1, p2}, Ljj$/time/format/Parsed;->resolve(Ljj$/time/format/ResolverStyle;Ljava/util/Set;)Ljj$/time/temporal/TemporalAccessor;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Ljj$/time/format/DateTimeParseContext;->currentParsed()Ljj$/time/format/Parsed;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/Parsed;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toUnresolved()Ljj$/time/format/Parsed;
    .registers 2

    invoke-direct {p0}, Ljj$/time/format/DateTimeParseContext;->currentParsed()Ljj$/time/format/Parsed;

    move-result-object v0

    return-object v0
.end method
