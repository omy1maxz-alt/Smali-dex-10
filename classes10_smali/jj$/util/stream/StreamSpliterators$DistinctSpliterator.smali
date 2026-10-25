.class final Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator;
.implements Ljava/util/function/Consumer;


# static fields
.field private static final NULL_VALUE:Ljava/lang/Object;


# instance fields
.field private final s:Ljj$/util/Spliterator;

.field private final seen:Ljj$/util/concurrent/ConcurrentHashMap;

.field private tmpSlot:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->NULL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator;)V
    .registers 3

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Ljj$/util/Spliterator;Ljj$/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method private constructor <init>(Ljj$/util/Spliterator;Ljj$/util/concurrent/ConcurrentHashMap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljj$/util/Spliterator;

    iput-object p2, p0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private mapNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    :cond_4
    sget-object v0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->NULL_VALUE:Ljava/lang/Object;

    :goto_6
    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public characteristics()I
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4055

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public estimateSize()J
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljj$/util/Spliterator;

    new-instance v1, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator$$ExternalSyntheticLambda0;-><init>(Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

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

.method synthetic lambda$forEachRemaining$0$java-util-stream-StreamSpliterators$DistinctSpliterator(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p2}, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->mapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5

    nop

    :cond_1
    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0, p0}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljj$/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    invoke-direct {p0, v1}, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->mapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljj$/util/Spliterator;
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v1, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;

    iget-object v2, p0, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v0, v2}, Ljj$/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Ljj$/util/Spliterator;Ljj$/util/concurrent/ConcurrentHashMap;)V

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return-object v1
.end method
