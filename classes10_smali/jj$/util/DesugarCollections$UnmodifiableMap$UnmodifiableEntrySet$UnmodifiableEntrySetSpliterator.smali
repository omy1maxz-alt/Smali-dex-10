.class final Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljj$/util/Spliterator;


# instance fields
.field final s:Ljj$/util/Spliterator;


# direct methods
.method constructor <init>(Ljj$/util/Spliterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljj$/util/Spliterator;

    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljj$/util/Spliterator;

    invoke-static {p1}, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->entryConsumer(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0, p1}, Ljj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljj$/util/Spliterator;

    invoke-static {p1}, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->entryConsumer(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public trySplit()Ljj$/util/Spliterator;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_f

    :cond_a
    new-instance v1, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;

    invoke-direct {v1, v0}, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;-><init>(Ljj$/util/Spliterator;)V

    :goto_f
    return-object v1
.end method
