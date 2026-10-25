.class public final synthetic Ljj$/util/function/LongUnaryOperator$-CC;
.super Ljava/lang/Object;
.source "LongUnaryOperator.java"


# direct methods
.method public static $default$andThen(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/LongUnaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljj$/util/function/LongUnaryOperator$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;)V

    return-object v0
.end method

.method public static $default$compose(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/LongUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ljj$/util/function/LongUnaryOperator$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$andThen$1(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;J)J
    .registers 6

    invoke-interface {p0, p2, p3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $private$lambda$compose$0(Ljava/util/function/LongUnaryOperator;Ljava/util/function/LongUnaryOperator;J)J
    .registers 6

    invoke-interface {p1, p2, p3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static identity()Ljava/util/function/LongUnaryOperator;
    .registers 1

    new-instance v0, Ljj$/util/function/LongUnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/util/function/LongUnaryOperator$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$identity$2(J)J
    .registers 2

    return-wide p0
.end method
