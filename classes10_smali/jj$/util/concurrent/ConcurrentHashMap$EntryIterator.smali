.class final Ljj$/util/concurrent/ConcurrentHashMap$EntryIterator;
.super Ljj$/util/concurrent/ConcurrentHashMap$BaseIterator;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# direct methods
.method constructor <init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;IIILjj$/util/concurrent/ConcurrentHashMap;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ljj$/util/concurrent/ConcurrentHashMap$BaseIterator;-><init>([Ljj$/util/concurrent/ConcurrentHashMap$Node;IIILjj$/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final next()Ljava/util/Map$Entry;
    .registers 6

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntryIterator;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v1, v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v2, v1, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iput-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntryIterator;->lastReturned:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$EntryIterator;->advance()Ljj$/util/concurrent/ConcurrentHashMap$Node;

    new-instance v3, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;

    iget-object v4, p0, Ljj$/util/concurrent/ConcurrentHashMap$EntryIterator;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3, v0, v2, v4}, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljj$/util/concurrent/ConcurrentHashMap;)V

    return-object v3

    :cond_16
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
