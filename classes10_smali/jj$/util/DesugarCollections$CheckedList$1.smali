.class Ljj$/util/DesugarCollections$CheckedList$1;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljj$/util/Iterator;


# instance fields
.field final synthetic this$0:Ljj$/util/DesugarCollections$CheckedList;

.field final synthetic val$i:Ljava/util/ListIterator;


# direct methods
.method constructor <init>(Ljj$/util/DesugarCollections$CheckedList;Ljava/util/ListIterator;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/DesugarCollections$CheckedList$1;->this$0:Ljj$/util/DesugarCollections$CheckedList;

    iput-object p2, p0, Ljj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedList$1;->this$0:Ljj$/util/DesugarCollections$CheckedList;

    invoke-virtual {v1, p1}, Ljj$/util/DesugarCollections$CheckedList;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-static {v0, p1}, Ljj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedList$1;->this$0:Ljj$/util/DesugarCollections$CheckedList;

    invoke-virtual {v1, p1}, Ljj$/util/DesugarCollections$CheckedList;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
