.class Ljj$/util/Spliterators$IteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljj$/util/Spliterator;


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private final collection:Ljava/util/Collection;

.field private est:J

.field private it:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Collection;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    and-int/lit16 v0, p2, 0x1000

    if-nez v0, :cond_11

    or-int/lit8 v0, p2, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_12

    :cond_11
    move v0, p2

    :goto_12
    iput v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->characteristics:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    iput-object p1, p0, Ljj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->est:J

    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->characteristics:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;JI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    iput-object p1, p0, Ljj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    iput-wide p2, p0, Ljj$/util/Spliterators$IteratorSpliterator;->est:J

    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_13

    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    goto :goto_14

    :cond_13
    move v0, p4

    :goto_14
    iput v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    iget v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .registers 3

    iget-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_16

    iget-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    iget-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->est:J

    return-wide v0

    :cond_16
    iget-wide v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->est:J

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6

    if-eqz p1, :cond_1d

    iget-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    move-object v1, v0

    if-nez v0, :cond_19

    iget-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    move-object v1, v0

    iget-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Ljj$/util/Spliterators$IteratorSpliterator;->est:J

    :cond_19
    invoke-static {v1, p1}, Ljj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    return-void

    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljj$/util/Spliterators$IteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .registers 3

    invoke-static {p0}, Ljj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$-CC;->$default$hasCharacteristics(Ljj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 4

    if-eqz p1, :cond_2c

    iget-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_17

    iget-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    iget-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->est:J

    :cond_17
    iget-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_2a
    const/4 v0, 0x0

    return v0

    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public trySplit()Ljj$/util/Spliterator;
    .registers 12

    iget-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    move-object v1, v0

    if-nez v0, :cond_18

    iget-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    move-object v1, v0

    iget-object v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Ljj$/util/Spliterators$IteratorSpliterator;->est:J

    goto :goto_1a

    :cond_18
    iget-wide v2, p0, Ljj$/util/Spliterators$IteratorSpliterator;->est:J

    :goto_1a
    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    iget v0, p0, Ljj$/util/Spliterators$IteratorSpliterator;->batch:I

    add-int/lit16 v0, v0, 0x400

    int-to-long v4, v0

    cmp-long v6, v4, v2

    if-lez v6, :cond_30

    long-to-int v0, v2

    :cond_30
    const/high16 v4, 0x2000000

    if-le v0, v4, :cond_36

    const/high16 v0, 0x2000000

    :cond_36
    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    :cond_39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v0, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_39

    :cond_49
    iput v5, p0, Ljj$/util/Spliterators$IteratorSpliterator;->batch:I

    iget-wide v6, p0, Ljj$/util/Spliterators$IteratorSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v6, v8

    if-eqz v10, :cond_5c

    iget-wide v6, p0, Ljj$/util/Spliterators$IteratorSpliterator;->est:J

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljj$/util/Spliterators$IteratorSpliterator;->est:J

    :cond_5c
    new-instance v6, Ljj$/util/Spliterators$ArraySpliterator;

    const/4 v7, 0x0

    iget v8, p0, Ljj$/util/Spliterators$IteratorSpliterator;->characteristics:I

    invoke-direct {v6, v4, v7, v5, v8}, Ljj$/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v6

    :cond_65
    const/4 v0, 0x0

    return-object v0
.end method
