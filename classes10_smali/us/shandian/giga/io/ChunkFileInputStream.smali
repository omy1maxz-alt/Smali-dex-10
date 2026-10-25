.class public Lus/shandian/giga/io/ChunkFileInputStream;
.super Lcom/gold/youtube/om7753/streams/io/SharpStream;
.source "ChunkFileInputStream.java"


# instance fields
.field private final length:J

.field private final offset:J

.field private final onProgress:Lus/shandian/giga/io/ProgressReport;

.field private position:J

.field private progressReport:J

.field private source:Lcom/gold/youtube/om7753/streams/io/SharpStream;


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;JJLus/shandian/giga/io/ProgressReport;)V
    .registers 11

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    iput-wide p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->offset:J

    sub-long v0, p4, p2

    iput-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->length:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    iput-object p6, p0, Lus/shandian/giga/io/ChunkFileInputStream;->onProgress:Lus/shandian/giga/io/ProgressReport;

    const-wide/32 v2, 0x40000

    iput-wide v2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->progressReport:J

    const-wide/16 v2, 0x1

    cmp-long p6, v0, v2

    if-ltz p6, :cond_54

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->length()J

    move-result-wide v0

    cmp-long p1, v0, p4

    if-ltz p1, :cond_2a

    iget-object p1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {p1, p2, p3}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->seek(J)V

    return-void

    :cond_2a
    :try_start_2a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid file length. expected = %s  found = %s"

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p6, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, p6

    const/4 p4, 0x1

    iget-object p5, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {p5}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->length()J

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    aput-object p5, p3, p4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4d
    .catchall {:try_start_2a .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p1

    iget-object p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V

    throw p1

    :cond_54
    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "The chunk is empty or invalid"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()J
    .registers 5

    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->length:J

    iget-wide v2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    sub-long/2addr v0, v2

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

.method public canWrite()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    return-void
.end method

.method public getFilePointer()J
    .registers 5

    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->offset:J

    iget-wide v2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isClosed()Z
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public read()I
    .registers 8

    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v4, p0, Lus/shandian/giga/io/ChunkFileInputStream;->length:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_d

    const/4 v0, 0x0

    return v0

    :cond_d
    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->read()I

    move-result v0

    if-ltz v0, :cond_1a

    iget-wide v4, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    :cond_1a
    return v0
.end method

.method public read([B)I
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lus/shandian/giga/io/ChunkFileInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 11

    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    int-to-long v2, p3

    add-long/2addr v2, v0

    iget-wide v4, p0, Lus/shandian/giga/io/ChunkFileInputStream;->length:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_c

    sub-long/2addr v4, v0

    long-to-int p3, v4

    :cond_c
    if-nez p3, :cond_10

    const/4 p1, 0x0

    return p1

    :cond_10
    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->read([BII)I

    move-result p1

    iget-wide p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->onProgress:Lus/shandian/giga/io/ProgressReport;

    if-eqz v0, :cond_31

    iget-wide v1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->progressReport:J

    cmp-long v3, p2, v1

    if-lez v3, :cond_31

    invoke-interface {v0, p2, p3}, Lus/shandian/giga/io/ProgressReport;->report(J)V

    iget-wide p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    const-wide/32 v0, 0x40000

    add-long/2addr p2, v0

    iput-wide p2, p0, Lus/shandian/giga/io/ChunkFileInputStream;->progressReport:J

    :cond_31
    return p1
.end method

.method public rewind()V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    iget-wide v1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->offset:J

    invoke-virtual {v0, v1, v2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->seek(J)V

    return-void
.end method

.method public skip(J)J
    .registers 6

    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->length:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_10

    return-wide v0

    :cond_10
    iget-object v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->source:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    iget-wide v1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->offset:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->seek(J)V

    iget-wide v0, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    iput-wide p1, p0, Lus/shandian/giga/io/ChunkFileInputStream;->position:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public write(B)V
    .registers 2

    return-void
.end method

.method public write([B)V
    .registers 2

    return-void
.end method

.method public write([BII)V
    .registers 4

    return-void
.end method
