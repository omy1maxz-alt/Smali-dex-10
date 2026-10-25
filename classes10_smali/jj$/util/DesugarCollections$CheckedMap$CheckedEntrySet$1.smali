.class Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljj$/util/Iterator;


# instance fields
.field final synthetic this$0:Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;

.field final synthetic val$i:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->this$0:Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;

    iput-object p2, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    new-instance v1, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1$$ExternalSyntheticLambda0;-><init>(Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;Ljava/util/function/Consumer;)V

    invoke-static {v0, v1}, Ljj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$forEachRemaining$0$java-util-DesugarCollections$CheckedMap$CheckedEntrySet$1(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->this$0:Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;

    invoke-static {v0}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->-$$Nest$fgetvalueType(Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, v0}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->this$0:Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;

    invoke-static {v1}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->-$$Nest$fgetvalueType(Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
