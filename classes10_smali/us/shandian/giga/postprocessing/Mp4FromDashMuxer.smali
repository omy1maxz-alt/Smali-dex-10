.class Lus/shandian/giga/postprocessing/Mp4FromDashMuxer;
.super Lus/shandian/giga/postprocessing/Postprocessing;
.source "Mp4FromDashMuxer.java"


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const-string v1, "mp4D-mp4"

    invoke-direct {p0, v0, v0, v1}, Lus/shandian/giga/postprocessing/Postprocessing;-><init>(ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method varargs process(Lcom/gold/youtube/om7753/streams/io/SharpStream;[Lcom/gold/youtube/om7753/streams/io/SharpStream;)I
    .registers 4

    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;

    invoke-direct {v0, p2}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;-><init>([Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->parseSources()V

    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_16

    invoke-virtual {v0, p2}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->selectTracks([I)V

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->build(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    const/4 p1, -0x1

    return p1

    :array_16
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
