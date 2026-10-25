.class Ljj$/util/AbstractList$Itr;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field cursor:I

.field expectedModCount:I

.field lastRet:I

.field final synthetic this$0:Ljj$/util/AbstractList;


# direct methods
.method private constructor <init>(Ljj$/util/AbstractList;)V
    .registers 2

    iput-object p1, p0, Ljj$/util/AbstractList$Itr;->this$0:Ljj$/util/AbstractList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Ljj$/util/AbstractList$Itr;->cursor:I

    const/4 p1, -0x1

    iput p1, p0, Ljj$/util/AbstractList$Itr;->lastRet:I

    iget-object p1, p0, Ljj$/util/AbstractList$Itr;->this$0:Ljj$/util/AbstractList;

    iget p1, p1, Ljj$/util/AbstractList;->modCount:I

    iput p1, p0, Ljj$/util/AbstractList$Itr;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Ljj$/util/AbstractList;Ljj$/util/AbstractList-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljj$/util/AbstractList$Itr;-><init>(Ljj$/util/AbstractList;)V

    return-void
.end method


# virtual methods
.method final checkForComodification()V
    .registers 3

    iget-object v0, p0, Ljj$/util/AbstractList$Itr;->this$0:Ljj$/util/AbstractList;

    iget v0, v0, Ljj$/util/AbstractList;->modCount:I

    iget v1, p0, Ljj$/util/AbstractList$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Ljj$/util/AbstractList$Itr;->cursor:I

    iget-object v1, p0, Ljj$/util/AbstractList$Itr;->this$0:Ljj$/util/AbstractList;

    invoke-virtual {v1}, Ljj$/util/AbstractList;->size()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Ljj$/util/AbstractList$Itr;->checkForComodification()V

    :try_start_3
    iget v0, p0, Ljj$/util/AbstractList$Itr;->cursor:I

    iget-object v1, p0, Ljj$/util/AbstractList$Itr;->this$0:Ljj$/util/AbstractList;

    invoke-virtual {v1, v0}, Ljj$/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput v0, p0, Ljj$/util/AbstractList$Itr;->lastRet:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljj$/util/AbstractList$Itr;->cursor:I
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_11} :catch_12

    return-object v1

    :catch_12
    move-exception v0

    invoke-virtual {p0}, Ljj$/util/AbstractList$Itr;->checkForComodification()V

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .registers 3

    iget v0, p0, Ljj$/util/AbstractList$Itr;->lastRet:I

    if-ltz v0, :cond_2c

    invoke-virtual {p0}, Ljj$/util/AbstractList$Itr;->checkForComodification()V

    :try_start_7
    iget-object v0, p0, Ljj$/util/AbstractList$Itr;->this$0:Ljj$/util/AbstractList;

    iget v1, p0, Ljj$/util/AbstractList$Itr;->lastRet:I

    invoke-virtual {v0, v1}, Ljj$/util/AbstractList;->remove(I)Ljava/lang/Object;

    iget v0, p0, Ljj$/util/AbstractList$Itr;->lastRet:I

    iget v1, p0, Ljj$/util/AbstractList$Itr;->cursor:I

    if-ge v0, v1, :cond_1a

    iget v0, p0, Ljj$/util/AbstractList$Itr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljj$/util/AbstractList$Itr;->cursor:I

    :cond_1a
    const/4 v0, -0x1

    iput v0, p0, Ljj$/util/AbstractList$Itr;->lastRet:I

    iget-object v0, p0, Ljj$/util/AbstractList$Itr;->this$0:Ljj$/util/AbstractList;

    iget v0, v0, Ljj$/util/AbstractList;->modCount:I

    iput v0, p0, Ljj$/util/AbstractList$Itr;->expectedModCount:I
    :try_end_23
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_23} :catch_25

    nop

    return-void

    :catch_25
    move-exception v0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
