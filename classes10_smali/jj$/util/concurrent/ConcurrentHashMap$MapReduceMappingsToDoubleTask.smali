.class final Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;
.super Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# instance fields
.field final basis:D

.field nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

.field final reducer:Ljava/util/function/DoubleBinaryOperator;

.field result:D

.field rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

.field final transformer:Ljava/util/function/ToDoubleBiFunction;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;Ljava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)V
    .registers 12

    invoke-direct/range {p0 .. p5}, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    iput-object p6, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    iput-object p7, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->transformer:Ljava/util/function/ToDoubleBiFunction;

    iput-wide p8, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->basis:D

    iput-object p10, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 13

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->transformer:Ljava/util/function/ToDoubleBiFunction;

    move-object v8, v0

    if-eqz v0, :cond_73

    iget-object v11, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    move-object v0, v11

    if-eqz v0, :cond_71

    iget-wide v9, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->basis:D

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->baseIndex:I

    :goto_e
    iget v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->batch:I

    if-lez v1, :cond_38

    iget v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->baseLimit:I

    move v1, v5

    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    if-le v1, v0, :cond_36

    invoke-virtual {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->addToPendingCount(I)V

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    iget v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->batch:I

    iput v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->baseLimit:I

    iget-object v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;Ljava/util/function/ToDoubleBiFunction;DLjava/util/function/DoubleBinaryOperator;)V

    iput-object v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_e

    :cond_36
    move-object v2, p0

    goto :goto_39

    :cond_38
    move-object v2, p0

    :goto_39
    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_4d

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v8, v0, v3}, Ljava/util/function/ToDoubleBiFunction;->applyAsDouble(Ljava/lang/Object;Ljava/lang/Object;)D

    move-result-wide v3

    invoke-interface {v11, v9, v10, v3, v4}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v9

    goto :goto_39

    :cond_4d
    iput-wide v9, v2, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    :goto_53
    if-eqz v0, :cond_74

    move-object v1, v0

    check-cast v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    iget-object v3, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    :goto_5a
    if-eqz v3, :cond_6c

    iget-wide v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    iget-wide v6, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    invoke-interface {v11, v4, v5, v6, v7}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v4

    iput-wide v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    iget-object v4, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

    iput-object v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;

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

.method public final getRawResult()Ljava/lang/Double;
    .registers 3

    iget-wide v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->result:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToDoubleTask;->getRawResult()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
