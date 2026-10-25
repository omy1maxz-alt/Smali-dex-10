.class final Ljj$/util/stream/ReduceOps;
.super Ljava/lang/Object;
.source "ReduceOps.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeDouble(DLjava/util/function/DoubleBinaryOperator;)Ljj$/util/stream/TerminalOp;
    .registers 5

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReduceOps$14;

    sget-object v1, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    invoke-direct {v0, v1, p2, p0, p1}, Ljj$/util/stream/ReduceOps$14;-><init>(Ljj$/util/stream/StreamShape;Ljava/util/function/DoubleBinaryOperator;D)V

    return-object v0
.end method

.method public static makeDouble(Ljava/util/function/DoubleBinaryOperator;)Ljj$/util/stream/TerminalOp;
    .registers 3

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReduceOps$15;

    sget-object v1, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    invoke-direct {v0, v1, p0}, Ljj$/util/stream/ReduceOps$15;-><init>(Ljj$/util/stream/StreamShape;Ljava/util/function/DoubleBinaryOperator;)V

    return-object v0
.end method

.method public static makeDouble(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BinaryOperator;)Ljj$/util/stream/TerminalOp;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReduceOps$16;

    sget-object v1, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    invoke-direct {v0, v1, p2, p1, p0}, Ljj$/util/stream/ReduceOps$16;-><init>(Ljj$/util/stream/StreamShape;Ljava/util/function/BinaryOperator;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeDoubleCounting()Ljj$/util/stream/TerminalOp;
    .registers 2

    new-instance v0, Ljj$/util/stream/ReduceOps$17;

    sget-object v1, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    invoke-direct {v0, v1}, Ljj$/util/stream/ReduceOps$17;-><init>(Ljj$/util/stream/StreamShape;)V

    return-object v0
.end method

.method public static makeInt(ILjava/util/function/IntBinaryOperator;)Ljj$/util/stream/TerminalOp;
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReduceOps$6;

    sget-object v1, Ljj$/util/stream/StreamShape;->INT_VALUE:Ljj$/util/stream/StreamShape;

    invoke-direct {v0, v1, p1, p0}, Ljj$/util/stream/ReduceOps$6;-><init>(Ljj$/util/stream/StreamShape;Ljava/util/function/IntBinaryOperator;I)V

    return-object v0
.end method

.method public static makeInt(Ljava/util/function/IntBinaryOperator;)Ljj$/util/stream/TerminalOp;
    .registers 3

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReduceOps$7;

    sget-object v1, Ljj$/util/stream/StreamShape;->INT_VALUE:Ljj$/util/stream/StreamShape;

    invoke-direct {v0, v1, p0}, Ljj$/util/stream/ReduceOps$7;-><init>(Ljj$/util/stream/StreamShape;Ljava/util/function/IntBinaryOperator;)V

    return-object v0
.end method

.method public static makeInt(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BinaryOperator;)Ljj$/util/stream/TerminalOp;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReduceOps$8;

    sget-object v1, Ljj$/util/stream/StreamShape;->INT_VALUE:Ljj$/util/stream/StreamShape;

    invoke-direct {v0, v1, p2, p1, p0}, Ljj$/util/stream/ReduceOps$8;-><init>(Ljj$/util/stream/StreamShape;Ljava/util/function/BinaryOperator;Ljava/util/function/ObjIntConsumer;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeIntCounting()Ljj$/util/stream/TerminalOp;
    .registers 2

    new-instance v0, Ljj$/util/stream/ReduceOps$9;

    sget-object v1, Ljj$/util/stream/StreamShape;->INT_VALUE:Ljj$/util/stream/StreamShape;

    invoke-direct {v0, v1}, Ljj$/util/stream/ReduceOps$9;-><init>(Ljj$/util/stream/StreamShape;)V

    return-object v0
.end method

.method public static makeLong(JLjava/util/function/LongBinaryOperator;)Ljj$/util/stream/TerminalOp;
    .registers 5

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReduceOps$10;

    sget-object v1, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    invoke-direct {v0, v1, p2, p0, p1}, Ljj$/util/stream/ReduceOps$10;-><init>(Ljj$/util/stream/StreamShape;Ljava/util/function/LongBinaryOperator;J)V

    return-object v0
.end method

.method public static makeLong(Ljava/util/function/LongBinaryOperator;)Ljj$/util/stream/TerminalOp;
    .registers 3

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReduceOps$11;

    sget-object v1, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    invoke-direct {v0, v1, p0}, Ljj$/util/stream/ReduceOps$11;-><init>(Ljj$/util/stream/StreamShape;Ljava/util/function/LongBinaryOperator;)V

    return-object v0
.end method

.method public static makeLong(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BinaryOperator;)Ljj$/util/stream/TerminalOp;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReduceOps$12;

    sget-object v1, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    invoke-direct {v0, v1, p2, p1, p0}, Ljj$/util/stream/ReduceOps$12;-><init>(Ljj$/util/stream/StreamShape;Ljava/util/function/BinaryOperator;Ljava/util/function/ObjLongConsumer;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeLongCounting()Ljj$/util/stream/TerminalOp;
    .registers 2

    new-instance v0, Ljj$/util/stream/ReduceOps$13;

    sget-object v1, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    invoke-direct {v0, v1}, Ljj$/util/stream/ReduceOps$13;-><init>(Ljj$/util/stream/StreamShape;)V

    return-object v0
.end method

.method public static makeRef(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljj$/util/stream/TerminalOp;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReduceOps$1;

    sget-object v1, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    invoke-direct {v0, v1, p2, p1, p0}, Ljj$/util/stream/ReduceOps$1;-><init>(Ljj$/util/stream/StreamShape;Ljava/util/function/BinaryOperator;Ljava/util/function/BiFunction;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static makeRef(Ljava/util/function/BinaryOperator;)Ljj$/util/stream/TerminalOp;
    .registers 3

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReduceOps$2;

    sget-object v1, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    invoke-direct {v0, v1, p0}, Ljj$/util/stream/ReduceOps$2;-><init>(Ljj$/util/stream/StreamShape;Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public static makeRef(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljj$/util/stream/TerminalOp;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/ReduceOps$4;

    sget-object v1, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    invoke-direct {v0, v1, p2, p1, p0}, Ljj$/util/stream/ReduceOps$4;-><init>(Ljj$/util/stream/StreamShape;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeRef(Ljj$/util/stream/Collector;)Ljj$/util/stream/TerminalOp;
    .registers 8

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Collector;

    invoke-interface {v0}, Ljj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v5

    invoke-interface {p0}, Ljj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v4

    invoke-interface {p0}, Ljj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v3

    new-instance v1, Ljj$/util/stream/ReduceOps$3;

    sget-object v2, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Ljj$/util/stream/ReduceOps$3;-><init>(Ljj$/util/stream/StreamShape;Ljava/util/function/BinaryOperator;Ljava/util/function/BiConsumer;Ljava/util/function/Supplier;Ljj$/util/stream/Collector;)V

    return-object v1
.end method

.method public static makeRefCounting()Ljj$/util/stream/TerminalOp;
    .registers 2

    new-instance v0, Ljj$/util/stream/ReduceOps$5;

    sget-object v1, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    invoke-direct {v0, v1}, Ljj$/util/stream/ReduceOps$5;-><init>(Ljj$/util/stream/StreamShape;)V

    return-object v0
.end method
