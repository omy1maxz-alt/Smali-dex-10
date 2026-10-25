.class final Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;
.super Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# instance fields
.field nextRight:Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

.field final reducer:Ljava/util/function/BiFunction;

.field result:Ljava/util/Map$Entry;

.field rights:Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V
    .registers 9

    invoke-direct/range {p0 .. p5}, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    iput-object p6, p1, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    iput-object p7, p1, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 10

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->reducer:Ljava/util/function/BiFunction;

    move-object v8, v0

    if-eqz v0, :cond_74

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->baseIndex:I

    :goto_7
    iget v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->batch:I

    if-lez v1, :cond_31

    iget v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->baseLimit:I

    move v1, v5

    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    if-le v1, v0, :cond_2f

    invoke-virtual {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->addToPendingCount(I)V

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    iget v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->batch:I

    iput v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->baseLimit:I

    iget-object v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;Ljava/util/function/BiFunction;)V

    iput-object v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_7

    :cond_2f
    move-object v2, p0

    goto :goto_32

    :cond_31
    move-object v2, p0

    :goto_32
    const/4 v0, 0x0

    :goto_33
    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v3, v1

    if-eqz v1, :cond_46

    if-nez v0, :cond_3e

    move-object v1, v3

    goto :goto_44

    :cond_3e
    invoke-interface {v8, v0, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :goto_44
    move-object v0, v1

    goto :goto_33

    :cond_46
    iput-object v0, v2, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    :goto_4c
    if-eqz v1, :cond_75

    move-object v3, v1

    check-cast v3, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    iget-object v4, v3, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    :goto_53
    if-eqz v4, :cond_6f

    iget-object v5, v4, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    move-object v6, v5

    if-eqz v5, :cond_69

    iget-object v5, v3, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    move-object v7, v5

    if-nez v5, :cond_61

    move-object v5, v6

    goto :goto_67

    :cond_61
    invoke-interface {v8, v7, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    :goto_67
    iput-object v5, v3, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    :cond_69
    iget-object v5, v4, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    iput-object v5, v3, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;

    move-object v4, v5

    goto :goto_53

    :cond_6f
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    goto :goto_4c

    :cond_74
    move-object v2, p0

    :cond_75
    return-void
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->getRawResult()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/util/Map$Entry;
    .registers 2

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceEntriesTask;->result:Ljava/util/Map$Entry;

    return-object v0
.end method
