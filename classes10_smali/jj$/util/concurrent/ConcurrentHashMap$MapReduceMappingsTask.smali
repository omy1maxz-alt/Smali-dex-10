.class final Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;
.super Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# instance fields
.field nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

.field final reducer:Ljava/util/function/BiFunction;

.field result:Ljava/lang/Object;

.field rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

.field final transformer:Ljava/util/function/BiFunction;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V
    .registers 10

    invoke-direct/range {p0 .. p5}, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    iput-object p6, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    iput-object p7, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->transformer:Ljava/util/function/BiFunction;

    iput-object p8, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->reducer:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 11

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->transformer:Ljava/util/function/BiFunction;

    move-object v8, v0

    if-eqz v0, :cond_82

    iget-object v9, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->reducer:Ljava/util/function/BiFunction;

    move-object v0, v9

    if-eqz v0, :cond_80

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->baseIndex:I

    :goto_c
    iget v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->batch:I

    if-lez v1, :cond_36

    iget v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->baseLimit:I

    move v1, v5

    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    if-le v1, v0, :cond_34

    invoke-virtual {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->addToPendingCount(I)V

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    iget v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->batch:I

    iput v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->baseLimit:I

    iget-object v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V

    iput-object v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_c

    :cond_34
    move-object v2, p0

    goto :goto_37

    :cond_36
    move-object v2, p0

    :goto_37
    const/4 v0, 0x0

    :goto_38
    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    move-object v3, v1

    if-eqz v1, :cond_54

    iget-object v1, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v4, v3, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v8, v1, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    if-eqz v1, :cond_53

    if-nez v0, :cond_4e

    move-object v1, v4

    goto :goto_52

    :cond_4e
    invoke-interface {v9, v0, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_52
    move-object v0, v1

    :cond_53
    goto :goto_38

    :cond_54
    iput-object v0, v2, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->result:Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    :goto_5a
    if-eqz v1, :cond_83

    move-object v3, v1

    check-cast v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    iget-object v4, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    :goto_61
    if-eqz v4, :cond_7b

    iget-object v5, v4, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->result:Ljava/lang/Object;

    move-object v6, v5

    if-eqz v5, :cond_75

    iget-object v5, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->result:Ljava/lang/Object;

    move-object v7, v5

    if-nez v5, :cond_6f

    move-object v5, v6

    goto :goto_73

    :cond_6f
    invoke-interface {v9, v7, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_73
    iput-object v5, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->result:Ljava/lang/Object;

    :cond_75
    iget-object v5, v4, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    iput-object v5, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;

    move-object v4, v5

    goto :goto_61

    :cond_7b
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    goto :goto_5a

    :cond_80
    move-object v2, p0

    goto :goto_83

    :cond_82
    move-object v2, p0

    :cond_83
    :goto_83
    return-void
.end method

.method public final getRawResult()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsTask;->result:Ljava/lang/Object;

    return-object v0
.end method
