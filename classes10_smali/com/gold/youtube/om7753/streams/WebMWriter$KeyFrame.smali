.class Lcom/gold/youtube/om7753/streams/WebMWriter$KeyFrame;
.super Ljava/lang/Object;
.source "WebMWriter.java"


# instance fields
.field final clusterPosition:J

.field final duration:J

.field final relativePosition:I


# direct methods
.method constructor <init>(JJJJ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-long p1, p3, p1

    iput-wide p1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter$KeyFrame;->clusterPosition:J

    sub-long/2addr p5, p3

    const-wide/16 p1, 0x8

    sub-long/2addr p5, p1

    long-to-int p1, p5

    iput p1, p0, Lcom/gold/youtube/om7753/streams/WebMWriter$KeyFrame;->relativePosition:I

    iput-wide p7, p0, Lcom/gold/youtube/om7753/streams/WebMWriter$KeyFrame;->duration:J

    return-void
.end method
