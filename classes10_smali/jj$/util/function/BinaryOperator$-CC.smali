.class public final synthetic Ljj$/util/function/BinaryOperator$-CC;
.super Ljava/lang/Object;
.source "BinaryOperator.java"


# direct methods
.method public static synthetic lambda$maxBy$1(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    move-object v0, p1

    goto :goto_9

    :cond_8
    move-object v0, p2

    :goto_9
    return-object v0
.end method

.method public static synthetic lambda$minBy$0(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_8

    move-object v0, p1

    goto :goto_9

    :cond_8
    move-object v0, p2

    :goto_9
    return-object v0
.end method

.method public static maxBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;
    .registers 2

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/BinaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljj$/util/function/BinaryOperator$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static minBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;
    .registers 2

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/function/BinaryOperator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ljj$/util/function/BinaryOperator$$ExternalSyntheticLambda1;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
