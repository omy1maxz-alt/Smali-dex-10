.class public final synthetic Ljj$/util/function/Function$-CC;
.super Ljava/lang/Object;
.source "Function.java"


# direct methods
.method public static $default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/Function$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljj$/util/function/Function$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static $default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/Function$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ljj$/util/function/Function$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$andThen$1(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $private$lambda$compose$0(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static identity()Ljava/util/function/Function;
    .registers 1

    new-instance v0, Ljj$/util/function/Function$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/util/function/Function$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$identity$2(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    return-object p0
.end method
