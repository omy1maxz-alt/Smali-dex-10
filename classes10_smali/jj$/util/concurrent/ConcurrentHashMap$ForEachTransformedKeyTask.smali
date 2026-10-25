.class final Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;
.super Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# instance fields
.field final action:Ljava/util/function/Consumer;

.field final transformer:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V
    .registers 9

    invoke-direct/range {p0 .. p5}, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    iput-object p6, p1, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->transformer:Ljava/util/function/Function;

    iput-object p7, p1, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->action:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 10

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->transformer:Ljava/util/function/Function;

    move-object v7, v0

    if-eqz v0, :cond_47

    iget-object v8, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->action:Ljava/util/function/Consumer;

    move-object v0, v8

    if-eqz v0, :cond_47

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->baseIndex:I

    :goto_c
    iget v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->batch:I

    if-lez v1, :cond_30

    iget v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->baseLimit:I

    move v1, v5

    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    if-le v1, v0, :cond_30

    invoke-virtual {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->addToPendingCount(I)V

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;

    iget v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->batch:I

    iput v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->baseLimit:I

    iget-object v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_c

    :cond_30
    :goto_30
    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_44

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v7, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_43

    invoke-interface {v8, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_43
    goto :goto_30

    :cond_44
    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachTransformedKeyTask;->propagateCompletion()V

    :cond_47
    return-void
.end method
