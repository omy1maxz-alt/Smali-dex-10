.class Ljj$/util/DesugarCollections$CheckedCollection;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;
.implements Ljj$/util/Collection;


# static fields
.field private static final serialVersionUID:J = 0x15e96dfd18e6cc6fL


# instance fields
.field final c:Ljava/util/Collection;

.field final type:Ljava/lang/Class;

.field private zeroLengthElementArray:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/lang/Class;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "c"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    const-string v0, "type"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->type:Ljava/lang/Class;

    return-void
.end method

.method private badElementMsg(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedCollection;->type:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " element into collection with element type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zeroLengthElementArray()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->zeroLengthElementArray:[Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->zeroLengthElementArray:[Ljava/lang/Object;

    goto :goto_f

    :cond_7
    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->type:Ljava/lang/Class;

    invoke-static {v0}, Ljj$/util/DesugarCollections;->zeroLengthArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->zeroLengthElementArray:[Ljava/lang/Object;

    :goto_f
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Ljj$/util/DesugarCollections$CheckedCollection;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Ljj$/util/DesugarCollections$CheckedCollection;->checkedCopyOf(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method checkedCopyOf(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 7

    :try_start_0
    invoke-direct {p0}, Ljj$/util/DesugarCollections$CheckedCollection;->zeroLengthElementArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1c

    array-length v2, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_1b} :catch_1d

    move-object v1, v2

    :cond_1c
    goto :goto_34

    :catch_1d
    move-exception v0

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v2, :cond_34

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Ljj$/util/DesugarCollections$CheckedCollection;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_34
    :goto_34
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-static {v0, p1}, Ljj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljj$/util/DesugarCollections$CheckedCollection$1;

    invoke-direct {v1, p0, v0}, Ljj$/util/DesugarCollections$CheckedCollection$1;-><init>(Ljj$/util/DesugarCollections$CheckedCollection;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public synthetic parallelStream()Ljava/util/stream/Stream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/DesugarCollections$CheckedCollection;->parallelStream()Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public parallelStream()Ljj$/util/stream/Stream;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Ljj$/util/Collection$-EL;->parallelStream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-static {v0, p1}, Ljj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/DesugarCollections$CheckedCollection;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$Wrapper;->convert(Ljj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljj$/util/Spliterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Ljj$/util/Collection$-EL;->spliterator(Ljava/util/Collection;)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/DesugarCollections$CheckedCollection;->stream()Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljj$/util/stream/Stream;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Ljj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method typeCheck(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-eqz p1, :cond_15

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_15

    :cond_b
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p1}, Ljj$/util/DesugarCollections$CheckedCollection;->badElementMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    return-object p1
.end method
