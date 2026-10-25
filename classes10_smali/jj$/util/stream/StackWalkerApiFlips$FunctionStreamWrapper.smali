.class public Ljj$/util/stream/StackWalkerApiFlips$FunctionStreamWrapper;
.super Ljava/lang/Object;
.source "StackWalkerApiFlips.java"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public function:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/stream/StackWalkerApiFlips$FunctionStreamWrapper;->function:Ljava/util/function/Function;

    return-void
.end method

.method private flipStream(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    instance-of v0, p1, Ljj$/util/stream/Stream;

    if-eqz v0, :cond_f

    check-cast p1, Ljj$/util/stream/Stream;

    invoke-static {p1}, Ljj$/util/stream/Stream$Wrapper;->convert(Ljj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :cond_f
    instance-of v0, p1, Ljava/util/stream/Stream;

    if-eqz v0, :cond_1a

    check-cast p1, Ljava/util/stream/Stream;

    invoke-static {p1}, Ljj$/util/stream/Stream$VivifiedWrapper;->convert(Ljava/util/stream/Stream;)Ljj$/util/stream/Stream;

    move-result-object p1

    return-object p1

    :cond_1a
    const-string v0, "java.util.stream.Stream"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Ljj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/StackWalkerApiFlips$FunctionStreamWrapper;->function:Ljava/util/function/Function;

    invoke-direct {p0, p1}, Ljj$/util/stream/StackWalkerApiFlips$FunctionStreamWrapper;->flipStream(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
