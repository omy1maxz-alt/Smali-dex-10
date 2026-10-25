.class public final Ljj$/util/stream/DesugarLongStream;
.super Ljava/lang/Object;
.source "DesugarLongStream.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iterate(JLjava/util/function/LongPredicate;Ljava/util/function/LongUnaryOperator;)Ljj$/util/stream/LongStream;
    .registers 12

    invoke-static {p3}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/DesugarLongStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-wide v5, p0

    move-object v7, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Ljj$/util/stream/DesugarLongStream$1;-><init>(JILjava/util/function/LongUnaryOperator;JLjava/util/function/LongPredicate;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method
