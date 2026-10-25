.class Ljj$/util/DesugarCollections$UnmodifiableList$1;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljj$/util/Iterator;


# instance fields
.field private final i:Ljava/util/ListIterator;

.field final synthetic this$0:Ljj$/util/DesugarCollections$UnmodifiableList;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Ljj$/util/DesugarCollections$UnmodifiableList;I)V
    .registers 4

    iput-object p1, p0, Ljj$/util/DesugarCollections$UnmodifiableList$1;->this$0:Ljj$/util/DesugarCollections$UnmodifiableList;

    iput p2, p0, Ljj$/util/DesugarCollections$UnmodifiableList$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p0, Ljj$/util/DesugarCollections$UnmodifiableList$1;->this$0:Ljj$/util/DesugarCollections$UnmodifiableList;

    iget-object p2, p2, Ljj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    iget v0, p0, Ljj$/util/DesugarCollections$UnmodifiableList$1;->val$index:I

    invoke-interface {p2, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    iput-object p2, p0, Ljj$/util/DesugarCollections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-static {v0, p1}, Ljj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
