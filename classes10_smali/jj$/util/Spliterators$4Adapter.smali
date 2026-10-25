.class Ljj$/util/Spliterators$4Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljj$/util/PrimitiveIterator$OfDouble;
.implements Ljava/util/function/DoubleConsumer;
.implements Ljj$/util/Iterator;


# instance fields
.field nextElement:D

.field final synthetic val$spliterator:Ljj$/util/Spliterator$OfDouble;

.field valueReady:Z


# direct methods
.method constructor <init>(Ljj$/util/Spliterator$OfDouble;)V
    .registers 2

    iput-object p1, p0, Ljj$/util/Spliterators$4Adapter;->val$spliterator:Ljj$/util/Spliterator$OfDouble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljj$/util/Spliterators$4Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/Spliterators$4Adapter;->valueReady:Z

    iput-wide p1, p0, Ljj$/util/Spliterators$4Adapter;->nextElement:D

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/PrimitiveIterator$OfDouble$-CC;->$default$forEachRemaining(Ljj$/util/PrimitiveIterator$OfDouble;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/PrimitiveIterator$OfDouble$-CC;->$default$forEachRemaining(Ljj$/util/PrimitiveIterator$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/PrimitiveIterator$OfDouble$-CC;->$default$forEachRemaining(Ljj$/util/PrimitiveIterator$OfDouble;Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/util/Spliterators$4Adapter;->valueReady:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Ljj$/util/Spliterators$4Adapter;->val$spliterator:Ljj$/util/Spliterator$OfDouble;

    invoke-interface {v0, p0}, Ljj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    :cond_9
    iget-boolean v0, p0, Ljj$/util/Spliterators$4Adapter;->valueReady:Z

    return v0
.end method

.method public synthetic next()Ljava/lang/Double;
    .registers 2

    invoke-static {p0}, Ljj$/util/PrimitiveIterator$OfDouble$-CC;->$default$next(Ljj$/util/PrimitiveIterator$OfDouble;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Ljj$/util/PrimitiveIterator$OfDouble$-CC;->$default$next(Ljj$/util/PrimitiveIterator$OfDouble;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextDouble()D
    .registers 3

    iget-boolean v0, p0, Ljj$/util/Spliterators$4Adapter;->valueReady:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Ljj$/util/Spliterators$4Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/util/Spliterators$4Adapter;->valueReady:Z

    iget-wide v0, p0, Ljj$/util/Spliterators$4Adapter;->nextElement:D

    return-wide v0
.end method
