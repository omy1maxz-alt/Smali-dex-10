.class public Ljj$/util/concurrent/atomic/DesugarAtomicLong;
.super Ljava/lang/Object;
.source "DesugarAtomicLong.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accumulateAndGet(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/function/LongBinaryOperator;)J
    .registers 9

    nop

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-interface {p3, v0, v1, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    return-wide v2
.end method

.method public static getAndAccumulate(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/function/LongBinaryOperator;)J
    .registers 9

    nop

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-interface {p3, v0, v1, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    return-wide v0
.end method

.method public static getAndUpdate(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/function/LongUnaryOperator;)J
    .registers 7

    nop

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    return-wide v0
.end method

.method public static updateAndGet(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/function/LongUnaryOperator;)J
    .registers 7

    nop

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    return-wide v2
.end method
