.class Lorg/mozilla/javascript/tools/shell/Main$ScriptCache;
.super Ljava/util/LinkedHashMap;
.source "Main.java"


# static fields
.field private static final serialVersionUID:J = -0x5f4bf94615665747L


# instance fields
.field capacity:I

.field queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method constructor <init>(I)V
    .registers 5

    add-int/lit8 v0, p1, 0x1

    const/high16 v1, 0x40000000  # 2.0f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput p1, p0, Lorg/mozilla/javascript/tools/shell/Main$ScriptCache;->capacity:I

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/Main$ScriptCache;->queue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;[B)Lorg/mozilla/javascript/tools/shell/Main$ScriptReference;
    .registers 4

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/Main$ScriptCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/tools/shell/Main$ScriptReference;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lorg/mozilla/javascript/tools/shell/Main$ScriptReference;->path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_10
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/tools/shell/Main$ScriptReference;

    if-eqz p1, :cond_26

    iget-object v0, p1, Lorg/mozilla/javascript/tools/shell/Main$ScriptReference;->digest:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_26

    iget-object p1, p1, Lorg/mozilla/javascript/tools/shell/Main$ScriptReference;->path:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    :cond_26
    return-object p1
.end method

.method put(Ljava/lang/String;[BLorg/mozilla/javascript/Script;)V
    .registers 6

    new-instance v0, Lorg/mozilla/javascript/tools/shell/Main$ScriptReference;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/Main$ScriptCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/mozilla/javascript/tools/shell/Main$ScriptReference;-><init>(Ljava/lang/String;[BLorg/mozilla/javascript/Script;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    iget v0, p0, Lorg/mozilla/javascript/tools/shell/Main$ScriptCache;->capacity:I

    if-le p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
