.class Lokin/RealBufferedSource$1;
.super Ljava/io/InputStream;
.source "RealBufferedSource.java"


# instance fields
.field final synthetic this$0:Lokin/RealBufferedSource;


# direct methods
.method constructor <init>(Lokin/RealBufferedSource;)V
    .registers 2

    iput-object p1, p0, Lokin/RealBufferedSource$1;->this$0:Lokin/RealBufferedSource;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5

    iget-object v0, p0, Lokin/RealBufferedSource$1;->this$0:Lokin/RealBufferedSource;

    iget-boolean v1, v0, Lokin/RealBufferedSource;->closed:Z

    if-nez v1, :cond_13

    iget-object v0, v0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    iget-wide v0, v0, Lokin/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lokin/RealBufferedSource$1;->this$0:Lokin/RealBufferedSource;

    invoke-virtual {v0}, Lokin/RealBufferedSource;->close()V

    return-void
.end method

.method public read()I
    .registers 8

    iget-object v0, p0, Lokin/RealBufferedSource$1;->this$0:Lokin/RealBufferedSource;

    iget-boolean v1, v0, Lokin/RealBufferedSource;->closed:Z

    if-nez v1, :cond_2b

    iget-object v1, v0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    iget-wide v2, v1, Lokin/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_20

    iget-object v0, v0, Lokin/RealBufferedSource;->source:Lokin/Source;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokin/Source;->read(Lokin/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_20

    const/4 v0, -0x1

    return v0

    :cond_20
    iget-object v0, p0, Lokin/RealBufferedSource$1;->this$0:Lokin/RealBufferedSource;

    iget-object v0, v0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0}, Lokin/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_2b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .registers 11

    iget-object v0, p0, Lokin/RealBufferedSource$1;->this$0:Lokin/RealBufferedSource;

    iget-boolean v0, v0, Lokin/RealBufferedSource;->closed:Z

    if-nez v0, :cond_32

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokin/Util;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lokin/RealBufferedSource$1;->this$0:Lokin/RealBufferedSource;

    iget-object v1, v0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    iget-wide v2, v1, Lokin/Buffer;->size:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_29

    iget-object v0, v0, Lokin/RealBufferedSource;->source:Lokin/Source;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokin/Source;->read(Lokin/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_29

    const/4 p1, -0x1

    return p1

    :cond_29
    iget-object v0, p0, Lokin/RealBufferedSource$1;->this$0:Lokin/RealBufferedSource;

    iget-object v0, v0, Lokin/RealBufferedSource;->buffer:Lokin/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokin/Buffer;->read([BII)I

    move-result p1

    return p1

    :cond_32
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokin/RealBufferedSource$1;->this$0:Lokin/RealBufferedSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
