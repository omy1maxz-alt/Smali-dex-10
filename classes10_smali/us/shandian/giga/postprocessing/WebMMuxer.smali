.class Lus/shandian/giga/postprocessing/WebMMuxer;
.super Lus/shandian/giga/postprocessing/Postprocessing;
.source "WebMMuxer.java"


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const-string/jumbo v1, "webm"

    invoke-direct {p0, v0, v0, v1}, Lus/shandian/giga/postprocessing/Postprocessing;-><init>(ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method varargs process(Lcom/gold/youtube/om7753/streams/io/SharpStream;[Lcom/gold/youtube/om7753/streams/io/SharpStream;)I
    .registers 11

    new-instance v0, Lcom/gold/youtube/om7753/streams/WebMWriter;

    invoke-direct {v0, p2}, Lcom/gold/youtube/om7753/streams/WebMWriter;-><init>([Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/WebMWriter;->parseSources()V

    array-length v1, p2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    array-length v4, p2

    if-ge v3, v4, :cond_2a

    invoke-virtual {v0, v3}, Lcom/gold/youtube/om7753/streams/WebMWriter;->getTracksFromSource(I)[Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;

    move-result-object v4

    const/4 v5, 0x0

    :goto_15
    array-length v6, v4

    if-ge v5, v6, :cond_27

    aget-object v6, v4, v5

    iget-object v6, v6, Lcom/gold/youtube/om7753/streams/WebMReader$WebMTrack;->kind:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    sget-object v7, Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;->Audio:Lcom/gold/youtube/om7753/streams/WebMReader$TrackKind;

    if-ne v6, v7, :cond_24

    aput v5, v1, v3

    array-length v3, p2

    goto :goto_27

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2a
    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->selectTracks([I)V

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/streams/WebMWriter;->build(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    const/4 p1, -0x1

    return p1
.end method
