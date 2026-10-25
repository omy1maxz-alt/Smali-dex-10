.class public Ljj$/util/DesugarTimeZone;
.super Ljava/lang/Object;
.source "DesugarTimeZone.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 2

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZone(Ljj$/time/ZoneId;)Ljava/util/TimeZone;
    .registers 5

    invoke-virtual {p0}, Ljj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_20

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_12

    goto :goto_20

    :cond_12
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_33

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_33

    const-string v0, "UTC"

    goto :goto_33

    :cond_20
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_33
    :goto_33
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    return-object v2
.end method

.method public static toZoneId(Ljava/util/TimeZone;)Ljj$/time/ZoneId;
    .registers 3

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljj$/time/ZoneId;->SHORT_IDS:Ljava/util/Map;

    invoke-static {v0, v1}, Ljj$/time/ZoneId;->of(Ljava/lang/String;Ljava/util/Map;)Ljj$/time/ZoneId;

    move-result-object v1

    return-object v1
.end method
