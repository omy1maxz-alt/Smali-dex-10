.class Ljj$/util/AbstractList$ListItr;
.super Ljj$/util/AbstractList$Itr;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic this$0:Ljj$/util/AbstractList;


# direct methods
.method constructor <init>(Ljj$/util/AbstractList;I)V
    .registers 4

    iput-object p1, p0, Ljj$/util/AbstractList$ListItr;->this$0:Ljj$/util/AbstractList;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljj$/util/AbstractList$Itr;-><init>(Ljj$/util/AbstractList;Ljj$/util/AbstractList-IA;)V

    iput p2, p0, Ljj$/util/AbstractList$ListItr;->cursor:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Ljj$/util/AbstractList$ListItr;->checkForComodification()V

    :try_start_3
    iget v0, p0, Ljj$/util/AbstractList$ListItr;->cursor:I

    iget-object v1, p0, Ljj$/util/AbstractList$ListItr;->this$0:Ljj$/util/AbstractList;

    invoke-virtual {v1, v0, p1}, Ljj$/util/AbstractList;->add(ILjava/lang/Object;)V

    const/4 v1, -0x1

    iput v1, p0, Ljj$/util/AbstractList$ListItr;->lastRet:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljj$/util/AbstractList$ListItr;->cursor:I

    iget-object v1, p0, Ljj$/util/AbstractList$ListItr;->this$0:Ljj$/util/AbstractList;

    iget v1, v1, Ljj$/util/AbstractList;->modCount:I

    iput v1, p0, Ljj$/util/AbstractList$ListItr;->expectedModCount:I
    :try_end_17
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_17} :catch_19

    nop

    return-void

    :catch_19
    move-exception v0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public hasPrevious()Z
    .registers 2

    iget v0, p0, Ljj$/util/AbstractList$ListItr;->cursor:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public nextIndex()I
    .registers 2

    iget v0, p0, Ljj$/util/AbstractList$ListItr;->cursor:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Ljj$/util/AbstractList$ListItr;->checkForComodification()V

    :try_start_3
    iget v0, p0, Ljj$/util/AbstractList$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Ljj$/util/AbstractList$ListItr;->this$0:Ljj$/util/AbstractList;

    invoke-virtual {v1, v0}, Ljj$/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput v0, p0, Ljj$/util/AbstractList$ListItr;->cursor:I

    iput v0, p0, Ljj$/util/AbstractList$ListItr;->lastRet:I
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_11} :catch_12

    return-object v1

    :catch_12
    move-exception v0

    invoke-virtual {p0}, Ljj$/util/AbstractList$ListItr;->checkForComodification()V

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public previousIndex()I
    .registers 2

    iget v0, p0, Ljj$/util/AbstractList$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Ljj$/util/AbstractList$ListItr;->lastRet:I

    if-ltz v0, :cond_1d

    invoke-virtual {p0}, Ljj$/util/AbstractList$ListItr;->checkForComodification()V

    :try_start_7
    iget-object v0, p0, Ljj$/util/AbstractList$ListItr;->this$0:Ljj$/util/AbstractList;

    iget v1, p0, Ljj$/util/AbstractList$ListItr;->lastRet:I

    invoke-virtual {v0, v1, p1}, Ljj$/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/util/AbstractList$ListItr;->this$0:Ljj$/util/AbstractList;

    iget v0, v0, Ljj$/util/AbstractList;->modCount:I

    iput v0, p0, Ljj$/util/AbstractList$ListItr;->expectedModCount:I
    :try_end_14
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_14} :catch_16

    nop

    return-void

    :catch_16
    move-exception v0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
