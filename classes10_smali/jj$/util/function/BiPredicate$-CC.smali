.class public final synthetic Ljj$/util/function/BiPredicate$-CC;
.super Ljava/lang/Object;
.source "BiPredicate.java"


# direct methods
.method public static $default$and(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;)Ljava/util/function/BiPredicate;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/BiPredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ljj$/util/function/BiPredicate$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;)V

    return-object v0
.end method

.method public static $default$negate(Ljava/util/function/BiPredicate;)Ljava/util/function/BiPredicate;
    .registers 2

    new-instance v0, Ljj$/util/function/BiPredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljj$/util/function/BiPredicate$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiPredicate;)V

    return-object v0
.end method

.method public static $default$or(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;)Ljava/util/function/BiPredicate;
    .registers 3

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/BiPredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljj$/util/function/BiPredicate$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;)V

    return-object v0
.end method

.method public static synthetic $private$lambda$and$0(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    invoke-interface {p0, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static synthetic $private$lambda$negate$1(Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic $private$lambda$or$2(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    invoke-interface {p0, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
