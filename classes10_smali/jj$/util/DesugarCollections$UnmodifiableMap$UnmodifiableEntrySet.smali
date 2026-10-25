.class Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;
.super Ljj$/util/DesugarCollections$UnmodifiableSet;
.source "DesugarCollections.java"


# static fields
.field private static final serialVersionUID:J = 0x6d0066a59f08eab5L


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/DesugarCollections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method static entryConsumer(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method static synthetic lambda$entryConsumer$0(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V
    .registers 3

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    invoke-direct {v0, p1}, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    new-instance v1, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    move-object v2, p1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v1, v2}, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    invoke-virtual {p0, v1}, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->contains(Ljava/lang/Object;)Z

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
    .registers 6

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_1a

    return v1

    :cond_1a
    invoke-virtual {p0, v0}, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-static {p1}, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->entryConsumer(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;

    invoke-direct {v0, p0}, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;-><init>(Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;)V

    return-object v0
.end method

.method public parallelStream()Ljj$/util/stream/Stream;
    .registers 3

    invoke-virtual {p0}, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljj$/util/Spliterator;
    .registers 3

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;

    iget-object v1, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-static {v1}, Ljj$/util/Collection$-EL;->spliterator(Ljava/util/Collection;)Ljj$/util/Spliterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;-><init>(Ljj$/util/Spliterator;)V

    return-object v0
.end method

.method public stream()Ljj$/util/stream/Stream;
    .registers 3

    invoke-virtual {p0}, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_18

    new-instance v2, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    aget-object v3, v0, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, v3}, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_18
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    array-length v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    move-object v1, p1

    goto :goto_c

    :cond_8
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_c
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_11
    array-length v3, v0

    if-ge v1, v3, :cond_22

    new-instance v3, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    aget-object v4, v0, v1

    check-cast v4, Ljava/util/Map$Entry;

    invoke-direct {v3, v4}, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_22
    array-length v1, v0

    array-length v3, p1

    if-le v1, v3, :cond_27

    return-object v0

    :cond_27
    array-length v1, v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_33

    array-length v1, v0

    const/4 v2, 0x0

    aput-object v2, p1, v1

    :cond_33
    return-object p1
.end method
