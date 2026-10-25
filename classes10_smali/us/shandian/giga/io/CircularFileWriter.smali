.class public Lus/shandian/giga/io/CircularFileWriter;
.super Lcom/gold/youtube/om7753/streams/io/SharpStream;
.source "CircularFileWriter.java"


# instance fields
.field private aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

.field private final callback:Lus/shandian/giga/io/CircularFileWriter$OffsetChecker;

.field private maxLengthKnown:J

.field public onProgress:Lus/shandian/giga/io/ProgressReport;

.field public onWriteError:Lus/shandian/giga/io/CircularFileWriter$WriteErrorHandle;

.field private out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

.field private reportPosition:J


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/streams/io/SharpStream;Ljava/io/File;Lus/shandian/giga/io/CircularFileWriter$OffsetChecker;)V
    .registers 6

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1f

    :cond_17
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot create a temporal file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    :goto_1f
    new-instance v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-direct {v0, p0, p2}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;-><init>(Lus/shandian/giga/io/CircularFileWriter;Ljava/io/File;)V

    iput-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    new-instance p2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-direct {p2, p0, p1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;-><init>(Lus/shandian/giga/io/CircularFileWriter;Lcom/gold/youtube/om7753/streams/io/SharpStream;)V

    iput-object p2, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iput-object p3, p0, Lus/shandian/giga/io/CircularFileWriter;->callback:Lus/shandian/giga/io/CircularFileWriter$OffsetChecker;

    const-wide/32 p1, 0x10000

    iput-wide p1, p0, Lus/shandian/giga/io/CircularFileWriter;->reportPosition:J

    return-void
.end method

.method private flushAuxiliar(J)V
    .registers 18

    move-object v0, p0

    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v1, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-gez v5, :cond_c

    return-void

    :cond_c
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->access$000(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v1

    iget-object v3, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v3, v3, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-ltz v7, :cond_37

    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->access$000(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v1

    iget-object v3, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v3, v3, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v7, v1, v3

    if-gez v7, :cond_35

    goto :goto_37

    :cond_35
    const/4 v1, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v1, 0x1

    :goto_38
    const/high16 v2, 0x20000

    new-array v3, v2, [B

    iget-object v4, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v4, v4, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->seek(J)V

    iget-object v4, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v9, v4, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    iget-wide v10, v4, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    invoke-virtual {v9, v10, v11}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->seek(J)V

    move-wide/from16 v9, p1

    :goto_50
    const-wide/32 v11, 0x7fffffff

    cmp-long v4, v9, v7

    if-lez v4, :cond_75

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v4, v13

    iget-object v13, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v13, v13, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v13, v3, v6, v4}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->read([BII)I

    move-result v4

    if-ge v4, v5, :cond_6d

    sub-long v4, p1, v9

    goto :goto_77

    :cond_6d
    iget-object v11, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v11, v3, v4}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->writeProof([BI)V

    int-to-long v11, v4

    sub-long/2addr v9, v11

    goto :goto_50

    :cond_75
    move-wide/from16 v4, p1

    :goto_77
    if-eqz v1, :cond_c1

    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->access$000(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v9

    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v13, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v1, v9, v13

    if-ltz v1, :cond_bb

    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->access$000(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v9

    cmp-long v1, v9, v4

    if-gez v1, :cond_ad

    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v9, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v9}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->access$000(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v9

    invoke-static {v1, v9, v10}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->access$014(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)J

    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1, v7, v8}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->access$002(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)J

    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v9, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-static {v1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->access$000(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->seek(J)V

    goto :goto_cb

    :cond_ad
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1, v4, v5}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->access$022(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)J

    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v9, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    add-long/2addr v9, v4

    invoke-static {v1, v9, v10}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->access$002(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)J

    goto :goto_cb

    :cond_bb
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1, v7, v8}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->access$002(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)J

    goto :goto_cb

    :cond_c1
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1, v4, v5}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->access$014(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)J

    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1, v4, v5}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->access$022(Lus/shandian/giga/io/CircularFileWriter$BufferedFile;J)J

    :goto_cb
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v9, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    add-long/2addr v9, v4

    iput-wide v9, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    iget-wide v13, v0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    cmp-long v1, v9, v13

    if-lez v1, :cond_da

    iput-wide v9, v0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    :cond_da
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v9, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v13, v4, v9

    if-gez v13, :cond_11f

    sub-long/2addr v9, v4

    iput-wide v9, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    move-wide v13, v7

    :goto_e6
    cmp-long v1, v9, v7

    if-lez v1, :cond_115

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v1, v7

    iget-object v7, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v7, v7, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v7, v3, v6, v1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->read([BII)I

    move-result v1

    iget-object v7, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v7, v7, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v7, v13, v14}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->seek(J)V

    iget-object v7, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v7, v3, v1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->writeProof([BI)V

    int-to-long v7, v1

    add-long/2addr v13, v7

    add-long/2addr v4, v7

    sub-long/2addr v9, v7

    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v1, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v1, v4, v5}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->seek(J)V

    const-wide/16 v7, 0x0

    goto :goto_e6

    :cond_115
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v2, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    iget-wide v3, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    invoke-virtual {v2, v3, v4}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->setLength(J)V

    return-void

    :cond_11f
    const-wide/32 v2, 0xf00000

    cmp-long v4, v9, v2

    if-lez v4, :cond_12b

    iget-object v1, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v1, v2, v3}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->setLength(J)V

    :cond_12b
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->reset()V

    return-void
.end method


# virtual methods
.method public available()J
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "write-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canRead()Z
    .registers 2

    const/4 v0, 0x0

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
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->close()V

    iput-object v1, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    :cond_a
    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->close()V

    iput-object v1, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    :cond_13
    return-void
.end method

.method public finalizeFile()J
    .registers 6

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v0, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    invoke-direct {p0, v0, v1}, Lus/shandian/giga/io/CircularFileWriter;->flushAuxiliar(J)V

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    iget-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v2, v2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v2, v2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_29

    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v2, v2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/gold/youtube/om7753/streams/io/SharpStream;

    invoke-virtual {v2, v0, v1}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->setLength(J)V

    :cond_29
    invoke-virtual {p0}, Lus/shandian/giga/io/CircularFileWriter;->close()V

    return-wide v0
.end method

.method public flush()V
    .registers 6

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->flush()V

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v0, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v2, v2, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1b

    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter;->maxLengthKnown:J

    :cond_1b
    return-void
.end method

.method public isClosed()Z
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public read()I
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "write-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v0, "write-only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([BII)I
    .registers 4

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "write-only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rewind()V
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->onProgress:Lus/shandian/giga/io/ProgressReport;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    invoke-interface {v0, v1, v2}, Lus/shandian/giga/io/ProgressReport;->report(J)V

    :cond_9
    invoke-virtual {p0, v1, v2}, Lus/shandian/giga/io/CircularFileWriter;->seek(J)V

    const-wide/32 v0, 0x10000

    iput-wide v0, p0, Lus/shandian/giga/io/CircularFileWriter;->reportPosition:J

    return-void
.end method

.method public seek(J)V
    .registers 10

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v1, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    iget-object v3, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v3, v3, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    add-long/2addr v1, v3

    cmp-long v3, p1, v1

    if-nez v3, :cond_1d

    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v3

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    invoke-virtual {p0}, Lus/shandian/giga/io/CircularFileWriter;->flush()V

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_49

    cmp-long v0, p1, v1

    if-gtz v0, :cond_49

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v1, v0, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v5, p1, v1

    if-lez v5, :cond_40

    invoke-virtual {v0, v1, v2}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->seek(J)V

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-object v1, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v1, v1, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    sub-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->seek(J)V

    goto :goto_48

    :cond_40
    invoke-virtual {v0, p1, p2}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->seek(J)V

    iget-object p1, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {p1, v3, v4}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->seek(J)V

    :goto_48
    return-void

    :cond_49
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "desired offset is outside of range=0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " offset="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .registers 7

    iget-object v0, p0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v0

    iget-object v2, p0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v2}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lus/shandian/giga/io/CircularFileWriter;->seek(J)V

    return-wide p1
.end method

.method public write(B)V
    .registers 5

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lus/shandian/giga/io/CircularFileWriter;->write([BII)V

    return-void
.end method

.method public write([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lus/shandian/giga/io/CircularFileWriter;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-nez v3, :cond_b

    return-void

    :cond_b
    iget-object v4, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v4}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v4

    iget-object v6, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v6}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v6

    iget-object v8, v0, Lus/shandian/giga/io/CircularFileWriter;->callback:Lus/shandian/giga/io/CircularFileWriter$OffsetChecker;

    invoke-interface {v8}, Lus/shandian/giga/io/CircularFileWriter$OffsetChecker;->check()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v14, v8, v10

    if-nez v14, :cond_27

    const-wide/32 v8, 0x7fffffff

    goto :goto_2c

    :cond_27
    cmp-long v10, v8, v4

    if-ltz v10, :cond_ba

    sub-long/2addr v8, v4

    :goto_2c
    iget-object v10, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v14, v10, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    cmp-long v19, v14, v16

    if-lez v19, :cond_42

    iget-object v11, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v12, v11, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v11, v4, v12

    if-ltz v11, :cond_42

    const/4 v11, 0x1

    goto :goto_43

    :cond_42
    const/4 v11, 0x0

    :goto_43
    cmp-long v12, v6, v14

    if-ltz v12, :cond_53

    iget-object v12, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v12, v12, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v17, v4, v12

    if-gez v17, :cond_50

    goto :goto_53

    :cond_50
    const/16 v16, 0x0

    goto :goto_55

    :cond_53
    :goto_53
    const/16 v16, 0x1

    :goto_55
    if-eqz v11, :cond_75

    int-to-long v4, v3

    add-long/2addr v6, v4

    if-eqz v16, :cond_62

    cmp-long v4, v14, v6

    if-lez v4, :cond_60

    goto :goto_63

    :cond_60
    move-wide v14, v6

    goto :goto_63

    :cond_62
    add-long/2addr v14, v4

    :goto_63
    invoke-virtual {v10, v1, v2, v3}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->write([BII)V

    const-wide/32 v1, 0xf00000

    cmp-long v3, v14, v1

    if-ltz v3, :cond_97

    cmp-long v1, v14, v8

    if-gtz v1, :cond_97

    invoke-direct {v0, v8, v9}, Lus/shandian/giga/io/CircularFileWriter;->flushAuxiliar(J)V

    goto :goto_97

    :cond_75
    if-eqz v16, :cond_7d

    iget-object v6, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v6, v6, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->length:J

    sub-long v8, v6, v4

    :cond_7d
    const-wide/32 v4, 0x7fffffff

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v5, v1, v2, v4}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->write([BII)V

    sub-int/2addr v3, v4

    add-int/2addr v2, v4

    if-lez v3, :cond_97

    iget-object v4, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v4, v1, v2, v3}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->write([BII)V

    :cond_97
    :goto_97
    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->onProgress:Lus/shandian/giga/io/ProgressReport;

    if-eqz v1, :cond_b9

    iget-object v1, v0, Lus/shandian/giga/io/CircularFileWriter;->out:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v1}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v1

    iget-object v3, v0, Lus/shandian/giga/io/CircularFileWriter;->aux:Lus/shandian/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v3}, Lus/shandian/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-wide v3, v0, Lus/shandian/giga/io/CircularFileWriter;->reportPosition:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_b9

    const-wide/32 v3, 0x10000

    add-long/2addr v3, v1

    iput-wide v3, v0, Lus/shandian/giga/io/CircularFileWriter;->reportPosition:J

    iget-object v3, v0, Lus/shandian/giga/io/CircularFileWriter;->onProgress:Lus/shandian/giga/io/ProgressReport;

    invoke-interface {v3, v1, v2}, Lus/shandian/giga/io/ProgressReport;->report(J)V

    :cond_b9
    return-void

    :cond_ba
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The reported offset is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
