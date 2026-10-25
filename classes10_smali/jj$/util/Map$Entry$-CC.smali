.class public final synthetic Ljj$/util/Map$Entry$-CC;
.super Ljava/lang/Object;
.source "Map.java"


# direct methods
.method public static comparingByKey()Ljava/util/Comparator;
    .registers 1

    new-instance v0, Ljj$/util/Map$Entry$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljj$/util/Map$Entry$$ExternalSyntheticLambda2;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public static comparingByKey(Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 2

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/Map$Entry$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Ljj$/util/Map$Entry$$ExternalSyntheticLambda3;-><init>(Ljava/util/Comparator;)V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public static comparingByValue()Ljava/util/Comparator;
    .registers 1

    new-instance v0, Ljj$/util/Map$Entry$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljj$/util/Map$Entry$$ExternalSyntheticLambda1;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public static comparingByValue(Ljava/util/Comparator;)Ljava/util/Comparator;
    .registers 2

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/Map$Entry$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljj$/util/Map$Entry$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;)V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public static synthetic lambda$comparingByKey$6d558cbf$1(Ljava/util/Comparator;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 5

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$comparingByKey$bbdbfea9$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$comparingByValue$1065357e$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static synthetic lambda$comparingByValue$827a17d5$1(Ljava/util/Comparator;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 5

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
