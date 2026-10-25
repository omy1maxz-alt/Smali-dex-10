.class final Ljj$/util/stream/WhileOps;
.super Ljava/lang/Object;
.source "WhileOps.java"


# static fields
.field static final DROP_FLAGS:I

.field static final TAKE_FLAGS:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Ljj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    sget v1, Ljj$/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    or-int/2addr v0, v1

    sput v0, Ljj$/util/stream/WhileOps;->TAKE_FLAGS:I

    sget v0, Ljj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    sput v0, Ljj$/util/stream/WhileOps;->DROP_FLAGS:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeDropWhileDouble(Ljj$/util/stream/AbstractPipeline;Ljava/util/function/DoublePredicate;)Ljj$/util/stream/DoubleStream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/WhileOps$4Op;

    sget-object v1, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    sget v2, Ljj$/util/stream/WhileOps;->DROP_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljj$/util/stream/WhileOps$4Op;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/DoublePredicate;)V

    return-object v0
.end method

.method static makeDropWhileInt(Ljj$/util/stream/AbstractPipeline;Ljava/util/function/IntPredicate;)Ljj$/util/stream/IntStream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/WhileOps$2Op;

    sget-object v1, Ljj$/util/stream/StreamShape;->INT_VALUE:Ljj$/util/stream/StreamShape;

    sget v2, Ljj$/util/stream/WhileOps;->DROP_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljj$/util/stream/WhileOps$2Op;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/IntPredicate;)V

    return-object v0
.end method

.method static makeDropWhileLong(Ljj$/util/stream/AbstractPipeline;Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/WhileOps$3Op;

    sget-object v1, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    sget v2, Ljj$/util/stream/WhileOps;->DROP_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljj$/util/stream/WhileOps$3Op;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/LongPredicate;)V

    return-object v0
.end method

.method static makeDropWhileRef(Ljj$/util/stream/AbstractPipeline;Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/WhileOps$1Op;

    sget-object v1, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    sget v2, Ljj$/util/stream/WhileOps;->DROP_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljj$/util/stream/WhileOps$1Op;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/Predicate;)V

    return-object v0
.end method

.method static makeTakeWhileDouble(Ljj$/util/stream/AbstractPipeline;Ljava/util/function/DoublePredicate;)Ljj$/util/stream/DoubleStream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/WhileOps$4;

    sget-object v1, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    sget v2, Ljj$/util/stream/WhileOps;->TAKE_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljj$/util/stream/WhileOps$4;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/DoublePredicate;)V

    return-object v0
.end method

.method static makeTakeWhileInt(Ljj$/util/stream/AbstractPipeline;Ljava/util/function/IntPredicate;)Ljj$/util/stream/IntStream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/WhileOps$2;

    sget-object v1, Ljj$/util/stream/StreamShape;->INT_VALUE:Ljj$/util/stream/StreamShape;

    sget v2, Ljj$/util/stream/WhileOps;->TAKE_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljj$/util/stream/WhileOps$2;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/IntPredicate;)V

    return-object v0
.end method

.method static makeTakeWhileLong(Ljj$/util/stream/AbstractPipeline;Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/WhileOps$3;

    sget-object v1, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    sget v2, Ljj$/util/stream/WhileOps;->TAKE_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljj$/util/stream/WhileOps$3;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/LongPredicate;)V

    return-object v0
.end method

.method static makeTakeWhileRef(Ljj$/util/stream/AbstractPipeline;Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/WhileOps$1;

    sget-object v1, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    sget v2, Ljj$/util/stream/WhileOps;->TAKE_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Ljj$/util/stream/WhileOps$1;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;ILjava/util/function/Predicate;)V

    return-object v0
.end method
