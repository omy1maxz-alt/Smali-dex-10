.class Ljj$/util/Spliterators$2Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljj$/util/PrimitiveIterator$OfInt;
.implements Ljava/util/function/IntConsumer;
.implements Ljj$/util/Iterator;


# instance fields
.field nextElement:I

.field final synthetic val$spliterator:Ljj$/util/Spliterator$OfInt;

.field valueReady:Z


# direct methods
.method constructor <init>(Ljj$/util/Spliterator$OfInt;)V
    .registers 2

    iput-object p1, p0, Ljj$/util/Spliterators$2Adapter;->val$spliterator:Ljj$/util/Spliterator$OfInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljj$/util/Spliterators$2Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/util/Spliterators$2Adapter;->valueReady:Z

    iput p1, p0, Ljj$/util/Spliterators$2Adapter;->nextElement:I

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/PrimitiveIterator$OfInt$-CC;->$default$forEachRemaining(Ljj$/util/PrimitiveIterator$OfInt;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/PrimitiveIterator$OfInt$-CC;->$default$forEachRemaining(Ljj$/util/PrimitiveIterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/PrimitiveIterator$OfInt$-CC;->$default$forEachRemaining(Ljj$/util/PrimitiveIterator$OfInt;Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/util/Spliterators$2Adapter;->valueReady:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Ljj$/util/Spliterators$2Adapter;->val$spliterator:Ljj$/util/Spliterator$OfInt;

    invoke-interface {v0, p0}, Ljj$/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    :cond_9
    iget-boolean v0, p0, Ljj$/util/Spliterators$2Adapter;->valueReady:Z

    return v0
.end method

.method public synthetic next()Ljava/lang/Integer;
    .registers 2

    invoke-static {p0}, Ljj$/util/PrimitiveIterator$OfInt$-CC;->$default$next(Ljj$/util/PrimitiveIterator$OfInt;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Ljj$/util/PrimitiveIterator$OfInt$-CC;->$default$next(Ljj$/util/PrimitiveIterator$OfInt;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextInt()I
    .registers 2

    iget-boolean v0, p0, Ljj$/util/Spliterators$2Adapter;->valueReady:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Ljj$/util/Spliterators$2Adapter;->hasNext()Z

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

    iput-boolean v0, p0, Ljj$/util/Spliterators$2Adapter;->valueReady:Z

    iget v0, p0, Ljj$/util/Spliterators$2Adapter;->nextElement:I

    return v0
.end method
