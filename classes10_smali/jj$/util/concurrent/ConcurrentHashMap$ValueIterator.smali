.class final Ljj$/util/concurrent/ConcurrentHashMap$ValueIterator;
.super Ljj$/util/concurrent/ConcurrentHashMap$BaseIterator;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# direct methods
.method constructor <init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;IIILjj$/util/concurrent/ConcurrentHashMap;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ljj$/util/concurrent/ConcurrentHashMap$BaseIterator;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;IIILjj$/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$ValueIterator;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iput-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$ValueIterator;->lastReturned:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$ValueIterator;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    return-object v0

    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextElement()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$ValueIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
