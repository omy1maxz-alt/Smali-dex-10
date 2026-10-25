.class final Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;
.super Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# instance fields
.field final basis:I

.field nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

.field final reducer:Ljava/util/function/IntBinaryOperator;

.field result:I

.field rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

.field final transformer:Ljava/util/function/ToIntBiFunction;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;Ljava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)V
    .registers 11

    invoke-direct/range {p0 .. p5}, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    iput-object p6, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    iput-object p7, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->transformer:Ljava/util/function/ToIntBiFunction;

    iput p8, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->basis:I

    iput-object p9, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 12

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->transformer:Ljava/util/function/ToIntBiFunction;

    move-object v8, v0

    if-eqz v0, :cond_73

    iget-object v10, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    move-object v0, v10

    if-eqz v0, :cond_71

    iget v9, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->basis:I

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->baseIndex:I

    :goto_e
    iget v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->batch:I

    if-lez v1, :cond_38

    iget v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->baseLimit:I

    move v1, v5

    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    if-le v1, v0, :cond_36

    invoke-virtual {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->addToPendingCount(I)V

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    iget v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->batch:I

    iput v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->baseLimit:I

    iget-object v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;Ljava/util/function/ToIntBiFunction;ILjava/util/function/IntBinaryOperator;)V

    iput-object v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_e

    :cond_36
    move-object v2, p0

    goto :goto_39

    :cond_38
    move-object v2, p0

    :goto_39
    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_4d

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v8, v0, v3}, Ljava/util/function/ToIntBiFunction;->applyAsInt(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v10, v9, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    goto :goto_39

    :cond_4d
    iput v9, v2, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    :goto_53
    if-eqz v0, :cond_74

    move-object v1, v0

    check-cast v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    iget-object v3, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    :goto_5a
    if-eqz v3, :cond_6c

    iget v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    iget v5, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    invoke-interface {v10, v4, v5}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v4

    iput v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    iget-object v4, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    iput-object v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;

    move-object v3, v4

    goto :goto_5a

    :cond_6c
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    goto :goto_53

    :cond_71
    move-object v2, p0

    goto :goto_74

    :cond_73
    move-object v2, p0

    :cond_74
    :goto_74
    return-void
.end method

.method public final getRawResult()Ljava/lang/Integer;
    .registers 2

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->result:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToIntTask;->getRawResult()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
