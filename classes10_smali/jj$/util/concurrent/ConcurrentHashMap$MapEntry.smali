.class final Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field final key:Ljava/lang/Object;

.field final map:Ljj$/util/concurrent/ConcurrentHashMap;

.field val:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljj$/util/concurrent/ConcurrentHashMap;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    iput-object p2, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    iput-object p3, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_30

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    if-eq v2, v0, :cond_22

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_22
    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    if-eq v3, v0, :cond_2e

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2e
    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    if-eqz p1, :cond_e

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    iput-object p1, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    iget-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Ljj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    iget-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljj$/util/concurrent/Helpers;->mapEntryToString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
