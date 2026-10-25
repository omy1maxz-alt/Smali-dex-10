.class public final synthetic Ljj$/io/BufferedReaderRetargetClass;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic lines(Ljava/io/BufferedReader;)Ljj$/util/stream/Stream;
    .registers 2

    instance-of v0, p0, Ljj$/io/BufferedReaderRetargetInterface;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/io/BufferedReaderRetargetInterface;

    invoke-interface {p0}, Ljj$/io/BufferedReaderRetargetInterface;->lines()Ljj$/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p0}, Ljj$/io/DesugarBufferedReader;->lines(Ljava/io/BufferedReader;)Ljj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
