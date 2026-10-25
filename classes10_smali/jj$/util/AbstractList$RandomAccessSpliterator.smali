.class final Ljj$/util/AbstractList$RandomAccessSpliterator;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljj$/util/Spliterator;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final alist:Ljj$/util/AbstractList;

.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final list:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/util/AbstractList;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    iput-object p1, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->index:I

    const/4 v1, -0x1

    iput v1, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->fence:I

    instance-of v1, p1, Ljj$/util/AbstractList;

    if-eqz v1, :cond_14

    move-object v1, p1

    check-cast v1, Ljj$/util/AbstractList;

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    iput-object v1, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->alist:Ljj$/util/AbstractList;

    iget-object v1, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->alist:Ljj$/util/AbstractList;

    if-eqz v1, :cond_1f

    iget-object v0, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->alist:Ljj$/util/AbstractList;

    iget v0, v0, Ljj$/util/AbstractList;->modCount:I

    :cond_1f
    iput v0, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    return-void
.end method

.method private constructor <init>(Ljj$/util/AbstractList$RandomAccessSpliterator;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ljj$/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    iput-object v0, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    iput p2, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->index:I

    iput p3, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->fence:I

    iget-object v0, p1, Ljj$/util/AbstractList$RandomAccessSpliterator;->alist:Ljj$/util/AbstractList;

    iput-object v0, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->alist:Ljj$/util/AbstractList;

    iget v0, p1, Ljj$/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    iput v0, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    return-void
.end method

.method static checkAbstractListModCount(Ljj$/util/AbstractList;I)V
    .registers 3

    if-eqz p0, :cond_d

    iget v0, p0, Ljj$/util/AbstractList;->modCount:I

    if-ne v0, p1, :cond_7

    goto :goto_d

    :cond_7
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_d
    :goto_d
    return-void
.end method

.method private static get(Ljava/util/List;I)Ljava/lang/Object;
    .registers 4

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method private getFence()I
    .registers 4

    iget-object v0, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    iget v1, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->fence:I

    move v2, v1

    if-gez v1, :cond_18

    iget-object v1, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->alist:Ljj$/util/AbstractList;

    if-eqz v1, :cond_11

    iget-object v1, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->alist:Ljj$/util/AbstractList;

    iget v1, v1, Ljj$/util/AbstractList;->modCount:I

    iput v1, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    :cond_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->fence:I

    move v2, v1

    :cond_18
    return v2
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .registers 3

    invoke-direct {p0}, Ljj$/util/AbstractList$RandomAccessSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    invoke-direct {p0}, Ljj$/util/AbstractList$RandomAccessSpliterator;->getFence()I

    move-result v1

    iget v2, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->index:I

    iput v1, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->index:I

    :goto_d
    if-ge v2, v1, :cond_19

    invoke-static {v0, v2}, Ljj$/util/AbstractList$RandomAccessSpliterator;->get(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_19
    iget-object v3, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->alist:Ljj$/util/AbstractList;

    iget v4, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    invoke-static {v3, v4}, Ljj$/util/AbstractList$RandomAccessSpliterator;->checkAbstractListModCount(Ljj$/util/AbstractList;I)V

    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .registers 2

    invoke-static {p0}, Ljj$/util/Spliterator$-CC;->$default$getComparator(Ljj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .registers 3

    invoke-static {p0}, Ljj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$-CC;->$default$hasCharacteristics(Ljj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6

    if-eqz p1, :cond_22

    invoke-direct {p0}, Ljj$/util/AbstractList$RandomAccessSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->index:I

    if-ge v1, v0, :cond_20

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->index:I

    iget-object v2, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->list:Ljava/util/List;

    invoke-static {v2, v1}, Ljj$/util/AbstractList$RandomAccessSpliterator;->get(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v2, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->alist:Ljj$/util/AbstractList;

    iget v3, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->expectedModCount:I

    invoke-static {v2, v3}, Ljj$/util/AbstractList$RandomAccessSpliterator;->checkAbstractListModCount(Ljj$/util/AbstractList;I)V

    const/4 v2, 0x1

    return v2

    :cond_20
    const/4 v2, 0x0

    return v2

    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public trySplit()Ljj$/util/Spliterator;
    .registers 5

    invoke-direct {p0}, Ljj$/util/AbstractList$RandomAccessSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->index:I

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_e

    const/4 v3, 0x0

    goto :goto_15

    :cond_e
    new-instance v3, Ljj$/util/AbstractList$RandomAccessSpliterator;

    iput v2, p0, Ljj$/util/AbstractList$RandomAccessSpliterator;->index:I

    invoke-direct {v3, p0, v1, v2}, Ljj$/util/AbstractList$RandomAccessSpliterator;-><init>(Ljj$/util/AbstractList$RandomAccessSpliterator;II)V

    :goto_15
    return-object v3
.end method
