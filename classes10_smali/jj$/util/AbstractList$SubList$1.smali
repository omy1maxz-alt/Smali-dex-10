.class Ljj$/util/AbstractList$SubList$1;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private final i:Ljava/util/ListIterator;

.field final synthetic this$0:Ljj$/util/AbstractList$SubList;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Ljj$/util/AbstractList$SubList;I)V
    .registers 5

    iput-object p1, p0, Ljj$/util/AbstractList$SubList$1;->this$0:Ljj$/util/AbstractList$SubList;

    iput p2, p0, Ljj$/util/AbstractList$SubList$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p0, Ljj$/util/AbstractList$SubList$1;->this$0:Ljj$/util/AbstractList$SubList;

    invoke-static {p2}, Ljj$/util/AbstractList$SubList;->-$$Nest$fgetroot(Ljj$/util/AbstractList$SubList;)Ljj$/util/AbstractList;

    move-result-object p2

    iget-object v0, p0, Ljj$/util/AbstractList$SubList$1;->this$0:Ljj$/util/AbstractList$SubList;

    invoke-static {v0}, Ljj$/util/AbstractList$SubList;->-$$Nest$fgetoffset(Ljj$/util/AbstractList$SubList;)I

    move-result v0

    iget v1, p0, Ljj$/util/AbstractList$SubList$1;->val$index:I

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljj$/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    iput-object p2, p0, Ljj$/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Ljj$/util/AbstractList$SubList$1;->this$0:Ljj$/util/AbstractList$SubList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljj$/util/AbstractList$SubList;->-$$Nest$mupdateSizeAndModCount(Ljj$/util/AbstractList$SubList;I)V

    return-void
.end method

.method public hasNext()Z
    .registers 3

    invoke-virtual {p0}, Ljj$/util/AbstractList$SubList$1;->nextIndex()I

    move-result v0

    iget-object v1, p0, Ljj$/util/AbstractList$SubList$1;->this$0:Ljj$/util/AbstractList$SubList;

    iget v1, v1, Ljj$/util/AbstractList$SubList;->size:I

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    invoke-virtual {p0}, Ljj$/util/AbstractList$SubList$1;->previousIndex()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/AbstractList$SubList$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Ljj$/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .registers 3

    iget-object v0, p0, Ljj$/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget-object v1, p0, Ljj$/util/AbstractList$SubList$1;->this$0:Ljj$/util/AbstractList$SubList;

    invoke-static {v1}, Ljj$/util/AbstractList$SubList;->-$$Nest$fgetoffset(Ljj$/util/AbstractList$SubList;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/AbstractList$SubList$1;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Ljj$/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 3

    iget-object v0, p0, Ljj$/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget-object v1, p0, Ljj$/util/AbstractList$SubList$1;->this$0:Ljj$/util/AbstractList$SubList;

    invoke-static {v1}, Ljj$/util/AbstractList$SubList;->-$$Nest$fgetoffset(Ljj$/util/AbstractList$SubList;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, Ljj$/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    iget-object v0, p0, Ljj$/util/AbstractList$SubList$1;->this$0:Ljj$/util/AbstractList$SubList;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljj$/util/AbstractList$SubList;->-$$Nest$mupdateSizeAndModCount(Ljj$/util/AbstractList$SubList;I)V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/AbstractList$SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
