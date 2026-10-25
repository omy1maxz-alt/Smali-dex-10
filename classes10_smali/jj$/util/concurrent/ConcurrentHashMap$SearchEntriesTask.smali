.class final Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;
.super Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# instance fields
.field final result:Ljava/util/concurrent/atomic/AtomicReference;

.field final searchFunction:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 9

    invoke-direct/range {p0 .. p5}, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    iput-object p6, p1, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->searchFunction:Ljava/util/function/Function;

    iput-object p7, p1, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 10

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->searchFunction:Ljava/util/function/Function;

    move-object v7, v0

    if-eqz v0, :cond_5b

    iget-object v8, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v0, v8

    if-eqz v0, :cond_5b

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->baseIndex:I

    :goto_c
    iget v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->batch:I

    if-lez v1, :cond_37

    iget v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->baseLimit:I

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
    invoke-virtual {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->addToPendingCount(I)V

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;

    iget v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->batch:I

    iput v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->baseLimit:I

    iget-object v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_c

    :cond_37
    :goto_37
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5b

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-nez v0, :cond_48

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->propagateCompletion()V

    goto :goto_5b

    :cond_48
    invoke-interface {v7, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_5a

    const/4 v0, 0x0

    invoke-static {v8, v0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->quietlyCompleteRoot()V

    :cond_59
    return-void

    :cond_5a
    goto :goto_37

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$SearchEntriesTask;->result:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
