.class public final Ljj$/util/stream/DesugarDoubleStream;
.super Ljava/lang/Object;
.source "DesugarDoubleStream.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iterate(DLjava/util/function/DoublePredicate;Ljava/util/function/DoubleUnaryOperator;)Ljj$/util/stream/DoubleStream;
    .registers 12

    invoke-static {p3}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/DesugarDoubleStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-wide v5, p0

    move-object v7, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Ljj$/util/stream/DesugarDoubleStream$1;-><init>(JILjava/util/function/DoubleUnaryOperator;DLjava/util/function/DoublePredicate;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljj$/util/stream/StreamSupport;->doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method
