.class abstract Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ConcurrentHashMap.java"


# instance fields
.field baseIndex:I

.field baseLimit:I

.field final baseSize:I

.field batch:I

.field index:I

.field next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

.field spare:Ljj$/util/concurrent/ConcurrentHashMap$TableStack;

.field stack:Ljj$/util/concurrent/ConcurrentHashMap$TableStack;

.field tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;III[Ljj$/util/concurrent/ConcurrentHashMap$Node;)V
    .registers 7

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput p2, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->batch:I

    iput p3, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    iput p3, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    iput-object p5, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    if-nez p5, :cond_13

    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    iput v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    goto :goto_21

    :cond_13
    if-nez p1, :cond_1b

    array-length v0, p5

    iput v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    iput v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    goto :goto_21

    :cond_1b
    iput p4, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    iget v0, p1, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    iput v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    :goto_21
    return-void
.end method

.method private pushState([Ljj$/util/concurrent/ConcurrentHashMap$Node;II)V
    .registers 6

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Ljj$/util/concurrent/ConcurrentHashMap$TableStack;

    if-eqz v0, :cond_9

    iget-object v1, v0, Ljj$/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljj$/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Ljj$/util/concurrent/ConcurrentHashMap$TableStack;

    goto :goto_f

    :cond_9
    new-instance v1, Ljj$/util/concurrent/ConcurrentHashMap$TableStack;

    invoke-direct {v1}, Ljj$/util/concurrent/ConcurrentHashMap$TableStack;-><init>()V

    move-object v0, v1

    :goto_f
    iput-object p1, v0, Ljj$/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iput p3, v0, Ljj$/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    iput p2, v0, Ljj$/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    iget-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljj$/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, v0, Ljj$/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljj$/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljj$/util/concurrent/ConcurrentHashMap$TableStack;

    return-void
.end method

.method private recoverState(I)V
    .registers 6

    nop

    :goto_1
    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljj$/util/concurrent/ConcurrentHashMap$TableStack;

    move-object v1, v0

    if-eqz v0, :cond_27

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    iget v2, v1, Ljj$/util/concurrent/ConcurrentHashMap$TableStack;->length:I

    move v3, v2

    add-int/2addr v0, v2

    iput v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    if-lt v0, p1, :cond_27

    move p1, v3

    iget v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$TableStack;->index:I

    iput v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iput-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v0, 0x0

    iput-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$TableStack;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljj$/util/concurrent/ConcurrentHashMap$TableStack;

    iget-object v2, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Ljj$/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v2, v1, Ljj$/util/concurrent/ConcurrentHashMap$TableStack;->next:Ljj$/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljj$/util/concurrent/ConcurrentHashMap$TableStack;

    iput-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->spare:Ljj$/util/concurrent/ConcurrentHashMap$TableStack;

    goto :goto_1

    :cond_27
    if-nez v1, :cond_3a

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    iget v2, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    add-int/2addr v0, v2

    iput v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    if-lt v0, p1, :cond_3a

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    iput v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    :cond_3a
    return-void
.end method


# virtual methods
.method final advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;
    .registers 7

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    if-eqz v0, :cond_7

    iget-object v1, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    :cond_7
    :goto_7
    if-eqz v1, :cond_c

    iput-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    return-object v1

    :cond_c
    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    iget v2, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseLimit:I

    if-ge v0, v2, :cond_61

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v0

    if-eqz v0, :cond_61

    array-length v0, v2

    move v3, v0

    iget v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    move v5, v4

    if-le v0, v4, :cond_61

    if-gez v5, :cond_21

    goto :goto_61

    :cond_21
    invoke-static {v2, v5}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_49

    iget v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-gez v0, :cond_49

    instance-of v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v0, :cond_3c

    move-object v0, v1

    check-cast v0, Ljj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object v0, v0, Ljj$/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iput-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->tab:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v5, v3}, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->pushState([Ljj$/util/concurrent/ConcurrentHashMap$Node;II)V

    goto :goto_7

    :cond_3c
    instance-of v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    if-eqz v0, :cond_47

    move-object v0, v1

    check-cast v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;

    iget-object v0, v0, Ljj$/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljj$/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    goto :goto_49

    :cond_47
    const/4 v0, 0x0

    move-object v1, v0

    :cond_49
    :goto_49
    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->stack:Ljj$/util/concurrent/ConcurrentHashMap$TableStack;

    if-eqz v0, :cond_51

    invoke-direct {p0, v3}, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->recoverState(I)V

    goto :goto_60

    :cond_51
    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseSize:I

    add-int/2addr v0, v5

    iput v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    if-lt v0, v3, :cond_60

    iget v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->baseIndex:I

    iput v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->index:I

    :cond_60
    :goto_60
    goto :goto_7

    :cond_61
    :goto_61
    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BulkTask;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    return-object v0
.end method
