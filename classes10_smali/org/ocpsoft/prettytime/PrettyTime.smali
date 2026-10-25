.class public Lorg/ocpsoft/prettytime/PrettyTime;
.super Ljava/lang/Object;
.source "PrettyTime.java"


# instance fields
.field private volatile cachedUnits:Ljava/util/List;

.field private volatile locale:Ljava/util/Locale;

.field private overrideResourceBundle:Ljava/lang/String;

.field private volatile reference:Ljj$/time/Instant;

.field private final units:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    iput-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->overrideResourceBundle:Ljava/lang/String;

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->initTimeUnits()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 2

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>()V

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/util/Date;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/util/Date;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Locale;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/util/Locale;)V

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/util/Date;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Locale;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/util/Date;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 2

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>()V

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljj$/time/Instant;)V
    .registers 2

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>()V

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljj$/time/Instant;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljj$/time/Instant;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljj$/time/Instant;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method public constructor <init>(Ljj$/time/LocalDate;)V
    .registers 4

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljj$/time/LocalDate;Ljj$/time/ZoneId;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljj$/time/LocalDate;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljj$/time/LocalDate;Ljj$/time/ZoneId;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljj$/time/LocalDate;Ljj$/time/ZoneId;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljj$/time/LocalDate;Ljj$/time/ZoneId;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljj$/time/LocalDate;Ljj$/time/ZoneId;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Ljj$/time/LocalDate;->atStartOfDay(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZonedDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-direct {p0, v0, p3}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljj$/time/Instant;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljj$/time/LocalDateTime;)V
    .registers 3

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)V

    return-void
.end method

.method public constructor <init>(Ljj$/time/LocalDateTime;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Ljj$/time/LocalDateTime;->atZone(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZonedDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-direct {p0, v0, p3}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljj$/time/Instant;Ljava/lang/String;)V

    return-void
.end method

.method private addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V
    .registers 4

    new-instance v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->overrideResourceBundle:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;-><init>(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->registerUnit(Lorg/ocpsoft/prettytime/TimeUnit;Lorg/ocpsoft/prettytime/TimeFormat;)Lorg/ocpsoft/prettytime/PrettyTime;

    return-void
.end method

.method private calculateDuration(J)Lorg/ocpsoft/prettytime/Duration;
    .registers 21

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lorg/ocpsoft/prettytime/PrettyTime;->getUnits()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    invoke-direct {v3}, Lorg/ocpsoft/prettytime/impl/DurationImpl;-><init>()V

    const/4 v4, 0x0

    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7c

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ocpsoft/prettytime/TimeUnit;

    invoke-interface {v5}, Lorg/ocpsoft/prettytime/TimeUnit;->getMillisPerUnit()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-interface {v5}, Lorg/ocpsoft/prettytime/TimeUnit;->getMaxQuantity()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ne v4, v10, :cond_33

    goto :goto_34

    :cond_33
    const/4 v11, 0x0

    :goto_34
    const-wide/16 v12, 0x0

    cmp-long v10, v12, v8

    if-nez v10, :cond_4e

    if-nez v11, :cond_4e

    add-int/lit8 v10, v4, 0x1

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/ocpsoft/prettytime/TimeUnit;

    invoke-interface {v10}, Lorg/ocpsoft/prettytime/TimeUnit;->getMillisPerUnit()J

    move-result-wide v14

    invoke-interface {v5}, Lorg/ocpsoft/prettytime/TimeUnit;->getMillisPerUnit()J

    move-result-wide v16

    div-long v8, v14, v16

    :cond_4e
    mul-long v14, v6, v8

    cmp-long v10, v14, v0

    if-gtz v10, :cond_5a

    if-eqz v11, :cond_57

    goto :goto_5a

    :cond_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_5a
    :goto_5a
    invoke-virtual {v3, v5}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setUnit(Lorg/ocpsoft/prettytime/TimeUnit;)V

    cmp-long v10, v6, v0

    if-lez v10, :cond_6c

    invoke-direct/range {p0 .. p2}, Lorg/ocpsoft/prettytime/PrettyTime;->getSign(J)J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setQuantity(J)V

    invoke-virtual {v3, v12, v13}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setDelta(J)V

    goto :goto_7c

    :cond_6c
    div-long v12, p1, v6

    invoke-virtual {v3, v12, v13}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setQuantity(J)V

    invoke-virtual {v3}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getQuantity()J

    move-result-wide v12

    mul-long/2addr v12, v6

    sub-long v12, p1, v12

    invoke-virtual {v3, v12, v13}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->setDelta(J)V

    nop

    :cond_7c
    :goto_7c
    return-object v3
.end method

.method private getSign(J)J
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-lez v0, :cond_9

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_9
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method private initTimeUnits()V
    .registers 2

    new-instance v0, Lorg/ocpsoft/prettytime/units/JustNow;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/JustNow;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    new-instance v0, Lorg/ocpsoft/prettytime/units/Millisecond;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Millisecond;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    new-instance v0, Lorg/ocpsoft/prettytime/units/Second;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Second;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    new-instance v0, Lorg/ocpsoft/prettytime/units/Minute;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Minute;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    new-instance v0, Lorg/ocpsoft/prettytime/units/Hour;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Hour;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    new-instance v0, Lorg/ocpsoft/prettytime/units/Day;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Day;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    new-instance v0, Lorg/ocpsoft/prettytime/units/Week;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Week;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    new-instance v0, Lorg/ocpsoft/prettytime/units/Month;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Month;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    new-instance v0, Lorg/ocpsoft/prettytime/units/Year;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Year;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    new-instance v0, Lorg/ocpsoft/prettytime/units/Decade;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Decade;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    new-instance v0, Lorg/ocpsoft/prettytime/units/Century;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Century;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    new-instance v0, Lorg/ocpsoft/prettytime/units/Millennium;

    invoke-direct {v0}, Lorg/ocpsoft/prettytime/units/Millennium;-><init>()V

    invoke-direct {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->addUnit(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    return-void
.end method

.method private now()Ljava/util/Date;
    .registers 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method


# virtual methods
.method public approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;
    .registers 7

    if-nez p1, :cond_6

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    :cond_6
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljj$/time/Instant;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljj$/time/Instant;

    goto :goto_11

    :cond_d
    invoke-static {}, Ljj$/time/Instant;->now()Ljj$/time/Instant;

    move-result-object v0

    :goto_11
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljj$/time/Instant;->toEpochMilli()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_22

    const-wide/16 v1, 0x1

    :cond_22
    invoke-direct {p0, v1, v2}, Lorg/ocpsoft/prettytime/PrettyTime;->calculateDuration(J)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v3

    return-object v3
.end method

.method public approximateDuration(Ljj$/time/Instant;)Lorg/ocpsoft/prettytime/Duration;
    .registers 3

    if-eqz p1, :cond_7

    invoke-static {p1}, Ljj$/util/DesugarDate;->from(Ljj$/time/Instant;)Ljava/util/Date;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v0

    return-object v0
.end method

.method public approximateDuration(Ljj$/time/LocalDate;)Lorg/ocpsoft/prettytime/Duration;
    .registers 3

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljj$/time/LocalDate;Ljj$/time/ZoneId;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v0

    return-object v0
.end method

.method public approximateDuration(Ljj$/time/LocalDate;Ljj$/time/ZoneId;)Lorg/ocpsoft/prettytime/Duration;
    .registers 4

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Ljj$/time/LocalDate;->atStartOfDay(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZonedDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljj$/time/Instant;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v0

    return-object v0
.end method

.method public approximateDuration(Ljj$/time/LocalDateTime;)Lorg/ocpsoft/prettytime/Duration;
    .registers 3

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v0

    return-object v0
.end method

.method public approximateDuration(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Lorg/ocpsoft/prettytime/Duration;
    .registers 4

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Ljj$/time/LocalDateTime;->atZone(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZonedDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljj$/time/Instant;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v0

    return-object v0
.end method

.method public calculatePreciseDuration(Ljava/util/Date;)Ljava/util/List;
    .registers 3

    if-eqz p1, :cond_7

    invoke-static {p1}, Ljj$/util/DateRetargetClass;->toInstant(Ljava/util/Date;)Ljj$/time/Instant;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->calculatePreciseDuration(Ljj$/time/Instant;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public calculatePreciseDuration(Ljj$/time/Instant;)Ljava/util/List;
    .registers 11

    if-nez p1, :cond_6

    invoke-static {}, Ljj$/time/Instant;->now()Ljj$/time/Instant;

    move-result-object p1

    :cond_6
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljj$/time/Instant;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljj$/time/Instant;

    goto :goto_11

    :cond_d
    invoke-static {}, Ljj$/time/Instant;->now()Ljj$/time/Instant;

    move-result-object v0

    :goto_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljj$/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v0}, Ljj$/time/Instant;->toEpochMilli()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lorg/ocpsoft/prettytime/PrettyTime;->calculateDuration(J)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    :goto_26
    const-wide/16 v5, 0x0

    invoke-interface {v4}, Lorg/ocpsoft/prettytime/Duration;->getDelta()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_67

    invoke-interface {v4}, Lorg/ocpsoft/prettytime/Duration;->getDelta()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lorg/ocpsoft/prettytime/PrettyTime;->calculateDuration(J)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_59

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ocpsoft/prettytime/Duration;

    invoke-interface {v5}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v6

    invoke-interface {v4}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    goto :goto_67

    :cond_59
    invoke-interface {v4}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v5

    invoke-interface {v5}, Lorg/ocpsoft/prettytime/TimeUnit;->isPrecise()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_67
    :goto_67
    return-object v1
.end method

.method public calculatePreciseDuration(Ljj$/time/LocalDate;)Ljava/util/List;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljj$/time/LocalDate;->atStartOfDay()Ljj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->calculatePreciseDuration(Ljj$/time/LocalDateTime;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public calculatePreciseDuration(Ljj$/time/LocalDate;Ljj$/time/ZoneId;)Ljava/util/List;
    .registers 4

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Ljj$/time/LocalDate;->atStartOfDay(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZonedDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->calculatePreciseDuration(Ljj$/time/Instant;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public calculatePreciseDuration(Ljj$/time/LocalDateTime;)Ljava/util/List;
    .registers 3

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->calculatePreciseDuration(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public calculatePreciseDuration(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Ljava/util/List;
    .registers 4

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Ljj$/time/LocalDateTime;->atZone(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZonedDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->calculatePreciseDuration(Ljj$/time/Instant;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clearUnits()Ljava/util/List;
    .registers 3

    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->getUnits()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-object v0
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_b

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_6

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    :cond_6
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format(Ljava/util/List;)Ljava/lang/String;
    .registers 9

    if-eqz p1, :cond_6e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6e

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_65

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lorg/ocpsoft/prettytime/Duration;

    invoke-interface {v1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v2

    if-eqz v2, :cond_48

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3e

    invoke-interface {v2, v1}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    :cond_3e
    invoke-interface {v2, v1}, Lorg/ocpsoft/prettytime/TimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_48
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported time unit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/ocpsoft/prettytime/TimeFormat;->decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_6e
    :goto_6e
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljj$/time/Instant;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljj$/time/Instant;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljj$/time/LocalDate;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljj$/time/LocalDate;->atStartOfDay()Ljj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljj$/time/LocalDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljj$/time/LocalDate;Ljj$/time/ZoneId;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Ljj$/time/LocalDate;->atStartOfDay(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljj$/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljj$/time/LocalDateTime;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Ljj$/time/LocalDateTime;->atZone(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljj$/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljj$/time/OffsetDateTime;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljj$/time/OffsetDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljj$/time/Instant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljj$/time/ZonedDateTime;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljj$/time/ZonedDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljj$/time/Instant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_b

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/ocpsoft/prettytime/TimeFormat;->decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public formatDuration(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_b

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatDuration(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatDuration(Ljava/util/List;)Ljava/lang/String;
    .registers 8

    if-eqz p1, :cond_4b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4b

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_46

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lorg/ocpsoft/prettytime/Duration;

    invoke-interface {v1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3c

    invoke-interface {v2, v1}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    :cond_3c
    invoke-interface {v2, v1}, Lorg/ocpsoft/prettytime/TimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_4b
    :goto_4b
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDuration(Ljj$/time/Instant;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljj$/time/Instant;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDuration(Ljj$/time/LocalDate;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljj$/time/LocalDate;->atStartOfDay()Ljj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljj$/time/LocalDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDuration(Ljj$/time/LocalDate;Ljj$/time/ZoneId;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Ljj$/time/LocalDate;->atStartOfDay(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljj$/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDuration(Ljj$/time/LocalDateTime;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDuration(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Ljj$/time/LocalDateTime;->atZone(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljj$/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDuration(Ljj$/time/OffsetDateTime;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljj$/time/OffsetDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljj$/time/Instant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDuration(Ljj$/time/ZonedDateTime;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljj$/time/ZonedDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljj$/time/Instant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDuration(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_b

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatDurationUnrounded(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_b

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDuration(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatDurationUnrounded(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatDurationUnrounded(Ljava/util/List;)Ljava/lang/String;
    .registers 7

    if-eqz p1, :cond_42

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_42

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3d

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lorg/ocpsoft/prettytime/Duration;

    invoke-interface {v1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3a

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_42
    :goto_42
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationUnrounded(Ljj$/time/Instant;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljj$/time/Instant;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationUnrounded(Ljj$/time/LocalDate;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljj$/time/LocalDate;->atStartOfDay()Ljj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Ljj$/time/LocalDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationUnrounded(Ljj$/time/LocalDate;Ljj$/time/ZoneId;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Ljj$/time/LocalDate;->atStartOfDay(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Ljj$/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationUnrounded(Ljj$/time/LocalDateTime;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationUnrounded(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Ljj$/time/LocalDateTime;->atZone(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Ljj$/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationUnrounded(Ljj$/time/OffsetDateTime;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljj$/time/OffsetDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Ljj$/time/Instant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationUnrounded(Ljj$/time/ZonedDateTime;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljj$/time/ZonedDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatDurationUnrounded(Ljj$/time/Instant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDurationUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_b

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatUnrounded(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_b

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatUnrounded(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_6

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object p1

    :cond_6
    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljava/util/Date;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatUnrounded(Ljava/util/List;)Ljava/lang/String;
    .registers 7

    if-eqz p1, :cond_46

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_46

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3d

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lorg/ocpsoft/prettytime/Duration;

    invoke-interface {v1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3a

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/ocpsoft/prettytime/TimeFormat;->decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_46
    :goto_46
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatUnrounded(Ljj$/time/Instant;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->approximateDuration(Ljj$/time/Instant;)Lorg/ocpsoft/prettytime/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatUnrounded(Ljj$/time/LocalDate;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljj$/time/LocalDate;->atStartOfDay()Ljj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljj$/time/LocalDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatUnrounded(Ljj$/time/LocalDate;Ljj$/time/ZoneId;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Ljj$/time/LocalDate;->atStartOfDay(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljj$/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatUnrounded(Ljj$/time/LocalDateTime;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatUnrounded(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Ljj$/time/LocalDateTime;->atZone(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljj$/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatUnrounded(Ljj$/time/OffsetDateTime;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljj$/time/OffsetDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljj$/time/Instant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatUnrounded(Ljj$/time/ZonedDateTime;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljj$/time/ZonedDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljj$/time/Instant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_b

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->formatUnrounded(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/ocpsoft/prettytime/TimeFormat;->formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/ocpsoft/prettytime/TimeFormat;->decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFormat(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .registers 5

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object v0

    :cond_15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda0;-><init>(Lorg/ocpsoft/prettytime/PrettyTime;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object v1
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getReference()Ljj$/time/Instant;
    .registers 2

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljj$/time/Instant;

    return-object v0
.end method

.method public getReferenceAsLegacyDate()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljj$/time/Instant;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljj$/time/Instant;

    invoke-static {v0}, Ljj$/util/DesugarDate;->from(Ljj$/time/Instant;)Ljava/util/Date;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getUnit(Ljava/lang/Class;)Lorg/ocpsoft/prettytime/TimeUnit;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ocpsoft/prettytime/TimeUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_25

    return-object v2

    :cond_25
    goto :goto_e

    :cond_26
    return-object v0
.end method

.method public getUnit(Ljj$/time/temporal/ChronoUnit;)Lorg/ocpsoft/prettytime/TimeUnit;
    .registers 3

    invoke-static {p1}, Lorg/ocpsoft/prettytime/TimeUnit;->of(Ljj$/time/temporal/ChronoUnit;)Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getUnit(Ljava/lang/Class;)Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    return-object v0
.end method

.method public getUnits()Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    if-nez v0, :cond_21

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/ocpsoft/prettytime/PrettyTime$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    :cond_21
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    return-object v0
.end method

.method synthetic lambda$getFormat$0$org-ocpsoft-prettytime-PrettyTime(Ljava/util/Map;Lorg/ocpsoft/prettytime/TimeUnit;)V
    .registers 5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/TimeFormat;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerUnit(Ljj$/time/temporal/ChronoUnit;Lorg/ocpsoft/prettytime/TimeFormat;)Lorg/ocpsoft/prettytime/PrettyTime;
    .registers 4

    invoke-static {p1}, Lorg/ocpsoft/prettytime/TimeUnit;->of(Ljj$/time/temporal/ChronoUnit;)Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/ocpsoft/prettytime/PrettyTime;->registerUnit(Lorg/ocpsoft/prettytime/TimeUnit;Lorg/ocpsoft/prettytime/TimeFormat;)Lorg/ocpsoft/prettytime/PrettyTime;

    move-result-object v0

    return-object v0
.end method

.method public registerUnit(Lorg/ocpsoft/prettytime/TimeUnit;Lorg/ocpsoft/prettytime/TimeFormat;)Lorg/ocpsoft/prettytime/PrettyTime;
    .registers 6

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    const-string v1, "TimeUnit to register must not be null."

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/TimeUnit;

    const-string v2, "TimeFormat to register must not be null."

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ocpsoft/prettytime/TimeFormat;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lorg/ocpsoft/prettytime/LocaleAware;

    if-eqz v0, :cond_24

    move-object v0, p1

    check-cast v0, Lorg/ocpsoft/prettytime/LocaleAware;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Lorg/ocpsoft/prettytime/LocaleAware;->setLocale(Ljava/util/Locale;)Ljava/lang/Object;

    :cond_24
    instance-of v0, p2, Lorg/ocpsoft/prettytime/LocaleAware;

    if-eqz v0, :cond_30

    move-object v0, p2

    check-cast v0, Lorg/ocpsoft/prettytime/LocaleAware;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    invoke-interface {v0, v1}, Lorg/ocpsoft/prettytime/LocaleAware;->setLocale(Ljava/util/Locale;)Ljava/lang/Object;

    :cond_30
    return-object p0
.end method

.method public removeUnit(Ljava/lang/Class;)Lorg/ocpsoft/prettytime/TimeFormat;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ocpsoft/prettytime/TimeUnit;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object v0

    :cond_2f
    goto :goto_e

    :cond_30
    return-object v0
.end method

.method public removeUnit(Ljj$/time/temporal/ChronoUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .registers 3

    invoke-static {p1}, Lorg/ocpsoft/prettytime/TimeUnit;->of(Ljj$/time/temporal/ChronoUnit;)Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->removeUnit(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    move-result-object v0

    return-object v0
.end method

.method public removeUnit(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ocpsoft/prettytime/TimeFormat;

    return-object v0
.end method

.method public setLocale(Ljava/util/Locale;)Lorg/ocpsoft/prettytime/PrettyTime;
    .registers 5

    if-nez p1, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_6
    iput-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/TimeUnit;

    instance-of v2, v1, Lorg/ocpsoft/prettytime/LocaleAware;

    if-eqz v2, :cond_28

    move-object v2, v1

    check-cast v2, Lorg/ocpsoft/prettytime/LocaleAware;

    invoke-interface {v2, p1}, Lorg/ocpsoft/prettytime/LocaleAware;->setLocale(Ljava/util/Locale;)Ljava/lang/Object;

    :cond_28
    goto :goto_12

    :cond_29
    iget-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->units:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/TimeFormat;

    instance-of v2, v1, Lorg/ocpsoft/prettytime/LocaleAware;

    if-eqz v2, :cond_49

    move-object v2, v1

    check-cast v2, Lorg/ocpsoft/prettytime/LocaleAware;

    invoke-interface {v2, p1}, Lorg/ocpsoft/prettytime/LocaleAware;->setLocale(Ljava/util/Locale;)Ljava/lang/Object;

    :cond_49
    goto :goto_33

    :cond_4a
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ocpsoft/prettytime/PrettyTime;->cachedUnits:Ljava/util/List;

    return-object p0
.end method

.method public setReference(Ljava/util/Date;)Lorg/ocpsoft/prettytime/PrettyTime;
    .registers 3

    if-eqz p1, :cond_7

    invoke-static {p1}, Ljj$/util/DateRetargetClass;->toInstant(Ljava/util/Date;)Ljj$/time/Instant;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljj$/time/Instant;)Lorg/ocpsoft/prettytime/PrettyTime;

    move-result-object v0

    return-object v0
.end method

.method public setReference(Ljj$/time/Instant;)Lorg/ocpsoft/prettytime/PrettyTime;
    .registers 2

    iput-object p1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljj$/time/Instant;

    return-object p0
.end method

.method public setReference(Ljj$/time/LocalDate;)Lorg/ocpsoft/prettytime/PrettyTime;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljj$/time/LocalDate;->atStartOfDay()Ljj$/time/LocalDateTime;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljj$/time/LocalDateTime;)Lorg/ocpsoft/prettytime/PrettyTime;

    move-result-object v0

    return-object v0
.end method

.method public setReference(Ljj$/time/LocalDate;Ljj$/time/ZoneId;)Lorg/ocpsoft/prettytime/PrettyTime;
    .registers 4

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Ljj$/time/LocalDate;->atStartOfDay(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZonedDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljj$/time/Instant;)Lorg/ocpsoft/prettytime/PrettyTime;

    move-result-object v0

    return-object v0
.end method

.method public setReference(Ljj$/time/LocalDateTime;)Lorg/ocpsoft/prettytime/PrettyTime;
    .registers 3

    invoke-static {}, Ljj$/time/ZoneId;->systemDefault()Ljj$/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Lorg/ocpsoft/prettytime/PrettyTime;

    move-result-object v0

    return-object v0
.end method

.method public setReference(Ljj$/time/LocalDateTime;Ljj$/time/ZoneId;)Lorg/ocpsoft/prettytime/PrettyTime;
    .registers 4

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Ljj$/time/LocalDateTime;->atZone(Ljj$/time/ZoneId;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/ZonedDateTime;->toInstant()Ljj$/time/Instant;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljj$/time/Instant;)Lorg/ocpsoft/prettytime/PrettyTime;

    move-result-object v0

    return-object v0
.end method

.method public varargs setUnits(Lorg/ocpsoft/prettytime/TimeFormat;[Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/PrettyTime;
    .registers 6

    if-eqz p2, :cond_1a

    array-length v0, p2

    if-eqz v0, :cond_1a

    const-string v0, "TimeFormat to register must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->clearUnits()Ljava/util/List;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_19

    aget-object v2, p2, v1

    invoke-virtual {p0, v2, p1}, Lorg/ocpsoft/prettytime/PrettyTime;->registerUnit(Lorg/ocpsoft/prettytime/TimeUnit;Lorg/ocpsoft/prettytime/TimeFormat;)Lorg/ocpsoft/prettytime/PrettyTime;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_19
    return-object p0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TimeUnit instance(s) to register must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs setUnits([Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)Lorg/ocpsoft/prettytime/PrettyTime;
    .registers 6

    if-eqz p1, :cond_1a

    array-length v0, p1

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/PrettyTime;->clearUnits()Ljava/util/List;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_19

    aget-object v2, p1, v1

    new-instance v3, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;

    invoke-direct {v3, v2}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeFormat;-><init>(Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;)V

    invoke-virtual {p0, v2, v3}, Lorg/ocpsoft/prettytime/PrettyTime;->registerUnit(Lorg/ocpsoft/prettytime/TimeUnit;Lorg/ocpsoft/prettytime/TimeFormat;)Lorg/ocpsoft/prettytime/PrettyTime;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_19
    return-object p0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TimeUnit instance(s) to register must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrettyTime [reference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->reference:Ljj$/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ocpsoft/prettytime/PrettyTime;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
