.class public final Ljj$/util/stream/Collectors;
.super Ljava/lang/Object;
.source "Collectors.java"


# static fields
.field static final CH_CONCURRENT_ID:Ljava/util/Set;

.field static final CH_CONCURRENT_NOID:Ljava/util/Set;

.field static final CH_ID:Ljava/util/Set;

.field static final CH_NOID:Ljava/util/Set;

.field static final CH_UNORDERED_ID:Ljava/util/Set;

.field static final CH_UNORDERED_NOID:Ljava/util/Set;


# direct methods
.method static bridge synthetic -$$Nest$smcastingIdentity()Ljava/util/function/Function;
    .registers 1

    invoke-static {}, Ljj$/util/stream/Collectors;->castingIdentity()Ljava/util/function/Function;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljj$/util/stream/Collector$Characteristics;->CONCURRENT:Ljj$/util/stream/Collector$Characteristics;

    sget-object v1, Ljj$/util/stream/Collector$Characteristics;->UNORDERED:Ljj$/util/stream/Collector$Characteristics;

    sget-object v2, Ljj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljj$/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    sget-object v0, Ljj$/util/stream/Collector$Characteristics;->CONCURRENT:Ljj$/util/stream/Collector$Characteristics;

    sget-object v1, Ljj$/util/stream/Collector$Characteristics;->UNORDERED:Ljj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljj$/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    sget-object v0, Ljj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljj$/util/stream/Collector$Characteristics;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    sget-object v0, Ljj$/util/stream/Collector$Characteristics;->UNORDERED:Ljj$/util/stream/Collector$Characteristics;

    sget-object v1, Ljj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljj$/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    sget-object v0, Ljj$/util/stream/Collector$Characteristics;->UNORDERED:Ljj$/util/stream/Collector$Characteristics;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljj$/util/stream/Collectors;->CH_UNORDERED_NOID:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static averagingDouble(Ljava/util/function/ToDoubleFunction;)Ljj$/util/stream/Collector;
    .registers 7

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda32;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda32;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda33;-><init>(Ljava/util/function/ToDoubleFunction;)V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda34;

    invoke-direct {v3}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda34;-><init>()V

    new-instance v4, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda35;

    invoke-direct {v4}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda35;-><init>()V

    sget-object v5, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static averagingInt(Ljava/util/function/ToIntFunction;)Ljj$/util/stream/Collector;
    .registers 7

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda36;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda36;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda37;-><init>(Ljava/util/function/ToIntFunction;)V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda38;

    invoke-direct {v3}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda38;-><init>()V

    new-instance v4, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda39;

    invoke-direct {v4}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda39;-><init>()V

    sget-object v5, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static averagingLong(Ljava/util/function/ToLongFunction;)Ljj$/util/stream/Collector;
    .registers 7

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda86;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda86;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda87;

    invoke-direct {v2, p0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda87;-><init>(Ljava/util/function/ToLongFunction;)V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda88;

    invoke-direct {v3}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda88;-><init>()V

    new-instance v4, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda89;

    invoke-direct {v4}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda89;-><init>()V

    sget-object v5, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method private static boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;
    .registers 2

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static castingIdentity()Ljava/util/function/Function;
    .registers 1

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda65;-><init>()V

    return-object v0
.end method

.method public static collectingAndThen(Ljj$/util/stream/Collector;Ljava/util/function/Function;)Ljj$/util/stream/Collector;
    .registers 9

    invoke-interface {p0}, Ljj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    sget-object v0, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v6, v0

    goto :goto_27

    :cond_17
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Ljj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    move-object v6, v0

    goto :goto_27

    :cond_26
    move-object v6, v0

    :goto_27
    new-instance v1, Ljj$/util/stream/Collectors$CollectorImpl;

    invoke-interface {p0}, Ljj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    invoke-interface {p0}, Ljj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v3

    invoke-interface {p0}, Ljj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p0}, Ljj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v1
.end method

.method static computeFinalSum([D)D
    .registers 6

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    add-double/2addr v0, v3

    array-length v3, p0

    sub-int/2addr v3, v2

    aget-wide v2, p0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_18

    return-wide v2

    :cond_18
    return-wide v0
.end method

.method public static counting()Ljj$/util/stream/Collector;
    .registers 1

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda75;

    invoke-direct {v0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda75;-><init>()V

    invoke-static {v0}, Ljj$/util/stream/Collectors;->summingLong(Ljava/util/function/ToLongFunction;)Ljj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method private static duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;
    .registers 6

    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string v2, "Duplicate key %s (attempted merging values %s and %s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static filtering(Ljava/util/function/Predicate;Ljj$/util/stream/Collector;)Ljj$/util/stream/Collector;
    .registers 9

    invoke-interface {p1}, Ljj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Ljj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda67;

    invoke-direct {v3, p0, v0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda67;-><init>(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    invoke-interface {p1}, Ljj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Ljj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v5

    invoke-interface {p1}, Ljj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v1
.end method

.method public static flatMapping(Ljava/util/function/Function;Ljj$/util/stream/Collector;)Ljj$/util/stream/Collector;
    .registers 9

    invoke-interface {p1}, Ljj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Ljj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda77;

    invoke-direct {v3, p0, v0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda77;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;)V

    invoke-interface {p1}, Ljj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Ljj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v5

    invoke-interface {p1}, Ljj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v1
.end method

.method public static groupingBy(Ljava/util/function/Function;)Ljj$/util/stream/Collector;
    .registers 2

    invoke-static {}, Ljj$/util/stream/Collectors;->toList()Ljj$/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Ljj$/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljj$/util/stream/Collector;)Ljj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljj$/util/stream/Collector;)Ljj$/util/stream/Collector;
    .registers 12

    invoke-interface {p2}, Ljj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {p2}, Ljj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v1

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda59;

    invoke-direct {v2, p0, v0, v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda59;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    move-object v5, v2

    invoke-interface {p2}, Ljj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v2

    invoke-static {v2}, Ljj$/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v6

    move-object v4, p1

    invoke-interface {p2}, Ljj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljj$/util/stream/Collector$Characteristics;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    new-instance v2, Ljj$/util/stream/Collectors$CollectorImpl;

    sget-object v3, Ljj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v2, v4, v5, v6, v3}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v2

    :cond_2b
    invoke-interface {p2}, Ljj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v2

    new-instance v7, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda60;

    invoke-direct {v7, v2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda60;-><init>(Ljava/util/function/Function;)V

    new-instance v3, Ljj$/util/stream/Collectors$CollectorImpl;

    sget-object v8, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v3 .. v8}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v3
.end method

.method public static groupingBy(Ljava/util/function/Function;Ljj$/util/stream/Collector;)Ljj$/util/stream/Collector;
    .registers 3

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda76;-><init>()V

    invoke-static {p0, v0, p1}, Ljj$/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljj$/util/stream/Collector;)Ljj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingByConcurrent(Ljava/util/function/Function;)Ljj$/util/stream/Collector;
    .registers 3

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {}, Ljj$/util/stream/Collectors;->toList()Ljj$/util/stream/Collector;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljj$/util/stream/Collectors;->groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljj$/util/stream/Collector;)Ljj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljj$/util/stream/Collector;)Ljj$/util/stream/Collector;
    .registers 12

    invoke-interface {p2}, Ljj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {p2}, Ljj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v1

    invoke-interface {p2}, Ljj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v2

    invoke-static {v2}, Ljj$/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v6

    move-object v4, p1

    invoke-interface {p2}, Ljj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljj$/util/stream/Collector$Characteristics;->CONCURRENT:Ljj$/util/stream/Collector$Characteristics;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0, v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    move-object v5, v2

    goto :goto_2a

    :cond_24
    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    move-object v5, v2

    :goto_2a
    invoke-interface {p2}, Ljj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljj$/util/stream/Collector$Characteristics;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    new-instance v2, Ljj$/util/stream/Collectors$CollectorImpl;

    sget-object v3, Ljj$/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v2, v4, v5, v6, v3}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v2

    :cond_3e
    invoke-interface {p2}, Ljj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v2

    new-instance v7, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda9;

    invoke-direct {v7, v2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda9;-><init>(Ljava/util/function/Function;)V

    new-instance v3, Ljj$/util/stream/Collectors$CollectorImpl;

    sget-object v8, Ljj$/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    invoke-direct/range {v3 .. v8}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v3
.end method

.method public static groupingByConcurrent(Ljava/util/function/Function;Ljj$/util/stream/Collector;)Ljj$/util/stream/Collector;
    .registers 3

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0, p1}, Ljj$/util/stream/Collectors;->groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljj$/util/stream/Collector;)Ljj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static joining()Ljj$/util/stream/Collector;
    .registers 6

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda91;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda91;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda92;

    invoke-direct {v2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda92;-><init>()V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda93;

    invoke-direct {v3}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda93;-><init>()V

    new-instance v4, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda94;

    invoke-direct {v4}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda94;-><init>()V

    sget-object v5, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static joining(Ljava/lang/CharSequence;)Ljj$/util/stream/Collector;
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0, v0}, Ljj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljj$/util/stream/Collector;
    .registers 9

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda68;

    invoke-direct {v1, p0, p1, p2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda68;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda69;

    invoke-direct {v2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda69;-><init>()V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda70;

    invoke-direct {v3}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda70;-><init>()V

    new-instance v4, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda71;

    invoke-direct {v4}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda71;-><init>()V

    sget-object v5, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method static synthetic lambda$averagingDouble$38()[D
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$averagingDouble$39(Ljava/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .registers 10

    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Ljj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v2, 0x2

    aget-wide v3, p1, v2

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    const/4 v2, 0x3

    aget-wide v3, p1, v2

    add-double/2addr v3, v0

    aput-wide v3, p1, v2

    return-void
.end method

.method static synthetic lambda$averagingDouble$40([D[D)[D
    .registers 7

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$averagingDouble$41([D)Ljava/lang/Double;
    .registers 7

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_a

    goto :goto_12

    :cond_a
    invoke-static {p0}, Ljj$/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v1

    aget-wide v3, p0, v0

    div-double v3, v1, v3

    :goto_12
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$averagingInt$30()[J
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$averagingInt$31(Ljava/util/function/ToIntFunction;[JLjava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic lambda$averagingInt$32([J[J)[J
    .registers 7

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$averagingInt$33([J)Ljava/lang/Double;
    .registers 7

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_c

    const-wide/16 v0, 0x0

    goto :goto_15

    :cond_c
    const/4 v1, 0x0

    aget-wide v1, p0, v1

    long-to-double v1, v1

    aget-wide v3, p0, v0

    long-to-double v3, v3

    div-double v0, v1, v3

    :goto_15
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$averagingLong$34()[J
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$averagingLong$35(Ljava/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic lambda$averagingLong$36([J[J)[J
    .registers 7

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$averagingLong$37([J)Ljava/lang/Double;
    .registers 7

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_c

    const-wide/16 v0, 0x0

    goto :goto_15

    :cond_c
    const/4 v1, 0x0

    aget-wide v1, p0, v1

    long-to-double v1, v1

    aget-wide v3, p0, v0

    long-to-double v3, v3

    div-double v0, v1, v3

    :goto_15
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$boxSupplier$45(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method static synthetic lambda$castingIdentity$2(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method static synthetic lambda$counting$17(Ljava/lang/Object;)J
    .registers 3

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method static synthetic lambda$filtering$16(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    invoke-interface {p0, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method static synthetic lambda$flatMapping$14(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$flatMapping$15(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Stream;

    if-eqz v0, :cond_23

    :try_start_8
    invoke-interface {v0}, Ljj$/util/stream/Stream;->sequential()Ljj$/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Ljj$/util/stream/Stream;

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda14;

    invoke-direct {v2, p1, p2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda14;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_17

    goto :goto_23

    :catchall_17
    move-exception v1

    if-eqz v0, :cond_22

    :try_start_1a
    invoke-interface {v0}, Ljj$/util/stream/Stream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    throw v1

    :cond_23
    :goto_23
    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljj$/util/stream/Stream;->close()V

    :cond_28
    return-void
.end method

.method static synthetic lambda$groupingBy$52(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$groupingBy$53(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/Map;Ljava/lang/Object;)V
    .registers 7

    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be mapped to a null key"

    invoke-static {v0, v1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda66;

    invoke-direct {v1, p1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda66;-><init>(Ljava/util/function/Supplier;)V

    invoke-static {p3, v0, v1}, Ljj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$groupingBy$54(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$groupingBy$55(Ljava/util/function/Function;Ljava/util/Map;)Ljava/util/Map;
    .registers 3

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda42;

    invoke-direct {v0, p0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda42;-><init>(Ljava/util/function/Function;)V

    invoke-static {p1, v0}, Ljj$/util/Map$-EL;->replaceAll(Ljava/util/Map;Ljava/util/function/BiFunction;)V

    move-object v0, p1

    return-object v0
.end method

.method static synthetic lambda$groupingByConcurrent$56(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$groupingByConcurrent$57(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .registers 7

    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be mapped to a null key"

    invoke-static {v0, v1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Supplier;)V

    invoke-static {p3, v0, v1}, Ljj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$groupingByConcurrent$58(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$groupingByConcurrent$59(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .registers 8

    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be mapped to a null key"

    invoke-static {v0, v1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda30;

    invoke-direct {v1, p1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda30;-><init>(Ljava/util/function/Supplier;)V

    invoke-static {p3, v0, v1}, Ljj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_14
    invoke-interface {p2, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method static synthetic lambda$groupingByConcurrent$60(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$groupingByConcurrent$61(Ljava/util/function/Function;Ljava/util/concurrent/ConcurrentMap;)Ljava/util/concurrent/ConcurrentMap;
    .registers 3

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda47;-><init>(Ljava/util/function/Function;)V

    invoke-static {p1, v0}, Ljj$/util/concurrent/ConcurrentMap$-EL;->replaceAll(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;)V

    move-object v0, p1

    return-object v0
.end method

.method static synthetic lambda$joining$10(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic lambda$joining$11(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljj$/util/StringJoiner;
    .registers 4

    new-instance v0, Ljj$/util/StringJoiner;

    invoke-direct {v0, p0, p1, p2}, Ljj$/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic lambda$mapMerger$12(Ljava/util/function/BinaryOperator;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 7

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3, p0}, Ljj$/util/Map$-EL;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_8

    :cond_20
    return-object p1
.end method

.method static synthetic lambda$mapping$13(Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$partitioningBy$62(Ljava/util/function/BiConsumer;Ljava/util/function/Predicate;Ljj$/util/stream/Collectors$Partition;Ljava/lang/Object;)V
    .registers 5

    invoke-interface {p1, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p2, Ljj$/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    goto :goto_b

    :cond_9
    iget-object v0, p2, Ljj$/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    :goto_b
    invoke-interface {p0, v0, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$partitioningBy$63(Ljava/util/function/BinaryOperator;Ljj$/util/stream/Collectors$Partition;Ljj$/util/stream/Collectors$Partition;)Ljj$/util/stream/Collectors$Partition;
    .registers 7

    new-instance v0, Ljj$/util/stream/Collectors$Partition;

    iget-object v1, p1, Ljj$/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    iget-object v2, p2, Ljj$/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Ljj$/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    iget-object v3, p2, Ljj$/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    invoke-interface {p0, v2, v3}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljj$/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$partitioningBy$64(Ljj$/util/stream/Collector;)Ljj$/util/stream/Collectors$Partition;
    .registers 4

    new-instance v0, Ljj$/util/stream/Collectors$Partition;

    invoke-interface {p0}, Ljj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljj$/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$partitioningBy$65(Ljj$/util/stream/Collector;Ljj$/util/stream/Collectors$Partition;)Ljava/util/Map;
    .registers 6

    new-instance v0, Ljj$/util/stream/Collectors$Partition;

    invoke-interface {p0}, Ljj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v1

    iget-object v2, p1, Ljj$/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v2

    iget-object v3, p1, Ljj$/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljj$/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$reducing$42(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-interface {p0, v1, p2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    return-void
.end method

.method static synthetic lambda$reducing$43(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    return-object p1
.end method

.method static synthetic lambda$reducing$44([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic lambda$reducing$46(Ljava/util/function/BinaryOperator;)Ljj$/util/stream/Collectors$1OptionalBox;
    .registers 2

    new-instance v0, Ljj$/util/stream/Collectors$1OptionalBox;

    invoke-direct {v0, p0}, Ljj$/util/stream/Collectors$1OptionalBox;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method static synthetic lambda$reducing$47(Ljj$/util/stream/Collectors$1OptionalBox;Ljj$/util/stream/Collectors$1OptionalBox;)Ljj$/util/stream/Collectors$1OptionalBox;
    .registers 3

    iget-boolean v0, p1, Ljj$/util/stream/Collectors$1OptionalBox;->present:Z

    if-eqz v0, :cond_9

    iget-object v0, p1, Ljj$/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljj$/util/stream/Collectors$1OptionalBox;->accept(Ljava/lang/Object;)V

    :cond_9
    return-object p0
.end method

.method static synthetic lambda$reducing$48(Ljj$/util/stream/Collectors$1OptionalBox;)Ljj$/util/Optional;
    .registers 2

    iget-object v0, p0, Ljj$/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljj$/util/Optional;->ofNullable(Ljava/lang/Object;)Ljj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$reducing$49(Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    return-void
.end method

.method static synthetic lambda$reducing$50(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    return-object p1
.end method

.method static synthetic lambda$reducing$51([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic lambda$summarizingDouble$74(Ljava/util/function/ToDoubleFunction;Ljj$/util/DoubleSummaryStatistics;Ljava/lang/Object;)V
    .registers 5

    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljj$/util/DoubleSummaryStatistics;->accept(D)V

    return-void
.end method

.method static synthetic lambda$summarizingDouble$75(Ljj$/util/DoubleSummaryStatistics;Ljj$/util/DoubleSummaryStatistics;)Ljj$/util/DoubleSummaryStatistics;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/DoubleSummaryStatistics;->combine(Ljj$/util/DoubleSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$summarizingInt$70(Ljava/util/function/ToIntFunction;Ljj$/util/IntSummaryStatistics;Ljava/lang/Object;)V
    .registers 4

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljj$/util/IntSummaryStatistics;->accept(I)V

    return-void
.end method

.method static synthetic lambda$summarizingInt$71(Ljj$/util/IntSummaryStatistics;Ljj$/util/IntSummaryStatistics;)Ljj$/util/IntSummaryStatistics;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/IntSummaryStatistics;->combine(Ljj$/util/IntSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$summarizingLong$72(Ljava/util/function/ToLongFunction;Ljj$/util/LongSummaryStatistics;Ljava/lang/Object;)V
    .registers 5

    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljj$/util/LongSummaryStatistics;->accept(J)V

    return-void
.end method

.method static synthetic lambda$summarizingLong$73(Ljj$/util/LongSummaryStatistics;Ljj$/util/LongSummaryStatistics;)Ljj$/util/LongSummaryStatistics;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/LongSummaryStatistics;->combine(Ljj$/util/LongSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$summingDouble$26()[D
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$summingDouble$27(Ljava/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .registers 8

    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Ljj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v2, 0x2

    aget-wide v3, p1, v2

    add-double/2addr v3, v0

    aput-wide v3, p1, v2

    return-void
.end method

.method static synthetic lambda$summingDouble$28([D[D)[D
    .registers 7

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$summingDouble$29([D)Ljava/lang/Double;
    .registers 3

    invoke-static {p0}, Ljj$/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$summingInt$18()[I
    .registers 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0
.end method

.method static synthetic lambda$summingInt$19(Ljava/util/function/ToIntFunction;[ILjava/lang/Object;)V
    .registers 6

    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

.method static synthetic lambda$summingInt$20([I[I)[I
    .registers 5

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$summingInt$21([I)Ljava/lang/Integer;
    .registers 2

    const/4 v0, 0x0

    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$summingLong$22()[J
    .registers 1

    const/4 v0, 0x1

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$summingLong$23(Ljava/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic lambda$summingLong$24([J[J)[J
    .registers 7

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$summingLong$25([J)Ljava/lang/Long;
    .registers 3

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toCollection$3(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toConcurrentMap$69(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .registers 7

    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3, v0, v1, p2}, Ljj$/util/concurrent/ConcurrentMap$-EL;->merge(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$toList$4(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toMap$68(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/Map;Ljava/lang/Object;)V
    .registers 7

    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3, v0, v1, p2}, Ljj$/util/Map$-EL;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$toSet$7(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 4

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :cond_e
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toUnmodifiableList$5(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toUnmodifiableList$6(Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toUnmodifiableMap$66(Ljava/util/Map;)Ljava/util/Map;
    .registers 3

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    invoke-static {v0}, Ljj$/time/ZoneId$$ExternalSyntheticBackport1;->m([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toUnmodifiableMap$67(Ljava/util/HashMap;)Ljava/util/Map;
    .registers 3

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    invoke-static {v0}, Ljj$/time/ZoneId$$ExternalSyntheticBackport1;->m([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toUnmodifiableSet$8(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 4

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :cond_e
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toUnmodifiableSet$9(Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport3;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$uniqKeysMapAccumulator$1(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/Map;Ljava/lang/Object;)V
    .registers 8

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v0, v1}, Ljj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_13

    return-void

    :cond_13
    invoke-static {v0, v2, v1}, Ljj$/util/stream/Collectors;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v3

    throw v3
.end method

.method static synthetic lambda$uniqKeysMapMerger$0(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 7

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Ljj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_27

    goto :goto_8

    :cond_27
    invoke-static {v2, v4, v3}, Ljj$/util/stream/Collectors;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_2c
    return-object p0
.end method

.method private static mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;
    .registers 2

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda90;

    invoke-direct {v0, p0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda90;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public static mapping(Ljava/util/function/Function;Ljj$/util/stream/Collector;)Ljj$/util/stream/Collector;
    .registers 9

    invoke-interface {p1}, Ljj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Ljj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda41;

    invoke-direct {v3, v0, p0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda41;-><init>(Ljava/util/function/BiConsumer;Ljava/util/function/Function;)V

    invoke-interface {p1}, Ljj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Ljj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v5

    invoke-interface {p1}, Ljj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v1
.end method

.method public static maxBy(Ljava/util/Comparator;)Ljj$/util/stream/Collector;
    .registers 2

    invoke-static {p0}, Ljj$/util/function/BinaryOperator$-CC;->maxBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Collectors;->reducing(Ljava/util/function/BinaryOperator;)Ljj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static minBy(Ljava/util/Comparator;)Ljj$/util/stream/Collector;
    .registers 2

    invoke-static {p0}, Ljj$/util/function/BinaryOperator$-CC;->minBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/stream/Collectors;->reducing(Ljava/util/function/BinaryOperator;)Ljj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static partitioningBy(Ljava/util/function/Predicate;)Ljj$/util/stream/Collector;
    .registers 2

    invoke-static {}, Ljj$/util/stream/Collectors;->toList()Ljj$/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Ljj$/util/stream/Collectors;->partitioningBy(Ljava/util/function/Predicate;Ljj$/util/stream/Collector;)Ljj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static partitioningBy(Ljava/util/function/Predicate;Ljj$/util/stream/Collector;)Ljj$/util/stream/Collector;
    .registers 10

    invoke-interface {p1}, Ljj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda48;

    invoke-direct {v1, v0, p0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda48;-><init>(Ljava/util/function/BiConsumer;Ljava/util/function/Predicate;)V

    move-object v4, v1

    invoke-interface {p1}, Ljj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v1

    new-instance v5, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda49;

    invoke-direct {v5, v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda49;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda50;

    invoke-direct {v3, p1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda50;-><init>(Ljj$/util/stream/Collector;)V

    invoke-interface {p1}, Ljj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v6, Ljj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljj$/util/stream/Collector$Characteristics;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    new-instance v2, Ljj$/util/stream/Collectors$CollectorImpl;

    sget-object v6, Ljj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v2, v3, v4, v5, v6}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v2

    :cond_2c
    new-instance v6, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda51;

    invoke-direct {v6, p1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda51;-><init>(Ljj$/util/stream/Collector;)V

    new-instance v2, Ljj$/util/stream/Collectors$CollectorImpl;

    sget-object v7, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v2 .. v7}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v2
.end method

.method public static reducing(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljj$/util/stream/Collector;
    .registers 8

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    invoke-static {p0}, Ljj$/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object v1

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda52;

    invoke-direct {v2, p1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda52;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda53;

    invoke-direct {v3, p1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda53;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v4, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda54;

    invoke-direct {v4}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda54;-><init>()V

    sget-object v5, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static reducing(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljj$/util/stream/Collector;
    .registers 9

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    invoke-static {p0}, Ljj$/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object v1

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2, p1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/BinaryOperator;Ljava/util/function/Function;)V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda5;

    invoke-direct {v3, p2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v4, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda6;-><init>()V

    sget-object v5, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static reducing(Ljava/util/function/BinaryOperator;)Ljj$/util/stream/Collector;
    .registers 7

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda82;

    invoke-direct {v1, p0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda82;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda83;

    invoke-direct {v2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda83;-><init>()V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda84;

    invoke-direct {v3}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda84;-><init>()V

    new-instance v4, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda85;

    invoke-direct {v4}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda85;-><init>()V

    sget-object v5, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method static sumWithCompensation([DD)[D
    .registers 13

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    sub-double v1, p1, v1

    const/4 v3, 0x0

    aget-wide v4, p0, v3

    add-double v6, v4, v1

    sub-double v8, v6, v4

    sub-double/2addr v8, v1

    aput-wide v8, p0, v0

    aput-wide v6, p0, v3

    return-object p0
.end method

.method public static summarizingDouble(Ljava/util/function/ToDoubleFunction;)Ljj$/util/stream/Collector;
    .registers 6

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda15;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda16;-><init>(Ljava/util/function/ToDoubleFunction;)V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda17;

    invoke-direct {v3}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda17;-><init>()V

    sget-object v4, Ljj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summarizingInt(Ljava/util/function/ToIntFunction;)Ljj$/util/stream/Collector;
    .registers 6

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda27;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda28;-><init>(Ljava/util/function/ToIntFunction;)V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda29;

    invoke-direct {v3}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda29;-><init>()V

    sget-object v4, Ljj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summarizingLong(Ljava/util/function/ToLongFunction;)Ljj$/util/stream/Collector;
    .registers 6

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda61;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda61;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda62;

    invoke-direct {v2, p0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda62;-><init>(Ljava/util/function/ToLongFunction;)V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda63;

    invoke-direct {v3}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda63;-><init>()V

    sget-object v4, Ljj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summingDouble(Ljava/util/function/ToDoubleFunction;)Ljj$/util/stream/Collector;
    .registers 7

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda55;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda55;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda56;

    invoke-direct {v2, p0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda56;-><init>(Ljava/util/function/ToDoubleFunction;)V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda57;

    invoke-direct {v3}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda57;-><init>()V

    new-instance v4, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda58;

    invoke-direct {v4}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda58;-><init>()V

    sget-object v5, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summingInt(Ljava/util/function/ToIntFunction;)Ljj$/util/stream/Collector;
    .registers 7

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda10;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda11;-><init>(Ljava/util/function/ToIntFunction;)V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda12;-><init>()V

    new-instance v4, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda13;

    invoke-direct {v4}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda13;-><init>()V

    sget-object v5, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summingLong(Ljava/util/function/ToLongFunction;)Ljj$/util/stream/Collector;
    .registers 7

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda78;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda78;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda79;

    invoke-direct {v2, p0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda79;-><init>(Ljava/util/function/ToLongFunction;)V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda80;

    invoke-direct {v3}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda80;-><init>()V

    new-instance v4, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda81;

    invoke-direct {v4}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda81;-><init>()V

    sget-object v5, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toCollection(Ljava/util/function/Supplier;)Ljj$/util/stream/Collector;
    .registers 5

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda19;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda20;

    invoke-direct {v2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda20;-><init>()V

    sget-object v3, Ljj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2, v3}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljj$/util/stream/Collector;
    .registers 7

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda40;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda40;-><init>()V

    invoke-static {p0, p1}, Ljj$/util/stream/Collectors;->uniqKeysMapAccumulator(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/BiConsumer;

    move-result-object v2

    invoke-static {}, Ljj$/util/stream/Collectors;->uniqKeysMapMerger()Ljava/util/function/BinaryOperator;

    move-result-object v3

    sget-object v4, Ljj$/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljj$/util/stream/Collector;
    .registers 4

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, p1, p2, v0}, Ljj$/util/stream/Collectors;->toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljj$/util/stream/Collector;
    .registers 8

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1, p2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda25;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    new-instance v1, Ljj$/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Ljj$/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Ljj$/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v1, p3, v0, v2, v3}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static toList()Ljj$/util/stream/Collector;
    .registers 5

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda21;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda22;-><init>()V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda64;

    invoke-direct {v3}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda64;-><init>()V

    sget-object v4, Ljj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljj$/util/stream/Collector;
    .registers 7

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda76;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda76;-><init>()V

    invoke-static {p0, p1}, Ljj$/util/stream/Collectors;->uniqKeysMapAccumulator(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/BiConsumer;

    move-result-object v2

    invoke-static {}, Ljj$/util/stream/Collectors;->uniqKeysMapMerger()Ljava/util/function/BinaryOperator;

    move-result-object v3

    sget-object v4, Ljj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljj$/util/stream/Collector;
    .registers 4

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda76;-><init>()V

    invoke-static {p0, p1, p2, v0}, Ljj$/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljj$/util/stream/Collector;
    .registers 8

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1, p2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda26;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    new-instance v1, Ljj$/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Ljj$/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Ljj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v1, p3, v0, v2, v3}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static toSet()Ljj$/util/stream/Collector;
    .registers 5

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda43;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda43;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda44;

    invoke-direct {v2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda44;-><init>()V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda72;

    invoke-direct {v3}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda72;-><init>()V

    sget-object v4, Ljj$/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toUnmodifiableList()Ljj$/util/stream/Collector;
    .registers 6

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda21;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda22;-><init>()V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda23;

    invoke-direct {v3}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda23;-><init>()V

    new-instance v4, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda24;

    invoke-direct {v4}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda24;-><init>()V

    sget-object v5, Ljj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toUnmodifiableMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljj$/util/stream/Collector;
    .registers 4

    const-string v0, "keyMapper"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueMapper"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    nop

    invoke-static {p0, p1}, Ljj$/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljj$/util/stream/Collector;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda31;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda31;-><init>()V

    invoke-static {v0, v1}, Ljj$/util/stream/Collectors;->collectingAndThen(Ljj$/util/stream/Collector;Ljava/util/function/Function;)Ljj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toUnmodifiableMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljj$/util/stream/Collector;
    .registers 5

    const-string v0, "keyMapper"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueMapper"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mergeFunction"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda73;-><init>()V

    invoke-static {p0, p1, p2, v0}, Ljj$/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljj$/util/stream/Collector;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda74;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda74;-><init>()V

    invoke-static {v0, v1}, Ljj$/util/stream/Collectors;->collectingAndThen(Ljj$/util/stream/Collector;Ljava/util/function/Function;)Ljj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toUnmodifiableSet()Ljj$/util/stream/Collector;
    .registers 6

    new-instance v0, Ljj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda43;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda43;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda44;

    invoke-direct {v2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda44;-><init>()V

    new-instance v3, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda45;

    invoke-direct {v3}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda45;-><init>()V

    new-instance v4, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda46;

    invoke-direct {v4}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda46;-><init>()V

    sget-object v5, Ljj$/util/stream/Collectors;->CH_UNORDERED_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method private static uniqKeysMapAccumulator(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/BiConsumer;
    .registers 3

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-object v0
.end method

.method private static uniqKeysMapMerger()Ljava/util/function/BinaryOperator;
    .registers 1

    new-instance v0, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method
