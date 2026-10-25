.class public abstract Ljj$/util/AbstractList;
.super Ljava/util/AbstractCollection;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/List;


# instance fields
.field protected transient modCount:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/AbstractList;->modCount:I

    return-void
.end method

.method private outOfBoundsMsg(I)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljj$/util/AbstractList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private rangeCheckForAdd(I)V
    .registers 4

    if-ltz p1, :cond_9

    invoke-virtual {p0}, Ljj$/util/AbstractList;->size()I

    move-result v0

    if-gt p1, v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljj$/util/AbstractList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
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

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Ljj$/util/AbstractList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljj$/util/AbstractList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 7

    invoke-direct {p0, p1}, Ljj$/util/AbstractList;->rangeCheckForAdd(I)V

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, p1, v2}, Ljj$/util/AbstractList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    move p1, v3

    goto :goto_8

    :cond_1a
    return v0
.end method

.method public clear()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljj$/util/AbstractList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljj$/util/AbstractList;->removeRange(II)V

    return-void
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
    invoke-virtual {p0}, Ljj$/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :goto_15
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_2e

    if-nez v5, :cond_34

    goto :goto_35

    :cond_2e
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    :cond_34
    return v2

    :cond_35
    :goto_35
    goto :goto_15

    :cond_36
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_43

    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_43

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    :goto_44
    return v0
.end method

.method public abstract get(I)Ljava/lang/Object;
.end method

.method public hashCode()I
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljj$/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_15

    const/4 v4, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_19
    add-int v0, v3, v4

    goto :goto_5

    :cond_1c
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4

    invoke-virtual {p0}, Ljj$/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    if-nez p1, :cond_17

    :cond_6
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    return v1

    :cond_17
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v1

    return v1

    :cond_2c
    const/4 v1, -0x1

    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Ljj$/util/AbstractList$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljj$/util/AbstractList$Itr;-><init>(Ljj$/util/AbstractList;Ljj$/util/AbstractList-IA;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4

    invoke-virtual {p0}, Ljj$/util/AbstractList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljj$/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    if-nez p1, :cond_1b

    :cond_a
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    return v1

    :cond_1b
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    return v1

    :cond_30
    const/4 v1, -0x1

    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljj$/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3

    invoke-direct {p0, p1}, Ljj$/util/AbstractList;->rangeCheckForAdd(I)V

    new-instance v0, Ljj$/util/AbstractList$ListItr;

    invoke-direct {v0, p0, p1}, Ljj$/util/AbstractList$ListItr;-><init>(Ljj$/util/AbstractList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected removeRange(II)V
    .registers 6

    invoke-virtual {p0, p1}, Ljj$/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    const/4 v1, 0x0

    sub-int v2, p2, p1

    :goto_7
    if-ge v1, v2, :cond_12

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4

    invoke-virtual {p0}, Ljj$/util/AbstractList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljj$/util/AbstractList;->subListRangeCheck(III)V

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_11

    new-instance v0, Ljj$/util/AbstractList$RandomAccessSubList;

    invoke-direct {v0, p0, p1, p2}, Ljj$/util/AbstractList$RandomAccessSubList;-><init>(Ljj$/util/AbstractList;II)V

    goto :goto_16

    :cond_11
    new-instance v0, Ljj$/util/AbstractList$SubList;

    invoke-direct {v0, p0, p1, p2}, Ljj$/util/AbstractList$SubList;-><init>(Ljj$/util/AbstractList;II)V

    :goto_16
    return-object v0
.end method
