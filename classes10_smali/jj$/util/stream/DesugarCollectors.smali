.class public final Ljj$/util/stream/DesugarCollectors;
.super Ljava/lang/Object;
.source "DesugarCollectors.java"


# static fields
.field static final CH_NOID:Ljava/util/Set;

.field static final CH_UNORDERED_NOID:Ljava/util/Set;


# direct methods
.method static bridge synthetic -$$Nest$smcastingIdentity()Ljava/util/function/Function;
    .registers 1

    invoke-static {}, Ljj$/util/stream/DesugarCollectors;->castingIdentity()Ljava/util/function/Function;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljj$/util/stream/DesugarCollectors;->CH_NOID:Ljava/util/Set;

    sget-object v0, Ljj$/util/stream/Collector$Characteristics;->UNORDERED:Ljj$/util/stream/Collector$Characteristics;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljj$/util/stream/DesugarCollectors;->CH_UNORDERED_NOID:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static castingIdentity()Ljava/util/function/Function;
    .registers 1

    new-instance v0, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda9;-><init>()V

    return-object v0
.end method

.method public static filtering(Ljava/util/function/Predicate;Ljj$/util/stream/Collector;)Ljj$/util/stream/Collector;
    .registers 9

    invoke-interface {p1}, Ljj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/DesugarCollectors$CollectorImpl;

    invoke-interface {p1}, Ljj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    new-instance v3, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v0}, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    invoke-interface {p1}, Ljj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Ljj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v5

    invoke-interface {p1}, Ljj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Ljj$/util/stream/DesugarCollectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v1
.end method

.method public static flatMapping(Ljava/util/function/Function;Ljj$/util/stream/Collector;)Ljj$/util/stream/Collector;
    .registers 9

    invoke-interface {p1}, Ljj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/DesugarCollectors$CollectorImpl;

    invoke-interface {p1}, Ljj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    new-instance v3, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0}, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;)V

    invoke-interface {p1}, Ljj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Ljj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v5

    invoke-interface {p1}, Ljj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Ljj$/util/stream/DesugarCollectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v1
.end method

.method static synthetic lambda$castingIdentity$9(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method static synthetic lambda$filtering$0(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    invoke-interface {p0, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1, p2, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method static synthetic lambda$flatMapping$1(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$flatMapping$2(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Stream;

    if-eqz v0, :cond_23

    :try_start_8
    invoke-interface {v0}, Ljj$/util/stream/Stream;->sequential()Ljj$/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Ljj$/util/stream/Stream;

    new-instance v2, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2}, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

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

.method static synthetic lambda$toUnmodifiableList$3(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toUnmodifiableList$4(Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toUnmodifiableMap$5(Ljava/util/Map;)Ljava/util/Map;
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

.method static synthetic lambda$toUnmodifiableMap$6(Ljava/util/HashMap;)Ljava/util/Map;
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

.method static synthetic lambda$toUnmodifiableSet$7(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
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

.method static synthetic lambda$toUnmodifiableSet$8(Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport3;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static toUnmodifiableList()Ljava/util/stream/Collector;
    .registers 6

    new-instance v0, Ljj$/util/stream/DesugarCollectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda21;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda22;-><init>()V

    new-instance v3, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda1;-><init>()V

    sget-object v5, Ljj$/util/stream/DesugarCollectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/DesugarCollectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

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

    new-instance v1, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda6;-><init>()V

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

    new-instance v1, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0, v1}, Ljj$/util/stream/Collectors;->collectingAndThen(Ljj$/util/stream/Collector;Ljava/util/function/Function;)Ljj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toUnmodifiableSet()Ljj$/util/stream/Collector;
    .registers 6

    new-instance v0, Ljj$/util/stream/DesugarCollectors$CollectorImpl;

    new-instance v1, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda43;

    invoke-direct {v1}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda43;-><init>()V

    new-instance v2, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda44;

    invoke-direct {v2}, Ljj$/util/stream/Collectors$$ExternalSyntheticLambda44;-><init>()V

    new-instance v3, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda2;-><init>()V

    new-instance v4, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Ljj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda3;-><init>()V

    sget-object v5, Ljj$/util/stream/DesugarCollectors;->CH_UNORDERED_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/DesugarCollectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method
