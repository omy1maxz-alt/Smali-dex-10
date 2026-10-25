.class final Ljj$/util/ImmutableCollections$SubList;
.super Ljj$/util/ImmutableCollections$AbstractImmutableList;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field private final offset:I

.field private final root:Ljava/util/List;

.field private final size:I


# direct methods
.method private constructor <init>(Ljava/util/List;II)V
    .registers 4

    invoke-direct {p0}, Ljj$/util/ImmutableCollections$AbstractImmutableList;-><init>()V

    iput-object p1, p0, Ljj$/util/ImmutableCollections$SubList;->root:Ljava/util/List;

    iput p2, p0, Ljj$/util/ImmutableCollections$SubList;->offset:I

    iput p3, p0, Ljj$/util/ImmutableCollections$SubList;->size:I

    return-void
.end method

.method static fromList(Ljava/util/List;II)Ljj$/util/ImmutableCollections$SubList;
    .registers 5

    new-instance v0, Ljj$/util/ImmutableCollections$SubList;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Ljj$/util/ImmutableCollections$SubList;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method static fromSubList(Ljj$/util/ImmutableCollections$SubList;II)Ljj$/util/ImmutableCollections$SubList;
    .registers 7

    new-instance v0, Ljj$/util/ImmutableCollections$SubList;

    iget-object v1, p0, Ljj$/util/ImmutableCollections$SubList;->root:Ljava/util/List;

    iget v2, p0, Ljj$/util/ImmutableCollections$SubList;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Ljj$/util/ImmutableCollections$SubList;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method private rangeCheck(I)V
    .registers 3

    if-ltz p1, :cond_7

    iget v0, p0, Ljj$/util/ImmutableCollections$SubList;->size:I

    if-gt p1, v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Ljj$/util/ImmutableCollections$SubList;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Ljj$/util/ImmutableCollections$SubList;->size:I

    invoke-static {p1, v0}, Ljj$/util/Objects;->checkIndex(II)I

    iget-object v0, p0, Ljj$/util/ImmutableCollections$SubList;->root:Ljava/util/List;

    iget v1, p0, Ljj$/util/ImmutableCollections$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Ljj$/util/ImmutableCollections$ListItr;

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$SubList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Ljj$/util/ImmutableCollections$ListItr;-><init>(Ljava/util/List;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4

    invoke-direct {p0, p1}, Ljj$/util/ImmutableCollections$SubList;->rangeCheck(I)V

    new-instance v0, Ljj$/util/ImmutableCollections$ListItr;

    invoke-virtual {p0}, Ljj$/util/ImmutableCollections$SubList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljj$/util/ImmutableCollections$ListItr;-><init>(Ljava/util/List;II)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Ljj$/util/ImmutableCollections$SubList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4

    iget v0, p0, Ljj$/util/ImmutableCollections$SubList;->size:I

    invoke-static {p1, p2, v0}, Ljj$/util/ImmutableCollections$SubList;->subListRangeCheck(III)V

    invoke-static {p0, p1, p2}, Ljj$/util/ImmutableCollections$SubList;->fromSubList(Ljj$/util/ImmutableCollections$SubList;II)Ljj$/util/ImmutableCollections$SubList;

    move-result-object v0

    return-object v0
.end method
