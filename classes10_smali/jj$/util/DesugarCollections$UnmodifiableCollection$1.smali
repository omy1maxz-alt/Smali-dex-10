.class Ljj$/util/DesugarCollections$UnmodifiableCollection$1;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljj$/util/Iterator;


# instance fields
.field private final i:Ljava/util/Iterator;

.field final synthetic this$0:Ljj$/util/DesugarCollections$UnmodifiableCollection;


# direct methods
.method constructor <init>(Ljj$/util/DesugarCollections$UnmodifiableCollection;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection$1;->this$0:Ljj$/util/DesugarCollections$UnmodifiableCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection$1;->this$0:Ljj$/util/DesugarCollections$UnmodifiableCollection;

    iget-object v0, v0, Ljj$/util/DesugarCollections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection$1;->i:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection$1;->i:Ljava/util/Iterator;

    invoke-static {v0, p1}, Ljj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableCollection$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
