.class final Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;
.super Ljj$/util/concurrent/ConcurrentHashMap$Traverser;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljj$/util/Spliterator;


# instance fields
.field est:J

.field final map:Ljj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;IIIJLjj$/util/concurrent/ConcurrentHashMap;)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;III)V

    iput-object p7, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    iput-wide p5, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    const/16 v0, 0x1101

    return v0
.end method

.method public estimateSize()J
    .registers 3

    iget-wide v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7

    if-eqz p1, :cond_19

    :goto_2
    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_18

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;

    iget-object v2, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iget-object v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2, v3, v4}, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljj$/util/concurrent/ConcurrentHashMap;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    :cond_18
    return-void

    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .registers 2

    invoke-static {p0}, Ljj$/util/Spliterator$-CC;->$default$getComparator(Ljj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
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
    .registers 7

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;

    iget-object v2, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iget-object v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v2, v3, v4}, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljj$/util/concurrent/ConcurrentHashMap;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->trySplit()Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;
    .registers 12

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->baseIndex:I

    move v1, v0

    iget v2, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->baseLimit:I

    move v7, v2

    add-int/2addr v0, v2

    const/4 v2, 0x1

    ushr-int/lit8 v6, v0, 0x1

    move v0, v6

    if-gt v0, v1, :cond_f

    const/4 v0, 0x0

    goto :goto_22

    :cond_f
    new-instance v3, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;

    iget-object v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iget v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->baseSize:I

    iput v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->baseLimit:I

    iget-wide v8, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    ushr-long/2addr v8, v2

    iput-wide v8, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->est:J

    iget-object v10, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v3 .. v10}, Ljj$/util/concurrent/ConcurrentHashMap$EntrySpliterator;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;IIIJLjj$/util/concurrent/ConcurrentHashMap;)V

    move-object v0, v3

    :goto_22
    return-object v0
.end method
