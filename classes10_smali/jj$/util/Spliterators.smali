.class public final Ljj$/util/Spliterators;
.super Ljava/lang/Object;
.source "Spliterators.java"


# static fields
.field private static final EMPTY_DOUBLE_SPLITERATOR:Ljj$/util/Spliterator$OfDouble;

.field private static final EMPTY_INT_SPLITERATOR:Ljj$/util/Spliterator$OfInt;

.field private static final EMPTY_LONG_SPLITERATOR:Ljj$/util/Spliterator$OfLong;

.field private static final EMPTY_SPLITERATOR:Ljj$/util/Spliterator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/util/Spliterators$EmptySpliterator$OfRef;

    invoke-direct {v0}, Ljj$/util/Spliterators$EmptySpliterator$OfRef;-><init>()V

    sput-object v0, Ljj$/util/Spliterators;->EMPTY_SPLITERATOR:Ljj$/util/Spliterator;

    new-instance v0, Ljj$/util/Spliterators$EmptySpliterator$OfInt;

    invoke-direct {v0}, Ljj$/util/Spliterators$EmptySpliterator$OfInt;-><init>()V

    sput-object v0, Ljj$/util/Spliterators;->EMPTY_INT_SPLITERATOR:Ljj$/util/Spliterator$OfInt;

    new-instance v0, Ljj$/util/Spliterators$EmptySpliterator$OfLong;

    invoke-direct {v0}, Ljj$/util/Spliterators$EmptySpliterator$OfLong;-><init>()V

    sput-object v0, Ljj$/util/Spliterators;->EMPTY_LONG_SPLITERATOR:Ljj$/util/Spliterator$OfLong;

    new-instance v0, Ljj$/util/Spliterators$EmptySpliterator$OfDouble;

    invoke-direct {v0}, Ljj$/util/Spliterators$EmptySpliterator$OfDouble;-><init>()V

    sput-object v0, Ljj$/util/Spliterators;->EMPTY_DOUBLE_SPLITERATOR:Ljj$/util/Spliterator$OfDouble;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFromToBounds(III)V
    .registers 6

    if-gt p1, p2, :cond_13

    if-ltz p1, :cond_d

    if-gt p2, p0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origin("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > fence("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static emptyDoubleSpliterator()Ljj$/util/Spliterator$OfDouble;
    .registers 1

    sget-object v0, Ljj$/util/Spliterators;->EMPTY_DOUBLE_SPLITERATOR:Ljj$/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public static emptyIntSpliterator()Ljj$/util/Spliterator$OfInt;
    .registers 1

    sget-object v0, Ljj$/util/Spliterators;->EMPTY_INT_SPLITERATOR:Ljj$/util/Spliterator$OfInt;

    return-object v0
.end method

.method public static emptyLongSpliterator()Ljj$/util/Spliterator$OfLong;
    .registers 1

    sget-object v0, Ljj$/util/Spliterators;->EMPTY_LONG_SPLITERATOR:Ljj$/util/Spliterator$OfLong;

    return-object v0
.end method

.method public static emptySpliterator()Ljj$/util/Spliterator;
    .registers 1

    sget-object v0, Ljj$/util/Spliterators;->EMPTY_SPLITERATOR:Ljj$/util/Spliterator;

    return-object v0
.end method

.method public static iterator(Ljj$/util/Spliterator;)Ljava/util/Iterator;
    .registers 2

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/Spliterators$1Adapter;

    invoke-direct {v0, p0}, Ljj$/util/Spliterators$1Adapter;-><init>(Ljj$/util/Spliterator;)V

    return-object v0
.end method

.method public static iterator(Ljj$/util/Spliterator$OfDouble;)Ljj$/util/PrimitiveIterator$OfDouble;
    .registers 2

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/Spliterators$4Adapter;

    invoke-direct {v0, p0}, Ljj$/util/Spliterators$4Adapter;-><init>(Ljj$/util/Spliterator$OfDouble;)V

    return-object v0
.end method

.method public static iterator(Ljj$/util/Spliterator$OfInt;)Ljj$/util/PrimitiveIterator$OfInt;
    .registers 2

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/Spliterators$2Adapter;

    invoke-direct {v0, p0}, Ljj$/util/Spliterators$2Adapter;-><init>(Ljj$/util/Spliterator$OfInt;)V

    return-object v0
.end method

.method public static iterator(Ljj$/util/Spliterator$OfLong;)Ljj$/util/PrimitiveIterator$OfLong;
    .registers 2

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/Spliterators$3Adapter;

    invoke-direct {v0, p0}, Ljj$/util/Spliterators$3Adapter;-><init>(Ljj$/util/Spliterator$OfLong;)V

    return-object v0
.end method

.method public static spliterator(Ljj$/util/PrimitiveIterator$OfDouble;JI)Ljj$/util/Spliterator$OfDouble;
    .registers 6

    new-instance v0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/util/PrimitiveIterator$OfDouble;

    invoke-direct {v0, v1, p1, p2, p3}, Ljj$/util/Spliterators$DoubleIteratorSpliterator;-><init>(Ljj$/util/PrimitiveIterator$OfDouble;JI)V

    return-object v0
.end method

.method public static spliterator([DI)Ljj$/util/Spliterator$OfDouble;
    .registers 4

    new-instance v0, Ljj$/util/Spliterators$DoubleArraySpliterator;

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    invoke-direct {v0, v1, p1}, Ljj$/util/Spliterators$DoubleArraySpliterator;-><init>([DI)V

    return-object v0
.end method

.method public static spliterator([DIII)Ljj$/util/Spliterator$OfDouble;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljj$/util/Spliterators;->checkFromToBounds(III)V

    new-instance v0, Ljj$/util/Spliterators$DoubleArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljj$/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v0
.end method

.method public static spliterator(Ljj$/util/PrimitiveIterator$OfInt;JI)Ljj$/util/Spliterator$OfInt;
    .registers 6

    new-instance v0, Ljj$/util/Spliterators$IntIteratorSpliterator;

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/util/PrimitiveIterator$OfInt;

    invoke-direct {v0, v1, p1, p2, p3}, Ljj$/util/Spliterators$IntIteratorSpliterator;-><init>(Ljj$/util/PrimitiveIterator$OfInt;JI)V

    return-object v0
.end method

.method public static spliterator([II)Ljj$/util/Spliterator$OfInt;
    .registers 4

    new-instance v0, Ljj$/util/Spliterators$IntArraySpliterator;

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-direct {v0, v1, p1}, Ljj$/util/Spliterators$IntArraySpliterator;-><init>([II)V

    return-object v0
.end method

.method public static spliterator([IIII)Ljj$/util/Spliterator$OfInt;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljj$/util/Spliterators;->checkFromToBounds(III)V

    new-instance v0, Ljj$/util/Spliterators$IntArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljj$/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    return-object v0
.end method

.method public static spliterator(Ljj$/util/PrimitiveIterator$OfLong;JI)Ljj$/util/Spliterator$OfLong;
    .registers 6

    new-instance v0, Ljj$/util/Spliterators$LongIteratorSpliterator;

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/util/PrimitiveIterator$OfLong;

    invoke-direct {v0, v1, p1, p2, p3}, Ljj$/util/Spliterators$LongIteratorSpliterator;-><init>(Ljj$/util/PrimitiveIterator$OfLong;JI)V

    return-object v0
.end method

.method public static spliterator([JI)Ljj$/util/Spliterator$OfLong;
    .registers 4

    new-instance v0, Ljj$/util/Spliterators$LongArraySpliterator;

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-direct {v0, v1, p1}, Ljj$/util/Spliterators$LongArraySpliterator;-><init>([JI)V

    return-object v0
.end method

.method public static spliterator([JIII)Ljj$/util/Spliterator$OfLong;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljj$/util/Spliterators;->checkFromToBounds(III)V

    new-instance v0, Ljj$/util/Spliterators$LongArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljj$/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/Collection;I)Ljj$/util/Spliterator;
    .registers 4

    new-instance v0, Ljj$/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1, p1}, Ljj$/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Collection;I)V

    return-object v0
.end method

.method public static spliterator(Ljava/util/Iterator;JI)Ljj$/util/Spliterator;
    .registers 6

    new-instance v0, Ljj$/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-direct {v0, v1, p1, p2, p3}, Ljj$/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Iterator;JI)V

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;I)Ljj$/util/Spliterator;
    .registers 4

    new-instance v0, Ljj$/util/Spliterators$ArraySpliterator;

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Ljj$/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;III)Ljj$/util/Spliterator;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0, p1, p2}, Ljj$/util/Spliterators;->checkFromToBounds(III)V

    new-instance v0, Ljj$/util/Spliterators$ArraySpliterator;

    invoke-direct {v0, p0, p1, p2, p3}, Ljj$/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljj$/util/PrimitiveIterator$OfDouble;I)Ljj$/util/Spliterator$OfDouble;
    .registers 4

    new-instance v0, Ljj$/util/Spliterators$DoubleIteratorSpliterator;

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/util/PrimitiveIterator$OfDouble;

    invoke-direct {v0, v1, p1}, Ljj$/util/Spliterators$DoubleIteratorSpliterator;-><init>(Ljj$/util/PrimitiveIterator$OfDouble;I)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljj$/util/PrimitiveIterator$OfInt;I)Ljj$/util/Spliterator$OfInt;
    .registers 4

    new-instance v0, Ljj$/util/Spliterators$IntIteratorSpliterator;

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/util/PrimitiveIterator$OfInt;

    invoke-direct {v0, v1, p1}, Ljj$/util/Spliterators$IntIteratorSpliterator;-><init>(Ljj$/util/PrimitiveIterator$OfInt;I)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljj$/util/PrimitiveIterator$OfLong;I)Ljj$/util/Spliterator$OfLong;
    .registers 4

    new-instance v0, Ljj$/util/Spliterators$LongIteratorSpliterator;

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/util/PrimitiveIterator$OfLong;

    invoke-direct {v0, v1, p1}, Ljj$/util/Spliterators$LongIteratorSpliterator;-><init>(Ljj$/util/PrimitiveIterator$OfLong;I)V

    return-object v0
.end method

.method public static spliteratorUnknownSize(Ljava/util/Iterator;I)Ljj$/util/Spliterator;
    .registers 4

    new-instance v0, Ljj$/util/Spliterators$IteratorSpliterator;

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-direct {v0, v1, p1}, Ljj$/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Iterator;I)V

    return-object v0
.end method
