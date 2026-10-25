.class public Lcom/grack/nanojson/JsonArray;
.super Ljava/util/ArrayList;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public static builder()Lcom/grack/nanojson/JsonBuilder;
    .registers 2

    new-instance v0, Lcom/grack/nanojson/JsonBuilder;

    new-instance v1, Lcom/grack/nanojson/JsonArray;

    invoke-direct {v1}, Lcom/grack/nanojson/JsonArray;-><init>()V

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonBuilder;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs from([Ljava/lang/Object;)Lcom/grack/nanojson/JsonArray;
    .registers 2

    new-instance v0, Lcom/grack/nanojson/JsonArray;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/grack/nanojson/JsonArray;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_b

    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getArray(I)Lcom/grack/nanojson/JsonArray;
    .registers 3

    new-instance v0, Lcom/grack/nanojson/JsonArray;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonArray;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonArray;->getArray(ILcom/grack/nanojson/JsonArray;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    return-object p1
.end method

.method public getArray(ILcom/grack/nanojson/JsonArray;)Lcom/grack/nanojson/JsonArray;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/grack/nanojson/JsonArray;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/grack/nanojson/JsonArray;

    return-object p1

    :cond_b
    return-object p2
.end method

.method public getBoolean(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonArray;->getBoolean(ILjava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method public getBoolean(ILjava/lang/Boolean;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

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

.method public getDouble(I)D
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/grack/nanojson/JsonArray;->getDouble(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(ID)D
    .registers 5

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

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

.method public getFloat(I)F
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonArray;->getFloat(IF)F

    move-result p1

    return p1
.end method

.method public getFloat(IF)F
    .registers 4

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

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

.method public getInt(I)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonArray;->getInt(II)I

    move-result p1

    return p1
.end method

.method public getInt(II)I
    .registers 4

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

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

.method public getLong(I)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/grack/nanojson/JsonArray;->getLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(IJ)J
    .registers 5

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

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

.method public getNumber(I)Ljava/lang/Number;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonArray;->getNumber(ILjava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public getNumber(ILjava/lang/Number;)Ljava/lang/Number;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Number;

    return-object p1

    :cond_b
    return-object p2
.end method

.method public getObject(I)Lcom/grack/nanojson/JsonObject;
    .registers 3

    new-instance v0, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonObject;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(ILcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    return-object p1
.end method

.method public getObject(ILcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    return-object p1

    :cond_b
    return-object p2
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonArray;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_b
    return-object p2
.end method

.method public has(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public isBoolean(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Boolean;

    return p1
.end method

.method public isNull(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public isNumber(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Number;

    return p1
.end method

.method public isString(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/String;

    return p1
.end method

.method public streamAs(Ljava/lang/Class;)Ljava/util/stream/Stream;
    .registers 4

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public streamAsJsonObjects()Ljava/util/stream/Stream;
    .registers 2

    const-class v0, Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->streamAs(Ljava/lang/Class;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
