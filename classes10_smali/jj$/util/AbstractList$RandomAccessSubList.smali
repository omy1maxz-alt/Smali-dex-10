.class Ljj$/util/AbstractList$RandomAccessSubList;
.super Ljj$/util/AbstractList$SubList;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# direct methods
.method constructor <init>(Ljj$/util/AbstractList$RandomAccessSubList;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/AbstractList$SubList;-><init>(Ljj$/util/AbstractList$SubList;II)V

    return-void
.end method

.method constructor <init>(Ljj$/util/AbstractList;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ljj$/util/AbstractList$SubList;-><init>(Ljj$/util/AbstractList;II)V

    return-void
.end method


# virtual methods
.method public subList(II)Ljava/util/List;
    .registers 4

    iget v0, p0, Ljj$/util/AbstractList$RandomAccessSubList;->size:I

    invoke-static {p1, p2, v0}, Ljj$/util/AbstractList$RandomAccessSubList;->subListRangeCheck(III)V

    new-instance v0, Ljj$/util/AbstractList$RandomAccessSubList;

    invoke-direct {v0, p0, p1, p2}, Ljj$/util/AbstractList$RandomAccessSubList;-><init>(Ljj$/util/AbstractList$RandomAccessSubList;II)V

    return-object v0
.end method
