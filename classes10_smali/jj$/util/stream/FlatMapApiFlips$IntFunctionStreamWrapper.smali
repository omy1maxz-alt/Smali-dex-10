.class public Ljj$/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper;
.super Ljava/lang/Object;
.source "FlatMapApiFlips.java"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public function:Ljava/util/function/IntFunction;


# direct methods
.method public constructor <init>(Ljava/util/function/IntFunction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper;->function:Ljava/util/function/IntFunction;

    return-void
.end method

.method private flipStream(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    instance-of v0, p1, Ljj$/util/stream/IntStream;

    if-eqz v0, :cond_f

    check-cast p1, Ljj$/util/stream/IntStream;

    invoke-static {p1}, Ljj$/util/stream/IntStream$Wrapper;->convert(Ljj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1

    :cond_f
    instance-of v0, p1, Ljava/util/stream/IntStream;

    if-eqz v0, :cond_1a

    check-cast p1, Ljava/util/stream/IntStream;

    invoke-static {p1}, Ljj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Ljj$/util/stream/IntStream;

    move-result-object p1

    return-object p1

    :cond_1a
    const-string v0, "java.util.stream.IntStream"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Ljj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper;->function:Ljava/util/function/IntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Ljj$/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper;->flipStream(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
