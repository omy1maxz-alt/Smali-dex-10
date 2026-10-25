.class final Ljj$/util/stream/SortedOps;
.super Ljava/lang/Object;
.source "SortedOps.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeDouble(Ljj$/util/stream/AbstractPipeline;)Ljj$/util/stream/DoubleStream;
    .registers 2

    new-instance v0, Ljj$/util/stream/SortedOps$OfDouble;

    invoke-direct {v0, p0}, Ljj$/util/stream/SortedOps$OfDouble;-><init>(Ljj$/util/stream/AbstractPipeline;)V

    return-object v0
.end method

.method static makeInt(Ljj$/util/stream/AbstractPipeline;)Ljj$/util/stream/IntStream;
    .registers 2

    new-instance v0, Ljj$/util/stream/SortedOps$OfInt;

    invoke-direct {v0, p0}, Ljj$/util/stream/SortedOps$OfInt;-><init>(Ljj$/util/stream/AbstractPipeline;)V

    return-object v0
.end method

.method static makeLong(Ljj$/util/stream/AbstractPipeline;)Ljj$/util/stream/LongStream;
    .registers 2

    new-instance v0, Ljj$/util/stream/SortedOps$OfLong;

    invoke-direct {v0, p0}, Ljj$/util/stream/SortedOps$OfLong;-><init>(Ljj$/util/stream/AbstractPipeline;)V

    return-object v0
.end method

.method static makeRef(Ljj$/util/stream/AbstractPipeline;)Ljj$/util/stream/Stream;
    .registers 2

    new-instance v0, Ljj$/util/stream/SortedOps$OfRef;

    invoke-direct {v0, p0}, Ljj$/util/stream/SortedOps$OfRef;-><init>(Ljj$/util/stream/AbstractPipeline;)V

    return-object v0
.end method

.method static makeRef(Ljj$/util/stream/AbstractPipeline;Ljava/util/Comparator;)Ljj$/util/stream/Stream;
    .registers 3

    new-instance v0, Ljj$/util/stream/SortedOps$OfRef;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/SortedOps$OfRef;-><init>(Ljj$/util/stream/AbstractPipeline;Ljava/util/Comparator;)V

    return-object v0
.end method
