.class Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field private final s:Ljava/util/Set;

.field private final valueType:Ljava/lang/Class;


# direct methods
.method static bridge synthetic -$$Nest$fgetvalueType(Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;)Ljava/lang/Class;
    .registers 1

    iget-object p0, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    return-object p0
.end method

.method constructor <init>(Ljava/util/Set;Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    iput-object p2, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    return-void
.end method

.method private batchRemove(Ljava/util/Collection;Z)Z
    .registers 6

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, p2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_8

    :cond_1d
    return v0
.end method

.method static checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;
    .registers 3

    new-instance v0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;

    invoke-direct {v0, p0, p1}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    instance-of v2, v0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;

    if-eqz v2, :cond_11

    move-object v2, v0

    goto :goto_17

    :cond_11
    iget-object v2, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v2

    :goto_17
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 5

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v0, 0x0

    return v0

    :cond_16
    goto :goto_4

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v4, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_20

    invoke-virtual {p0, v1}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;

    invoke-direct {v1, p0, v0}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;-><init>(Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-object v2, p1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [Ljava/lang/Object;

    if-ne v1, v2, :cond_10

    move-object v1, v0

    goto :goto_13

    :cond_10
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    :goto_13
    const/4 v2, 0x0

    :goto_14
    array-length v3, v0

    if-ge v2, v3, :cond_26

    aget-object v3, v0, v2

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_26
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    array-length v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    move-object v1, p1

    goto :goto_c

    :cond_8
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_c
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_11
    array-length v3, v0

    if-ge v1, v3, :cond_23

    aget-object v3, v0, v1

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_23
    array-length v1, v0

    array-length v3, p1

    if-le v1, v3, :cond_28

    return-object v0

    :cond_28
    array-length v1, v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_34

    array-length v1, v0

    const/4 v2, 0x0

    aput-object v2, p1, v1

    :cond_34
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
