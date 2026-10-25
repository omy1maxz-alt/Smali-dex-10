.class final Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;
.super Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;
.source "ConcurrentHashMap.java"


# instance fields
.field final action:Ljava/util/function/BiConsumer;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiConsumer;)V
    .registers 8

    invoke-direct/range {p0 .. p5}, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V

    move-object v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    iput-object p6, p1, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->action:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 9

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->action:Ljava/util/function/BiConsumer;

    move-object v7, v0

    if-eqz v0, :cond_3d

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->baseIndex:I

    :goto_7
    iget v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->batch:I

    if-lez v1, :cond_2b

    iget v5, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->baseLimit:I

    move v1, v5

    add-int/2addr v1, v0

    const/4 v2, 0x1

    ushr-int/lit8 v4, v1, 0x1

    move v1, v4

    if-le v1, v0, :cond_2b

    invoke-virtual {p0, v2}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->addToPendingCount(I)V

    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;

    iget v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->batch:I

    ushr-int/2addr v3, v2

    iput v3, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->batch:I

    iput v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->baseLimit:I

    iget-object v6, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;-><init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;Ljava/util/function/BiConsumer;)V

    invoke-virtual {v1}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_7

    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_3a

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v2, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-interface {v7, v0, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2b

    :cond_3a
    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$ForEachMappingTask;->propagateCompletion()V

    :cond_3d
    return-void
.end method
