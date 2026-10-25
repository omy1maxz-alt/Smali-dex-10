.class public final synthetic Ljj$/util/function/IntConsumer$-CC;
.super Ljava/lang/Object;
.source "IntConsumer.java"


# direct methods
.method public static $default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/IntConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljj$/util/function/IntConsumer$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$andThen$0(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;I)V
    .registers 3

    invoke-interface {p0, p2}, Ljava/util/function/IntConsumer;->accept(I)V

    invoke-interface {p1, p2}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method
