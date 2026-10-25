.class final Ljj$/time/zone/TzdbZoneRulesProvider;
.super Ljj$/time/zone/ZoneRulesProvider;
.source "TzdbZoneRulesProvider.java"


# instance fields
.field private regionIds:Ljava/util/List;

.field private final regionToRules:Ljava/util/Map;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljj$/time/zone/ZoneRulesProvider;-><init>()V

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljj$/time/zone/TzdbZoneRulesProvider;->regionToRules:Ljava/util/Map;

    :try_start_a
    const-class v0, Ljj$/time/zone/TzdbZoneRulesProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "jre.tzdb.dat"

    const-string v2, "j$/time/zone/tzdb.dat"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Ljj$/time/zone/TzdbZoneRulesProvider;->load(Ljava/io/DataInputStream;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_2f

    nop

    return-void

    :catch_2f
    move-exception v0

    new-instance v1, Ljj$/time/zone/ZoneRulesException;

    const-string v2, "Unable to load TZDB time-zone rules"

    invoke-direct {v1, v2, v0}, Ljj$/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private load(Ljava/io/DataInputStream;)V
    .registers 14

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const-string v2, "File format not recognised"

    if-ne v0, v1, :cond_85

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TZDB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_25

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljj$/time/zone/TzdbZoneRulesProvider;->versionId:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_25
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, v2, :cond_37

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_37
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Ljj$/time/zone/TzdbZoneRulesProvider;->regionIds:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    :goto_44
    if-ge v6, v4, :cond_54

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    new-array v7, v7, [B

    invoke-virtual {p1, v7}, Ljava/io/DataInputStream;->readFully([B)V

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    :cond_54
    const/4 v6, 0x0

    :goto_55
    if-ge v6, v1, :cond_7e

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    iget-object v8, p0, Ljj$/time/zone/TzdbZoneRulesProvider;->regionToRules:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    const/4 v8, 0x0

    :goto_61
    if-ge v8, v7, :cond_7b

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    aget-object v9, v3, v9

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    const v11, 0xffff

    and-int/2addr v10, v11

    aget-object v10, v5, v10

    iget-object v11, p0, Ljj$/time/zone/TzdbZoneRulesProvider;->regionToRules:Ljava/util/Map;

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_61

    :cond_7b
    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    :cond_7e
    return-void

    :cond_7f
    new-instance v1, Ljava/io/StreamCorruptedException;

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_85
    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected provideRules(Ljava/lang/String;Z)Ljj$/time/zone/ZoneRules;
    .registers 9

    iget-object v0, p0, Ljj$/time/zone/TzdbZoneRulesProvider;->regionToRules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4d

    :try_start_8
    instance-of v1, v0, [B

    if-eqz v1, :cond_23

    move-object v1, v0

    check-cast v1, [B

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Ljj$/time/zone/Ser;->read(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    iget-object v3, p0, Ljj$/time/zone/TzdbZoneRulesProvider;->regionToRules:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    move-object v1, v0

    check-cast v1, Ljj$/time/zone/ZoneRules;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_26} :catch_27

    return-object v1

    :catch_27
    move-exception v1

    new-instance v2, Ljj$/time/zone/ZoneRulesException;

    iget-object v3, p0, Ljj$/time/zone/TzdbZoneRulesProvider;->versionId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid binary time-zone data: TZDB:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljj$/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_4d
    new-instance v1, Ljj$/time/zone/ZoneRulesException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown time-zone ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .registers 5

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljj$/time/zone/TzdbZoneRulesProvider;->getRules(Ljava/lang/String;Z)Ljj$/time/zone/ZoneRules;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v2, p0, Ljj$/time/zone/TzdbZoneRulesProvider;->versionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-object v0
.end method

.method protected provideZoneIds()Ljava/util/Set;
    .registers 3

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ljj$/time/zone/TzdbZoneRulesProvider;->regionIds:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljj$/time/zone/TzdbZoneRulesProvider;->versionId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TZDB["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
