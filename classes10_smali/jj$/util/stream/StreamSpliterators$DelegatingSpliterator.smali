.class Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator;


# instance fields
.field private s:Ljj$/util/Spliterator;

.field private final supplier:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;->supplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method get()Ljj$/util/Spliterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;->s:Ljj$/util/Spliterator;

    if-nez v0, :cond_e

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;->supplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/Spliterator;

    iput-object v0, p0, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;->s:Ljj$/util/Spliterator;

    :cond_e
    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;->s:Ljj$/util/Spliterator;

    return-object v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$-CC;->$default$hasCharacteristics(Ljj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljj$/util/Spliterator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public trySplit()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/Spliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
