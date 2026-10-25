.class public Ljj$/util/concurrent/atomic/DesugarAtomicReference;
.super Ljava/lang/Object;
.source "DesugarAtomicReference.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accumulateAndGet(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .registers 6

    nop

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1
.end method

.method public static getAndAccumulate(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .registers 6

    nop

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0
.end method

.method public static getAndUpdate(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/UnaryOperator;)Ljava/lang/Object;
    .registers 5

    nop

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0
.end method

.method public static updateAndGet(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/UnaryOperator;)Ljava/lang/Object;
    .registers 5

    nop

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1
.end method
