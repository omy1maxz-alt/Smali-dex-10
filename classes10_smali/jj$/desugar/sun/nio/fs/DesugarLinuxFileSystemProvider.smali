.class public Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;
.super Ljj$/nio/file/spi/FileSystemProvider;
.source "DesugarLinuxFileSystemProvider.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final FILE_SCHEME:Ljava/lang/String; = "file"


# instance fields
.field private final rootDir:Ljava/lang/String;

.field private volatile theFileSystem:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

.field private final userDir:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljj$/nio/file/spi/FileSystemProvider;-><init>()V

    iput-object p1, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->userDir:Ljava/lang/String;

    iput-object p2, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->rootDir:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;)Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->theFileSystem:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    return-object v0
.end method

.method static synthetic access$100(Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->userDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->rootDir:Ljava/lang/String;

    return-object v0
.end method

.method private checkFileUri(Ljava/net/URI;)V
    .registers 5

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4f

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_47

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_37

    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2f

    return-void

    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Fragment component present"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Query component present"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Path component should be \'/\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Path component is undefined"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority component present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI does not match this provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private containsCopyOption([Ljj$/nio/file/CopyOption;Ljj$/nio/file/CopyOption;)Z
    .registers 7

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_e

    aget-object v3, p1, v2

    if-ne v3, p2, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method public static create()Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;
    .registers 3

    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-direct {v0, v1, v2}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private exists(Ljj$/nio/file/Path;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljj$/nio/file/AccessMode;

    invoke-virtual {p0, p1, v1}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->checkAccess(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8

    const/4 v0, 0x1

    return v0

    :catch_8
    move-exception v1

    return v0
.end method


# virtual methods
.method public varargs checkAccess(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)V
    .registers 11

    invoke-interface {p1}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, 0x1

    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v2, :cond_33

    aget-object v5, p2, v4

    sget-object v6, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$1;->$SwitchMap$java$nio$file$AccessMode:[I

    invoke-virtual {v5}, Ljj$/nio/file/AccessMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_52

    goto :goto_30

    :pswitch_1e  #0x3
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v6

    and-int/2addr v1, v6

    goto :goto_30

    :pswitch_24  #0x2
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v6

    and-int/2addr v1, v6

    goto :goto_30

    :pswitch_2a  #0x1
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v6

    and-int/2addr v1, v6

    nop

    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_33
    if-eqz v1, :cond_36

    return-void

    :cond_36
    new-instance v2, Ljava/io/IOException;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    const-string v3, "Unable to access file %s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_47
    new-instance v1, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p1}, Ljj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_2a  #00000001
        :pswitch_24  #00000002
        :pswitch_1e  #00000003
    .end packed-switch
.end method

.method public varargs copy(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)V
    .registers 11

    sget-object v0, Ljj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljj$/nio/file/StandardCopyOption;

    invoke-direct {p0, p3, v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->containsCopyOption([Ljj$/nio/file/CopyOption;Ljj$/nio/file/CopyOption;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    new-array v0, v1, [Ljj$/nio/file/LinkOption;

    invoke-static {p2, v0}, Ljj$/nio/file/Files;->exists(Ljj$/nio/file/Path;[Ljj$/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1c

    :cond_12
    new-instance v0, Ljava/nio/file/FileAlreadyExistsException;

    invoke-interface {p2}, Ljj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_1c
    sget-object v0, Ljj$/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljj$/nio/file/StandardCopyOption;

    invoke-direct {p0, p3, v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->containsCopyOption([Ljj$/nio/file/CopyOption;Ljj$/nio/file/CopyOption;)Z

    move-result v0

    if-nez v0, :cond_60

    new-instance v0, Ljava/io/FileInputStream;

    invoke-interface {p1}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_2d
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-interface {p2}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_56

    const/16 v3, 0x2000

    :try_start_38
    new-array v4, v3, [B

    :goto_3a
    invoke-virtual {v0, v4, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v6, v5

    if-ltz v5, :cond_45

    invoke-virtual {v2, v4, v1, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_4c

    goto :goto_3a

    :cond_45
    :try_start_45
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_56

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_4c
    move-exception v1

    :try_start_4d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v3

    :try_start_52
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw v1
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v1

    :try_start_57
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5f
    throw v1

    :cond_60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported copy option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs createDirectory(Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)V
    .registers 7

    invoke-interface {p1}, Ljj$/nio/file/Path;->getParent()Ljj$/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljj$/nio/file/Path;->getParent()Ljj$/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljj$/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljj$/nio/file/Files;->exists(Ljj$/nio/file/Path;[Ljj$/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1e

    :cond_14
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p1}, Ljj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_29

    return-void

    :cond_29
    new-instance v2, Ljava/nio/file/FileAlreadyExistsException;

    invoke-interface {p1}, Ljj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createLink(Ljj$/nio/file/Path;Ljj$/nio/file/Path;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs createSymbolicLink(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete(Ljj$/nio/file/Path;)V
    .registers 4

    invoke-direct {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->exists(Ljj$/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->deleteIfExists(Ljj$/nio/file/Path;)Z

    return-void

    :cond_a
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p1}, Ljj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteIfExists(Ljj$/nio/file/Path;)Z
    .registers 3

    invoke-interface {p1}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public varargs getFileAttributeView(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/FileAttributeView;
    .registers 5

    if-eqz p2, :cond_14

    const-class v0, Ljj$/nio/file/attribute/BasicFileAttributeView;

    if-ne p2, v0, :cond_12

    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;

    invoke-direct {v0, p1}, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;-><init>(Ljj$/nio/file/Path;)V

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/attribute/FileAttributeView;

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public getFileStore(Ljj$/nio/file/Path;)Ljj$/nio/file/FileStore;
    .registers 4

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "getFileStore"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getFileSystem(Ljava/net/URI;)Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;
    .registers 6

    invoke-direct {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->checkFileUri(Ljava/net/URI;)V

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->theFileSystem:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    if-nez v0, :cond_1e

    monitor-enter p0

    :try_start_8
    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->theFileSystem:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    move-object v0, v1

    if-nez v0, :cond_19

    new-instance v1, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    iget-object v2, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->userDir:Ljava/lang/String;

    iget-object v3, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->rootDir:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;-><init>(Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    iput-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->theFileSystem:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    :cond_19
    monitor-exit p0

    goto :goto_1e

    :catchall_1b
    move-exception v1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1b

    throw v1

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method public bridge synthetic getFileSystem(Ljava/net/URI;)Ljj$/nio/file/FileSystem;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->getFileSystem(Ljava/net/URI;)Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    move-result-object p1

    return-object p1
.end method

.method getFileTypeDetector()Ljj$/nio/file/spi/FileTypeDetector;
    .registers 2

    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarMimeTypesFileTypeDetector;

    invoke-direct {v0}, Ljj$/desugar/sun/nio/fs/DesugarMimeTypesFileTypeDetector;-><init>()V

    return-object v0
.end method

.method public getPath(Ljava/net/URI;)Ljj$/nio/file/Path;
    .registers 5

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->theFileSystem:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->userDir:Ljava/lang/String;

    iget-object v2, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->rootDir:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->fromUri(Ljj$/nio/file/FileSystem;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    const-string v0, "file"

    return-object v0
.end method

.method public isHidden(Ljj$/nio/file/Path;)Z
    .registers 3

    invoke-interface {p1}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isSameFile(Ljj$/nio/file/Path;Ljj$/nio/file/Path;)Z
    .registers 5

    invoke-interface {p1, p2}, Ljj$/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    new-array v1, v0, [Ljj$/nio/file/AccessMode;

    invoke-virtual {p0, p1, v1}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->checkAccess(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)V

    new-array v0, v0, [Ljj$/nio/file/AccessMode;

    invoke-virtual {p0, p2, v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->checkAccess(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)V

    invoke-interface {p1}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {p2}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public varargs move(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)V
    .registers 6

    sget-object v0, Ljj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljj$/nio/file/StandardCopyOption;

    invoke-direct {p0, p3, v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->containsCopyOption([Ljj$/nio/file/CopyOption;Ljj$/nio/file/CopyOption;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    new-array v0, v0, [Ljj$/nio/file/LinkOption;

    invoke-static {p2, v0}, Ljj$/nio/file/Files;->exists(Ljj$/nio/file/Path;[Ljj$/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1c

    :cond_12
    new-instance v0, Ljava/nio/file/FileAlreadyExistsException;

    invoke-interface {p2}, Ljj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_1c
    sget-object v0, Ljj$/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljj$/nio/file/StandardCopyOption;

    invoke-direct {p0, p3, v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->containsCopyOption([Ljj$/nio/file/CopyOption;Ljj$/nio/file/CopyOption;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-interface {p1}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {p2}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void

    :cond_30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported copy option"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs newAsynchronousFileChannel(Ljj$/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/channels/AsynchronousFileChannel;
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs newByteChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->newFileChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method public newDirectoryStream(Ljj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .registers 4

    if-eqz p2, :cond_8

    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarDirectoryStream;

    invoke-direct {v0, p0, p1, p2}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarDirectoryStream;-><init>(Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;Ljj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public varargs newFileChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .registers 7

    invoke-interface {p1}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1, p2, p3}, Ljj$/desugar/sun/nio/fs/DesugarFileChannel;->openEmulatedFileChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The desugar library does not support creating a file channel on a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;
    .registers 4

    invoke-direct {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->checkFileUri(Ljava/net/URI;)V

    new-instance v0, Ljava/nio/file/FileSystemAlreadyExistsException;

    invoke-direct {v0}, Ljava/nio/file/FileSystemAlreadyExistsException;-><init>()V

    throw v0
.end method

.method public bridge synthetic newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljj$/nio/file/FileSystem;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    move-result-object p1

    return-object p1
.end method

.method public varargs readAttributes(Ljj$/nio/file/Path;Ljava/lang/String;[Ljj$/nio/file/LinkOption;)Ljava/util/Map;
    .registers 10

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, ","

    if-ne v0, v1, :cond_12

    const-class v1, Ljj$/nio/file/attribute/BasicFileAttributeView;

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_2b

    :cond_12
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "basic"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    const-class v1, Ljj$/nio/file/attribute/BasicFileAttributeView;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_2b
    const-class v3, Ljj$/nio/file/attribute/BasicFileAttributeView;

    if-ne v1, v3, :cond_39

    new-instance v3, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;

    invoke-direct {v3, p1}, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;-><init>(Ljj$/nio/file/Path;)V

    invoke-virtual {v3, v2}, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->readAttributes([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    return-object v4

    :cond_39
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected View \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' requested"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_58
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v1, "Requested attribute type for: %s is not available."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public varargs readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;
    .registers 6

    const-class v0, Ljj$/nio/file/attribute/BasicFileAttributes;

    if-ne p2, v0, :cond_17

    const-class v0, Ljj$/nio/file/attribute/BasicFileAttributeView;

    invoke-virtual {p0, p1, v0, p3}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->getFileAttributeView(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/FileAttributeView;

    move-result-object v1

    check-cast v1, Ljj$/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {v1}, Ljj$/nio/file/attribute/BasicFileAttributeView;->readAttributes()Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/nio/file/attribute/BasicFileAttributes;

    return-object v1

    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public readSymbolicLink(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;
    .registers 7

    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->theFileSystem:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    invoke-interface {p1}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->userDir:Ljava/lang/String;

    iget-object v4, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs setAttribute(Ljj$/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljj$/nio/file/LinkOption;)V
    .registers 11

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const-class v1, Ljj$/nio/file/attribute/BasicFileAttributeView;

    move-object v2, p2

    goto :goto_23

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "basic"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    const-class v1, Ljj$/nio/file/attribute/BasicFileAttributeView;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    :goto_23
    const-class v3, Ljj$/nio/file/attribute/BasicFileAttributeView;

    if-ne v1, v3, :cond_30

    new-instance v3, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;

    invoke-direct {v3, p1}, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;-><init>(Ljj$/nio/file/Path;)V

    invoke-virtual {v3, v2, p3}, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_30
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected View \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' requested"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_4f
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const-string v1, "Requested attribute type for: %s is not available."

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
