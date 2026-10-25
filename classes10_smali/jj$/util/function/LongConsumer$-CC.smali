.class public final synthetic Ljj$/util/function/LongConsumer$-CC;
.super Ljava/lang/Object;
.source "LongConsumer.java"


# direct methods
.method public static $default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/LongConsumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljj$/util/function/LongConsumer$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$andThen$0(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;J)V
    .registers 4

    invoke-interface {p0, p2, p3}, Ljava/util/function/LongConsumer;->accept(J)V

    invoke-interface {p1, p2, p3}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method
