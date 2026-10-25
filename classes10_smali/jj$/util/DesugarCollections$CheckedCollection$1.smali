.class Ljj$/util/DesugarCollections$CheckedCollection$1;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljj$/util/Iterator;


# instance fields
.field final synthetic this$0:Ljj$/util/DesugarCollections$CheckedCollection;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljj$/util/DesugarCollections$CheckedCollection;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/DesugarCollections$CheckedCollection$1;->this$0:Ljj$/util/DesugarCollections$CheckedCollection;

    iput-object p2, p0, Ljj$/util/DesugarCollections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-static {v0, p1}, Ljj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
