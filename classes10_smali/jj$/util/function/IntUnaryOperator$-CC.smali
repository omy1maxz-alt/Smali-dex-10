.class public final synthetic Ljj$/util/function/IntUnaryOperator$-CC;
.super Ljava/lang/Object;
.source "IntUnaryOperator.java"


# direct methods
.method public static $default$andThen(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ljj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)V

    return-object v0
.end method

.method public static $default$compose(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)Ljava/util/function/IntUnaryOperator;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$andThen$1(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;I)I
    .registers 4

    invoke-interface {p0, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    return v0
.end method

.method public static synthetic $private$lambda$compose$0(Ljava/util/function/IntUnaryOperator;Ljava/util/function/IntUnaryOperator;I)I
    .registers 4

    invoke-interface {p1, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    return v0
.end method

.method public static identity()Ljava/util/function/IntUnaryOperator;
    .registers 1

    new-instance v0, Ljj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljj$/util/function/IntUnaryOperator$$ExternalSyntheticLambda2;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$identity$2(I)I
    .registers 1

    return p0
.end method
