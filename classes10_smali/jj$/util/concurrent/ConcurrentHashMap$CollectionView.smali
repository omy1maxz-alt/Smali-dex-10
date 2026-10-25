.class abstract Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# static fields
.field private static final OOME_MSG:Ljava/lang/String; = "Required array size too large"

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field final map:Ljj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Ljj$/util/concurrent/ConcurrentHashMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 5

    if-eq p1, p0, :cond_1c

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0, v1}, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_1a

    :cond_19
    goto :goto_6

    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0

    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public getMap()Ljj$/util/concurrent/ConcurrentHashMap;
    .registers 2

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 7

    if-eqz p1, :cond_46

    const/4 v0, 0x0

    iget-object v1, p0, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    iget-object v1, v1, Ljj$/util/concurrent/ConcurrentHashMap;->table:[Ljj$/util/concurrent/ConcurrentHashMap$Node;

    move-object v2, v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_31

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    array-length v3, v2

    if-le v1, v3, :cond_31

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_1b

    :cond_30
    goto :goto_45

    :cond_31
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->remove(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    goto :goto_35

    :cond_45
    :goto_45
    return v0

    :cond_46
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 5

    if-eqz p1, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_7

    :cond_1c
    return v0

    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 10

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap;->mappingCount()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    const-string v4, "Required array size too large"

    cmp-long v5, v0, v2

    if-gtz v5, :cond_50

    long-to-int v2, v0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v2, :cond_41

    const v8, 0x7ffffff7

    if-ge v2, v8, :cond_3b

    const v8, 0x3ffffffb  # 1.9999994f

    if-lt v2, v8, :cond_31

    const v2, 0x7ffffff7

    goto :goto_36

    :cond_31
    ushr-int/lit8 v8, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v2, v8

    :goto_36
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_41

    :cond_3b
    new-instance v6, Ljava/lang/OutOfMemoryError;

    invoke-direct {v6, v4}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_41
    :goto_41
    add-int/lit8 v8, v5, 0x1

    aput-object v7, v3, v5

    move v5, v8

    goto :goto_17

    :cond_47
    if-ne v5, v2, :cond_4b

    move-object v4, v3

    goto :goto_4f

    :cond_4b
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    :goto_4f
    return-object v4

    :cond_50
    new-instance v2, Ljava/lang/OutOfMemoryError;

    invoke-direct {v2, v4}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 12

    iget-object v0, p0, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->map:Ljj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljj$/util/concurrent/ConcurrentHashMap;->mappingCount()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    const-string v4, "Required array size too large"

    cmp-long v5, v0, v2

    if-gtz v5, :cond_6c

    long-to-int v2, v0

    array-length v3, p1

    if-lt v3, v2, :cond_15

    move-object v3, p1

    goto :goto_24

    :cond_15
    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    :goto_24
    nop

    array-length v5, v3

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v5, :cond_55

    const v9, 0x7ffffff7

    if-ge v5, v9, :cond_4f

    const v9, 0x3ffffffb  # 1.9999994f

    if-lt v5, v9, :cond_45

    const v5, 0x7ffffff7

    goto :goto_4a

    :cond_45
    ushr-int/lit8 v9, v5, 0x1

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v5, v9

    :goto_4a
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_55

    :cond_4f
    new-instance v7, Ljava/lang/OutOfMemoryError;

    invoke-direct {v7, v4}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_55
    :goto_55
    add-int/lit8 v9, v6, 0x1

    aput-object v8, v3, v6

    move v6, v9

    goto :goto_2b

    :cond_5b
    if-ne p1, v3, :cond_63

    if-ge v6, v5, :cond_63

    const/4 v4, 0x0

    aput-object v4, v3, v6

    return-object v3

    :cond_63
    if-ne v6, v5, :cond_67

    move-object v4, v3

    goto :goto_6b

    :cond_67
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    :goto_6b
    return-object v4

    :cond_6c
    new-instance v2, Ljava/lang/OutOfMemoryError;

    invoke-direct {v2, v4}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljj$/util/concurrent/ConcurrentHashMap$CollectionView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_1d

    const-string v3, "(this Collection)"

    goto :goto_1e

    :cond_1d
    move-object v3, v2

    :goto_1e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_34

    :cond_28
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_34
    :goto_34
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
