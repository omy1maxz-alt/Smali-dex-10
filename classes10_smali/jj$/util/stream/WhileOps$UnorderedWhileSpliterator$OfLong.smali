.class abstract Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;
.super Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava/util/function/LongConsumer;
.implements Ljj$/util/Spliterator$OfLong;


# instance fields
.field final p:Ljava/util/function/LongPredicate;

.field t:J


# direct methods
.method constructor <init>(Ljj$/util/Spliterator$OfLong;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljj$/util/Spliterator;Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    iget-object v0, p2, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->p:Ljava/util/function/LongPredicate;

    iput-object v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->p:Ljava/util/function/LongPredicate;

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator$OfLong;ZLjava/util/function/LongPredicate;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljj$/util/Spliterator;Z)V

    iput-object p3, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->p:Ljava/util/function/LongPredicate;

    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 4

    iget v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->count:I

    iput-wide p1, p0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->t:J

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/LongConsumer$-CC;->$default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfLong;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfLong;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfLong;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
