.class public final synthetic Ljj$/util/DesugarArrays;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    if-eqz p0, :cond_b5

    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_16

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_16

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_b4

    :cond_16
    instance-of v0, p0, [B

    if-eqz v0, :cond_2a

    instance-of v0, p1, [B

    if-eqz v0, :cond_2a

    move-object v0, p0

    check-cast v0, [B

    move-object v1, p1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto/16 :goto_b4

    :cond_2a
    instance-of v0, p0, [S

    if-eqz v0, :cond_3e

    instance-of v0, p1, [S

    if-eqz v0, :cond_3e

    move-object v0, p0

    check-cast v0, [S

    move-object v1, p1

    check-cast v1, [S

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    goto/16 :goto_b4

    :cond_3e
    instance-of v0, p0, [I

    if-eqz v0, :cond_51

    instance-of v0, p1, [I

    if-eqz v0, :cond_51

    move-object v0, p0

    check-cast v0, [I

    move-object v1, p1

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_b4

    :cond_51
    instance-of v0, p0, [J

    if-eqz v0, :cond_64

    instance-of v0, p1, [J

    if-eqz v0, :cond_64

    move-object v0, p0

    check-cast v0, [J

    move-object v1, p1

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_b4

    :cond_64
    instance-of v0, p0, [C

    if-eqz v0, :cond_77

    instance-of v0, p1, [C

    if-eqz v0, :cond_77

    move-object v0, p0

    check-cast v0, [C

    move-object v1, p1

    check-cast v1, [C

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    goto :goto_b4

    :cond_77
    instance-of v0, p0, [F

    if-eqz v0, :cond_8a

    instance-of v0, p1, [F

    if-eqz v0, :cond_8a

    move-object v0, p0

    check-cast v0, [F

    move-object v1, p1

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_b4

    :cond_8a
    instance-of v0, p0, [D

    if-eqz v0, :cond_9d

    instance-of v0, p1, [D

    if-eqz v0, :cond_9d

    move-object v0, p0

    check-cast v0, [D

    move-object v1, p1

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto :goto_b4

    :cond_9d
    instance-of v0, p0, [Z

    if-eqz v0, :cond_b0

    instance-of v0, p1, [Z

    if-eqz v0, :cond_b0

    move-object v0, p0

    check-cast v0, [Z

    move-object v1, p1

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto :goto_b4

    :cond_b0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_b4
    return v0

    :cond_b5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "e1 is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$parallelSetAll$0([Ljava/lang/Object;Ljava/util/function/IntFunction;I)V
    .registers 4

    invoke-interface {p1, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p0, p2

    return-void
.end method

.method static synthetic lambda$parallelSetAll$1([ILjava/util/function/IntUnaryOperator;I)V
    .registers 4

    invoke-interface {p1, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    aput v0, p0, p2

    return-void
.end method

.method static synthetic lambda$parallelSetAll$2([JLjava/util/function/IntToLongFunction;I)V
    .registers 5

    invoke-interface {p1, p2}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method static synthetic lambda$parallelSetAll$3([DLjava/util/function/IntToDoubleFunction;I)V
    .registers 5

    invoke-interface {p1, p2}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method public static parallelSetAll([DLjava/util/function/IntToDoubleFunction;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1}, Ljj$/util/stream/IntStream$-CC;->range(II)Ljj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/stream/IntStream;->parallel()Ljj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljj$/util/DesugarArrays$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Ljj$/util/DesugarArrays$$ExternalSyntheticLambda1;-><init>([DLjava/util/function/IntToDoubleFunction;)V

    invoke-interface {v0, v1}, Ljj$/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public static parallelSetAll([ILjava/util/function/IntUnaryOperator;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1}, Ljj$/util/stream/IntStream$-CC;->range(II)Ljj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/stream/IntStream;->parallel()Ljj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljj$/util/DesugarArrays$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Ljj$/util/DesugarArrays$$ExternalSyntheticLambda3;-><init>([ILjava/util/function/IntUnaryOperator;)V

    invoke-interface {v0, v1}, Ljj$/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public static parallelSetAll([JLjava/util/function/IntToLongFunction;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1}, Ljj$/util/stream/IntStream$-CC;->range(II)Ljj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/stream/IntStream;->parallel()Ljj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljj$/util/DesugarArrays$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Ljj$/util/DesugarArrays$$ExternalSyntheticLambda2;-><init>([JLjava/util/function/IntToLongFunction;)V

    invoke-interface {v0, v1}, Ljj$/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public static parallelSetAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {v0, v1}, Ljj$/util/stream/IntStream$-CC;->range(II)Ljj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljj$/util/stream/IntStream;->parallel()Ljj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljj$/util/DesugarArrays$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ljj$/util/DesugarArrays$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    invoke-interface {v0, v1}, Ljj$/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public static setAll([DLjava/util/function/IntToDoubleFunction;)V
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_10

    invoke-interface {p1, v0}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method public static setAll([ILjava/util/function/IntUnaryOperator;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_10

    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method public static setAll([JLjava/util/function/IntToLongFunction;)V
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_10

    invoke-interface {p1, v0}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method public static setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_10

    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method public static spliterator([D)Ljj$/util/Spliterator$OfDouble;
    .registers 2

    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljj$/util/Spliterators;->spliterator([DI)Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([DII)Ljj$/util/Spliterator$OfDouble;
    .registers 4

    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljj$/util/Spliterators;->spliterator([DIII)Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([I)Ljj$/util/Spliterator$OfInt;
    .registers 2

    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljj$/util/Spliterators;->spliterator([II)Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([III)Ljj$/util/Spliterator$OfInt;
    .registers 4

    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljj$/util/Spliterators;->spliterator([IIII)Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([J)Ljj$/util/Spliterator$OfLong;
    .registers 2

    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljj$/util/Spliterators;->spliterator([JI)Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([JII)Ljj$/util/Spliterator$OfLong;
    .registers 4

    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljj$/util/Spliterators;->spliterator([JIII)Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;)Ljj$/util/Spliterator;
    .registers 2

    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljj$/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;II)Ljj$/util/Spliterator;
    .registers 4

    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljj$/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static stream([D)Ljj$/util/stream/DoubleStream;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljj$/util/DesugarArrays;->stream([DII)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([DII)Ljj$/util/stream/DoubleStream;
    .registers 5

    invoke-static {p0, p1, p2}, Ljj$/util/DesugarArrays;->spliterator([DII)Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([I)Ljj$/util/stream/IntStream;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljj$/util/DesugarArrays;->stream([III)Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([III)Ljj$/util/stream/IntStream;
    .registers 5

    invoke-static {p0, p1, p2}, Ljj$/util/DesugarArrays;->spliterator([III)Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->intStream(Ljj$/util/Spliterator$OfInt;Z)Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([J)Ljj$/util/stream/LongStream;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljj$/util/DesugarArrays;->stream([JII)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([JII)Ljj$/util/stream/LongStream;
    .registers 5

    invoke-static {p0, p1, p2}, Ljj$/util/DesugarArrays;->spliterator([JII)Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([Ljava/lang/Object;)Ljj$/util/stream/Stream;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljj$/util/DesugarArrays;->stream([Ljava/lang/Object;II)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([Ljava/lang/Object;II)Ljj$/util/stream/Stream;
    .registers 5

    invoke-static {p0, p1, p2}, Ljj$/util/DesugarArrays;->spliterator([Ljava/lang/Object;II)Ljj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
