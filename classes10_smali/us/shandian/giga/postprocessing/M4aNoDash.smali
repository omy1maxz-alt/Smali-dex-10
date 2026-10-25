.class Lus/shandian/giga/postprocessing/M4aNoDash;
.super Lus/shandian/giga/postprocessing/Postprocessing;
.source "M4aNoDash.java"


# direct methods
.method constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "mp4D-m4a"

    invoke-direct {p0, v0, v1, v2}, Lus/shandian/giga/postprocessing/Postprocessing;-><init>(ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method varargs process(Lcom/gold/youtube/om7753/streams/io/SharpStream;[Lcom/gold/youtube/om7753/streams/io/SharpStream;)I
    .registers 7

    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/gold/youtube/om7753/streams/io/SharpStream;

    const/4 v3, 0x0

    aget-object p2, p2, v3

    aput-object p2, v2, v3

    invoke-direct {v0, v2}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;-><init>([Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    const p2, 0x4d344120  # 1.8901043E8f

    invoke-virtual {v0, p2}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->setMainBrand(I)V

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->parseSources()V

    new-array p2, v1, [I

    aput v3, p2, v3

    invoke-virtual {v0, p2}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->selectTracks([I)V

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/streams/Mp4FromDashWriter;->build(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    const/4 p1, -0x1

    return p1
.end method

.method varargs test([Lcom/gold/youtube/om7753/streams/io/SharpStream;)Z
    .registers 4

    new-instance v0, Lcom/gold/youtube/om7753/streams/Mp4DashReader;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;-><init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->parse()V

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/Mp4DashReader;->getBrands()[I

    move-result-object p1

    aget p1, p1, v1

    const v0, 0x64617368

    if-eq p1, v0, :cond_1c

    const v0, 0x69736f35

    if-eq p1, v0, :cond_1c

    return v1

    :cond_1c
    const/4 p1, 0x1

    return p1
.end method
