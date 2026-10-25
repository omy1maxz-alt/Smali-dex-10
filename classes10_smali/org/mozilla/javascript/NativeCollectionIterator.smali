.class public Lorg/mozilla/javascript/NativeCollectionIterator;
.super Lorg/mozilla/javascript/ES6Iterator;
.source "NativeCollectionIterator.java"


# static fields
.field private static final serialVersionUID:J = 0x6275f047db483dc3L


# instance fields
.field private className:Ljava/lang/String;

.field private transient iterator:Ljava/util/Iterator;

.field private type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/javascript/ES6Iterator;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    iput-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->className:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    sget-object p1, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->BOTH:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    iput-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/NativeCollectionIterator$Type;Ljava/util/Iterator;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ES6Iterator;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    iput-object p2, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->className:Ljava/lang/String;

    iput-object p4, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    iput-object p3, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    return-void
.end method

.method static init(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Z)V
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/NativeCollectionIterator;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/NativeCollectionIterator;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, v0, p1}, Lorg/mozilla/javascript/ES6Iterator;->init(Lorg/mozilla/javascript/ScriptableObject;ZLorg/mozilla/javascript/IdScriptableObject;Ljava/lang/String;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->className:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    iput-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->className:Ljava/lang/String;

    return-object v0
.end method

.method protected isDone(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 3

    iget-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected nextValue(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Hashtable$Entry;

    sget-object v1, Lorg/mozilla/javascript/NativeCollectionIterator$1;->$SwitchMap$org$mozilla$javascript$NativeCollectionIterator$Type:[I

    iget-object v2, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_34

    const/4 v3, 0x2

    if-eq v1, v3, :cond_31

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2b

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    aput-object v4, v1, v3

    iget-object v0, v0, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, p2, v1}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_2b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_31
    iget-object p1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    return-object p1

    :cond_34
    iget-object p1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    return-object p1
.end method
