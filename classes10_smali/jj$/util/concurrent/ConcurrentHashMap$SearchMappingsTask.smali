.class final Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;
.super Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# instance fields
.field final result:Ljava/util/concurrent/atomic/AtomicReference;

.field final searchFunction:Ljava/util/function/BiFunction;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 9

    invoke-direct/range {p0 .. p5}, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    iput-object p6, p1, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->searchFunction:Ljava/util/function/BiFunction;

    iput-object p7, p1, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 10

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->searchFunction:Ljava/util/function/BiFunction;

    move-object v7, v0

    if-eqz v0, :cond_5f

    iget-object v8, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v0, v8

    if-eqz v0, :cond_5f

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->baseIndex:I

    :goto_c
    iget v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->batch:I

    if-lez v1, :cond_37

    iget v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->baseLimit:I

    move v1, v5

    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    if-le v1, v0, :cond_37

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    return-void

    :cond_21
    invoke-virtual {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->addToPendingCount(I)V

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;

    iget v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->batch:I

    iput v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->baseLimit:I

    iget-object v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiFunction;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_c

    :cond_37
    :goto_37
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5f

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-nez v0, :cond_48

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->propagateCompletion()V

    goto :goto_5f

    :cond_48
    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v2, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v7, v0, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x0

    invoke-static {v8, v0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->quietlyCompleteRoot()V

    goto :goto_5f

    :cond_5e
    goto :goto_37

    :cond_5f
    :goto_5f
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchMappingsTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
