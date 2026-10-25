.class public final synthetic Ljj$/util/function/BiFunction$-CC;
.super Ljava/lang/Object;
.source "BiFunction.java"


# direct methods
.method public static $default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/BiFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljj$/util/function/BiFunction$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiFunction;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$andThen$0(Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-interface {p0, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
