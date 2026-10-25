.class final Ljj$/time/zone/ZoneRulesProvider$TimeZoneRulesProvider;
.super Ljj$/time/zone/ZoneRulesProvider;
.source "ZoneRulesProvider.java"


# instance fields
.field private final zoneIds:Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljj$/time/zone/ZoneRulesProvider;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_18

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljj$/time/zone/ZoneRulesProvider$TimeZoneRulesProvider;->zoneIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected provideRules(Ljava/lang/String;Z)Ljj$/time/zone/ZoneRules;
    .registers 6

    iget-object v0, p0, Ljj$/time/zone/ZoneRulesProvider$TimeZoneRulesProvider;->zoneIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljj$/time/zone/ZoneRules;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/zone/ZoneRules;-><init>(Ljava/util/TimeZone;)V

    return-object v0

    :cond_12
    new-instance v0, Ljj$/time/zone/ZoneRulesException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a built-in time zone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljj$/time/zone/ZoneRulesProvider$TimeZoneRulesProvider;->provideRules(Ljava/lang/String;Z)Ljj$/time/zone/ZoneRules;

    move-result-object v0

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "builtin"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method protected provideZoneIds()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Ljj$/time/zone/ZoneRulesProvider$TimeZoneRulesProvider;->zoneIds:Ljava/util/Set;

    return-object v0
.end method
