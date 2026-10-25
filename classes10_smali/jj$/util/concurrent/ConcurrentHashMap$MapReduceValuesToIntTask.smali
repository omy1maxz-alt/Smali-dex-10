.class final Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;
.super Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# instance fields
.field final basis:I

.field nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

.field final reducer:Ljava/util/function/IntBinaryOperator;

.field result:I

.field rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

.field final transformer:Ljava/util/function/ToIntFunction;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V
    .registers 11

    invoke-direct/range {p0 .. p5}, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    iput-object p6, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    iput-object p7, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    iput p8, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->basis:I

    iput-object p9, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 12

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->transformer:Ljava/util/function/ToIntFunction;

    move-object v8, v0

    if-eqz v0, :cond_71

    iget-object v10, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->reducer:Ljava/util/function/IntBinaryOperator;

    move-object v0, v10

    if-eqz v0, :cond_6f

    iget v9, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->basis:I

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->baseIndex:I

    :goto_e
    iget v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->batch:I

    if-lez v1, :cond_38

    iget v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->baseLimit:I

    move v1, v5

    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    if-le v1, v0, :cond_36

    invoke-virtual {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->addToPendingCount(I)V

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    iget v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->batch:I

    iput v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->baseLimit:I

    iget-object v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;Ljava/util/function/ToIntFunction;ILjava/util/function/IntBinaryOperator;)V

    iput-object v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_e

    :cond_36
    move-object v2, p0

    goto :goto_39

    :cond_38
    move-object v2, p0

    :goto_39
    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_4b

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v8, v0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v10, v9, v0}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    goto :goto_39

    :cond_4b
    iput v9, v2, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    :goto_51
    if-eqz v0, :cond_72

    move-object v1, v0

    check-cast v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    iget-object v3, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    :goto_58
    if-eqz v3, :cond_6a

    iget v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    iget v5, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    invoke-interface {v10, v4, v5}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v4

    iput v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    iget-object v4, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    iput-object v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;

    move-object v3, v4

    goto :goto_58

    :cond_6a
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->nextComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    goto :goto_51

    :cond_6f
    move-object v2, p0

    goto :goto_72

    :cond_71
    move-object v2, p0

    :cond_72
    :goto_72
    return-void
.end method

.method public final getRawResult()Ljava/lang/Integer;
    .registers 2

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->result:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceValuesToIntTask;->getRawResult()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
