.class public final synthetic Ljj$/util/function/Consumer$-CC;
.super Ljava/lang/Object;
.source "Consumer.java"


# direct methods
.method public static $default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/Consumer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljj$/util/function/Consumer$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$andThen$0(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 3

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
