.class final Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;
.super Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# instance fields
.field final basis:J

.field nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

.field final reducer:Ljava/util/function/LongBinaryOperator;

.field result:J

.field rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

.field final transformer:Ljava/util/function/ToLongBiFunction;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;Ljava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)V
    .registers 12

    invoke-direct/range {p0 .. p5}, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    iput-object p6, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    iput-object p7, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->transformer:Ljava/util/function/ToLongBiFunction;

    iput-wide p8, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->basis:J

    iput-object p10, p1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 13

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->transformer:Ljava/util/function/ToLongBiFunction;

    move-object v8, v0

    if-eqz v0, :cond_73

    iget-object v11, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->reducer:Ljava/util/function/LongBinaryOperator;

    move-object v0, v11

    if-eqz v0, :cond_71

    iget-wide v9, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->basis:J

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->baseIndex:I

    :goto_e
    iget v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->batch:I

    if-lez v1, :cond_38

    iget v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->baseLimit:I

    move v1, v5

    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    if-le v1, v0, :cond_36

    invoke-virtual {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->addToPendingCount(I)V

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    iget v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->batch:I

    iput v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->baseLimit:I

    iget-object v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v7, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;Ljava/util/function/ToLongBiFunction;JLjava/util/function/LongBinaryOperator;)V

    iput-object v1, v2, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_e

    :cond_36
    move-object v2, p0

    goto :goto_39

    :cond_38
    move-object v2, p0

    :goto_39
    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_4d

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v8, v0, v3}, Ljava/util/function/ToLongBiFunction;->applyAsLong(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v11, v9, v10, v3, v4}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v9

    goto :goto_39

    :cond_4d
    iput-wide v9, v2, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    :goto_53
    if-eqz v0, :cond_74

    move-object v1, v0

    check-cast v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    iget-object v3, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    :goto_5a
    if-eqz v3, :cond_6c

    iget-wide v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    iget-wide v6, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    invoke-interface {v11, v4, v5, v6, v7}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    iget-object v4, v3, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->nextRight:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

    iput-object v4, v1, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->rights:Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;

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

.method public final getRawResult()Ljava/lang/Long;
    .registers 3

    iget-wide v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->result:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$MapReduceMappingsToLongTask;->getRawResult()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
