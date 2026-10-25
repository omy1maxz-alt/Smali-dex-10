.class Ljj$/nio/file/CopyMoveHelper;
.super Ljava/lang/Object;
.source "CopyMoveHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs convertMoveToCopyOptions([Ljj$/nio/file/CopyOption;)[Ljj$/nio/file/CopyOption;
    .registers 8

    array-length v0, p0

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljj$/nio/file/CopyOption;

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1c

    aget-object v3, p0, v2

    sget-object v4, Ljj$/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljj$/nio/file/StandardCopyOption;

    if-eq v3, v4, :cond_13

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    new-instance v4, Ljava/nio/file/AtomicMoveNotSupportedException;

    const-string v5, "Atomic move between providers is not supported"

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v5}, Ljava/nio/file/AtomicMoveNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_1c
    sget-object v2, Ljj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljj$/nio/file/LinkOption;

    aput-object v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    sget-object v3, Ljj$/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljj$/nio/file/StandardCopyOption;

    aput-object v3, v1, v2

    return-object v1
.end method

.method static varargs copyToForeignTarget(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)V
    .registers 10

    invoke-static {p2}, Ljj$/nio/file/CopyMoveHelper$CopyOptions;->parse([Ljj$/nio/file/CopyOption;)Ljj$/nio/file/CopyMoveHelper$CopyOptions;

    move-result-object v0

    iget-boolean v1, v0, Ljj$/nio/file/CopyMoveHelper$CopyOptions;->followLinks:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    new-array v1, v2, [Ljj$/nio/file/LinkOption;

    goto :goto_13

    :cond_c
    const/4 v1, 0x1

    new-array v1, v1, [Ljj$/nio/file/LinkOption;

    sget-object v3, Ljj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljj$/nio/file/LinkOption;

    aput-object v3, v1, v2

    :goto_13
    nop

    const-class v3, Ljj$/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v3, v1}, Ljj$/nio/file/Files;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v3

    invoke-interface {v3}, Ljj$/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v4

    if-nez v4, :cond_8b

    iget-boolean v4, v0, Ljj$/nio/file/CopyMoveHelper$CopyOptions;->replaceExisting:Z

    if-eqz v4, :cond_28

    invoke-static {p1}, Ljj$/nio/file/Files;->deleteIfExists(Ljj$/nio/file/Path;)Z

    goto :goto_30

    :cond_28
    new-array v4, v2, [Ljj$/nio/file/LinkOption;

    invoke-static {p1, v4}, Ljj$/nio/file/Files;->exists(Ljj$/nio/file/Path;[Ljj$/nio/file/LinkOption;)Z

    move-result v4

    if-nez v4, :cond_81

    :goto_30
    invoke-interface {v3}, Ljj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3c

    new-array v4, v2, [Ljj$/nio/file/attribute/FileAttribute;

    invoke-static {p1, v4}, Ljj$/nio/file/Files;->createDirectory(Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;

    goto :goto_4c

    :cond_3c
    new-array v4, v2, [Ljj$/nio/file/OpenOption;

    invoke-static {p0, v4}, Ljj$/nio/file/Files;->newInputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v4

    :try_start_42
    new-array v5, v2, [Ljj$/nio/file/CopyOption;

    invoke-static {v4, p1, v5}, Ljj$/nio/file/Files;->copy(Ljava/io/InputStream;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)J
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_75

    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_4c
    :goto_4c
    iget-boolean v4, v0, Ljj$/nio/file/CopyMoveHelper$CopyOptions;->copyAttributes:Z

    if-eqz v4, :cond_74

    const-class v4, Ljj$/nio/file/attribute/BasicFileAttributeView;

    new-array v2, v2, [Ljj$/nio/file/LinkOption;

    invoke-static {p1, v4, v2}, Ljj$/nio/file/Files;->getFileAttributeView(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/FileAttributeView;

    move-result-object v2

    check-cast v2, Ljj$/nio/file/attribute/BasicFileAttributeView;

    :try_start_5a
    invoke-interface {v3}, Ljj$/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljj$/nio/file/attribute/FileTime;

    move-result-object v4

    invoke-interface {v3}, Ljj$/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljj$/nio/file/attribute/FileTime;

    move-result-object v5

    invoke-interface {v3}, Ljj$/nio/file/attribute/BasicFileAttributes;->creationTime()Ljj$/nio/file/attribute/FileTime;

    move-result-object v6

    invoke-interface {v2, v4, v5, v6}, Ljj$/nio/file/attribute/BasicFileAttributeView;->setTimes(Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;)V
    :try_end_69
    .catchall {:try_start_5a .. :try_end_69} :catchall_6a

    goto :goto_74

    :catchall_6a
    move-exception v4

    :try_start_6b
    invoke-static {p1}, Ljj$/nio/file/Files;->delete(Ljj$/nio/file/Path;)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_73
    throw v4

    :cond_74
    :goto_74
    return-void

    :catchall_75
    move-exception v2

    if-eqz v4, :cond_80

    :try_start_78
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_80

    :catchall_7c
    move-exception v5

    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_80
    :goto_80
    throw v2

    :cond_81
    new-instance v2, Ljava/nio/file/FileAlreadyExistsException;

    invoke-interface {p1}, Ljj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8b
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Copying of symbolic links not supported"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static varargs moveToForeignTarget(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)V
    .registers 4

    invoke-static {p2}, Ljj$/nio/file/CopyMoveHelper;->convertMoveToCopyOptions([Ljj$/nio/file/CopyOption;)[Ljj$/nio/file/CopyOption;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljj$/nio/file/CopyMoveHelper;->copyToForeignTarget(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)V

    invoke-static {p0}, Ljj$/nio/file/Files;->delete(Ljj$/nio/file/Path;)V

    return-void
.end method
