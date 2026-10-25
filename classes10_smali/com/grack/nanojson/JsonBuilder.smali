.class public final Lcom/grack/nanojson/JsonBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/grack/nanojson/JsonSink;


# instance fields
.field private json:Ljava/util/Stack;

.field private root:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/util/Stack;

    iput-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private arr()Lcom/grack/nanojson/JsonArray;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonArray;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v0, Lcom/grack/nanojson/JsonWriterException;

    const-string v1, "Attempted to write a non-keyed value to a JsonObject"

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private obj()Lcom/grack/nanojson/JsonObject;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v0, Lcom/grack/nanojson/JsonWriterException;

    const-string v1, "Attempted to write a keyed value to a JsonArray"

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public array()Lcom/grack/nanojson/JsonBuilder;
    .registers 3

    new-instance v0, Lcom/grack/nanojson/JsonArray;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonArray;-><init>()V

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    iget-object v1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public array(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;
    .registers 3

    new-instance v0, Lcom/grack/nanojson/JsonArray;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonArray;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    iget-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public array(Ljava/lang/String;Ljava/util/Collection;)Lcom/grack/nanojson/JsonBuilder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public array(Ljava/util/Collection;)Lcom/grack/nanojson/JsonBuilder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic array()Lcom/grack/nanojson/JsonSink;
    .registers 2

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->array()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic array(Ljava/lang/String;)Lcom/grack/nanojson/JsonSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic array(Ljava/lang/String;Ljava/util/Collection;)Lcom/grack/nanojson/JsonSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->array(Ljava/lang/String;Ljava/util/Collection;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic array(Ljava/util/Collection;)Lcom/grack/nanojson/JsonSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->array(Ljava/util/Collection;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public done()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    return-object v0
.end method

.method public end()Lcom/grack/nanojson/JsonBuilder;
    .registers 3

    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-object p0

    :cond_f
    new-instance v0, Lcom/grack/nanojson/JsonWriterException;

    const-string v1, "Cannot end the root object or array"

    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonWriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic end()Lcom/grack/nanojson/JsonSink;
    .registers 2

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method public nul()Lcom/grack/nanojson/JsonBuilder;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method public nul(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic nul()Lcom/grack/nanojson/JsonSink;
    .registers 2

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->nul()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nul(Ljava/lang/String;)Lcom/grack/nanojson/JsonSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->nul(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public object()Lcom/grack/nanojson/JsonBuilder;
    .registers 3

    new-instance v0, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    iget-object v1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;
    .registers 3

    new-instance v0, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonObject;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    iget-object p1, p0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public object(Ljava/lang/String;Ljava/util/Map;)Lcom/grack/nanojson/JsonBuilder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public object(Ljava/util/Map;)Lcom/grack/nanojson/JsonBuilder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic object()Lcom/grack/nanojson/JsonSink;
    .registers 2

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->object()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic object(Ljava/lang/String;)Lcom/grack/nanojson/JsonSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic object(Ljava/lang/String;Ljava/util/Map;)Lcom/grack/nanojson/JsonSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;Ljava/util/Map;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic object(Ljava/util/Map;)Lcom/grack/nanojson/JsonSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/util/Map;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public value(D)Lcom/grack/nanojson/JsonBuilder;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public value(F)Lcom/grack/nanojson/JsonBuilder;
    .registers 2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public value(I)Lcom/grack/nanojson/JsonBuilder;
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public value(J)Lcom/grack/nanojson/JsonBuilder;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/Number;)Lcom/grack/nanojson/JsonBuilder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;
    .registers 3

    invoke-direct {p0}, Lcom/grack/nanojson/JsonBuilder;->arr()Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonArray;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public value(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;D)Lcom/grack/nanojson/JsonBuilder;
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;F)Lcom/grack/nanojson/JsonBuilder;
    .registers 3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;
    .registers 3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;J)Lcom/grack/nanojson/JsonBuilder;
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;Ljava/lang/Number;)Lcom/grack/nanojson/JsonBuilder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;
    .registers 4

    invoke-direct {p0}, Lcom/grack/nanojson/JsonBuilder;->obj()Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/grack/nanojson/JsonObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;
    .registers 3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public value(Z)Lcom/grack/nanojson/JsonBuilder;
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(D)Lcom/grack/nanojson/JsonSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(D)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(F)Lcom/grack/nanojson/JsonSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(F)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(I)Lcom/grack/nanojson/JsonSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(I)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(J)Lcom/grack/nanojson/JsonSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(J)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/Number;)Lcom/grack/nanojson/JsonSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Number;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;)Lcom/grack/nanojson/JsonSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;D)Lcom/grack/nanojson/JsonSink;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;D)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;F)Lcom/grack/nanojson/JsonSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;F)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;J)Lcom/grack/nanojson/JsonSink;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;J)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;Ljava/lang/Number;)Lcom/grack/nanojson/JsonSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/Number;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/Object;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonSink;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic value(Z)Lcom/grack/nanojson/JsonSink;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Z)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    return-object p1
.end method
