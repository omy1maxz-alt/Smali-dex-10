.class public final Ljj$/util/stream/DesugarStream;
.super Ljava/lang/Object;
.source "DesugarStream.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iterate(Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/UnaryOperator;)Ljj$/util/stream/Stream;
    .registers 10

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/DesugarStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x410

    move-object v5, p0

    move-object v6, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Ljj$/util/stream/DesugarStream$1;-><init>(JILjava/util/function/UnaryOperator;Ljava/lang/Object;Ljava/util/function/Predicate;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
