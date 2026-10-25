.class public final synthetic Ljj$/util/function/BiConsumer$-CC;
.super Ljava/lang/Object;
.source "BiConsumer.java"


# direct methods
.method public static $default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/BiConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljj$/util/function/BiConsumer$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$andThen$0(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-interface {p0, p2, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
