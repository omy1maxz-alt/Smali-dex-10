.class Ljj$/util/AbstractList$SubList;
.super Ljj$/util/AbstractList;
.source "AbstractList.java"


# instance fields
.field private final offset:I

.field private final parent:Ljj$/util/AbstractList$SubList;

.field private final root:Ljj$/util/AbstractList;

.field protected size:I


# direct methods
.method static bridge synthetic -$$Nest$fgetoffset(Ljj$/util/AbstractList$SubList;)I
    .registers 1

    iget p0, p0, Ljj$/util/AbstractList$SubList;->offset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetroot(Ljj$/util/AbstractList$SubList;)Ljj$/util/AbstractList;
    .registers 1

    iget-object p0, p0, Ljj$/util/AbstractList$SubList;->root:Ljj$/util/AbstractList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateSizeAndModCount(Ljj$/util/AbstractList$SubList;I)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    return-void
.end method

.method protected constructor <init>(Ljj$/util/AbstractList$SubList;II)V
    .registers 5

    invoke-direct {p0}, Ljj$/util/AbstractList;-><init>()V

    iget-object v0, p1, Ljj$/util/AbstractList$SubList;->root:Ljj$/util/AbstractList;

    iput-object v0, p0, Ljj$/util/AbstractList$SubList;->root:Ljj$/util/AbstractList;

    iput-object p1, p0, Ljj$/util/AbstractList$SubList;->parent:Ljj$/util/AbstractList$SubList;

    iget v0, p1, Ljj$/util/AbstractList$SubList;->offset:I

    add-int/2addr v0, p2

    iput v0, p0, Ljj$/util/AbstractList$SubList;->offset:I

    sub-int v0, p3, p2

    iput v0, p0, Ljj$/util/AbstractList$SubList;->size:I

    iget-object v0, p0, Ljj$/util/AbstractList$SubList;->root:Ljj$/util/AbstractList;

    iget v0, v0, Ljj$/util/AbstractList;->modCount:I

    iput v0, p0, Ljj$/util/AbstractList$SubList;->modCount:I

    return-void
.end method

.method public constructor <init>(Ljj$/util/AbstractList;II)V
    .registers 5

    invoke-direct {p0}, Ljj$/util/AbstractList;-><init>()V

    iput-object p1, p0, Ljj$/util/AbstractList$SubList;->root:Ljj$/util/AbstractList;

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/AbstractList$SubList;->parent:Ljj$/util/AbstractList$SubList;

    iput p2, p0, Ljj$/util/AbstractList$SubList;->offset:I

    sub-int v0, p3, p2

    iput v0, p0, Ljj$/util/AbstractList$SubList;->size:I

    iget v0, p1, Ljj$/util/AbstractList;->modCount:I

    iput v0, p0, Ljj$/util/AbstractList$SubList;->modCount:I

    return-void
.end method

.method private checkForComodification()V
    .registers 3

    iget-object v0, p0, Ljj$/util/AbstractList$SubList;->root:Ljj$/util/AbstractList;

    iget v0, v0, Ljj$/util/AbstractList;->modCount:I

    iget v1, p0, Ljj$/util/AbstractList$SubList;->modCount:I

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private outOfBoundsMsg(I)Ljava/lang/String;
    .registers 5

    iget v0, p0, Ljj$/util/AbstractList$SubList;->size:I

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

    if-ltz p1, :cond_7

    iget v0, p0, Ljj$/util/AbstractList$SubList;->size:I

    if-gt p1, v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljj$/util/AbstractList$SubList;->outOfBoundsMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateSizeAndModCount(I)V
    .registers 4

    move-object v0, p0

    :cond_1
    iget v1, v0, Ljj$/util/AbstractList$SubList;->size:I

    add-int/2addr v1, p1

    iput v1, v0, Ljj$/util/AbstractList$SubList;->size:I

    iget-object v1, p0, Ljj$/util/AbstractList$SubList;->root:Ljj$/util/AbstractList;

    iget v1, v1, Ljj$/util/AbstractList;->modCount:I

    iput v1, v0, Ljj$/util/AbstractList$SubList;->modCount:I

    iget-object v0, v0, Ljj$/util/AbstractList$SubList;->parent:Ljj$/util/AbstractList$SubList;

    if-nez v0, :cond_1

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5

    invoke-direct {p0, p1}, Ljj$/util/AbstractList$SubList;->rangeCheckForAdd(I)V

    invoke-direct {p0}, Ljj$/util/AbstractList$SubList;->checkForComodification()V

    iget-object v0, p0, Ljj$/util/AbstractList$SubList;->root:Ljj$/util/AbstractList;

    iget v1, p0, Ljj$/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljj$/util/AbstractList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljj$/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 6

    invoke-direct {p0, p1}, Ljj$/util/AbstractList$SubList;->rangeCheckForAdd(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v1, 0x0

    return v1

    :cond_b
    invoke-direct {p0}, Ljj$/util/AbstractList$SubList;->checkForComodification()V

    iget-object v1, p0, Ljj$/util/AbstractList$SubList;->root:Ljj$/util/AbstractList;

    iget v2, p0, Ljj$/util/AbstractList$SubList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljj$/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    invoke-direct {p0, v0}, Ljj$/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    const/4 v1, 0x1

    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3

    iget v0, p0, Ljj$/util/AbstractList$SubList;->size:I

    invoke-virtual {p0, v0, p1}, Ljj$/util/AbstractList$SubList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Ljj$/util/AbstractList$SubList;->size:I

    invoke-static {p1, v0}, Ljj$/util/Objects;->checkIndex(II)I

    invoke-direct {p0}, Ljj$/util/AbstractList$SubList;->checkForComodification()V

    iget-object v0, p0, Ljj$/util/AbstractList$SubList;->root:Ljj$/util/AbstractList;

    iget v1, p0, Ljj$/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljj$/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/AbstractList$SubList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3

    invoke-direct {p0}, Ljj$/util/AbstractList$SubList;->checkForComodification()V

    invoke-direct {p0, p1}, Ljj$/util/AbstractList$SubList;->rangeCheckForAdd(I)V

    new-instance v0, Ljj$/util/AbstractList$SubList$1;

    invoke-direct {v0, p0, p1}, Ljj$/util/AbstractList$SubList$1;-><init>(Ljj$/util/AbstractList$SubList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Ljj$/util/AbstractList$SubList;->size:I

    invoke-static {p1, v0}, Ljj$/util/Objects;->checkIndex(II)I

    invoke-direct {p0}, Ljj$/util/AbstractList$SubList;->checkForComodification()V

    iget-object v0, p0, Ljj$/util/AbstractList$SubList;->root:Ljj$/util/AbstractList;

    iget v1, p0, Ljj$/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljj$/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Ljj$/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    return-object v0
.end method

.method protected removeRange(II)V
    .registers 6

    invoke-direct {p0}, Ljj$/util/AbstractList$SubList;->checkForComodification()V

    iget-object v0, p0, Ljj$/util/AbstractList$SubList;->root:Ljj$/util/AbstractList;

    iget v1, p0, Ljj$/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljj$/util/AbstractList$SubList;->offset:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Ljj$/util/AbstractList;->removeRange(II)V

    sub-int v0, p1, p2

    invoke-direct {p0, v0}, Ljj$/util/AbstractList$SubList;->updateSizeAndModCount(I)V

    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Ljj$/util/AbstractList$SubList;->size:I

    invoke-static {p1, v0}, Ljj$/util/Objects;->checkIndex(II)I

    invoke-direct {p0}, Ljj$/util/AbstractList$SubList;->checkForComodification()V

    iget-object v0, p0, Ljj$/util/AbstractList$SubList;->root:Ljj$/util/AbstractList;

    iget v1, p0, Ljj$/util/AbstractList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljj$/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    invoke-direct {p0}, Ljj$/util/AbstractList$SubList;->checkForComodification()V

    iget v0, p0, Ljj$/util/AbstractList$SubList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4

    iget v0, p0, Ljj$/util/AbstractList$SubList;->size:I

    invoke-static {p1, p2, v0}, Ljj$/util/AbstractList$SubList;->subListRangeCheck(III)V

    new-instance v0, Ljj$/util/AbstractList$SubList;

    invoke-direct {v0, p0, p1, p2}, Ljj$/util/AbstractList$SubList;-><init>(Ljj$/util/AbstractList$SubList;II)V

    return-object v0
.end method
