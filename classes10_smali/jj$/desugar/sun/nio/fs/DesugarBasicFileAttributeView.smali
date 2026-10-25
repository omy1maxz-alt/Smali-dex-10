.class Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;
.super Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;
.source "DesugarBasicFileAttributeView.java"


# instance fields
.field private final path:Ljj$/nio/file/Path;


# direct methods
.method public constructor <init>(Ljj$/nio/file/Path;)V
    .registers 2

    invoke-direct {p0}, Ljj$/desugar/sun/nio/fs/DesugarAbstractBasicFileAttributeView;-><init>()V

    iput-object p1, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->path:Ljj$/nio/file/Path;

    return-void
.end method


# virtual methods
.method public readAttributes()Ljj$/nio/file/attribute/BasicFileAttributes;
    .registers 4

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->path:Ljj$/nio/file/Path;

    invoke-interface {v0}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->provider()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->path:Ljj$/nio/file/Path;

    const/4 v2, 0x0

    new-array v2, v2, [Ljj$/nio/file/AccessMode;

    invoke-virtual {v0, v1, v2}, Ljj$/nio/file/spi/FileSystemProvider;->checkAccess(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)V

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->path:Ljj$/nio/file/Path;

    invoke-interface {v0}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;->create(Ljava/io/File;)Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public setTimes(Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;Ljj$/nio/file/attribute/FileTime;)V
    .registers 9

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->path:Ljj$/nio/file/Path;

    invoke-interface {v0}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->provider()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->path:Ljj$/nio/file/Path;

    const/4 v2, 0x1

    new-array v2, v2, [Ljj$/nio/file/AccessMode;

    const/4 v3, 0x0

    sget-object v4, Ljj$/nio/file/AccessMode;->WRITE:Ljj$/nio/file/AccessMode;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljj$/nio/file/spi/FileSystemProvider;->checkAccess(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)V

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->path:Ljj$/nio/file/Path;

    invoke-interface {v0}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1}, Ljj$/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    move-result v1

    if-eqz v1, :cond_2f

    return-void

    :cond_2f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File.setLastModified did not succeed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljj$/desugar/sun/nio/fs/DesugarBasicFileAttributeView;->path:Ljj$/nio/file/Path;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
