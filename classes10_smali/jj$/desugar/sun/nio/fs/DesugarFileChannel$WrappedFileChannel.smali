.class Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;
.super Ljava/nio/channels/FileChannel;
.source "DesugarFileChannel.java"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# instance fields
.field final appendMode:Z

.field final delegate:Ljava/nio/channels/FileChannel;

.field final deleteOnClose:Z

.field final path:Ljj$/nio/file/Path;


# direct methods
.method private constructor <init>(Ljava/nio/channels/FileChannel;ZZLjj$/nio/file/Path;)V
    .registers 6

    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    iput-object p1, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    iput-boolean p2, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->deleteOnClose:Z

    iput-boolean p3, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->appendMode:Z

    if-eqz p2, :cond_d

    move-object v0, p4

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->path:Ljj$/nio/file/Path;

    return-void
.end method

.method public static withExtraOptions(Ljava/nio/channels/FileChannel;Ljava/util/Set;Ljj$/nio/file/Path;)Ljava/nio/channels/FileChannel;
    .registers 7

    instance-of v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;

    iget-object v0, v0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    goto :goto_b

    :cond_a
    move-object v0, p0

    :goto_b
    new-instance v1, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;

    sget-object v2, Ljj$/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Ljj$/nio/file/StandardOpenOption;->APPEND:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v1, v0, v2, v3, p2}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;-><init>(Ljava/nio/channels/FileChannel;ZZLjj$/nio/file/Path;)V

    return-object v1
.end method

.method public static wrap(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;
    .registers 4

    instance-of v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v2, v1}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;-><init>(Ljava/nio/channels/FileChannel;ZZLjj$/nio/file/Path;)V

    return-object v0
.end method

.method private wrapLock(Ljava/nio/channels/FileLock;)Ljava/nio/channels/FileLock;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannelFileLock;

    invoke-direct {v0, p1, p0}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannelFileLock;-><init>(Ljava/nio/channels/FileLock;Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;)V

    return-object v0
.end method


# virtual methods
.method public force(Z)V
    .registers 3

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method

.method public implCloseChannel()V
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    iget-boolean v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->deleteOnClose:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->path:Ljj$/nio/file/Path;

    invoke-interface {v0}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_12
    return-void
.end method

.method public lock(JJZ)Ljava/nio/channels/FileLock;
    .registers 12

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1

    invoke-direct {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->wrapLock(Ljava/nio/channels/FileLock;)Ljava/nio/channels/FileLock;

    move-result-object p1

    return-object p1
.end method

.method public map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .registers 12

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public position()J
    .registers 3

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .registers 4

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->wrap(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 3

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .registers 5

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 6

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public size()J
    .registers 3

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .registers 12

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .registers 12

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide p1

    return-wide p1
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .registers 4

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->wrap(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public tryLock(JJZ)Ljava/nio/channels/FileLock;
    .registers 12

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1

    invoke-direct {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->wrapLock(Ljava/nio/channels/FileLock;)Ljava/nio/channels/FileLock;

    move-result-object p1

    return-object p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 5

    iget-boolean v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->appendMode:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->size()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .registers 5

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .registers 6

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->delegate:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write([Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    return-wide v0
.end method
