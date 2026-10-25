.class public Ljj$/desugar/sun/nio/fs/DesugarFileChannel;
.super Ljava/lang/Object;
.source "DesugarFileChannel.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFileAccessModeText(Ljava/util/Set;)Ljava/lang/String;
    .registers 2

    sget-object v0, Ljj$/nio/file/StandardOpenOption;->WRITE:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Ljj$/nio/file/StandardOpenOption;->APPEND:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "r"

    return-object v0

    :cond_13
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->SYNC:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "rws"

    return-object v0

    :cond_1e
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->DSYNC:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "rwd"

    return-object v0

    :cond_29
    const-string v0, "rw"

    return-object v0
.end method

.method public static varargs openEmulatedFileChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .registers 6

    invoke-static {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel;->validateOpenOptions(Ljj$/nio/file/Path;Ljava/util/Set;)V

    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-interface {p0}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-static {p1}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel;->getFileAccessModeText(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->WRITE:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_25
    sget-object v1, Ljj$/nio/file/StandardOpenOption;->APPEND:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$$ExternalSyntheticAPIConversion0;->m(Ljava/io/RandomAccessFile;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    return-object v1

    :cond_3a
    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$$ExternalSyntheticAPIConversion0;->m(Ljava/io/RandomAccessFile;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-static {v1, p1, p0}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->withExtraOptions(Ljava/nio/channels/FileChannel;Ljava/util/Set;Ljj$/nio/file/Path;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    return-object v1
.end method

.method private static validateOpenOptions(Ljj$/nio/file/Path;Ljava/util/Set;)V
    .registers 4

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/nio/file/OpenOption;

    if-eqz v1, :cond_13

    goto :goto_4

    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_19
    invoke-interface {p0}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3e

    sget-object v0, Ljj$/nio/file/StandardOpenOption;->CREATE_NEW:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    sget-object v0, Ljj$/nio/file/StandardOpenOption;->WRITE:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_59

    :cond_34
    new-instance v0, Ljava/nio/file/FileAlreadyExistsException;

    invoke-interface {p0}, Ljj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->CREATE:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    sget-object v0, Ljj$/nio/file/StandardOpenOption;->CREATE_NEW:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_59

    :cond_4f
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p0}, Ljj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    :goto_59
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->READ:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    sget-object v0, Ljj$/nio/file/StandardOpenOption;->APPEND:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_72

    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "READ + APPEND not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    :goto_72
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->APPEND:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    sget-object v0, Ljj$/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljj$/nio/file/StandardOpenOption;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto :goto_8b

    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "APPEND + TRUNCATE_EXISTING not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    :goto_8b
    return-void
.end method

.method public static wrap(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;
    .registers 2

    invoke-static {p0}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel$WrappedFileChannel;->wrap(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method
