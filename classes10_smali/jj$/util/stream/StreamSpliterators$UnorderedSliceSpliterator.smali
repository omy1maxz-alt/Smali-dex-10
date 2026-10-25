.class abstract Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final CHUNK_SIZE:I = 0x80


# instance fields
.field protected final chunkSize:I

.field private final permits:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final s:Ljj$/util/Spliterator;

.field private final skipThreshold:J

.field protected final unlimited:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/util/stream/StreamSpliterators;

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator;JJ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljj$/util/Spliterator;

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-gez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    iput-boolean v2, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    cmp-long v2, p4, v0

    if-ltz v2, :cond_16

    move-wide v2, p4

    goto :goto_17

    :cond_16
    move-wide v2, v0

    :goto_17
    iput-wide v2, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    const/16 v2, 0x80

    iput v2, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    cmp-long v3, p4, v0

    if-ltz v3, :cond_26

    add-long v0, p2, p4

    goto :goto_27

    :cond_26
    move-wide v0, p2

    :goto_27
    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator;Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljj$/util/Spliterator;

    iget-boolean v0, p2, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    iput-boolean v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    iget-object v0, p2, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v0, p2, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    iput-wide v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    iget v0, p2, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    iput v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->chunkSize:I

    return-void
.end method


# virtual methods
.method protected final acquirePermits(J)J
    .registers 12

    nop

    :cond_1
    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    iget-boolean v4, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz v4, :cond_12

    move-wide v2, p1

    :cond_12
    return-wide v2

    :cond_13
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_25

    iget-object v6, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long v7, v0, v4

    invoke-virtual {v6, v0, v1, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_25
    iget-boolean v6, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz v6, :cond_30

    sub-long v6, p1, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2

    :cond_30
    iget-wide v6, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    cmp-long v8, v0, v6

    if-lez v8, :cond_41

    iget-wide v6, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->skipThreshold:J

    sub-long v6, v0, v6

    sub-long v6, v4, v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2

    :cond_41
    return-wide v4
.end method

.method public final characteristics()I
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4051

    return v0
.end method

.method public final estimateSize()J
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract makeSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
.end method

.method protected final permitStatus()Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    .registers 6

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    sget-object v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    return-object v0

    :cond_f
    iget-boolean v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->unlimited:Z

    if-eqz v0, :cond_16

    sget-object v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->UNLIMITED:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    goto :goto_18

    :cond_16
    sget-object v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    :goto_18
    return-object v0
.end method

.method public final trySplit()Ljj$/util/Spliterator;
    .registers 7

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->permits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_e

    return-object v4

    :cond_e
    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->s:Ljj$/util/Spliterator;

    invoke-interface {v0}, Ljj$/util/Spliterator;->trySplit()Ljj$/util/Spliterator;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {p0, v0}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;->makeSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;

    move-result-object v4

    :goto_1b
    return-object v4
.end method
