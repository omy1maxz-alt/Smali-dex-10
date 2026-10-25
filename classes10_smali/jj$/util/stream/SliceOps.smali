.class final Ljj$/util/stream/SliceOps;
.super Ljava/lang/Object;
.source "SliceOps.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static bridge synthetic -$$Nest$smcalcSize(JJJ)J
    .registers 6

    invoke-static/range {p0 .. p5}, Ljj$/util/stream/SliceOps;->calcSize(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smcalcSliceFence(JJ)J
    .registers 4

    invoke-static {p0, p1, p2, p3}, Ljj$/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smsliceSpliterator(Ljj$/util/stream/StreamShape;Ljj$/util/Spliterator;JJ)Ljj$/util/Spliterator;
    .registers 6

    invoke-static/range {p0 .. p5}, Ljj$/util/stream/SliceOps;->sliceSpliterator(Ljj$/util/stream/StreamShape;Ljj$/util/Spliterator;JJ)Ljj$/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcSize(JJJ)J
    .registers 11

    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    cmp-long v4, p0, v0

    if-ltz v4, :cond_12

    sub-long v0, p0, p2

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_12
    return-wide v2
.end method

.method private static calcSliceFence(JJ)J
    .registers 11

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_e

    add-long v4, p0, p2

    goto :goto_f

    :cond_e
    move-wide v4, v0

    :goto_f
    cmp-long v6, v4, v2

    if-ltz v6, :cond_14

    move-wide v0, v4

    :cond_14
    return-wide v0
.end method

.method private static flags(J)I
    .registers 6

    sget v0, Ljj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    const-wide/16 v1, -0x1

    cmp-long v3, p0, v1

    if-eqz v3, :cond_b

    sget v1, Ljj$/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    or-int/2addr v0, v1

    return v0
.end method

.method public static makeDouble(Ljj$/util/stream/AbstractPipeline;JJ)Ljj$/util/stream/DoubleStream;
    .registers 16

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_15

    new-instance v3, Ljj$/util/stream/SliceOps$4;

    sget-object v5, Ljj$/util/stream/StreamShape;->DOUBLE_VALUE:Ljj$/util/stream/StreamShape;

    invoke-static {p3, p4}, Ljj$/util/stream/SliceOps;->flags(J)I

    move-result v6

    move-object v4, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v3 .. v10}, Ljj$/util/stream/SliceOps$4;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;IJJ)V

    return-object v3

    :cond_15
    move-object v4, p0

    move-wide v7, p1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip must be non-negative: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeInt(Ljj$/util/stream/AbstractPipeline;JJ)Ljj$/util/stream/IntStream;
    .registers 16

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_15

    new-instance v3, Ljj$/util/stream/SliceOps$2;

    sget-object v5, Ljj$/util/stream/StreamShape;->INT_VALUE:Ljj$/util/stream/StreamShape;

    invoke-static {p3, p4}, Ljj$/util/stream/SliceOps;->flags(J)I

    move-result v6

    move-object v4, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v3 .. v10}, Ljj$/util/stream/SliceOps$2;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;IJJ)V

    return-object v3

    :cond_15
    move-object v4, p0

    move-wide v7, p1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip must be non-negative: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeLong(Ljj$/util/stream/AbstractPipeline;JJ)Ljj$/util/stream/LongStream;
    .registers 16

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_15

    new-instance v3, Ljj$/util/stream/SliceOps$3;

    sget-object v5, Ljj$/util/stream/StreamShape;->LONG_VALUE:Ljj$/util/stream/StreamShape;

    invoke-static {p3, p4}, Ljj$/util/stream/SliceOps;->flags(J)I

    move-result v6

    move-object v4, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v3 .. v10}, Ljj$/util/stream/SliceOps$3;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;IJJ)V

    return-object v3

    :cond_15
    move-object v4, p0

    move-wide v7, p1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip must be non-negative: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeRef(Ljj$/util/stream/AbstractPipeline;JJ)Ljj$/util/stream/Stream;
    .registers 16

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_15

    new-instance v3, Ljj$/util/stream/SliceOps$1;

    sget-object v5, Ljj$/util/stream/StreamShape;->REFERENCE:Ljj$/util/stream/StreamShape;

    invoke-static {p3, p4}, Ljj$/util/stream/SliceOps;->flags(J)I

    move-result v6

    move-object v4, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v3 .. v10}, Ljj$/util/stream/SliceOps$1;-><init>(Ljj$/util/stream/AbstractPipeline;Ljj$/util/stream/StreamShape;IJJ)V

    return-object v3

    :cond_15
    move-object v4, p0

    move-wide v7, p1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip must be non-negative: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static sliceSpliterator(Ljj$/util/stream/StreamShape;Ljj$/util/Spliterator;JJ)Ljj$/util/Spliterator;
    .registers 12

    nop

    invoke-static {p2, p3, p4, p5}, Ljj$/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide v4

    sget-object v0, Ljj$/util/stream/SliceOps$5;->$SwitchMap$java$util$stream$StreamShape:[I

    invoke-virtual {p0}, Ljj$/util/stream/StreamShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_52

    move-object v1, p1

    move-wide v2, p2

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown shape "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2b  #0x4
    new-instance v0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    move-object v1, p1

    check-cast v1, Ljj$/util/Spliterator$OfDouble;

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Ljj$/util/Spliterator$OfDouble;JJ)V

    return-object v0

    :pswitch_35  #0x3
    move-wide v2, p2

    new-instance v0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    move-object v1, p1

    check-cast v1, Ljj$/util/Spliterator$OfLong;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Ljj$/util/Spliterator$OfLong;JJ)V

    return-object v0

    :pswitch_3f  #0x2
    move-wide v2, p2

    new-instance v0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfInt;

    move-object v1, p1

    check-cast v1, Ljj$/util/Spliterator$OfInt;

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfInt;-><init>(Ljj$/util/Spliterator$OfInt;JJ)V

    return-object v0

    :pswitch_49  #0x1
    move-wide v2, p2

    new-instance v0, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljj$/util/Spliterator;JJ)V

    return-object v0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_49  #00000001
        :pswitch_3f  #00000002
        :pswitch_35  #00000003
        :pswitch_2b  #00000004
    .end packed-switch
.end method
