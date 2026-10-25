.class Ljj$/util/DesugarCollections$UnmodifiableList;
.super Ljj$/util/DesugarCollections$UnmodifiableCollection;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/List;
.implements Ljj$/util/List;


# static fields
.field private static final serialVersionUID:J = -0x3f0dace4a1371f0L


# instance fields
.field final list:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/DesugarCollections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Ljj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    instance-of v0, v0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_e

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableRandomAccessList;

    iget-object v1, p0, Ljj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljj$/util/DesugarCollections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    goto :goto_f

    :cond_e
    move-object v0, p0

    :goto_f
    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_d

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljj$/util/DesugarCollections$UnmodifiableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableList$1;

    invoke-direct {v0, p0, p1}, Ljj$/util/DesugarCollections$UnmodifiableList$1;-><init>(Ljj$/util/DesugarCollections$UnmodifiableList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 5

    new-instance v0, Ljj$/util/DesugarCollections$UnmodifiableList;

    iget-object v1, p0, Ljj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljj$/util/DesugarCollections$UnmodifiableList;-><init>(Ljava/util/List;)V

    return-object v0
.end method
