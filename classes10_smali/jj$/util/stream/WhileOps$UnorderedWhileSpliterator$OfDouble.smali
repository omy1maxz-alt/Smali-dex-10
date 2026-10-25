.class abstract Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.super Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;
.implements Ljj$/util/Spliterator$OfDouble;


# instance fields
.field final p:Ljava/util/function/DoublePredicate;

.field t:D


# direct methods
.method constructor <init>(Ljj$/util/Spliterator$OfDouble;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljj$/util/Spliterator;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    iget-object v0, p2, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->p:Ljava/util/function/DoublePredicate;

    iput-object v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->p:Ljava/util/function/DoublePredicate;

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljj$/util/Spliterator;Z)V

    iput-object p3, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->p:Ljava/util/function/DoublePredicate;

    return-void
.end method


# virtual methods
.method public accept(D)V
    .registers 4

    iget v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->count:I

    iput-wide p1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->t:D

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

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfDouble;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfDouble;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfDouble;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
