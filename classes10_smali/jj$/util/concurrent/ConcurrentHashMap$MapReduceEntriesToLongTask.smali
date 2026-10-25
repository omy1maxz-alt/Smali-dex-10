.class final Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;
.super Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# instance fields
.field final basis:J

.field nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

.field final reducer:Ljava/util/function/LongBinaryOperator;

.field result:J

.field rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

.field final transformer:Ljava/util/function/ToLongFunction;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V
    .registers 12

    invoke-direct/range {p0 .. p5}, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    iput-object p6, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    iput-object p7, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->transformer:Ljava/util/function/ToLongFunction;

    iput-wide p8, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->basis:J

    iput-object p10, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 13

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->transformer:Ljava/util/function/ToLongFunction;

    move-object v8, v0

    if-eqz v0, :cond_6f

    iget-object v11, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    move-object v0, v11

    if-eqz v0, :cond_6d

    iget-wide v9, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->basis:J

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->baseIndex:I

    :goto_e
    iget v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->batch:I

    if-lez v1, :cond_38

    iget v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->baseLimit:I

    move v1, v5

    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    if-le v1, v0, :cond_36

    invoke-virtual {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->addToPendingCount(I)V

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    iget v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->batch:I

    iput v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->baseLimit:I

    iget-object v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;Ljava/util/function/ToLongFunction;JLjava/util/function/LongBinaryOperator;)V

    iput-object v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_e

    :cond_36
    move-object v2, p0

    goto :goto_39

    :cond_38
    move-object v2, p0

    :goto_39
    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_49

    invoke-interface {v8, v1}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v11, v9, v10, v3, v4}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v9

    goto :goto_39

    :cond_49
    iput-wide v9, v2, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->result:J

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    :goto_4f
    if-eqz v0, :cond_70

    move-object v1, v0

    check-cast v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    iget-object v3, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    :goto_56
    if-eqz v3, :cond_68

    iget-wide v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->result:J

    iget-wide v6, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->result:J

    invoke-interface {v11, v4, v5, v6, v7}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->result:J

    iget-object v4, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

    iput-object v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;

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

.method public final getRawResult()Ljava/lang/Long;
    .registers 3

    iget-wide v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->result:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceEntriesToLongTask;->getRawResult()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
