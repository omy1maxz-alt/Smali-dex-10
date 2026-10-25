.class public final Ljj$/nio/file/Files;
.super Ljava/lang/Object;
.source "Files.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_CREATE_OPTIONS:Ljava/util/Set;

.field private static final MAX_BUFFER_SIZE:I = 0x7ffffff7


# direct methods
.method static constructor <clinit>()V
    .registers 2

    nop

    sget-object v0, Ljj$/nio/file/StandardOpenOption;->CREATE_NEW:Ljj$/nio/file/StandardOpenOption;

    sget-object v1, Ljj$/nio/file/StandardOpenOption;->WRITE:Ljj$/nio/file/StandardOpenOption;

    invoke-static {v0, v1}, Ljj$/nio/file/Files$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljj$/nio/file/Files;->DEFAULT_CREATE_OPTIONS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static asUncheckedRunnable(Ljava/io/Closeable;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Ljj$/nio/file/Files$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ljj$/nio/file/Files$$ExternalSyntheticLambda1;-><init>(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static varargs copy(Ljava/io/InputStream;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)J
    .registers 9

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v1, :cond_36

    aget-object v4, p2, v3

    sget-object v5, Ljj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljj$/nio/file/StandardCopyOption;

    if-ne v4, v5, :cond_13

    const/4 v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_13
    if-nez v4, :cond_1d

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "options contains \'null\'"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_36
    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    :try_start_39
    invoke-static {p1}, Ljj$/nio/file/Files;->deleteIfExists(Ljj$/nio/file/Path;)Z
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_3f

    :catch_3d
    move-exception v3

    move-object v1, v3

    :cond_3f
    :goto_3f
    const/4 v3, 0x2

    :try_start_40
    new-array v3, v3, [Ljj$/nio/file/OpenOption;

    sget-object v4, Ljj$/nio/file/StandardOpenOption;->CREATE_NEW:Ljj$/nio/file/StandardOpenOption;

    aput-object v4, v3, v2

    sget-object v2, Ljj$/nio/file/StandardOpenOption;->WRITE:Ljj$/nio/file/StandardOpenOption;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p1, v3}, Ljj$/nio/file/Files;->newOutputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_4f
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_40 .. :try_end_4f} :catch_67

    nop

    move-object v3, v2

    :try_start_51
    invoke-static {p0, v3}, Ljj$/io/InputStreamRetargetClass;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v4
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_5b

    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_5a
    return-wide v4

    :catchall_5b
    move-exception v4

    if-eqz v3, :cond_66

    :try_start_5e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    :catchall_62
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_66
    :goto_66
    throw v4

    :catch_67
    move-exception v2

    if-eqz v1, :cond_6b

    throw v1

    :cond_6b
    throw v2
.end method

.method public static copy(Ljj$/nio/file/Path;Ljava/io/OutputStream;)J
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [Ljj$/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljj$/nio/file/Files;->newInputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    :try_start_a
    invoke-static {v0, p1}, Ljj$/io/InputStreamRetargetClass;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_14

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_13
    return-wide v1

    :catchall_14
    move-exception v1

    if-eqz v0, :cond_1f

    :try_start_17
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    throw v1
.end method

.method public static varargs copy(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)Ljj$/nio/file/Path;
    .registers 5

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-static {p1}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0, p0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->copy(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)V

    goto :goto_15

    :cond_12
    invoke-static {p0, p1, p2}, Ljj$/nio/file/CopyMoveHelper;->copyToForeignTarget(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)V

    :goto_15
    return-object p1
.end method

.method private static varargs createAndCheckIsDirectory(Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)V
    .registers 6

    :try_start_0
    invoke-static {p0, p1}, Ljj$/nio/file/Files;->createDirectory(Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;
    :try_end_3
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_13

    :catch_4
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljj$/nio/file/LinkOption;

    const/4 v2, 0x0

    sget-object v3, Ljj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljj$/nio/file/LinkOption;

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Ljj$/nio/file/Files;->isDirectory(Ljj$/nio/file/Path;[Ljj$/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_13
    return-void

    :cond_14
    throw v0
.end method

.method private static createBufferedReaderLinesStream(Ljava/io/BufferedReader;)Ljj$/util/stream/Stream;
    .registers 4

    :try_start_0
    invoke-static {p0}, Ljj$/io/BufferedReaderRetargetClass;->lines(Ljava/io/BufferedReader;)Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-static {p0}, Ljj$/nio/file/Files;->asUncheckedRunnable(Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Stream;
    :try_end_e
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_e} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    goto :goto_12

    :catch_11
    move-exception v0

    :goto_12
    :try_start_12
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v1

    :try_start_17
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1c

    :catchall_1b
    move-exception v2

    :goto_1c
    throw v0
.end method

.method public static varargs createDirectories(Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;
    .registers 8

    :try_start_0
    invoke-static {p0, p1}, Ljj$/nio/file/Files;->createAndCheckIsDirectory(Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)V
    :try_end_3
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_3} :catch_55
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    return-object p0

    :catch_4
    move-exception v0

    const/4 v0, 0x0

    :try_start_6
    invoke-interface {p0}, Ljj$/nio/file/Path;->toAbsolutePath()Ljj$/nio/file/Path;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_a} :catch_c

    move-object p0, v1

    goto :goto_e

    :catch_c
    move-exception v1

    move-object v0, v1

    :goto_e
    invoke-interface {p0}, Ljj$/nio/file/Path;->getParent()Ljj$/nio/file/Path;

    move-result-object v1

    :goto_12
    if-eqz v1, :cond_25

    :try_start_14
    invoke-static {v1}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljj$/nio/file/AccessMode;

    invoke-virtual {v2, v1, v3}, Ljj$/nio/file/spi/FileSystemProvider;->checkAccess(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)V
    :try_end_1e
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception v2

    invoke-interface {v1}, Ljj$/nio/file/Path;->getParent()Ljj$/nio/file/Path;

    move-result-object v1

    goto :goto_12

    :cond_25
    :goto_25
    if-nez v1, :cond_37

    if-nez v0, :cond_36

    new-instance v2, Ljava/nio/file/FileSystemException;

    invoke-interface {p0}, Ljj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "Unable to determine if root directory exists"

    invoke-direct {v2, v3, v4, v5}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_36
    throw v0

    :cond_37
    move-object v2, v1

    invoke-interface {v1, p0}, Ljj$/nio/file/Path;->relativize(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljj$/nio/file/Path;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljj$/nio/file/Path;

    invoke-interface {v2, v4}, Ljj$/nio/file/Path;->resolve(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object v2

    invoke-static {v2, p1}, Ljj$/nio/file/Files;->createAndCheckIsDirectory(Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)V

    goto :goto_40

    :cond_54
    return-object p0

    :catch_55
    move-exception v0

    throw v0
.end method

.method public static varargs createDirectory(Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;
    .registers 3

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->createDirectory(Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)V

    return-object p0
.end method

.method public static varargs createFile(Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;
    .registers 3

    sget-object v0, Ljj$/nio/file/Files;->DEFAULT_CREATE_OPTIONS:Ljava/util/Set;

    invoke-static {p0, v0, p1}, Ljj$/nio/file/Files;->newByteChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    return-object p0
.end method

.method private static createFileChannelLinesStream(Ljava/nio/channels/FileChannel;Ljava/nio/charset/Charset;)Ljj$/util/stream/Stream;
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_27

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_27

    new-instance v2, Ljj$/nio/file/FileChannelLinesSpliterator;

    long-to-int v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4, v3}, Ljj$/nio/file/FileChannelLinesSpliterator;-><init>(Ljava/nio/channels/FileChannel;Ljava/nio/charset/Charset;II)V

    invoke-static {v2, v4}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v3

    invoke-static {p0}, Ljj$/nio/file/Files;->asUncheckedRunnable(Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v3

    check-cast v3, Ljj$/util/stream/Stream;
    :try_end_26
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_26} :catch_2e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_26} :catch_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_2a

    return-object v3

    :cond_27
    nop

    const/4 v0, 0x0

    return-object v0

    :catch_2a
    move-exception v0

    goto :goto_2f

    :catch_2c
    move-exception v0

    goto :goto_2f

    :catch_2e
    move-exception v0

    :goto_2f
    :try_start_2f
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_39

    :catch_33
    move-exception v1

    :try_start_34
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_39

    :catchall_38
    move-exception v2

    :goto_39
    throw v0
.end method

.method public static createLink(Ljj$/nio/file/Path;Ljj$/nio/file/Path;)Ljj$/nio/file/Path;
    .registers 3

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->createLink(Ljj$/nio/file/Path;Ljj$/nio/file/Path;)V

    return-object p0
.end method

.method public static varargs createSymbolicLink(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;
    .registers 4

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->createSymbolicLink(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)V

    return-object p0
.end method

.method public static varargs createTempDirectory(Ljava/lang/String;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljj$/nio/file/TempFileHelper;->createTempDirectory(Ljj$/nio/file/Path;Ljava/lang/String;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createTempDirectory(Ljj$/nio/file/Path;Ljava/lang/String;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;
    .registers 4

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/Path;

    invoke-static {v0, p1, p2}, Ljj$/nio/file/TempFileHelper;->createTempDirectory(Ljj$/nio/file/Path;Ljava/lang/String;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Ljj$/nio/file/TempFileHelper;->createTempFile(Ljj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createTempFile(Ljj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/Path;

    invoke-static {v0, p1, p2, p3}, Ljj$/nio/file/TempFileHelper;->createTempFile(Ljj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Ljj$/nio/file/Path;)V
    .registers 2

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljj$/nio/file/spi/FileSystemProvider;->delete(Ljj$/nio/file/Path;)V

    return-void
.end method

.method public static deleteIfExists(Ljj$/nio/file/Path;)Z
    .registers 2

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljj$/nio/file/spi/FileSystemProvider;->deleteIfExists(Ljj$/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static varargs exists(Ljj$/nio/file/Path;[Ljj$/nio/file/LinkOption;)Z
    .registers 7

    array-length v0, p1

    if-nez v0, :cond_13

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    instance-of v1, v0, Ljj$/sun/nio/fs/AbstractFileSystemProvider;

    if-eqz v1, :cond_13

    move-object v1, v0

    check-cast v1, Ljj$/sun/nio/fs/AbstractFileSystemProvider;

    invoke-virtual {v1, p0}, Ljj$/sun/nio/fs/AbstractFileSystemProvider;->exists(Ljj$/nio/file/Path;)Z

    move-result v1

    return v1

    :cond_13
    const/4 v0, 0x0

    :try_start_14
    invoke-static {p1}, Ljj$/nio/file/Files;->followLinks([Ljj$/nio/file/LinkOption;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v1

    new-array v3, v0, [Ljj$/nio/file/AccessMode;

    invoke-virtual {v1, p0, v3}, Ljj$/nio/file/spi/FileSystemProvider;->checkAccess(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)V

    goto :goto_30

    :cond_25
    const-class v1, Ljj$/nio/file/attribute/BasicFileAttributes;

    new-array v3, v2, [Ljj$/nio/file/LinkOption;

    sget-object v4, Ljj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljj$/nio/file/LinkOption;

    aput-object v4, v3, v0

    invoke-static {p0, v1, v3}, Ljj$/nio/file/Files;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_30} :catch_31

    :goto_30
    return v2

    :catch_31
    move-exception v1

    return v0
.end method

.method public static varargs find(Ljj$/nio/file/Path;ILjava/util/function/BiPredicate;[Ljj$/nio/file/FileVisitOption;)Ljj$/util/stream/Stream;
    .registers 8

    new-instance v0, Ljj$/nio/file/FileTreeIterator;

    invoke-direct {v0, p0, p1, p3}, Ljj$/nio/file/FileTreeIterator;-><init>(Ljj$/nio/file/Path;I[Ljj$/nio/file/FileVisitOption;)V

    nop

    const/4 v1, 0x1

    :try_start_7
    invoke-static {v0, v1}, Ljj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljj$/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v2

    invoke-static {v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljj$/nio/file/Files$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Ljj$/nio/file/Files$$ExternalSyntheticLambda2;-><init>(Ljj$/nio/file/FileTreeIterator;)V

    invoke-interface {v2, v3}, Ljj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljj$/util/stream/Stream;

    new-instance v3, Ljj$/nio/file/Files$$ExternalSyntheticLambda3;

    invoke-direct {v3, p2}, Ljj$/nio/file/Files$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/BiPredicate;)V

    invoke-interface {v2, v3}, Ljj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Ljj$/nio/file/Files$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Ljj$/nio/file/Files$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v2, v3}, Ljj$/util/stream/Stream;->map(Ljava/util/function/Function;)Ljj$/util/stream/Stream;

    move-result-object v2
    :try_end_30
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_30} :catch_33
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_30} :catch_31

    return-object v2

    :catch_31
    move-exception v1

    goto :goto_34

    :catch_33
    move-exception v1

    :goto_34
    invoke-virtual {v0}, Ljj$/nio/file/FileTreeIterator;->close()V

    throw v1
.end method

.method private static varargs followLinks([Ljj$/nio/file/LinkOption;)Z
    .registers 6

    const/4 v0, 0x1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_20

    aget-object v3, p0, v2

    sget-object v4, Ljj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljj$/nio/file/LinkOption;

    if-ne v3, v4, :cond_10

    const/4 v0, 0x0

    nop

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_10
    if-nez v3, :cond_18

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_18
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Should not get here"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_20
    return v0
.end method

.method public static varargs getAttribute(Ljj$/nio/file/Path;Ljava/lang/String;[Ljj$/nio/file/LinkOption;)Ljava/lang/Object;
    .registers 7

    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_34

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_34

    invoke-static {p0, p1, p2}, Ljj$/nio/file/Files;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/String;[Ljj$/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object v0

    nop

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_20

    move-object v2, p1

    goto :goto_2f

    :cond_20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_29

    const-string v2, ""

    goto :goto_2f

    :cond_29
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_2f
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs getFileAttributeView(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/FileAttributeView;
    .registers 4

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->getFileAttributeView(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/FileAttributeView;

    move-result-object v0

    return-object v0
.end method

.method public static getFileStore(Ljj$/nio/file/Path;)Ljj$/nio/file/FileStore;
    .registers 2

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljj$/nio/file/spi/FileSystemProvider;->getFileStore(Ljj$/nio/file/Path;)Ljj$/nio/file/FileStore;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getLastModifiedTime(Ljj$/nio/file/Path;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/FileTime;
    .registers 3

    const-class v0, Ljj$/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v0, p1}, Ljj$/nio/file/Files;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljj$/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljj$/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getOwner(Ljj$/nio/file/Path;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/UserPrincipal;
    .registers 4

    const-class v0, Ljj$/nio/file/attribute/FileOwnerAttributeView;

    invoke-static {p0, v0, p1}, Ljj$/nio/file/Files;->getFileAttributeView(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/attribute/FileOwnerAttributeView;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljj$/nio/file/attribute/FileOwnerAttributeView;->getOwner()Ljj$/nio/file/attribute/UserPrincipal;

    move-result-object v1

    return-object v1

    :cond_f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public static varargs getPosixFilePermissions(Ljj$/nio/file/Path;[Ljj$/nio/file/LinkOption;)Ljava/util/Set;
    .registers 3

    const-class v0, Ljj$/nio/file/attribute/PosixFileAttributes;

    invoke-static {p0, v0, p1}, Ljj$/nio/file/Files;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljj$/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static varargs isAccessible(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)Z
    .registers 4

    :try_start_0
    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->checkAccess(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    const/4 v0, 0x1

    return v0

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public static varargs isDirectory(Ljj$/nio/file/Path;[Ljj$/nio/file/LinkOption;)Z
    .registers 4

    array-length v0, p1

    if-nez v0, :cond_13

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    instance-of v1, v0, Ljj$/sun/nio/fs/AbstractFileSystemProvider;

    if-eqz v1, :cond_13

    move-object v1, v0

    check-cast v1, Ljj$/sun/nio/fs/AbstractFileSystemProvider;

    invoke-virtual {v1, p0}, Ljj$/sun/nio/fs/AbstractFileSystemProvider;->isDirectory(Ljj$/nio/file/Path;)Z

    move-result v1

    return v1

    :cond_13
    :try_start_13
    const-class v0, Ljj$/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v0, p1}, Ljj$/nio/file/Files;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1d} :catch_1e

    return v0

    :catch_1e
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public static isExecutable(Ljj$/nio/file/Path;)Z
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljj$/nio/file/AccessMode;

    const/4 v1, 0x0

    sget-object v2, Ljj$/nio/file/AccessMode;->EXECUTE:Ljj$/nio/file/AccessMode;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Ljj$/nio/file/Files;->isAccessible(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)Z

    move-result v0

    return v0
.end method

.method public static isHidden(Ljj$/nio/file/Path;)Z
    .registers 2

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljj$/nio/file/spi/FileSystemProvider;->isHidden(Ljj$/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static isReadable(Ljj$/nio/file/Path;)Z
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljj$/nio/file/AccessMode;

    const/4 v1, 0x0

    sget-object v2, Ljj$/nio/file/AccessMode;->READ:Ljj$/nio/file/AccessMode;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Ljj$/nio/file/Files;->isAccessible(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)Z

    move-result v0

    return v0
.end method

.method public static varargs isRegularFile(Ljj$/nio/file/Path;[Ljj$/nio/file/LinkOption;)Z
    .registers 4

    array-length v0, p1

    if-nez v0, :cond_13

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    instance-of v1, v0, Ljj$/sun/nio/fs/AbstractFileSystemProvider;

    if-eqz v1, :cond_13

    move-object v1, v0

    check-cast v1, Ljj$/sun/nio/fs/AbstractFileSystemProvider;

    invoke-virtual {v1, p0}, Ljj$/sun/nio/fs/AbstractFileSystemProvider;->isRegularFile(Ljj$/nio/file/Path;)Z

    move-result v1

    return v1

    :cond_13
    :try_start_13
    const-class v0, Ljj$/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v0, p1}, Ljj$/nio/file/Files;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljj$/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1d} :catch_1e

    return v0

    :catch_1e
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public static isSameFile(Ljj$/nio/file/Path;Ljj$/nio/file/Path;)Z
    .registers 3

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->isSameFile(Ljj$/nio/file/Path;Ljj$/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static isSymbolicLink(Ljj$/nio/file/Path;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Ljj$/nio/file/attribute/BasicFileAttributes;

    const/4 v2, 0x1

    new-array v2, v2, [Ljj$/nio/file/LinkOption;

    sget-object v3, Ljj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljj$/nio/file/LinkOption;

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Ljj$/nio/file/Files;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-interface {v1}, Ljj$/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v1

    return v0
.end method

.method public static isWritable(Ljj$/nio/file/Path;)Z
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljj$/nio/file/AccessMode;

    const/4 v1, 0x0

    sget-object v2, Ljj$/nio/file/AccessMode;->WRITE:Ljj$/nio/file/AccessMode;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Ljj$/nio/file/Files;->isAccessible(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$asUncheckedRunnable$0(Ljava/io/Closeable;)V
    .registers 3

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    nop

    return-void

    :catch_5
    move-exception v0

    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method static synthetic lambda$find$2(Ljava/util/function/BiPredicate;Ljj$/nio/file/FileTreeWalker$Event;)Z
    .registers 4

    invoke-virtual {p1}, Ljj$/nio/file/FileTreeWalker$Event;->file()Ljj$/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1}, Ljj$/nio/file/FileTreeWalker$Event;->attributes()Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$find$3(Ljj$/nio/file/FileTreeWalker$Event;)Ljj$/nio/file/Path;
    .registers 2

    invoke-virtual {p0}, Ljj$/nio/file/FileTreeWalker$Event;->file()Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$walk$1(Ljj$/nio/file/FileTreeWalker$Event;)Ljj$/nio/file/Path;
    .registers 2

    invoke-virtual {p0}, Ljj$/nio/file/FileTreeWalker$Event;->file()Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static lines(Ljj$/nio/file/Path;)Ljj$/util/stream/Stream;
    .registers 2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Ljj$/nio/file/Files;->lines(Ljj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static lines(Ljj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljj$/util/stream/Stream;
    .registers 5

    invoke-interface {p0}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v0

    invoke-static {}, Ljj$/nio/file/FileSystems;->getDefault()Ljj$/nio/file/FileSystem;

    move-result-object v1

    if-ne v0, v1, :cond_2c

    sget-object v0, Ljj$/nio/file/FileChannelLinesSpliterator;->SUPPORTED_CHARSET_NAMES:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    new-array v0, v0, [Ljj$/nio/file/OpenOption;

    const/4 v1, 0x0

    sget-object v2, Ljj$/nio/file/StandardOpenOption;->READ:Ljj$/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Ljj$/nio/channels/DesugarChannels;->open(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0, p1}, Ljj$/nio/file/Files;->createFileChannelLinesStream(Ljava/nio/channels/FileChannel;Ljava/nio/charset/Charset;)Ljj$/util/stream/Stream;

    move-result-object v1

    if-eqz v1, :cond_29

    return-object v1

    :cond_29
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2c
    invoke-static {p0, p1}, Ljj$/nio/file/Files;->newBufferedReader(Ljj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/Files;->createBufferedReaderLinesStream(Ljava/io/BufferedReader;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljj$/nio/file/Path;)Ljj$/util/stream/Stream;
    .registers 7

    invoke-static {p0}, Ljj$/nio/file/Files;->newDirectoryStream(Ljj$/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    :try_start_4
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljj$/nio/file/Files$2;

    invoke-direct {v2, v1}, Ljj$/nio/file/Files$2;-><init>(Ljava/util/Iterator;)V

    nop

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljj$/util/Spliterator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v4

    invoke-static {v0}, Ljj$/nio/file/Files;->asUncheckedRunnable(Ljava/io/Closeable;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-interface {v4, v5}, Ljj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v4

    check-cast v4, Ljj$/util/stream/Stream;
    :try_end_22
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_22} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_22} :catch_23

    return-object v4

    :catch_23
    move-exception v1

    goto :goto_26

    :catch_25
    move-exception v1

    :goto_26
    :try_start_26
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_31

    :catch_2a
    move-exception v2

    :try_start_2b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    :goto_2e
    goto :goto_31

    :catchall_2f
    move-exception v3

    goto :goto_2e

    :goto_31
    throw v1
.end method

.method public static varargs move(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)Ljj$/nio/file/Path;
    .registers 5

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-static {p1}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0, p0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->move(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)V

    goto :goto_15

    :cond_12
    invoke-static {p0, p1, p2}, Ljj$/nio/file/CopyMoveHelper;->moveToForeignTarget(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)V

    :goto_15
    return-object p1
.end method

.method public static newBufferedReader(Ljj$/nio/file/Path;)Ljava/io/BufferedReader;
    .registers 2

    sget-object v0, Ljj$/sun/nio/cs/UTF_8;->INSTANCE:Ljj$/sun/nio/cs/UTF_8;

    invoke-static {p0, v0}, Ljj$/nio/file/Files;->newBufferedReader(Ljj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public static newBufferedReader(Ljj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    .registers 5

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljj$/nio/file/OpenOption;

    invoke-static {p0, v2}, Ljj$/nio/file/Files;->newInputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v2
.end method

.method public static varargs newBufferedWriter(Ljj$/nio/file/Path;Ljava/nio/charset/Charset;[Ljj$/nio/file/OpenOption;)Ljava/io/BufferedWriter;
    .registers 6

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {p0, p2}, Ljj$/nio/file/Files;->newOutputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V

    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v2
.end method

.method public static varargs newBufferedWriter(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/BufferedWriter;
    .registers 3

    sget-object v0, Ljj$/sun/nio/cs/UTF_8;->INSTANCE:Ljj$/sun/nio/cs/UTF_8;

    invoke-static {p0, v0, p1}, Ljj$/nio/file/Files;->newBufferedWriter(Ljj$/nio/file/Path;Ljava/nio/charset/Charset;[Ljj$/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newByteChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .registers 4

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->newByteChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newByteChannel(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;
    .registers 4

    array-length v0, p1

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_10

    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_10
    const/4 v1, 0x0

    new-array v1, v1, [Ljj$/nio/file/attribute/FileAttribute;

    invoke-static {p0, v0, v1}, Ljj$/nio/file/Files;->newByteChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    return-object v1
.end method

.method public static newDirectoryStream(Ljj$/nio/file/Path;)Ljava/nio/file/DirectoryStream;
    .registers 3

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    sget-object v1, Ljj$/nio/file/Files$AcceptAllFilter;->FILTER:Ljj$/nio/file/Files$AcceptAllFilter;

    invoke-virtual {v0, p0, v1}, Ljj$/nio/file/spi/FileSystemProvider;->newDirectoryStream(Ljj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    return-object v0
.end method

.method public static newDirectoryStream(Ljj$/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;
    .registers 6

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p0}, Ljj$/nio/file/Files;->newDirectoryStream(Ljj$/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-interface {p0}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glob:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj$/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljj$/nio/file/PathMatcher;

    move-result-object v1

    new-instance v2, Ljj$/nio/file/Files$1;

    invoke-direct {v2, v1}, Ljj$/nio/file/Files$1;-><init>(Ljj$/nio/file/PathMatcher;)V

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->provider()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Ljj$/nio/file/spi/FileSystemProvider;->newDirectoryStream(Ljj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v3

    return-object v3
.end method

.method public static newDirectoryStream(Ljj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .registers 3

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->newDirectoryStream(Ljj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newInputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/InputStream;
    .registers 3

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->newInputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newOutputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/OutputStream;
    .registers 3

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->newOutputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs notExists(Ljj$/nio/file/Path;[Ljj$/nio/file/LinkOption;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p1}, Ljj$/nio/file/Files;->followLinks([Ljj$/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v2

    new-array v3, v1, [Ljj$/nio/file/AccessMode;

    invoke-virtual {v2, p0, v3}, Ljj$/nio/file/spi/FileSystemProvider;->checkAccess(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)V

    goto :goto_1d

    :cond_12
    const-class v2, Ljj$/nio/file/attribute/BasicFileAttributes;

    new-array v3, v0, [Ljj$/nio/file/LinkOption;

    sget-object v4, Ljj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljj$/nio/file/LinkOption;

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Ljj$/nio/file/Files;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;
    :try_end_1d
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2 .. :try_end_1d} :catch_20
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1d} :catch_1e

    :goto_1d
    return v1

    :catch_1e
    move-exception v0

    return v1

    :catch_20
    move-exception v1

    return v0
.end method

.method public static probeContentType(Ljj$/nio/file/Path;)Ljava/lang/String;
    .registers 4

    sget-object v0, Ljj$/nio/file/Files$FileTypeDetectors;->installedDetectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/nio/file/spi/FileTypeDetector;

    invoke-virtual {v1, p0}, Ljj$/nio/file/spi/FileTypeDetector;->probeContentType(Ljj$/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    return-object v2

    :cond_19
    goto :goto_6

    :cond_1a
    sget-object v0, Ljj$/nio/file/Files$FileTypeDetectors;->defaultFileTypeDetector:Ljj$/nio/file/spi/FileTypeDetector;

    invoke-virtual {v0, p0}, Ljj$/nio/file/spi/FileTypeDetector;->probeContentType(Ljj$/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;
    .registers 2

    invoke-interface {p0}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->provider()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method private static read(Ljava/io/InputStream;I)[B
    .registers 8

    move v0, p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_4
    sub-int v3, v0, v2

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v4, v3

    if-lez v3, :cond_f

    add-int/2addr v2, v4

    goto :goto_4

    :cond_f
    if-ltz v4, :cond_41

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    move v4, v3

    if-gez v3, :cond_19

    goto :goto_41

    :cond_19
    const v3, 0x7ffffff7

    sub-int v5, v3, v0

    if-gt v0, v5, :cond_29

    shl-int/lit8 v3, v0, 0x1

    const/16 v5, 0x2000

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2e

    :cond_29
    if-eq v0, v3, :cond_39

    const v0, 0x7ffffff7

    :goto_2e
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    int-to-byte v5, v4

    aput-byte v5, v1, v2

    move v2, v3

    goto :goto_4

    :cond_39
    new-instance v3, Ljava/lang/OutOfMemoryError;

    const-string v5, "Required array size too large"

    invoke-direct {v3, v5}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_41
    :goto_41
    if-ne v0, v2, :cond_45

    move-object v3, v1

    goto :goto_49

    :cond_45
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    :goto_49
    return-object v3
.end method

.method public static readAllBytes(Ljj$/nio/file/Path;)[B
    .registers 8

    const/4 v0, 0x0

    new-array v0, v0, [Ljj$/nio/file/OpenOption;

    invoke-static {p0, v0}, Ljj$/nio/file/Files;->newByteChannel(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    :try_start_7
    invoke-static {v0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_3a

    :try_start_b
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v2

    const-wide/32 v4, 0x7ffffff7

    cmp-long v6, v2, v4

    if-gtz v6, :cond_26

    long-to-int v4, v2

    invoke-static {v1, v4}, Ljj$/nio/file/Files;->read(Ljava/io/InputStream;I)[B

    move-result-object v4
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_2e

    if-eqz v1, :cond_20

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_3a

    :cond_20
    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    :cond_25
    return-object v4

    :cond_26
    :try_start_26
    new-instance v4, Ljava/lang/OutOfMemoryError;

    const-string v5, "Required array size too large"

    invoke-direct {v4, v5}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v2

    if-eqz v1, :cond_39

    :try_start_31
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v3

    :try_start_36
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_39
    :goto_39
    throw v2
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception v1

    if-eqz v0, :cond_45

    :try_start_3d
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    throw v1
.end method

.method public static readAllLines(Ljj$/nio/file/Path;)Ljava/util/List;
    .registers 2

    sget-object v0, Ljj$/sun/nio/cs/UTF_8;->INSTANCE:Ljj$/sun/nio/cs/UTF_8;

    invoke-static {p0, v0}, Ljj$/nio/file/Files;->readAllLines(Ljj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readAllLines(Ljj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;
    .registers 5

    invoke-static {p0, p1}, Ljj$/nio/file/Files;->newBufferedReader(Ljj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_1c

    if-nez v2, :cond_17

    nop

    nop

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_16
    return-object v1

    :cond_17
    :try_start_17
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    nop

    goto :goto_9

    :catchall_1c
    move-exception v1

    if-eqz v0, :cond_27

    :try_start_1f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    throw v1
.end method

.method public static varargs readAttributes(Ljj$/nio/file/Path;Ljava/lang/String;[Ljj$/nio/file/LinkOption;)Ljava/util/Map;
    .registers 4

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/String;[Ljj$/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static varargs readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;
    .registers 4

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static readString(Ljj$/nio/file/Path;)Ljava/lang/String;
    .registers 2

    sget-object v0, Ljj$/sun/nio/cs/UTF_8;->INSTANCE:Ljj$/sun/nio/cs/UTF_8;

    invoke-static {p0, v0}, Ljj$/nio/file/Files;->readString(Ljj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readString(Ljj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljj$/nio/file/Files;->readAllBytes(Ljj$/nio/file/Path;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static readSymbolicLink(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;
    .registers 2

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljj$/nio/file/spi/FileSystemProvider;->readSymbolicLink(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs setAttribute(Ljj$/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/Path;
    .registers 5

    invoke-static {p0}, Ljj$/nio/file/Files;->provider(Ljj$/nio/file/Path;)Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Ljj$/nio/file/spi/FileSystemProvider;->setAttribute(Ljj$/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljj$/nio/file/LinkOption;)V

    return-object p0
.end method

.method public static setLastModifiedTime(Ljj$/nio/file/Path;Ljj$/nio/file/attribute/FileTime;)Ljj$/nio/file/Path;
    .registers 5

    const-class v0, Ljj$/nio/file/attribute/BasicFileAttributeView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljj$/nio/file/LinkOption;

    invoke-static {p0, v0, v1}, Ljj$/nio/file/Files;->getFileAttributeView(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/attribute/BasicFileAttributeView;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/nio/file/attribute/FileTime;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Ljj$/nio/file/attribute/BasicFileAttributeView;->setTimes(Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;)V

    return-object p0
.end method

.method public static setOwner(Ljj$/nio/file/Path;Ljj$/nio/file/attribute/UserPrincipal;)Ljj$/nio/file/Path;
    .registers 4

    const-class v0, Ljj$/nio/file/attribute/FileOwnerAttributeView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljj$/nio/file/LinkOption;

    invoke-static {p0, v0, v1}, Ljj$/nio/file/Files;->getFileAttributeView(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/attribute/FileOwnerAttributeView;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Ljj$/nio/file/attribute/FileOwnerAttributeView;->setOwner(Ljj$/nio/file/attribute/UserPrincipal;)V

    return-object p0

    :cond_11
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public static setPosixFilePermissions(Ljj$/nio/file/Path;Ljava/util/Set;)Ljj$/nio/file/Path;
    .registers 4

    const-class v0, Ljj$/nio/file/attribute/PosixFileAttributeView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljj$/nio/file/LinkOption;

    invoke-static {p0, v0, v1}, Ljj$/nio/file/Files;->getFileAttributeView(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/attribute/PosixFileAttributeView;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Ljj$/nio/file/attribute/PosixFileAttributeView;->setPermissions(Ljava/util/Set;)V

    return-object p0

    :cond_11
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public static size(Ljj$/nio/file/Path;)J
    .registers 3

    const-class v0, Ljj$/nio/file/attribute/BasicFileAttributes;

    const/4 v1, 0x0

    new-array v1, v1, [Ljj$/nio/file/LinkOption;

    invoke-static {p0, v0, v1}, Ljj$/nio/file/Files;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljj$/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs walk(Ljj$/nio/file/Path;I[Ljj$/nio/file/FileVisitOption;)Ljj$/util/stream/Stream;
    .registers 7

    new-instance v0, Ljj$/nio/file/FileTreeIterator;

    invoke-direct {v0, p0, p1, p2}, Ljj$/nio/file/FileTreeIterator;-><init>(Ljj$/nio/file/Path;I[Ljj$/nio/file/FileVisitOption;)V

    nop

    const/4 v1, 0x1

    :try_start_7
    invoke-static {v0, v1}, Ljj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljj$/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v2

    invoke-static {v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljj$/nio/file/Files$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Ljj$/nio/file/Files$$ExternalSyntheticLambda2;-><init>(Ljj$/nio/file/FileTreeIterator;)V

    invoke-interface {v2, v3}, Ljj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljj$/util/stream/Stream;

    new-instance v3, Ljj$/nio/file/Files$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Ljj$/nio/file/Files$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v2, v3}, Ljj$/util/stream/Stream;->map(Ljava/util/function/Function;)Ljj$/util/stream/Stream;

    move-result-object v2
    :try_end_27
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_27} :catch_2a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_27} :catch_28

    return-object v2

    :catch_28
    move-exception v1

    goto :goto_2b

    :catch_2a
    move-exception v1

    :goto_2b
    invoke-virtual {v0}, Ljj$/nio/file/FileTreeIterator;->close()V

    throw v1
.end method

.method public static varargs walk(Ljj$/nio/file/Path;[Ljj$/nio/file/FileVisitOption;)Ljj$/util/stream/Stream;
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, v0, p1}, Ljj$/nio/file/Files;->walk(Ljj$/nio/file/Path;I[Ljj$/nio/file/FileVisitOption;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static walkFileTree(Ljj$/nio/file/Path;Ljava/util/Set;ILjj$/nio/file/FileVisitor;)Ljj$/nio/file/Path;
    .registers 9

    new-instance v0, Ljj$/nio/file/FileTreeWalker;

    invoke-direct {v0, p1, p2}, Ljj$/nio/file/FileTreeWalker;-><init>(Ljava/util/Collection;I)V

    :try_start_5
    invoke-virtual {v0, p0}, Ljj$/nio/file/FileTreeWalker;->walk(Ljj$/nio/file/Path;)Ljj$/nio/file/FileTreeWalker$Event;

    move-result-object v1

    :cond_9
    sget-object v2, Ljj$/nio/file/Files$3;->$SwitchMap$java$nio$file$FileTreeWalker$EventType:[I

    invoke-virtual {v1}, Ljj$/nio/file/FileTreeWalker$Event;->type()Ljj$/nio/file/FileTreeWalker$EventType;

    move-result-object v3

    invoke-virtual {v3}, Ljj$/nio/file/FileTreeWalker$EventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_96

    new-instance v2, Ljava/lang/AssertionError;

    goto/16 :goto_85

    :pswitch_1c  #0x3
    invoke-virtual {v1}, Ljj$/nio/file/FileTreeWalker$Event;->file()Ljj$/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1}, Ljj$/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljj$/nio/file/FileVisitor;->postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljj$/nio/file/FileVisitResult;

    move-result-object v2

    sget-object v3, Ljj$/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljj$/nio/file/FileVisitResult;

    if-ne v2, v3, :cond_66

    sget-object v3, Ljj$/nio/file/FileVisitResult;->CONTINUE:Ljj$/nio/file/FileVisitResult;

    move-object v2, v3

    goto :goto_66

    :pswitch_30  #0x2
    invoke-virtual {v1}, Ljj$/nio/file/FileTreeWalker$Event;->file()Ljj$/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1}, Ljj$/nio/file/FileTreeWalker$Event;->attributes()Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljj$/nio/file/FileVisitor;->preVisitDirectory(Ljava/lang/Object;Ljj$/nio/file/attribute/BasicFileAttributes;)Ljj$/nio/file/FileVisitResult;

    move-result-object v2

    sget-object v3, Ljj$/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljj$/nio/file/FileVisitResult;

    if-eq v2, v3, :cond_44

    sget-object v3, Ljj$/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljj$/nio/file/FileVisitResult;

    if-ne v2, v3, :cond_66

    :cond_44
    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker;->pop()V

    goto :goto_66

    :pswitch_48  #0x1
    invoke-virtual {v1}, Ljj$/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v2

    if-nez v2, :cond_5d

    nop

    invoke-virtual {v1}, Ljj$/nio/file/FileTreeWalker$Event;->file()Ljj$/nio/file/Path;

    move-result-object v3

    invoke-virtual {v1}, Ljj$/nio/file/FileTreeWalker$Event;->attributes()Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Ljj$/nio/file/FileVisitor;->visitFile(Ljava/lang/Object;Ljj$/nio/file/attribute/BasicFileAttributes;)Ljj$/nio/file/FileVisitResult;

    move-result-object v3

    move-object v2, v3

    goto :goto_66

    :cond_5d
    invoke-virtual {v1}, Ljj$/nio/file/FileTreeWalker$Event;->file()Ljj$/nio/file/Path;

    move-result-object v3

    invoke-interface {p3, v3, v2}, Ljj$/nio/file/FileVisitor;->visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljj$/nio/file/FileVisitResult;

    move-result-object v3

    move-object v2, v3

    :cond_66
    :goto_66
    invoke-static {v2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljj$/nio/file/FileVisitResult;->CONTINUE:Ljj$/nio/file/FileVisitResult;

    if-eq v3, v4, :cond_7a

    sget-object v3, Ljj$/nio/file/FileVisitResult;->TERMINATE:Ljj$/nio/file/FileVisitResult;

    if-ne v2, v3, :cond_73

    goto :goto_81

    :cond_73
    sget-object v3, Ljj$/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljj$/nio/file/FileVisitResult;

    if-ne v2, v3, :cond_7a

    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker;->skipRemainingSiblings()V

    :cond_7a
    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker;->next()Ljj$/nio/file/FileTreeWalker$Event;

    move-result-object v3
    :try_end_7e
    .catchall {:try_start_5 .. :try_end_7e} :catchall_8b

    move-object v1, v3

    if-nez v1, :cond_9

    :goto_81
    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker;->close()V

    return-object p0

    :goto_85
    :try_start_85
    const-string v3, "Should not get here"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception v1

    :try_start_8c
    invoke-virtual {v0}, Ljj$/nio/file/FileTreeWalker;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    goto :goto_94

    :catchall_90
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_94
    throw v1

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_48  #00000001
        :pswitch_30  #00000002
        :pswitch_1c  #00000003
    .end packed-switch
.end method

.method public static walkFileTree(Ljj$/nio/file/Path;Ljj$/nio/file/FileVisitor;)Ljj$/nio/file/Path;
    .registers 4

    const-class v0, Ljj$/nio/file/FileVisitOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {p0, v0, v1, p1}, Ljj$/nio/file/Files;->walkFileTree(Ljj$/nio/file/Path;Ljava/util/Set;ILjj$/nio/file/FileVisitor;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs write(Ljj$/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Ljj$/nio/file/OpenOption;)Ljj$/nio/file/Path;
    .registers 9

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-static {p0, p3}, Ljj$/nio/file/Files;->newOutputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    :try_start_b
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_3f

    :try_start_15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_35

    goto :goto_19

    :cond_2c
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3f

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_34
    return-object p0

    :catchall_35
    move-exception v3

    :try_start_36
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v4

    :try_start_3b
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3e
    throw v3
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v2

    if-eqz v1, :cond_4a

    :try_start_42
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4a
    :goto_4a
    throw v2
.end method

.method public static varargs write(Ljj$/nio/file/Path;Ljava/lang/Iterable;[Ljj$/nio/file/OpenOption;)Ljj$/nio/file/Path;
    .registers 4

    sget-object v0, Ljj$/sun/nio/cs/UTF_8;->INSTANCE:Ljj$/sun/nio/cs/UTF_8;

    invoke-static {p0, p1, v0, p2}, Ljj$/nio/file/Files;->write(Ljj$/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Ljj$/nio/file/OpenOption;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs write(Ljj$/nio/file/Path;[B[Ljj$/nio/file/OpenOption;)Ljj$/nio/file/Path;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p2}, Ljj$/nio/file/Files;->newOutputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    :try_start_7
    array-length v1, p1

    move v2, v1

    :goto_9
    if-lez v2, :cond_18

    const/16 v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v4, v1, v2

    invoke-virtual {v0, p1, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1e

    sub-int/2addr v2, v3

    goto :goto_9

    :cond_18
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1d
    return-object p0

    :catchall_1e
    move-exception v1

    if-eqz v0, :cond_29

    :try_start_21
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_29
    :goto_29
    throw v1
.end method

.method public static varargs writeString(Ljj$/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljj$/nio/file/OpenOption;)Ljj$/nio/file/Path;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0, p3}, Ljj$/nio/file/Files;->write(Ljj$/nio/file/Path;[B[Ljj$/nio/file/OpenOption;)Ljj$/nio/file/Path;

    return-object p0
.end method

.method public static varargs writeString(Ljj$/nio/file/Path;Ljava/lang/CharSequence;[Ljj$/nio/file/OpenOption;)Ljj$/nio/file/Path;
    .registers 4

    sget-object v0, Ljj$/sun/nio/cs/UTF_8;->INSTANCE:Ljj$/sun/nio/cs/UTF_8;

    invoke-static {p0, p1, v0, p2}, Ljj$/nio/file/Files;->writeString(Ljj$/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljj$/nio/file/OpenOption;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method
