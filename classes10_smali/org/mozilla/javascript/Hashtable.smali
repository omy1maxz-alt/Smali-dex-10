.class public Lorg/mozilla/javascript/Hashtable;
.super Ljava/lang/Object;
.source "Hashtable.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x633f6d4d62777ac3L


# instance fields
.field private first:Lorg/mozilla/javascript/Hashtable$Entry;

.field private last:Lorg/mozilla/javascript/Hashtable$Entry;

.field private final map:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/mozilla/javascript/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->map:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    return-void
.end method

.method static synthetic access$000()Lorg/mozilla/javascript/Hashtable$Entry;
    .registers 1

    invoke-static {}, Lorg/mozilla/javascript/Hashtable;->makeDummy()Lorg/mozilla/javascript/Hashtable$Entry;

    move-result-object v0

    return-object v0
.end method

.method private static makeDummy()Lorg/mozilla/javascript/Hashtable$Entry;
    .registers 1

    new-instance v0, Lorg/mozilla/javascript/Hashtable$Entry;

    invoke-direct {v0}, Lorg/mozilla/javascript/Hashtable$Entry;-><init>()V

    invoke-virtual {v0}, Lorg/mozilla/javascript/Hashtable$Entry;->clear()Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Hashtable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Hashtable$$ExternalSyntheticLambda0;->INSTANCE:Lorg/mozilla/javascript/Hashtable$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Ljj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljj$/util/function/Consumer;)V

    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v0, :cond_19

    invoke-static {}, Lorg/mozilla/javascript/Hashtable;->makeDummy()Lorg/mozilla/javascript/Hashtable$Entry;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v0, v1, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    :cond_19
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public delete(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/Hashtable$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/mozilla/javascript/Hashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/javascript/Hashtable;->map:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Hashtable$Entry;

    if-nez p1, :cond_11

    return-object v1

    :cond_11
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    if-ne p1, v0, :cond_2c

    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    if-ne p1, v0, :cond_1f

    invoke-virtual {p1}, Lorg/mozilla/javascript/Hashtable$Entry;->clear()Ljava/lang/Object;

    iput-object v1, p1, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    goto :goto_3d

    :cond_1f
    iget-object v0, p1, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    iget-object v1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v1, :cond_3d

    iput-object v0, v1, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    goto :goto_3d

    :cond_2c
    iget-object v0, p1, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    iget-object v2, p1, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v2, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v1, p1, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    iget-object v1, p1, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v1, :cond_3b

    iput-object v0, v1, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    goto :goto_3d

    :cond_3b
    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    :cond_3d
    :goto_3d
    invoke-virtual {p1}, Lorg/mozilla/javascript/Hashtable$Entry;->clear()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/Hashtable$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/mozilla/javascript/Hashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/javascript/Hashtable;->map:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Hashtable$Entry;

    if-nez p1, :cond_11

    return-object v1

    :cond_11
    iget-object p1, p1, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public has(Ljava/lang/Object;)Z
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/Hashtable$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/mozilla/javascript/Hashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/javascript/Hashtable;->map:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lorg/mozilla/javascript/Hashtable$Iter;

    iget-object v1, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Hashtable$Iter;-><init>(Lorg/mozilla/javascript/Hashtable$Entry;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/Hashtable$Entry;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/javascript/Hashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/javascript/Hashtable;->map:Ljava/util/HashMap;

    invoke-static {p1, v0, v0}, Ljj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Hashtable$Entry;

    if-nez p1, :cond_21

    iget-object p1, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    if-nez p1, :cond_18

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->first:Lorg/mozilla/javascript/Hashtable$Entry;

    goto :goto_23

    :cond_18
    iget-object p1, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v0, p1, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object p1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->prev:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable;->last:Lorg/mozilla/javascript/Hashtable$Entry;

    goto :goto_23

    :cond_21
    iput-object p2, p1, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    :goto_23
    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
