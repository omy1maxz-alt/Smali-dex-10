.class Ljj$/util/concurrent/ConcurrentHashMap$Node;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;

.field volatile next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

.field volatile val:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    iput-object p2, p0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iput-object p3, p0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljj$/util/concurrent/ConcurrentHashMap$Node;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p4, p0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2f

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    if-eq v2, v0, :cond_22

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_22
    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    move-object v4, v0

    if-eq v3, v0, :cond_2d

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_2d
    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    return v0
.end method

.method find(ILjava/lang/Object;)Ljj$/util/concurrent/ConcurrentHashMap$Node;
    .registers 6

    move-object v0, p0

    if-eqz p2, :cond_1a

    :cond_3
    iget v1, v0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v1, p1, :cond_15

    iget-object v1, v0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v2, v1

    if-eq v1, p2, :cond_14

    if-eqz v2, :cond_15

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    return-object v0

    :cond_15
    iget-object v1, v0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->next:Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v0, v1

    if-nez v1, :cond_3

    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljj$/util/concurrent/Helpers;->mapEntryToString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
