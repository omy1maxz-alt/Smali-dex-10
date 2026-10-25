.class final Ljj$/time/ZoneRegion;
.super Ljj$/time/ZoneId;
.source "ZoneRegion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x746262147bb70e18L


# instance fields
.field private final id:Ljava/lang/String;

.field private final transient rules:Ljj$/time/zone/ZoneRules;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljj$/time/zone/ZoneRules;)V
    .registers 3

    invoke-direct {p0}, Ljj$/time/ZoneId;-><init>()V

    iput-object p1, p0, Ljj$/time/ZoneRegion;->id:Ljava/lang/String;

    iput-object p2, p0, Ljj$/time/ZoneRegion;->rules:Ljj$/time/zone/ZoneRules;

    return-void
.end method

.method private static checkName(Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "Invalid ID for region-based ZoneId, invalid format: "

    if-lt v0, v1, :cond_71

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_70

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_19

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_19

    goto :goto_56

    :cond_19
    const/16 v4, 0x41

    if-lt v3, v4, :cond_22

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_22

    goto :goto_56

    :cond_22
    const/16 v4, 0x2f

    if-ne v3, v4, :cond_29

    if-eqz v1, :cond_29

    goto :goto_56

    :cond_29
    const/16 v4, 0x30

    if-lt v3, v4, :cond_34

    const/16 v4, 0x39

    if-gt v3, v4, :cond_34

    if-eqz v1, :cond_34

    goto :goto_56

    :cond_34
    const/16 v4, 0x7e

    if-ne v3, v4, :cond_3b

    if-eqz v1, :cond_3b

    goto :goto_56

    :cond_3b
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_42

    if-eqz v1, :cond_42

    goto :goto_56

    :cond_42
    const/16 v4, 0x5f

    if-ne v3, v4, :cond_49

    if-eqz v1, :cond_49

    goto :goto_56

    :cond_49
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_50

    if-eqz v1, :cond_50

    goto :goto_56

    :cond_50
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_59

    if-eqz v1, :cond_59

    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_59
    new-instance v4, Ljj$/time/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_70
    return-void

    :cond_71
    new-instance v1, Ljj$/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static ofId(Ljava/lang/String;Z)Ljj$/time/ZoneRegion;
    .registers 4

    const-string v0, "zoneId"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Ljj$/time/ZoneRegion;->checkName(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_a
    invoke-static {p0, v1}, Ljj$/time/zone/ZoneRulesProvider;->getRules(Ljava/lang/String;Z)Ljj$/time/zone/ZoneRules;

    move-result-object v1
    :try_end_e
    .catch Ljj$/time/zone/ZoneRulesException; {:try_start_a .. :try_end_e} :catch_10

    move-object v0, v1

    goto :goto_13

    :catch_10
    move-exception v1

    if-nez p1, :cond_19

    :goto_13
    new-instance v1, Ljj$/time/ZoneRegion;

    invoke-direct {v1, p0, v0}, Ljj$/time/ZoneRegion;-><init>(Ljava/lang/String;Ljj$/time/zone/ZoneRules;)V

    return-object v1

    :cond_19
    throw v1
.end method

.method static readExternal(Ljava/io/DataInput;)Ljj$/time/ZoneId;
    .registers 3

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/time/ZoneId;->of(Ljava/lang/String;Z)Ljj$/time/ZoneId;

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

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljj$/time/Ser;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Ljj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/time/ZoneRegion;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRules()Ljj$/time/zone/ZoneRules;
    .registers 3

    iget-object v0, p0, Ljj$/time/ZoneRegion;->rules:Ljj$/time/zone/ZoneRules;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljj$/time/ZoneRegion;->rules:Ljj$/time/zone/ZoneRules;

    goto :goto_e

    :cond_7
    iget-object v0, p0, Ljj$/time/ZoneRegion;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/time/zone/ZoneRulesProvider;->getRules(Ljava/lang/String;Z)Ljj$/time/zone/ZoneRules;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method write(Ljava/io/DataOutput;)V
    .registers 3

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-virtual {p0, p1}, Ljj$/time/ZoneRegion;->writeExternal(Ljava/io/DataOutput;)V

    return-void
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3

    iget-object v0, p0, Ljj$/time/ZoneRegion;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
