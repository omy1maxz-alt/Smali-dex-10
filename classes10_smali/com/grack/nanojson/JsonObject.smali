.class public Lcom/grack/nanojson/JsonObject;
.super Ljava/util/LinkedHashMap;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static builder()Lcom/grack/nanojson/JsonBuilder;
    .registers 2

    new-instance v0, Lcom/grack/nanojson/JsonBuilder;

    new-instance v1, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v1}, Lcom/grack/nanojson/JsonObject;-><init>()V

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonBuilder;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;
    .registers 3

    new-instance v0, Lcom/grack/nanojson/JsonArray;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonArray;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;Lcom/grack/nanojson/JsonArray;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    return-object p1
.end method

.method public getArray(Ljava/lang/String;Lcom/grack/nanojson/JsonArray;)Lcom/grack/nanojson/JsonArray;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/grack/nanojson/JsonArray;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/grack/nanojson/JsonArray;

    return-object p1

    :cond_b
    return-object p2
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_f
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 5

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_f
    return-wide p2
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonObject;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 4

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1

    :cond_f
    return p2
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_f
    return p2
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 5

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_f
    return-wide p2
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonObject;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Number;

    return-object p1

    :cond_b
    return-object p2
.end method

.method public getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .registers 3

    new-instance v0, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonObject;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    return-object p1

    :cond_b
    return-object p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_b
    return-object p2
.end method

.method public has(Ljava/lang/String;)Z
    .registers 2

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isBoolean(Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Boolean;

    return p1
.end method

.method public isNull(Ljava/lang/String;)Z
    .registers 3

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public isNumber(Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Number;

    return p1
.end method

.method public isString(Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/String;

    return p1
.end method
