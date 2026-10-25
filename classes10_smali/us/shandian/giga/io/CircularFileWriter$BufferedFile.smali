.class Lus/shandian/giga/io/CircularFileWriter$BufferedFile;
.super Ljava/lang/Object;
.source "CircularFileWriter.java"


# instance fields
.field length:J

.field private offset:J

.field private queue:[B

.field private queueSize:I

.field final target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

.field final synthetic this$0:Lus/shandian/giga/io/CircularFileWriter;


# direct methods
.method constructor <init>(Lus/shandian/giga/io/CircularFileWriter;Lcom/gold/youtube/om7753/streams/io/SharpStream;)V
    .registers 3

    iput-object p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->this$0:Lus/shandian/giga/io/CircularFileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2000

    new-array p1, p1, [B

    iput-object p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    iput-object p2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    return-void
.end method

.method constructor <init>(Lus/shandian/giga/io/CircularFileWriter;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->this$0:Lus/shandian/giga/io/CircularFileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2000

    new-array p1, p1, [B

    iput-object p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    new-instance p1, Lus/shandian/giga/io/FileStream;

    invoke-direct {p1, p2}, Lus/shandian/giga/io/FileStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    return-void
.end method

.method static synthetic access$000(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J
    .registers 3

    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    return-wide v0
.end method

.method static synthetic access$002(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)J
    .registers 3

    iput-wide p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    return-wide p1
.end method

.method static synthetic access$014(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)J
    .registers 5

    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    return-wide v0
.end method

.method static synthetic access$022(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)J
    .registers 5

    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    return-wide v0
.end method


# virtual methods
.method available()I
    .registers 4

    iget v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    iget-object v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    array-length v2, v1

    if-lt v0, v2, :cond_e

    invoke-virtual {p0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    array-length v0, v0

    return v0

    :cond_e
    array-length v1, v1

    sub-int/2addr v1, v0

    return v1
.end method

.method close()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V

    return-void
.end method

.method flush()V
    .registers 5

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    iget v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    invoke-virtual {p0, v0, v1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->writeProof([BI)V

    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    iget v2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    const/4 v0, 0x0

    iput v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    return-void
.end method

.method getOffset()J
    .registers 5

    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    iget v2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method reset()V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v2, v0, v1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->seek(J)V

    return-void
.end method

.method seek(J)V
    .registers 6

    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-void

    :cond_7
    iput-wide p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->seek(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_26

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-string v0, "offset=%s  length=%s  queue=%s  absLength=%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method write([BII)V
    .registers 7

    :goto_0
    if-lez p3, :cond_19

    invoke-virtual {p0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->available()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    iget v2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_19
    iget-wide p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->offset:J

    iget p3, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long p3, p1, v0

    if-lez p3, :cond_27

    iput-wide p1, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    :cond_27
    return-void
.end method

.method writeProof([BI)V
    .registers 6

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->this$0:Lus/shandian/giga/io/CircularFileWriter;

    iget-object v0, v0, Lus/shandian/giga/io/CircularFileWriter;->onWriteError:Lus/shandian/giga/io/CircularFileWriter$WriteErrorHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0, p1, v1, p2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write([BII)V

    return-void

    :cond_d
    :goto_d
    :try_start_d
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v0, p1, v1, p2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->write([BII)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->this$0:Lus/shandian/giga/io/CircularFileWriter;

    iget-object v2, v2, Lus/shandian/giga/io/CircularFileWriter;->onWriteError:Lus/shandian/giga/io/CircularFileWriter$WriteErrorHandle;

    invoke-interface {v2, v0}, Lus/shandian/giga/io/CircularFileWriter$WriteErrorHandle;->handle(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_d

    :cond_1f
    goto :goto_21

    :goto_20
    throw v0

    :goto_21
    goto :goto_20
.end method
