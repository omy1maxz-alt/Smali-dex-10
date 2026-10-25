.class public Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;
.super Ljava/lang/Object;
.source "DesugarSeekableByteChannel.java"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# instance fields
.field private final fileChannel:Ljava/nio/channels/FileChannel;

.field private final openOptions:Ljava/util/Set;


# direct methods
.method private constructor <init>(Ljava/nio/channels/FileChannel;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    iput-object p2, p0, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->openOptions:Ljava/util/Set;

    return-void
.end method

.method public static create(Ljj$/nio/file/Path;Ljava/util/Set;)Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;
    .registers 5

    sget-object v0, Ljj$/nio/file/StandardOpenOption;->READ:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Ljj$/nio/file/StandardOpenOption;->APPEND:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_19

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "READ + APPEND not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_19
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->APPEND:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Ljj$/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_32

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "APPEND + TRUNCATE_EXISTING not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    :goto_32
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->APPEND:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p0}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_4f

    :cond_45
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p0}, Ljj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    :goto_4f
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-interface {p0}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->getFileAccessModeText(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_69
    new-instance v1, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$$ExternalSyntheticAPIConversion0;->m(Ljava/io/RandomAccessFile;)Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;-><init>(Ljava/nio/channels/FileChannel;Ljava/util/Set;)V

    return-object v1
.end method

.method private static getFileAccessModeText(Ljava/util/Set;)Ljava/lang/String;
    .registers 2

    sget-object v0, Ljj$/nio/file/StandardOpenOption;->WRITE:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "r"

    return-object v0

    :cond_b
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->SYNC:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "rws"

    return-object v0

    :cond_16
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->DSYNC:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "rwd"

    return-object v0

    :cond_21
    const-string v0, "rw"

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method public getFileChannel()Ljava/nio/channels/FileChannel;
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public position()J
    .registers 3

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 4

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 3

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public size()J
    .registers 3

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .registers 4

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 5

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->openOptions:Ljava/util/Set;

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->APPEND:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->size()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    :cond_15
    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarSeekableByteChannel;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method
