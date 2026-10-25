.class final Ljj$/util/stream/DistinctOps;
.super Ljava/lang/Object;
.source "DistinctOps.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeRef(Ljj$/util/stream/AbstractPipeline;)Ljj$/util/stream/ReferencePipeline;
    .registers 5

    new-instance v0, Ljj$/util/stream/DistinctOps$1;

    sget-object v1, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    sget v2, Ljj$/util/stream/StreamOpFlag;->IS_DISTINCT:I

    sget v3, Ljj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int/2addr v2, v3

    invoke-direct {v0, p0, v1, v2}, Ljj$/util/stream/DistinctOps$1;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;I)V

    return-object v0
.end method
