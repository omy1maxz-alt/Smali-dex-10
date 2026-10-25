.class Lus/shandian/giga/postprocessing/OggFromWebmDemuxer;
.super Lus/shandian/giga/postprocessing/Postprocessing;
.source "OggFromWebmDemuxer.java"


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const-string/jumbo v1, "webm-ogg-d"

    invoke-direct {p0, v0, v0, v1}, Lus/shandian/giga/postprocessing/Postprocessing;-><init>(ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method varargs process(Lcom/gold/youtube/om7753/streams/io/SharpStream;[Lcom/gold/youtube/om7753/streams/io/SharpStream;)I
    .registers 5

    new-instance v0, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;

    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-direct {v0, p2, p1}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;-><init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->parseSource()V

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->selectTrack(I)V

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/OggFromWebMWriter;->build()V

    const/4 p1, -0x1

    return p1
.end method

.method varargs test([Lcom/gold/youtube/om7753/streams/io/SharpStream;)Z
    .registers 5

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->read([B)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    const v0, 0x1a45dfa3

    if-eq p1, v0, :cond_26

    const v0, 0x4f676753

    if-ne p1, v0, :cond_1e

    return v1

    :cond_1e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "file not recognized, failed to demux the audio stream"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    const/4 p1, 0x1

    return p1
.end method
