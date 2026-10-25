.class abstract Ljj$/util/ImmutableCollections$AbstractImmutableList;
.super Ljj$/util/ImmutableCollections$AbstractImmutableCollection;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljj$/util/List;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableCollection;-><init>()V

    return-void
.end method

.method static subListRangeCheck(III)V
    .registers 6

    if-ltz p0, :cond_49

    if-gt p1, p2, :cond_30

    if-gt p0, p1, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4

    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4

    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Ljj$/util/ImmutableCollections$AbstractImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v4

    :goto_16
    if-ge v3, v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {p0, v3}, Ljj$/util/ImmutableCollections$AbstractImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_30

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_30
    :goto_30
    return v2

    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    xor-int/2addr v0, v2

    return v0
.end method

.method public hashCode()I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v2

    :goto_6
    if-ge v1, v2, :cond_17

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljj$/util/ImmutableCollections$AbstractImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_17
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v1

    :goto_8
    if-ge v0, v1, :cond_18

    invoke-virtual {p0, v0}, Ljj$/util/ImmutableCollections$AbstractImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    return v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Ljj$/util/ImmutableCollections$ListItr;

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljj$/util/ImmutableCollections$ListItr;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_19

    invoke-virtual {p0, v0}, Ljj$/util/ImmutableCollections$AbstractImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return v0

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_19
    const/4 v0, -0x1

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljj$/util/ImmutableCollections$AbstractImmutableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v0

    if-ltz p1, :cond_e

    if-gt p1, v0, :cond_e

    new-instance v1, Ljj$/util/ImmutableCollections$ListItr;

    invoke-direct {v1, p0, v0, p1}, Ljj$/util/ImmutableCollections$ListItr;-><init>(Ljava/util/List;II)V

    return-object v1

    :cond_e
    invoke-virtual {p0, p1}, Ljj$/util/ImmutableCollections$AbstractImmutableList;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v1

    throw v1
.end method

.method outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;
    .registers 6

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 3

    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .registers 3

    invoke-static {}, Ljj$/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-static {p0}, Ljj$/util/List$-CC;->$default$spliterator(Ljava/util/List;)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 5

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljj$/util/ImmutableCollections$AbstractImmutableList;->subListRangeCheck(III)V

    invoke-static {p0, p1, p2}, Ljj$/util/ImmutableCollections$SubList;->fromList(Ljava/util/List;II)Ljj$/util/ImmutableCollections$SubList;

    move-result-object v1

    return-object v1
.end method
