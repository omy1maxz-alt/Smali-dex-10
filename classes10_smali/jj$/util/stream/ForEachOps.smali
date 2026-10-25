.class final Ljj$/util/stream/ForEachOps;
.super Ljava/lang/Object;
.source "ForEachOps.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeDouble(Ljava/util/function/DoubleConsumer;Z)Ljj$/util/stream/TerminalOp;
    .registers 3

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ForEachOps$ForEachOp$OfDouble;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/ForEachOps$ForEachOp$OfDouble;-><init>(Ljava/util/function/DoubleConsumer;Z)V

    return-object v0
.end method

.method public static makeInt(Ljava/util/function/IntConsumer;Z)Ljj$/util/stream/TerminalOp;
    .registers 3

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ForEachOps$ForEachOp$OfInt;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/ForEachOps$ForEachOp$OfInt;-><init>(Ljava/util/function/IntConsumer;Z)V

    return-object v0
.end method

.method public static makeLong(Ljava/util/function/LongConsumer;Z)Ljj$/util/stream/TerminalOp;
    .registers 3

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ForEachOps$ForEachOp$OfLong;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/ForEachOps$ForEachOp$OfLong;-><init>(Ljava/util/function/LongConsumer;Z)V

    return-object v0
.end method

.method public static makeRef(Ljava/util/function/Consumer;Z)Ljj$/util/stream/TerminalOp;
    .registers 3

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ForEachOps$ForEachOp$OfRef;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/ForEachOps$ForEachOp$OfRef;-><init>(Ljava/util/function/Consumer;Z)V

    return-object v0
.end method
