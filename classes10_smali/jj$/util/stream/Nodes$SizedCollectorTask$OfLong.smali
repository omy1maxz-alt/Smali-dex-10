.class final Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;
.super Ljj$/util/stream/Nodes$SizedCollectorTask;
.source "Nodes.java"

# interfaces
.implements Ljj$/util/stream/Sink$OfLong;


# instance fields
.field private final array:[J


# direct methods
.method constructor <init>(Ljj$/util/Spliterator;Ljj$/util/stream/PipelineHelper;[J)V
    .registers 5

    array-length v0, p3

    invoke-direct {p0, p1, p2, v0}, Ljj$/util/stream/Nodes$SizedCollectorTask;-><init>(Ljj$/util/Spliterator;Ljj$/util/stream/PipelineHelper;I)V

    iput-object p3, p0, Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;Ljj$/util/Spliterator;JJ)V
    .registers 16

    iget-object v0, p1, Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    array-length v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Ljj$/util/stream/Nodes$SizedCollectorTask;-><init>(Ljj$/util/stream/Nodes$SizedCollectorTask;Ljj$/util/Spliterator;JJI)V

    iget-object p1, v2, Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    iput-object p1, v1, Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    return-void
.end method


# virtual methods
.method public accept(J)V
    .registers 6

    iget v0, p0, Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;->index:I

    iget v1, p0, Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;->fence:I

    if-ge v0, v1, :cond_11

    iget-object v0, p0, Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    iget v1, p0, Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;->index:I

    aput-wide p1, v0, v1

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic accept(Ljava/lang/Long;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfLong$-CC;->$default$accept(Ljj$/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/stream/Sink$OfLong$-CC;->$default$accept(Ljj$/util/stream/Sink$OfLong;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/LongConsumer$-CC;->$default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method

.method makeChild(Ljj$/util/Spliterator;JJ)Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;
    .registers 13

    new-instance v0, Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;-><init>(Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;Ljj$/util/Spliterator;JJ)V

    return-object v0
.end method

.method bridge synthetic makeChild(Ljj$/util/Spliterator;JJ)Ljj$/util/stream/Nodes$SizedCollectorTask;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;->makeChild(Ljj$/util/Spliterator;JJ)Ljj$/util/stream/Nodes$SizedCollectorTask$OfLong;

    move-result-object p1

    return-object p1
.end method
