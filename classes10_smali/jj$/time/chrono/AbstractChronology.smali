.class public abstract Ljj$/time/chrono/AbstractChronology;
.super Ljava/lang/Object;
.source "AbstractChronology.java"

# interfaces
.implements Ljj$/time/chrono/Chronology;


# static fields
.field private static final CHRONOS_BY_ID:Ljj$/util/concurrent/ConcurrentHashMap;

.field private static final CHRONOS_BY_TYPE:Ljj$/util/concurrent/ConcurrentHashMap;

.field private static final JAPANESE_CALENDAR_LOCALE:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljj$/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ljj$/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "ja"

    const-string v2, "JP"

    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljj$/time/chrono/AbstractChronology;->JAPANESE_CALENDAR_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAvailableChronologies()Ljava/util/Set;
    .registers 4

    invoke-static {}, Ljj$/time/chrono/AbstractChronology;->initCache()Z

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Ljj$/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-class v1, Ljj$/time/chrono/Chronology;

    invoke-static {v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/time/chrono/Chronology;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_28
    return-object v0
.end method

.method private static getCalendarType(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    const-string v0, "ca"

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    sget-object v1, Ljj$/time/chrono/AbstractChronology;->JAPANESE_CALENDAR_LOCALE:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "japanese"

    return-object v1

    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method

.method private static initCache()Z
    .registers 6

    sget-object v0, Ljj$/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljj$/util/concurrent/ConcurrentHashMap;

    const-string v1, "ISO"

    invoke-virtual {v0, v1}, Ljj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4a

    sget-object v0, Ljj$/time/chrono/HijrahChronology;->INSTANCE:Ljj$/time/chrono/HijrahChronology;

    invoke-static {v0}, Ljj$/time/chrono/AbstractChronology;->registerChrono(Ljj$/time/chrono/Chronology;)Ljj$/time/chrono/Chronology;

    sget-object v0, Ljj$/time/chrono/JapaneseChronology;->INSTANCE:Ljj$/time/chrono/JapaneseChronology;

    invoke-static {v0}, Ljj$/time/chrono/AbstractChronology;->registerChrono(Ljj$/time/chrono/Chronology;)Ljj$/time/chrono/Chronology;

    sget-object v0, Ljj$/time/chrono/MinguoChronology;->INSTANCE:Ljj$/time/chrono/MinguoChronology;

    invoke-static {v0}, Ljj$/time/chrono/AbstractChronology;->registerChrono(Ljj$/time/chrono/Chronology;)Ljj$/time/chrono/Chronology;

    sget-object v0, Ljj$/time/chrono/ThaiBuddhistChronology;->INSTANCE:Ljj$/time/chrono/ThaiBuddhistChronology;

    invoke-static {v0}, Ljj$/time/chrono/AbstractChronology;->registerChrono(Ljj$/time/chrono/Chronology;)Ljj$/time/chrono/Chronology;

    const-class v0, Ljj$/time/chrono/AbstractChronology;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/time/chrono/AbstractChronology;

    invoke-virtual {v3}, Ljj$/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    invoke-static {v3}, Ljj$/time/chrono/AbstractChronology;->registerChrono(Ljj$/time/chrono/Chronology;)Ljj$/time/chrono/Chronology;

    :cond_42
    goto :goto_29

    :cond_43
    sget-object v1, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-static {v1}, Ljj$/time/chrono/AbstractChronology;->registerChrono(Ljj$/time/chrono/Chronology;)Ljj$/time/chrono/Chronology;

    const/4 v1, 0x1

    return v1

    :cond_4a
    const/4 v0, 0x0

    return v0
.end method

.method static of(Ljava/lang/String;)Ljj$/time/chrono/Chronology;
    .registers 5

    const-string v0, "id"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_5
    invoke-static {p0}, Ljj$/time/chrono/AbstractChronology;->of0(Ljava/lang/String;)Ljj$/time/chrono/Chronology;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    invoke-static {}, Ljj$/time/chrono/AbstractChronology;->initCache()Z

    move-result v0

    if-nez v0, :cond_5

    const-class v0, Ljj$/time/chrono/Chronology;

    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/time/chrono/Chronology;

    invoke-interface {v2}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-interface {v2}, Ljj$/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_3e

    :cond_3d
    goto :goto_1c

    :cond_3e
    :goto_3e
    return-object v2

    :cond_3f
    new-instance v1, Ljj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown chronology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static of0(Ljava/lang/String;)Ljj$/time/chrono/Chronology;
    .registers 3

    sget-object v0, Ljj$/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/Chronology;

    if-nez v0, :cond_13

    sget-object v1, Ljj$/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljj$/time/chrono/Chronology;

    :cond_13
    return-object v0
.end method

.method static ofLocale(Ljava/util/Locale;)Ljj$/time/chrono/Chronology;
    .registers 6

    const-string v0, "locale"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Ljj$/time/chrono/AbstractChronology;->getCalendarType(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_68

    const-string v1, "iso"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    const-string v1, "iso8601"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_68

    :cond_1c
    sget-object v1, Ljj$/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/time/chrono/Chronology;

    if-eqz v1, :cond_27

    return-object v1

    :cond_27
    invoke-static {}, Ljj$/time/chrono/AbstractChronology;->initCache()Z

    move-result v1

    if-nez v1, :cond_1c

    const-class v1, Ljj$/time/chrono/Chronology;

    invoke-static {v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/time/chrono/Chronology;

    invoke-interface {v3}, Ljj$/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    return-object v3

    :cond_4e
    goto :goto_37

    :cond_4f
    new-instance v2, Ljj$/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown calendar system: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_68
    :goto_68
    sget-object v1, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    return-object v1
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/chrono/Chronology;
    .registers 3

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/chrono/Chronology$-CC;->of(Ljava/lang/String;)Ljj$/time/chrono/Chronology;

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

.method static registerChrono(Ljj$/time/chrono/Chronology;)Ljj$/time/chrono/Chronology;
    .registers 2

    invoke-interface {p0}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljj$/time/chrono/AbstractChronology;->registerChrono(Ljj$/time/chrono/Chronology;Ljava/lang/String;)Ljj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method static registerChrono(Ljj$/time/chrono/Chronology;Ljava/lang/String;)Ljj$/time/chrono/Chronology;
    .registers 5

    sget-object v0, Ljj$/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/Chronology;

    if-nez v0, :cond_15

    invoke-interface {p0}, Ljj$/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    sget-object v2, Ljj$/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, p0}, Ljj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method


# virtual methods
.method addFieldValue(Ljava/util/Map;Ljj$/time/temporal/ChronoField;J)V
    .registers 10

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p3

    if-nez v3, :cond_11

    goto :goto_46

    :cond_11
    new-instance v1, Ljj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflict found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " differs from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_46
    :goto_46
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/time/chrono/Chronology;

    invoke-virtual {p0, p1}, Ljj$/time/chrono/AbstractChronology;->compareTo(Ljj$/time/chrono/Chronology;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljj$/time/chrono/Chronology;)I
    .registers 4

    invoke-virtual {p0}, Ljj$/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic date(Ljj$/time/chrono/Era;III)Ljj$/time/chrono/ChronoLocalDate;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Ljj$/time/chrono/Chronology$-CC;->$default$date(Ljj$/time/chrono/Chronology;Ljj$/time/chrono/Era;III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic dateNow()Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-static {p0}, Ljj$/time/chrono/Chronology$-CC;->$default$dateNow(Ljj$/time/chrono/Chronology;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic dateNow(Ljj$/time/Clock;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/Chronology$-CC;->$default$dateNow(Ljj$/time/chrono/Chronology;Ljj$/time/Clock;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic dateNow(Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/Chronology$-CC;->$default$dateNow(Ljj$/time/chrono/Chronology;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic dateYearDay(Ljj$/time/chrono/Era;II)Ljj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljj$/time/chrono/Chronology$-CC;->$default$dateYearDay(Ljj$/time/chrono/Chronology;Ljj$/time/chrono/Era;II)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic epochSecond(IIIIIILjj$/time/ZoneOffset;)J
    .registers 8

    invoke-static/range {p0 .. p7}, Ljj$/time/chrono/Chronology$-CC;->$default$epochSecond(Ljj$/time/chrono/Chronology;IIIIIILjj$/time/ZoneOffset;)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic epochSecond(Ljj$/time/chrono/Era;IIIIIILjj$/time/ZoneOffset;)J
    .registers 9

    invoke-static/range {p0 .. p8}, Ljj$/time/chrono/Chronology$-CC;->$default$epochSecond(Ljj$/time/chrono/Chronology;Ljj$/time/chrono/Era;IIIIIILjj$/time/ZoneOffset;)J

    move-result-wide p1

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljj$/time/chrono/AbstractChronology;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    move-object v1, p1

    check-cast v1, Ljj$/time/chrono/AbstractChronology;

    invoke-virtual {p0, v1}, Ljj$/time/chrono/AbstractChronology;->compareTo(Ljj$/time/chrono/Chronology;)I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0

    :cond_15
    return v2
.end method

.method public synthetic getDisplayName(Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/time/chrono/Chronology$-CC;->$default$getDisplayName(Ljj$/time/chrono/Chronology;Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljj$/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public synthetic localDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDateTime;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/Chronology$-CC;->$default$localDateTime(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public synthetic period(III)Ljj$/time/chrono/ChronoPeriod;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljj$/time/chrono/Chronology$-CC;->$default$period(Ljj$/time/chrono/Chronology;III)Ljj$/time/chrono/ChronoPeriod;

    move-result-object p1

    return-object p1
.end method

.method resolveAligned(Ljj$/time/chrono/ChronoLocalDate;JJJ)Ljj$/time/chrono/ChronoLocalDate;
    .registers 16

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {p1, p2, p3, v0}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v0, p4, p5, v1}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x7

    cmp-long v5, p6, v3

    if-lez v5, :cond_23

    sub-long v5, p6, v1

    div-long/2addr v5, v3

    sget-object v7, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v5, v6, v7}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    sub-long v5, p6, v1

    rem-long/2addr v5, v3

    add-long p6, v5, v1

    goto :goto_38

    :cond_23
    cmp-long v5, p6, v1

    if-gez v5, :cond_38

    invoke-static {p6, p7, v3, v4}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v5

    div-long/2addr v5, v3

    sget-object v7, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v5, v6, v7}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    const-wide/16 v5, 0x6

    add-long/2addr v5, p6

    rem-long/2addr v5, v3

    add-long p6, v5, v1

    :cond_38
    :goto_38
    long-to-int v1, p6

    invoke-static {v1}, Ljj$/time/DayOfWeek;->of(I)Ljj$/time/DayOfWeek;

    move-result-object v1

    invoke-static {v1}, Ljj$/time/temporal/TemporalAdjusters;->nextOrSame(Ljj$/time/DayOfWeek;)Ljj$/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-interface {v0, v1}, Ljj$/time/chrono/ChronoLocalDate;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1
.end method

.method public resolveDate(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 5

    sget-object v0, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Ljj$/time/temporal/ChronoField;->EPOCH_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljj$/time/chrono/AbstractChronology;->dateEpochDay(J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    :cond_19
    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/AbstractChronology;->resolveProlepticMonth(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)V

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/AbstractChronology;->resolveYearOfEra(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    if-eqz v0, :cond_23

    return-object v0

    :cond_23
    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/AbstractChronology;->resolveYMD(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_40
    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/AbstractChronology;->resolveYMAA(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_55
    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/AbstractChronology;->resolveYMAD(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_62
    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/AbstractChronology;->resolveYD(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_6f
    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/AbstractChronology;->resolveYAA(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_84
    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-virtual {p0, p1, p2}, Ljj$/time/chrono/AbstractChronology;->resolveYAD(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_91
    const/4 v1, 0x0

    return-object v1
.end method

.method resolveProlepticMonth(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)V
    .registers 8

    sget-object v0, Ljj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_45

    sget-object v1, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-eq p2, v1, :cond_17

    sget-object v1, Ljj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljj$/time/temporal/ChronoField;->checkValidValue(J)J

    :cond_17
    invoke-virtual {p0}, Ljj$/time/chrono/AbstractChronology;->dateNow()Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    const-wide/16 v3, 0x1

    invoke-interface {v1, v2, v3, v4}, Ljj$/time/chrono/ChronoLocalDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Ljj$/time/chrono/ChronoLocalDate;->with(Ljj$/time/temporal/TemporalField;J)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    sget-object v3, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v3}, Ljj$/time/chrono/ChronoLocalDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, p1, v2, v3, v4}, Ljj$/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljj$/time/temporal/ChronoField;J)V

    sget-object v2, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    sget-object v3, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v1, v3}, Ljj$/time/chrono/ChronoLocalDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, p1, v2, v3, v4}, Ljj$/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljj$/time/temporal/ChronoField;J)V

    :cond_45
    return-void
.end method

.method resolveYAA(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 12

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v0

    sget-object v1, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_50

    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v5

    invoke-virtual {p0, v0, v2}, Ljj$/time/chrono/AbstractChronology;->dateYearDay(II)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v3, v4, v2}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v5, v6, v2}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_50
    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v3

    sget-object v4, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v3

    invoke-virtual {p0, v0, v2}, Ljj$/time/chrono/AbstractChronology;->dateYearDay(II)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    add-int/lit8 v4, v1, -0x1

    mul-int/lit8 v4, v4, 0x7

    add-int/lit8 v5, v3, -0x1

    add-int/2addr v4, v5

    int-to-long v4, v4

    sget-object v6, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v6}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    sget-object v4, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    if-ne p2, v4, :cond_a7

    sget-object v4, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Ljj$/time/chrono/ChronoLocalDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v4

    if-ne v4, v0, :cond_9f

    goto :goto_a7

    :cond_9f
    new-instance v4, Ljj$/time/DateTimeException;

    const-string v5, "Strict mode rejected resolved date as it is in a different year"

    invoke-direct {v4, v5}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a7
    :goto_a7
    return-object v2
.end method

.method resolveYAD(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 14

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v3, v4}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v8

    sget-object v1, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_4c

    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10, v5, v6}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v6

    invoke-virtual {p0, v8, v2}, Ljj$/time/chrono/AbstractChronology;->dateYearDay(II)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    move-wide v4, v3

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Ljj$/time/chrono/AbstractChronology;->resolveAligned(Ljj$/time/chrono/ChronoLocalDate;JJJ)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_4c
    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v3

    sget-object v4, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v3

    invoke-virtual {p0, v8, v2}, Ljj$/time/chrono/AbstractChronology;->dateYearDay(II)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    add-int/lit8 v4, v1, -0x1

    mul-int/lit8 v4, v4, 0x7

    int-to-long v4, v4

    sget-object v6, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v6}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-static {v3}, Ljj$/time/DayOfWeek;->of(I)Ljj$/time/DayOfWeek;

    move-result-object v4

    invoke-static {v4}, Ljj$/time/temporal/TemporalAdjusters;->nextOrSame(Ljj$/time/DayOfWeek;)Ljj$/time/temporal/TemporalAdjuster;

    move-result-object v4

    invoke-interface {v2, v4}, Ljj$/time/chrono/ChronoLocalDate;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    sget-object v4, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    if-ne p2, v4, :cond_ac

    sget-object v4, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Ljj$/time/chrono/ChronoLocalDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v4

    if-ne v4, v8, :cond_a4

    goto :goto_ac

    :cond_a4
    new-instance v4, Ljj$/time/DateTimeException;

    const-string v5, "Strict mode rejected resolved date as it is in a different year"

    invoke-direct {v4, v5}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_ac
    :goto_ac
    return-object v2
.end method

.method resolveYD(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 8

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v0

    sget-object v1, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-ne p2, v1, :cond_3a

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Ljj$/time/chrono/AbstractChronology;->dateYearDay(II)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v3

    sget-object v4, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v3, v1, v2, v4}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v3

    return-object v3

    :cond_3a
    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v3, v4}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljj$/time/chrono/AbstractChronology;->dateYearDay(II)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    return-object v2
.end method

.method resolveYMAA(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 14

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v0

    sget-object v1, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_66

    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v7

    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10, v5, v6}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v5

    invoke-virtual {p0, v0, v2, v2}, Ljj$/time/chrono/AbstractChronology;->date(III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v3, v4, v2}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->WEEKS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v7, v8, v2}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v5, v6, v2}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_66
    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v3

    sget-object v4, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v3

    sget-object v4, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v4

    sget-object v5, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v4, v5, v6, v7}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v4

    invoke-virtual {p0, v0, v1, v2}, Ljj$/time/chrono/AbstractChronology;->date(III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    add-int/lit8 v5, v3, -0x1

    mul-int/lit8 v5, v5, 0x7

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v5, v6

    int-to-long v5, v5

    sget-object v7, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v2, v5, v6, v7}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    sget-object v5, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    if-ne p2, v5, :cond_d5

    sget-object v5, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v2, v5}, Ljj$/time/chrono/ChronoLocalDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v5

    if-ne v5, v1, :cond_cd

    goto :goto_d5

    :cond_cd
    new-instance v5, Ljj$/time/DateTimeException;

    const-string v6, "Strict mode rejected resolved date as it is in a different month"

    invoke-direct {v5, v6}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d5
    :goto_d5
    return-object v2
.end method

.method resolveYMAD(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 18

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v8, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v3, v4}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v10

    sget-object v1, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    const/4 v2, 0x1

    if-ne v9, v1, :cond_5f

    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    sget-object v1, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12, v5, v6}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v11

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {v8, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14, v5, v6}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v6

    invoke-virtual {p0, v10, v2, v2}, Ljj$/time/chrono/AbstractChronology;->date(III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    move-object v0, p0

    move-wide v2, v3

    move-wide v4, v11

    invoke-virtual/range {v0 .. v7}, Ljj$/time/chrono/AbstractChronology;->resolveAligned(Ljj$/time/chrono/ChronoLocalDate;JJJ)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_5f
    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v8, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v3

    sget-object v4, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {v8, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v3

    sget-object v4, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v4

    sget-object v5, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {v8, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v4, v5, v6, v7}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v4

    invoke-virtual {p0, v10, v1, v2}, Ljj$/time/chrono/AbstractChronology;->date(III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    add-int/lit8 v5, v3, -0x1

    mul-int/lit8 v5, v5, 0x7

    int-to-long v5, v5

    sget-object v7, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v2, v5, v6, v7}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-static {v4}, Ljj$/time/DayOfWeek;->of(I)Ljj$/time/DayOfWeek;

    move-result-object v5

    invoke-static {v5}, Ljj$/time/temporal/TemporalAdjusters;->nextOrSame(Ljj$/time/DayOfWeek;)Ljj$/time/temporal/TemporalAdjuster;

    move-result-object v5

    invoke-interface {v2, v5}, Ljj$/time/chrono/ChronoLocalDate;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    sget-object v5, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    if-ne v9, v5, :cond_d7

    sget-object v5, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v2, v5}, Ljj$/time/chrono/ChronoLocalDate;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v5

    if-ne v5, v1, :cond_cf

    goto :goto_d7

    :cond_cf
    new-instance v5, Ljj$/time/DateTimeException;

    const-string v6, "Strict mode rejected resolved date as it is in a different month"

    invoke-direct {v5, v6}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d7
    :goto_d7
    return-object v2
.end method

.method resolveYMD(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 12

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v0

    sget-object v1, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_50

    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v3

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljj$/time/Instant$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v5

    invoke-virtual {p0, v0, v2, v2}, Ljj$/time/chrono/AbstractChronology;->date(III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->MONTHS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v3, v4, v2}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoUnit;->DAYS:Ljj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v5, v6, v2}, Ljj$/time/chrono/ChronoLocalDate;->plus(JLjj$/time/temporal/TemporalUnit;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    :cond_50
    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v3

    sget-object v4, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v4

    sget-object v5, Ljj$/time/format/ResolverStyle;->SMART:Ljj$/time/format/ResolverStyle;

    if-ne p2, v5, :cond_97

    :try_start_84
    invoke-virtual {p0, v0, v1, v4}, Ljj$/time/chrono/AbstractChronology;->date(III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2
    :try_end_88
    .catch Ljj$/time/DateTimeException; {:try_start_84 .. :try_end_88} :catch_89

    return-object v2

    :catch_89
    move-exception v5

    invoke-virtual {p0, v0, v1, v2}, Ljj$/time/chrono/AbstractChronology;->date(III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-static {}, Ljj$/time/temporal/TemporalAdjusters;->lastDayOfMonth()Ljj$/time/temporal/TemporalAdjuster;

    move-result-object v6

    invoke-interface {v2, v6}, Ljj$/time/chrono/ChronoLocalDate;->with(Ljj$/time/temporal/TemporalAdjuster;)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    return-object v2

    :cond_97
    invoke-virtual {p0, v0, v1, v4}, Ljj$/time/chrono/AbstractChronology;->date(III)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    return-object v2
.end method

.method resolveYearOfEra(Ljava/util/Map;Ljj$/time/format/ResolverStyle;)Ljj$/time/chrono/ChronoLocalDate;
    .registers 11

    sget-object v0, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_b6

    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sget-object v2, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    if-eq p2, v2, :cond_27

    sget-object v2, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v4, v5}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v2

    goto :goto_2f

    :cond_27
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    :goto_2f
    if-eqz v1, :cond_51

    sget-object v3, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v3

    invoke-virtual {p0, v3}, Ljj$/time/chrono/AbstractChronology;->eraOf(I)Ljj$/time/chrono/Era;

    move-result-object v3

    sget-object v4, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3, v2}, Ljj$/time/chrono/AbstractChronology;->prolepticYear(Ljj$/time/chrono/Era;I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, p1, v4, v5, v6}, Ljj$/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljj$/time/temporal/ChronoField;J)V

    goto/16 :goto_d6

    :cond_51
    sget-object v3, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_85

    sget-object v3, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v3

    sget-object v5, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v3, v5, v6, v7}, Ljj$/time/temporal/ValueRange;->checkValidIntValue(JLjj$/time/temporal/TemporalField;)I

    move-result v3

    invoke-virtual {p0, v3, v4}, Ljj$/time/chrono/AbstractChronology;->dateYearDay(II)Ljj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    sget-object v5, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v4}, Ljj$/time/chrono/ChronoLocalDate;->getEra()Ljj$/time/chrono/Era;

    move-result-object v6

    invoke-virtual {p0, v6, v2}, Ljj$/time/chrono/AbstractChronology;->prolepticYear(Ljj$/time/chrono/Era;I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, p1, v5, v6, v7}, Ljj$/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljj$/time/temporal/ChronoField;J)V

    goto :goto_d6

    :cond_85
    sget-object v3, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    if-ne p2, v3, :cond_8f

    sget-object v3, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d6

    :cond_8f
    invoke-virtual {p0}, Ljj$/time/chrono/AbstractChronology;->eras()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a0

    sget-object v4, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    int-to-long v5, v2

    invoke-virtual {p0, p1, v4, v5, v6}, Ljj$/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljj$/time/temporal/ChronoField;J)V

    goto :goto_d6

    :cond_a0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljj$/time/chrono/Era;

    sget-object v5, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v4, v2}, Ljj$/time/chrono/AbstractChronology;->prolepticYear(Ljj$/time/chrono/Era;I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, p1, v5, v6, v7}, Ljj$/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Ljj$/time/temporal/ChronoField;J)V

    goto :goto_d6

    :cond_b6
    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    sget-object v1, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Ljj$/time/chrono/AbstractChronology;->range(Ljj$/time/temporal/ChronoField;)Ljj$/time/temporal/ValueRange;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v3, v4}, Ljj$/time/temporal/ValueRange;->checkValidValue(JLjj$/time/temporal/TemporalField;)J

    goto :goto_d7

    :cond_d6
    :goto_d6
    nop

    :goto_d7
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3

    invoke-virtual {p0}, Ljj$/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/chrono/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljj$/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method

.method public synthetic zonedDateTime(Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/time/chrono/Chronology$-CC;->$default$zonedDateTime(Ljj$/time/chrono/Chronology;Ljj$/time/Instant;Ljj$/time/ZoneId;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public synthetic zonedDateTime(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoZonedDateTime;
    .registers 2

    invoke-static {p0, p1}, Ljj$/time/chrono/Chronology$-CC;->$default$zonedDateTime(Ljj$/time/chrono/Chronology;Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method
