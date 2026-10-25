.class public final Lorg/mozilla/javascript/NativeArrayIterator;
.super Lorg/mozilla/javascript/ES6Iterator;
.source "NativeArrayIterator.java"


# static fields
.field private static final ITERATOR_TAG:Ljava/lang/String; = "ArrayIterator"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private arrayLike:Lorg/mozilla/javascript/Scriptable;

.field private index:I

.field private type:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ES6Iterator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V
    .registers 5

    const-string v0, "ArrayIterator"

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ES6Iterator;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/javascript/NativeArrayIterator;->index:I

    iput-object p2, p0, Lorg/mozilla/javascript/NativeArrayIterator;->arrayLike:Lorg/mozilla/javascript/Scriptable;

    iput-object p3, p0, Lorg/mozilla/javascript/NativeArrayIterator;->type:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    return-void
.end method

.method static init(Lorg/mozilla/javascript/ScriptableObject;Z)V
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/NativeArrayIterator;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>()V

    const-string v1, "ArrayIterator"

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/ES6Iterator;->init(Lorg/mozilla/javascript/ScriptableObject;ZLorg/mozilla/javascript/IdScriptableObject;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Array Iterator"

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .registers 2

    const-string v0, "ArrayIterator"

    return-object v0
.end method

.method protected isDone(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 7

    iget p2, p0, Lorg/mozilla/javascript/NativeArrayIterator;->index:I

    int-to-long v0, p2

    iget-object p2, p0, Lorg/mozilla/javascript/NativeArrayIterator;->arrayLike:Lorg/mozilla/javascript/Scriptable;

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide p1

    cmp-long v3, v0, p1

    if-ltz v3, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method protected nextValue(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArrayIterator;->type:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    sget-object v1, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->KEYS:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    if-ne v0, v1, :cond_11

    iget p1, p0, Lorg/mozilla/javascript/NativeArrayIterator;->index:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/mozilla/javascript/NativeArrayIterator;->index:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_11
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArrayIterator;->arrayLike:Lorg/mozilla/javascript/Scriptable;

    iget v1, p0, Lorg/mozilla/javascript/NativeArrayIterator;->index:I

    invoke-interface {v0, v1, v0}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_1f

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_1f
    iget-object v1, p0, Lorg/mozilla/javascript/NativeArrayIterator;->type:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    sget-object v2, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->ENTRIES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_38

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v4, p0, Lorg/mozilla/javascript/NativeArrayIterator;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    invoke-virtual {p1, p2, v1}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    :cond_38
    iget p1, p0, Lorg/mozilla/javascript/NativeArrayIterator;->index:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/mozilla/javascript/NativeArrayIterator;->index:I

    return-object v0
.end method
