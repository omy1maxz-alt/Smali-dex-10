.class public Lus/shandian/giga/io/FileStream;
.super Lcom/gold/youtube/om7753/streams/io/SharpStream;
.source "FileStream.java"


# instance fields
.field public source:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;-><init>()V

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public available()J
    .registers 5

    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-object v2, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_e

    sub-long/2addr v0, v2

    return-wide v0

    :catch_e
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public canRead()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public canRewind()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public canSeek()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public canWrite()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_8

    :catch_8
    const/4 v0, 0x0

    iput-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public isClosed()Z
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public length()J
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 5

    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public rewind()V
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public seek(J)V
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public setLength(J)V
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-void
.end method

.method public skip(J)J
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public write(B)V
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Lus/shandian/giga/io/FileStream;->source:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
