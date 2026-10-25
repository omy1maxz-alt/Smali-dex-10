.class abstract Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;
.super Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava/util/function/IntConsumer;
.implements Ljj$/util/Spliterator$OfInt;


# instance fields
.field final p:Ljava/util/function/IntPredicate;

.field t:I


# direct methods
.method constructor <init>(Ljj$/util/Spliterator$OfInt;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljj$/util/Spliterator;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    iget-object v0, p2, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->p:Ljava/util/function/IntPredicate;

    iput-object v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->p:Ljava/util/function/IntPredicate;

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljj$/util/Spliterator;Z)V

    iput-object p3, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->p:Ljava/util/function/IntPredicate;

    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 3

    iget v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->count:I

    iput p1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;->t:I

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

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfInt;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfInt$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfInt;Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfInt$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfInt;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfInt$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfInt;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfInt;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
