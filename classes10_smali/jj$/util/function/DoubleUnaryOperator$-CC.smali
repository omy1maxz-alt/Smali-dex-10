.class public final synthetic Ljj$/util/function/DoubleUnaryOperator$-CC;
.super Ljava/lang/Object;
.source "DoubleUnaryOperator.java"


# direct methods
.method public static $default$andThen(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ljj$/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method

.method public static $default$compose(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljj$/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$andThen$1(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;D)D
    .registers 6

    invoke-interface {p0, p2, p3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $private$lambda$compose$0(Ljava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;D)D
    .registers 6

    invoke-interface {p1, p2, p3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static identity()Ljava/util/function/DoubleUnaryOperator;
    .registers 1

    new-instance v0, Ljj$/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljj$/util/function/DoubleUnaryOperator$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$identity$2(D)D
    .registers 2

    return-wide p0
.end method
