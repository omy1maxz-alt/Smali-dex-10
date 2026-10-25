.class public Lcom/gold/youtube/om7753/streams/io/SharpOutputStream;
.super Ljava/io/OutputStream;
.source "SharpOutputStream.java"


# instance fields
.field private final stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_c

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/SharpOutputStream;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    return-void

    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SharpStream is not writable"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/SharpOutputStream;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/SharpOutputStream;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/SharpOutputStream;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write(B)V

    return-void
.end method

.method public write([B)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/SharpOutputStream;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/SharpOutputStream;->stream:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write([BII)V

    return-void
.end method
