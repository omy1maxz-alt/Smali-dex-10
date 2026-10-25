.class public final synthetic Ljj$/util/function/DoubleConsumer$-CC;
.super Ljava/lang/Object;
.source "DoubleConsumer.java"


# direct methods
.method public static $default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/DoubleConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljj$/util/function/DoubleConsumer$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$andThen$0(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;D)V
    .registers 4

    invoke-interface {p0, p2, p3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    invoke-interface {p1, p2, p3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method
