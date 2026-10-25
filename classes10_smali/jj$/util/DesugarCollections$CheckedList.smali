.class Ljj$/util/DesugarCollections$CheckedList;
.super Ljj$/util/DesugarCollections$CheckedCollection;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/List;
.implements Ljj$/util/List;


# static fields
.field private static final serialVersionUID:J = 0xe7ce7692c45f7cL


# instance fields
.field final list:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/DesugarCollections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    iput-object p1, p0, Ljj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-virtual {p0, p2}, Ljj$/util/DesugarCollections$CheckedList;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-virtual {p0, p2}, Ljj$/util/DesugarCollections$CheckedList;->checkedCopyOf(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_d

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

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

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method synthetic lambda$replaceAll$0$java-util-DesugarCollections$CheckedList(Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-interface {p1, p2}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/util/DesugarCollections$CheckedList;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljj$/util/DesugarCollections$CheckedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    new-instance v1, Ljj$/util/DesugarCollections$CheckedList$1;

    invoke-direct {v1, p0, v0}, Ljj$/util/DesugarCollections$CheckedList$1;-><init>(Ljj$/util/DesugarCollections$CheckedList;Ljava/util/ListIterator;)V

    return-object v1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    new-instance v1, Ljj$/util/DesugarCollections$CheckedList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ljj$/util/DesugarCollections$CheckedList$$ExternalSyntheticLambda0;-><init>(Ljj$/util/DesugarCollections$CheckedList;Ljava/util/function/UnaryOperator;)V

    invoke-static {v0, v1}, Ljj$/util/List$-EL;->replaceAll(Ljava/util/List;Ljava/util/function/UnaryOperator;)V

    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-virtual {p0, p2}, Ljj$/util/DesugarCollections$CheckedList;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-static {v0, p1}, Ljj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public subList(II)Ljava/util/List;
    .registers 6

    new-instance v0, Ljj$/util/DesugarCollections$CheckedList;

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Ljj$/util/DesugarCollections$CheckedList;->type:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ljj$/util/DesugarCollections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    return-object v0
.end method
