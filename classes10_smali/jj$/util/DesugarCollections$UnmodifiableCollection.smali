.class Ljj$/util/DesugarCollections$UnmodifiableCollection;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;
.implements Ljj$/util/Collection;


# static fields
.field private static final serialVersionUID:J = 0x19420080cb5ef71eL


# instance fields
.field final c:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    return-void

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
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

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-static {v0, p1}, Ljj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableCollection$1;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$UnmodifiableCollection$1;-><init>(Ljj$/util/DesugarCollections$UnmodifiableCollection;)V

    return-object v0
.end method

.method public synthetic parallelStream()Ljava/util/stream/Stream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/DesugarCollections$UnmodifiableCollection;->parallelStream()Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public parallelStream()Ljj$/util/stream/Stream;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Ljj$/util/Collection$-EL;->parallelStream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/DesugarCollections$UnmodifiableCollection;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$Wrapper;->convert(Ljj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljj$/util/Spliterator;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Ljj$/util/Collection$-EL;->spliterator(Ljava/util/Collection;)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/DesugarCollections$UnmodifiableCollection;->stream()Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljj$/util/stream/Stream;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Ljj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

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

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
