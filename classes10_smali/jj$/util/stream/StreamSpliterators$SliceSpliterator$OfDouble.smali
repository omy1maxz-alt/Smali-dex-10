.class final Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;
.super Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator$OfDouble;


# direct methods
.method constructor <init>(Ljj$/util/Spliterator$OfDouble;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljj$/util/Spliterator$OfPrimitive;JJ)V

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator$OfDouble;JJJJ)V
    .registers 21

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljj$/util/Spliterator$OfPrimitive;JJJJLjj$/util/stream/StreamSpliterators-IA;)V

    return-void
.end method

.method static synthetic lambda$emptyConsumer$0(D)V
    .registers 2

    return-void
.end method


# virtual methods
.method protected bridge synthetic emptyConsumer()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;->emptyConsumer()Ljava/util/function/DoubleConsumer;

    move-result-object v0

    return-object v0
.end method

.method protected emptyConsumer()Ljava/util/function/DoubleConsumer;
    .registers 2

    new-instance v0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected makeSpliterator(Ljj$/util/Spliterator$OfDouble;JJJJ)Ljj$/util/Spliterator$OfDouble;
    .registers 20

    new-instance v0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Ljj$/util/Spliterator$OfDouble;JJJJ)V

    return-object v0
.end method

.method protected bridge synthetic makeSpliterator(Ljj$/util/Spliterator;JJJJ)Ljj$/util/Spliterator;
    .registers 20

    move-object v1, p1

    check-cast v1, Ljj$/util/Spliterator$OfDouble;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;->makeSpliterator(Ljj$/util/Spliterator$OfDouble;JJJJ)Ljj$/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfDouble$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfDouble;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 2

    invoke-super {p0, p1}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfDouble;
    .registers 2

    invoke-super {p0}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator$OfDouble;

    return-object v0
.end method
