.class final Ljj$/util/stream/FindOps;
.super Ljava/lang/Object;
.source "FindOps.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeDouble(Z)Ljj$/util/stream/TerminalOp;
    .registers 2

    if-eqz p0, :cond_5

    sget-object v0, Ljj$/util/stream/FindOps$FindSink$OfDouble;->OP_FIND_FIRST:Ljj$/util/stream/TerminalOp;

    goto :goto_7

    :cond_5
    sget-object v0, Ljj$/util/stream/FindOps$FindSink$OfDouble;->OP_FIND_ANY:Ljj$/util/stream/TerminalOp;

    :goto_7
    return-object v0
.end method

.method public static makeInt(Z)Ljj$/util/stream/TerminalOp;
    .registers 2

    if-eqz p0, :cond_5

    sget-object v0, Ljj$/util/stream/FindOps$FindSink$OfInt;->OP_FIND_FIRST:Ljj$/util/stream/TerminalOp;

    goto :goto_7

    :cond_5
    sget-object v0, Ljj$/util/stream/FindOps$FindSink$OfInt;->OP_FIND_ANY:Ljj$/util/stream/TerminalOp;

    :goto_7
    return-object v0
.end method

.method public static makeLong(Z)Ljj$/util/stream/TerminalOp;
    .registers 2

    if-eqz p0, :cond_5

    sget-object v0, Ljj$/util/stream/FindOps$FindSink$OfLong;->OP_FIND_FIRST:Ljj$/util/stream/TerminalOp;

    goto :goto_7

    :cond_5
    sget-object v0, Ljj$/util/stream/FindOps$FindSink$OfLong;->OP_FIND_ANY:Ljj$/util/stream/TerminalOp;

    :goto_7
    return-object v0
.end method

.method public static makeRef(Z)Ljj$/util/stream/TerminalOp;
    .registers 2

    if-eqz p0, :cond_5

    sget-object v0, Ljj$/util/stream/FindOps$FindSink$OfRef;->OP_FIND_FIRST:Ljj$/util/stream/TerminalOp;

    goto :goto_7

    :cond_5
    sget-object v0, Ljj$/util/stream/FindOps$FindSink$OfRef;->OP_FIND_ANY:Ljj$/util/stream/TerminalOp;

    :goto_7
    return-object v0
.end method
