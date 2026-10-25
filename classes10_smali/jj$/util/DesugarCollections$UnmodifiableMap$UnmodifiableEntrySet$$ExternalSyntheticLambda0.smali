.class public final synthetic Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Ljj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->lambda$entryConsumer$0(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
