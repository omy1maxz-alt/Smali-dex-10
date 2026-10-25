.class final Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;
.super Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# instance fields
.field nextRight:Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

.field final reducer:Ljava/util/function/BiFunction;

.field result:Ljava/lang/Object;

.field rights:Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V
    .registers 9

    invoke-direct/range {p0 .. p5}, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    iput-object p6, p1, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    iput-object p7, p1, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->reducer:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 10

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->reducer:Ljava/util/function/BiFunction;

    move-object v8, v0

    if-eqz v0, :cond_76

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->baseIndex:I

    :goto_7
    iget v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->batch:I

    if-lez v1, :cond_31

    iget v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->baseLimit:I

    move v1, v5

    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    if-le v1, v0, :cond_2f

    invoke-virtual {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->addToPendingCount(I)V

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    iget v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->batch:I

    iput v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->baseLimit:I

    iget-object v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;Ljava/util/function/BiFunction;)V

    iput-object v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_7

    :cond_2f
    move-object v2, p0

    goto :goto_32

    :cond_31
    move-object v2, p0

    :goto_32
    const/4 v0, 0x0

    :goto_33
    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v3, v1

    if-eqz v1, :cond_4a

    iget-object v1, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    if-nez v0, :cond_40

    move-object v4, v1

    goto :goto_48

    :cond_40
    if-nez v1, :cond_44

    move-object v4, v0

    goto :goto_48

    :cond_44
    invoke-interface {v8, v0, v1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_48
    move-object v0, v4

    goto :goto_33

    :cond_4a
    iput-object v0, v2, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    :goto_50
    if-eqz v1, :cond_77

    move-object v3, v1

    check-cast v3, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    iget-object v4, v3, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    :goto_57
    if-eqz v4, :cond_71

    iget-object v5, v4, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    move-object v6, v5

    if-eqz v5, :cond_6b

    iget-object v5, v3, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    move-object v7, v5

    if-nez v5, :cond_65

    move-object v5, v6

    goto :goto_69

    :cond_65
    invoke-interface {v8, v7, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_69
    iput-object v5, v3, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    :cond_6b
    iget-object v5, v4, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    iput-object v5, v3, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;

    move-object v4, v5

    goto :goto_57

    :cond_71
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    goto :goto_50

    :cond_76
    move-object v2, p0

    :cond_77
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$ReduceKeysTask;->result:Ljava/lang/Object;

    return-object v0
.end method
