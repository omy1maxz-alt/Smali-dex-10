.class abstract Ljj$/util/stream/StreamSpliterators$ArrayBuffer;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# instance fields
.field index:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/stream/StreamSpliterators$ArrayBuffer;->index:I

    return-void
.end method
