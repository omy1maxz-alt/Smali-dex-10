.class public final Ljj$/util/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No java.util.Objects instances for you!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static checkFromIndexSize(III)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljj$/jdk/internal/util/Preconditions;->checkFromIndexSize(IIILjava/util/function/BiFunction;)I

    move-result v0

    return v0
.end method

.method public static checkFromToIndex(III)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljj$/jdk/internal/util/Preconditions;->checkFromToIndex(IIILjava/util/function/BiFunction;)I

    move-result v0

    return v0
.end method

.method public static checkIndex(II)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljj$/jdk/internal/util/Preconditions;->checkIndex(IILjava/util/function/BiFunction;)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_8
    return v0
.end method

.method public static deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    if-eqz p0, :cond_e

    if-nez p1, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {p0, p1}, Ljj$/util/DesugarArrays;->deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static varargs hash([Ljava/lang/Object;)I
    .registers 2

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .registers 2

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static nonNull(Ljava/lang/Object;)Z
    .registers 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 4

    if-nez p0, :cond_12

    new-instance v0, Ljava/lang/NullPointerException;

    if-nez p1, :cond_8

    const/4 v1, 0x0

    goto :goto_e

    :cond_8
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_e
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-object p0
.end method

.method public static requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_a

    :cond_4
    const-string v0, "defaultObj"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public static requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 4

    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_16

    :cond_4
    const-string v0, "supplier"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "supplier.get()"

    invoke-static {v0, v1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_16
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    return-object v0
.end method
