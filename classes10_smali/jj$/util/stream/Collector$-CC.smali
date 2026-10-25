.class public final synthetic Ljj$/util/stream/Collector$-CC;
.super Ljava/lang/Object;
.source "Collector.java"


# direct methods
.method public static varargs of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljj$/util/stream/Collector$Characteristics;)Ljj$/util/stream/Collector;
    .registers 12

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    array-length v1, p4

    if-lez v1, :cond_23

    const-class v1, Ljj$/util/stream/Collector$Characteristics;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    move-object v6, v0

    goto :goto_24

    :cond_23
    move-object v6, v0

    :goto_24
    new-instance v1, Ljj$/util/stream/Collectors$CollectorImpl;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v1
.end method

.method public static varargs of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljj$/util/stream/Collector$Characteristics;)Ljj$/util/stream/Collector;
    .registers 6

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p3

    if-nez v0, :cond_12

    sget-object v0, Ljj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    goto :goto_1c

    :cond_12
    sget-object v0, Ljj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljj$/util/stream/Collector$Characteristics;

    invoke-static {v0, p3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_1c
    nop

    new-instance v1, Ljj$/util/stream/Collectors$CollectorImpl;

    invoke-direct {v1, p0, p1, p2, v0}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method
