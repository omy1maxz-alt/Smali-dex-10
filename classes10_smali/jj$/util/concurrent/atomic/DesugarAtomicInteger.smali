.class public Ljj$/util/concurrent/atomic/DesugarAtomicInteger;
.super Ljava/lang/Object;
.source "DesugarAtomicInteger.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accumulateAndGet(Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/function/IntBinaryOperator;)I
    .registers 6

    nop

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-interface {p2, v0, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1
.end method

.method public static getAndAccumulate(Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/function/IntBinaryOperator;)I
    .registers 6

    nop

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-interface {p2, v0, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0
.end method

.method public static getAndUpdate(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/function/IntUnaryOperator;)I
    .registers 5

    nop

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0
.end method

.method public static updateAndGet(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/function/IntUnaryOperator;)I
    .registers 5

    nop

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1
.end method
