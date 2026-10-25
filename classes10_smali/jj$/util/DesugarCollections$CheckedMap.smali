.class Ljj$/util/DesugarCollections$CheckedMap;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Ljj$/util/Map;


# static fields
.field private static final serialVersionUID:J = 0x4fb2bcdf0d186368L


# instance fields
.field private transient entrySet:Ljava/util/Set;

.field final keyType:Ljava/lang/Class;

.field private final m:Ljava/util/Map;

.field final valueType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->keyType:Ljava/lang/Class;

    invoke-static {p3}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->valueType:Ljava/lang/Class;

    return-void
.end method

.method private badKeyMsg(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedMap;->keyType:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " key into map with key type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private badValueMsg(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedMap;->valueType:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " value into map with value type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private typeCheck(Ljava/util/function/BiFunction;)Ljava/util/function/BiFunction;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda0;-><init>(Ljj$/util/DesugarCollections$CheckedMap;Ljava/util/function/BiFunction;)V

    return-object v0
.end method

.method private typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    if-eqz p1, :cond_15

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_15

    :cond_b
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p1}, Ljj$/util/DesugarCollections$CheckedMap;->badKeyMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    if-eqz p2, :cond_2a

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->valueType:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_2a

    :cond_20
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p2}, Ljj$/util/DesugarCollections$CheckedMap;->badValueMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-direct {p0, p2}, Ljj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/util/function/BiFunction;)Ljava/util/function/BiFunction;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljj$/util/Map$-EL;->compute(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 5

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    new-instance v1, Ljj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Ljj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda2;-><init>(Ljj$/util/DesugarCollections$CheckedMap;Ljava/util/function/Function;)V

    invoke-static {v0, p1, v1}, Ljj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-direct {p0, p2}, Ljj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/util/function/BiFunction;)Ljava/util/function/BiFunction;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljj$/util/Map$-EL;->computeIfPresent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_13

    new-instance v0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Ljj$/util/DesugarCollections$CheckedMap;->valueType:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    iput-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->entrySet:Ljava/util/Set;

    :cond_13
    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_d

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-static {v0, p1}, Ljj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/util/Map$-CC;->$default$getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$computeIfAbsent$1$java-util-DesugarCollections$CheckedMap(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method synthetic lambda$merge$2$java-util-DesugarCollections$CheckedMap(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Ljj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method synthetic lambda$typeCheck$0$java-util-DesugarCollections$CheckedMap(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6

    invoke-static {p3}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    new-instance v1, Ljj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p3}, Ljj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda1;-><init>(Ljj$/util/DesugarCollections$CheckedMap;Ljava/util/function/BiFunction;)V

    invoke-static {v0, p1, p2, v1}, Ljj$/util/Map$-EL;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 11

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_2d

    aget-object v4, v0, v3

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Ljj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v8, v6, v7}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_4b
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Ljj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Ljj$/util/Map$-EL;->remove(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Ljj$/util/Map$-EL;->replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    invoke-direct {p0, p1, p3}, Ljj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-static {v0, p1, p2, p3}, Ljj$/util/Map$-EL;->replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/util/function/BiFunction;)Ljava/util/function/BiFunction;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/util/Map$-EL;->replaceAll(Ljava/util/Map;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
