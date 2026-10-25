.class final Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;
.super Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# instance fields
.field final basis:I

.field nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

.field final reducer:Ljava/util/function/IntBinaryOperator;

.field result:I

.field rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

.field final transformer:Ljava/util/function/ToIntFunction;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V
    .registers 11

    invoke-direct/range {p0 .. p5}, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    iput-object p6, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    iput-object p7, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    iput p8, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->basis:I

    iput-object p9, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 12

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    move-object v8, v0

    if-eqz v0, :cond_6f

    iget-object v10, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    move-object v0, v10

    if-eqz v0, :cond_6d

    iget v9, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->basis:I

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->baseIndex:I

    :goto_e
    iget v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->batch:I

    if-lez v1, :cond_38

    iget v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->baseLimit:I

    move v1, v5

    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    if-le v1, v0, :cond_36

    invoke-virtual {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->addToPendingCount(I)V

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    iget v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->batch:I

    iput v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->baseLimit:I

    iget-object v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    iput-object v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_e

    :cond_36
    move-object v2, p0

    goto :goto_39

    :cond_38
    move-object v2, p0

    :goto_39
    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_49

    invoke-interface {v8, v1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v10, v9, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    goto :goto_39

    :cond_49
    iput v9, v2, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->result:I

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    :goto_4f
    if-eqz v0, :cond_70

    move-object v1, v0

    check-cast v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    iget-object v3, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    :goto_56
    if-eqz v3, :cond_68

    iget v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->result:I

    iget v5, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->result:I

    invoke-interface {v10, v4, v5}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v4

    iput v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->result:I

    iget-object v4, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

    iput-object v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;

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

.method public final getRawResult()Ljava/lang/Integer;
    .registers 2

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->result:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToIntTask;->getRawResult()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
