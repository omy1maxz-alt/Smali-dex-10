.class final Ljj$/util/concurrent/ConcurrentHashMap$ForwardingNode;
.super Ljj$/util/concurrent/ConcurrentHashMap$Node;
.source "ConcurrentHashMap.java"


# instance fields
.field final nextTable:[Ljj$/util/concurrent/ConcurrentHashMap$Node;


# direct methods
.method constructor <init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;)V
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Ljj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    return-void
.end method


# virtual methods
.method find(ILjava/lang/Object;)Ljj$/util/concurrent/ConcurrentHashMap$Node;
    .registers 10

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    :goto_2
    const/4 v1, 0x0

    if-eqz p2, :cond_41

    if-eqz v0, :cond_41

    array-length v2, v0

    move v3, v2

    if-eqz v2, :cond_41

    add-int/lit8 v2, v3, -0x1

    and-int/2addr v2, p1

    invoke-static {v0, v2}, Ljj$/util/concurrent/ConcurrentHashMap;->tabAt([Ljj$/util/concurrent/ConcurrentHashMap$Node;I)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v2

    move-object v4, v2

    if-nez v2, :cond_16

    goto :goto_41

    :cond_16
    :goto_16
    iget v2, v4, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    move v5, v2

    if-ne v2, p1, :cond_29

    iget-object v2, v4, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v6, v2

    if-eq v2, p2, :cond_28

    if-eqz v6, :cond_29

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_28
    return-object v4

    :cond_29
    if-gez v5, :cond_3a

    instance-of v1, v4, Ljj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    if-eqz v1, :cond_35

    move-object v1, v4

    check-cast v1, Ljj$/util/concurrent/ConcurrentHashMap$ForwardingNode;

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$ForwardingNode;->nextTable:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_2

    :cond_35
    invoke-virtual {v4, p1, p2}, Ljj$/util/concurrent/ConcurrentHashMap$Node;->find(ILjava/lang/Object;)Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-result-object v1

    return-object v1

    :cond_3a
    iget-object v2, v4, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v4, v2

    if-nez v2, :cond_40

    return-object v1

    :cond_40
    goto :goto_16

    :cond_41
    :goto_41
    return-object v1
.end method
