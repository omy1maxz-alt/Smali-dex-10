.class public Ljj$/util/stream/FlatMapApiFlips;
.super Ljava/lang/Object;
.source "FlatMapApiFlips.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flipFunctionReturningStream(Ljava/util/function/DoubleFunction;)Ljava/util/function/DoubleFunction;
    .registers 2

    new-instance v0, Ljj$/util/stream/FlatMapApiFlips$DoubleFunctionStreamWrapper;

    invoke-direct {v0, p0}, Ljj$/util/stream/FlatMapApiFlips$DoubleFunctionStreamWrapper;-><init>(Ljava/util/function/DoubleFunction;)V

    return-object v0
.end method

.method public static flipFunctionReturningStream(Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 2

    new-instance v0, Ljj$/util/stream/FlatMapApiFlips$FunctionStreamWrapper;

    invoke-direct {v0, p0}, Ljj$/util/stream/FlatMapApiFlips$FunctionStreamWrapper;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static flipFunctionReturningStream(Ljava/util/function/IntFunction;)Ljava/util/function/IntFunction;
    .registers 2

    new-instance v0, Ljj$/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper;

    invoke-direct {v0, p0}, Ljj$/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper;-><init>(Ljava/util/function/IntFunction;)V

    return-object v0
.end method

.method public static flipFunctionReturningStream(Ljava/util/function/LongFunction;)Ljava/util/function/LongFunction;
    .registers 2

    new-instance v0, Ljj$/util/stream/FlatMapApiFlips$LongFunctionStreamWrapper;

    invoke-direct {v0, p0}, Ljj$/util/stream/FlatMapApiFlips$LongFunctionStreamWrapper;-><init>(Ljava/util/function/LongFunction;)V

    return-object v0
.end method
