.class public abstract Ljj$/time/ZoneId;
.super Ljava/lang/Object;
.source "ZoneId.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SHORT_IDS:Ljava/util/Map;

.field private static final serialVersionUID:J = 0x798cab446e6L


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/util/Map$Entry;

    const-string v1, "ACT"

    const-string v2, "Australia/Darwin"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "AET"

    const-string v2, "Australia/Sydney"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "AGT"

    const-string v2, "America/Argentina/Buenos_Aires"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "ART"

    const-string v2, "Africa/Cairo"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "AST"

    const-string v2, "America/Anchorage"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "BET"

    const-string v2, "America/Sao_Paulo"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "BST"

    const-string v2, "Asia/Dhaka"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "CAT"

    const-string v2, "Africa/Harare"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "CNT"

    const-string v2, "America/St_Johns"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "CST"

    const-string v2, "America/Chicago"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "CTT"

    const-string v2, "Asia/Shanghai"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "EAT"

    const-string v2, "Africa/Addis_Ababa"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "ECT"

    const-string v2, "Europe/Paris"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "IET"

    const-string v2, "America/Indiana/Indianapolis"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "IST"

    const-string v2, "Asia/Kolkata"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "JST"

    const-string v2, "Asia/Tokyo"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "MIT"

    const-string v2, "Pacific/Apia"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "NET"

    const-string v2, "Asia/Yerevan"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "NST"

    const-string v2, "Pacific/Auckland"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "PLT"

    const-string v2, "Asia/Karachi"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "PNT"

    const-string v2, "America/Phoenix"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "PRT"

    const-string v2, "America/Puerto_Rico"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "PST"

    const-string v2, "America/Los_Angeles"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "SST"

    const-string v2, "Pacific/Guadalcanal"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "VST"

    const-string v2, "Asia/Ho_Chi_Minh"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "EST"

    const-string v2, "-05:00"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "MST"

    const-string v2, "-07:00"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "HST"

    const-string v2, "-10:00"

    invoke-static {v1, v2}, Ljj$/time/ZoneId$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    invoke-static {v0}, Ljj$/time/ZoneId$$ExternalSyntheticBackport1;->m([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ljj$/time/ZoneId;->SHORT_IDS:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljj$/time/ZoneOffset;

    if-eq v0, v1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljj$/time/ZoneRegion;

    if-ne v0, v1, :cond_14

    goto :goto_1c

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid subclass"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/ZoneId;
    .registers 6

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zone()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/ZoneId;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain ZoneId from TemporalAccessor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAvailableZoneIds()Ljava/util/Set;
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Ljj$/time/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Ljj$/time/ZoneId;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljj$/time/ZoneId;->of(Ljava/lang/String;Z)Ljj$/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/util/Map;)Ljj$/time/ZoneId;
    .registers 4

    const-string v0, "zoneId"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "aliasMap"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Ljj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljj$/time/ZoneId;->of(Ljava/lang/String;)Ljj$/time/ZoneId;

    move-result-object v1

    return-object v1
.end method

.method static of(Ljava/lang/String;Z)Ljj$/time/ZoneId;
    .registers 4

    const-string v0, "zoneId"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_47

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_47

    :cond_1d
    const-string v0, "UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "GMT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_41

    :cond_2e
    const-string v0, "UT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Ljj$/time/ZoneId;->ofWithPrefix(Ljava/lang/String;IZ)Ljj$/time/ZoneId;

    move-result-object v0

    return-object v0

    :cond_3c
    invoke-static {p0, p1}, Ljj$/time/ZoneRegion;->ofId(Ljava/lang/String;Z)Ljj$/time/ZoneRegion;

    move-result-object v0

    return-object v0

    :cond_41
    :goto_41
    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Ljj$/time/ZoneId;->ofWithPrefix(Ljava/lang/String;IZ)Ljj$/time/ZoneId;

    move-result-object v0

    return-object v0

    :cond_47
    :goto_47
    invoke-static {p0}, Ljj$/time/ZoneOffset;->of(Ljava/lang/String;)Ljj$/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public static ofOffset(Ljava/lang/String;Ljj$/time/ZoneOffset;)Ljj$/time/ZoneId;
    .registers 5

    const-string v0, "prefix"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offset"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p1

    :cond_11
    const-string v0, "GMT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "UT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_43

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefix should be GMT, UTC or UT, is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    :goto_43
    invoke-virtual {p1}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Ljj$/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_51
    new-instance v0, Ljj$/time/ZoneRegion;

    invoke-virtual {p1}, Ljj$/time/ZoneOffset;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljj$/time/ZoneRegion;-><init>(Ljava/lang/String;Ljj$/time/zone/ZoneRules;)V

    return-object v0
.end method

.method private static ofWithPrefix(Ljava/lang/String;IZ)Ljj$/time/ZoneId;
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, p1, :cond_12

    sget-object v1, Ljj$/time/ZoneOffset;->UTC:Ljj$/time/ZoneOffset;

    invoke-static {v0, v1}, Ljj$/time/ZoneId;->ofOffset(Ljava/lang/String;Ljj$/time/ZoneOffset;)Ljj$/time/ZoneId;

    move-result-object v1

    return-object v1

    :cond_12
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_27

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_27

    invoke-static {p0, p2}, Ljj$/time/ZoneRegion;->ofId(Ljava/lang/String;Z)Ljj$/time/ZoneRegion;

    move-result-object v1

    return-object v1

    :cond_27
    :try_start_27
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljj$/time/ZoneOffset;->of(Ljava/lang/String;)Ljj$/time/ZoneOffset;

    move-result-object v1

    sget-object v2, Ljj$/time/ZoneOffset;->UTC:Ljj$/time/ZoneOffset;

    if-ne v1, v2, :cond_38

    invoke-static {v0, v1}, Ljj$/time/ZoneId;->ofOffset(Ljava/lang/String;Ljj$/time/ZoneOffset;)Ljj$/time/ZoneId;

    move-result-object v2

    return-object v2

    :cond_38
    invoke-static {v0, v1}, Ljj$/time/ZoneId;->ofOffset(Ljava/lang/String;Ljj$/time/ZoneOffset;)Ljj$/time/ZoneId;

    move-result-object v2
    :try_end_3c
    .catch Ljj$/time/DateTimeException; {:try_start_27 .. :try_end_3c} :catch_3d

    return-object v2

    :catch_3d
    move-exception v1

    new-instance v2, Ljj$/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ID for offset-based ZoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static systemDefault()Ljj$/time/ZoneId;
    .registers 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/TimeZoneRetargetClass;->toZoneId(Ljava/util/TimeZone;)Ljj$/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method private toTemporal()Ljj$/time/temporal/TemporalAccessor;
    .registers 2

    new-instance v0, Ljj$/time/ZoneId$1;

    invoke-direct {v0, p0}, Ljj$/time/ZoneId$1;-><init>(Ljj$/time/ZoneId;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/Ser;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Ljj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Ljj$/time/ZoneId;

    if-eqz v0, :cond_18

    move-object v0, p1

    check-cast v0, Ljj$/time/ZoneId;

    invoke-virtual {p0}, Ljj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName(Ljj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-direct {p0}, Ljj$/time/ZoneId;->toTemporal()Ljj$/time/temporal/TemporalAccessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/time/format/DateTimeFormatter;->format(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getRules()Ljj$/time/zone/ZoneRules;
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Ljj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public normalized()Ljj$/time/ZoneId;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljj$/time/ZoneId;->getRules()Ljj$/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/zone/ZoneRules;->isFixedOffset()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Ljj$/time/Instant;->EPOCH:Ljj$/time/Instant;

    invoke-virtual {v0, v1}, Ljj$/time/zone/ZoneRules;->getOffset(Ljj$/time/Instant;)Ljj$/time/ZoneOffset;

    move-result-object v1
    :try_end_10
    .catch Ljj$/time/zone/ZoneRulesException; {:try_start_0 .. :try_end_10} :catch_12

    return-object v1

    :cond_11
    goto :goto_13

    :catch_12
    move-exception v0

    :goto_13
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract write(Ljava/io/DataOutput;)V
.end method
