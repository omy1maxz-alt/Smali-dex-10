.class abstract Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
.super Ljj$/util/stream/StreamSpliterators$ArrayBuffer;
.source "StreamSpliterators.java"


# instance fields
.field index:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/util/stream/StreamSpliterators$ArrayBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method abstract forEach(Ljava/lang/Object;J)V
.end method

.method reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->index:I

    return-void
.end method
