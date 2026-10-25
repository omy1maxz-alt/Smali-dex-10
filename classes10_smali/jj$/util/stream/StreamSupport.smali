.class public final Ljj$/util/stream/StreamSupport;
.super Ljava/lang/Object;
.source "StreamSupport.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doubleStream(Ljava/util/function/Supplier;IZ)Ljj$/util/stream/DoubleStream;
    .registers 5

    new-instance v0, Ljj$/util/stream/DoublePipeline$Head;

    invoke-static {p1}, Ljj$/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Ljj$/util/stream/DoublePipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    return-object v0
.end method

.method public static doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;
    .registers 4

    new-instance v0, Ljj$/util/stream/DoublePipeline$Head;

    invoke-static {p0}, Ljj$/util/stream/StreamOpFlag;->fromCharacteristics(Ljj$/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljj$/util/stream/DoublePipeline$Head;-><init>(Ljj$/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static intStream(Ljava/util/function/Supplier;IZ)Ljj$/util/stream/IntStream;
    .registers 5

    new-instance v0, Ljj$/util/stream/IntPipeline$Head;

    invoke-static {p1}, Ljj$/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Ljj$/util/stream/IntPipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    return-object v0
.end method

.method public static intStream(Ljj$/util/Spliterator$OfInt;Z)Ljj$/util/stream/IntStream;
    .registers 4

    new-instance v0, Ljj$/util/stream/IntPipeline$Head;

    invoke-static {p0}, Ljj$/util/stream/StreamOpFlag;->fromCharacteristics(Ljj$/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljj$/util/stream/IntPipeline$Head;-><init>(Ljj$/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static longStream(Ljava/util/function/Supplier;IZ)Ljj$/util/stream/LongStream;
    .registers 5

    new-instance v0, Ljj$/util/stream/LongPipeline$Head;

    invoke-static {p1}, Ljj$/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Ljj$/util/stream/LongPipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    return-object v0
.end method

.method public static longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;
    .registers 4

    new-instance v0, Ljj$/util/stream/LongPipeline$Head;

    invoke-static {p0}, Ljj$/util/stream/StreamOpFlag;->fromCharacteristics(Ljj$/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljj$/util/stream/LongPipeline$Head;-><init>(Ljj$/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static stream(Ljava/util/function/Supplier;IZ)Ljj$/util/stream/Stream;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReferencePipeline$Head;

    invoke-static {p1}, Ljj$/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2}, Ljj$/util/stream/ReferencePipeline$Head;-><init>(Ljava/util/function/Supplier;IZ)V

    return-object v0
.end method

.method public static stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;
    .registers 4

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReferencePipeline$Head;

    invoke-static {p0}, Ljj$/util/stream/StreamOpFlag;->fromCharacteristics(Ljj$/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljj$/util/stream/ReferencePipeline$Head;-><init>(Ljj$/util/Spliterator;IZ)V

    return-object v0
.end method
