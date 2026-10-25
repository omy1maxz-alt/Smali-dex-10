.class final Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;
.super Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# instance fields
.field final basis:D

.field nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

.field final reducer:Ljava/util/function/DoubleBinaryOperator;

.field result:D

.field rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

.field final transformer:Ljava/util/function/ToDoubleFunction;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V
    .registers 12

    invoke-direct/range {p0 .. p5}, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    iput-object p6, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    iput-object p7, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->transformer:Ljava/util/function/ToDoubleFunction;

    iput-wide p8, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->basis:D

    iput-object p10, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 13

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->transformer:Ljava/util/function/ToDoubleFunction;

    move-object v8, v0

    if-eqz v0, :cond_6f

    iget-object v11, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->reducer:Ljava/util/function/DoubleBinaryOperator;

    move-object v0, v11

    if-eqz v0, :cond_6d

    iget-wide v9, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->basis:D

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->baseIndex:I

    :goto_e
    iget v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->batch:I

    if-lez v1, :cond_38

    iget v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->baseLimit:I

    move v1, v5

    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    if-le v1, v0, :cond_36

    invoke-virtual {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->addToPendingCount(I)V

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    iget v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->batch:I

    iput v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->baseLimit:I

    iget-object v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;Ljava/util/function/ToDoubleFunction;DLjava/util/function/DoubleBinaryOperator;)V

    iput-object v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_e

    :cond_36
    move-object v2, p0

    goto :goto_39

    :cond_38
    move-object v2, p0

    :goto_39
    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_49

    invoke-interface {v8, v1}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-interface {v11, v9, v10, v3, v4}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v9

    goto :goto_39

    :cond_49
    iput-wide v9, v2, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    :goto_4f
    if-eqz v0, :cond_70

    move-object v1, v0

    check-cast v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    iget-object v3, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    :goto_56
    if-eqz v3, :cond_68

    iget-wide v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    iget-wide v6, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    invoke-interface {v11, v4, v5, v6, v7}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v4

    iput-wide v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    iget-object v4, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    iput-object v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;

    move-object v3, v4

    goto :goto_56

    :cond_68
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    goto :goto_4f

    :cond_6d
    move-object v2, p0

    goto :goto_70

    :cond_6f
    move-object v2, p0

    :cond_70
    :goto_70
    return-void
.end method

.method public final getRawResult()Ljava/lang/Double;
    .registers 3

    iget-wide v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->result:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToDoubleTask;->getRawResult()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
