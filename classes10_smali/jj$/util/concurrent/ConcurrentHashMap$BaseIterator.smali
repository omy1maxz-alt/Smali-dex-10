.class Ljj$/util/concurrent/ConcurrentHashMap$BaseIterator;
.super Ljj$/util/concurrent/ConcurrentHashMap$Traverser;
.source "ConcurrentHashMap.java"


# instance fields
.field lastReturned:Ljj$/util/concurrent/ConcurrentHashMap$Node;

.field final map:Ljj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;IIILjj$/util/concurrent/ConcurrentHashMap;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Ljj$/util/concurrent/ConcurrentHashMap$Traverser;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;III)V

    iput-object p5, p0, Ljj$/util/concurrent/ConcurrentHashMap$BaseIterator;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$BaseIterator;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BaseIterator;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final hasNext()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BaseIterator;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final remove()V
    .registers 5

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BaseIterator;->lastReturned:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$BaseIterator;->lastReturned:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    iget-object v2, p0, Ljj$/util/concurrent/ConcurrentHashMap$BaseIterator;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v0}, Ljj$/util/concurrent/ConcurrentHashMap;->replaceNode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
