.class public Ljj$/util/stream/StackWalkerApiFlips;
.super Ljava/lang/Object;
.source "StackWalkerApiFlips.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flipFunctionStream(Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 2

    new-instance v0, Ljj$/util/stream/StackWalkerApiFlips$FunctionStreamWrapper;

    invoke-direct {v0, p0}, Ljj$/util/stream/StackWalkerApiFlips$FunctionStreamWrapper;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method
