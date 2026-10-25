.class public Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;
.super Ljava/lang/Object;
.source "NativeTypedArrayIterator.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljj$/util/Iterator;


# instance fields
.field private lastPosition:I

.field private position:I

.field private final view:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->lastPosition:I

    iput-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->view:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    iput p2, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p1}, Ljj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Ljj$/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->forEachRemaining(Ljj$/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljj$/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Iterator$-CC;->$default$forEachRemaining(Ljava/util/Iterator;Ljj$/util/function/Consumer;)V

    return-void
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    iget-object v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->view:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    iget v1, v1, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->length:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->view:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    iput v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->lastPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    return-object v0

    :cond_17
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    iput v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->lastPosition:I

    iget-object v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->view:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->position:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->lastPosition:I

    if-ltz v0, :cond_a

    iget-object v1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayIterator;->view:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;

    invoke-virtual {v1, v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->js_set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
