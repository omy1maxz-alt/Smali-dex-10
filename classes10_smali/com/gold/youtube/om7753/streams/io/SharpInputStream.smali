.class public Lcom/gold/youtube/om7753/streams/io/SharpInputStream;
.super Ljava/io/InputStream;
.source "SharpInputStream.java"


# instance fields
.field private final stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->canRead()Z

    move-result v0

    if-eqz v0, :cond_c

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/SharpInputStream;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    return-void

    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SharpStream is not readable"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/SharpInputStream;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->available()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_11

    const v0, 0x7fffffff

    goto :goto_12

    :cond_11
    long-to-int v0, v0

    :goto_12
    return v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/SharpInputStream;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V

    return-void
.end method

.method public read()I
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/SharpInputStream;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/SharpInputStream;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/SharpInputStream;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public skip(J)J
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/SharpInputStream;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
