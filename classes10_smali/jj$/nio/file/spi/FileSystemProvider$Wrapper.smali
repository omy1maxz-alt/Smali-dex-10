.class public final synthetic Ljj$/nio/file/spi/FileSystemProvider$Wrapper;
.super Ljava/nio/file/spi/FileSystemProvider;
.source "D8$$SyntheticClass"


# instance fields
.field public final synthetic wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;


# direct methods
.method private synthetic constructor <init>(Ljj$/nio/file/spi/FileSystemProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/nio/file/spi/FileSystemProvider;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    return-void
.end method

.method public static synthetic convert(Ljj$/nio/file/spi/FileSystemProvider;)Ljava/nio/file/spi/FileSystemProvider;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;

    iget-object p0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;-><init>(Ljj$/nio/file/spi/FileSystemProvider;)V

    return-object v0
.end method


# virtual methods
.method public synthetic checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion2;->m([Ljava/nio/file/AccessMode;)[Ljj$/nio/file/AccessMode;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->checkAccess(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)V

    return-void
.end method

.method public synthetic copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion3;->m([Ljava/nio/file/CopyOption;)[Ljj$/nio/file/CopyOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljj$/nio/file/spi/FileSystemProvider;->copy(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)V

    return-void
.end method

.method public synthetic createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion0;->m([Ljava/nio/file/attribute/FileAttribute;)[Ljj$/nio/file/attribute/FileAttribute;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->createDirectory(Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)V

    return-void
.end method

.method public synthetic createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->createLink(Ljj$/nio/file/Path;Ljj$/nio/file/Path;)V

    return-void
.end method

.method public synthetic createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion0;->m([Ljava/nio/file/attribute/FileAttribute;)[Ljj$/nio/file/attribute/FileAttribute;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljj$/nio/file/spi/FileSystemProvider;->createSymbolicLink(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)V

    return-void
.end method

.method public synthetic delete(Ljava/nio/file/Path;)V
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->delete(Ljj$/nio/file/Path;)V

    return-void
.end method

.method public synthetic deleteIfExists(Ljava/nio/file/Path;)Z
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->deleteIfExists(Ljj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    instance-of v1, p1, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;

    iget-object p1, p1, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/FileApiFlips;->flipFileAttributeView(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/file/Path$$ExternalSynthetic$CollectionConversion0;->m([Ljava/nio/file/LinkOption;)[Ljj$/nio/file/LinkOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljj$/nio/file/spi/FileSystemProvider;->getFileAttributeView(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/FileAttributeView;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/attribute/FileAttributeView$Wrapper;->convert(Ljj$/nio/file/attribute/FileAttributeView;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->getFileStore(Ljj$/nio/file/Path;)Ljj$/nio/file/FileStore;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/FileStore$Wrapper;->convert(Ljj$/nio/file/FileStore;)Ljava/nio/file/FileStore;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-virtual {v0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->getFileSystem(Ljava/net/URI;)Ljj$/nio/file/FileSystem;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/FileSystem$Wrapper;->convert(Ljj$/nio/file/FileSystem;)Ljava/nio/file/FileSystem;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getPath(Ljava/net/URI;)Ljava/nio/file/Path;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-virtual {v0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->getPath(Ljava/net/URI;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getScheme()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-virtual {v0}, Ljj$/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isHidden(Ljava/nio/file/Path;)Z
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->isHidden(Ljj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public synthetic isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->isSameFile(Ljj$/nio/file/Path;Ljj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public synthetic move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion3;->m([Ljava/nio/file/CopyOption;)[Ljj$/nio/file/CopyOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljj$/nio/file/spi/FileSystemProvider;->move(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)V

    return-void
.end method

.method public synthetic newAsynchronousFileChannel(Ljava/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/AsynchronousFileChannel;
    .registers 6

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/FileApiFlips;->flipOpenOptionSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p4}, Ljj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion0;->m([Ljava/nio/file/attribute/FileAttribute;)[Ljj$/nio/file/attribute/FileAttribute;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Ljj$/nio/file/spi/FileSystemProvider;->newAsynchronousFileChannel(Ljj$/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/channels/AsynchronousFileChannel;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/channels/AsynchronousFileChannel$Wrapper;->convert(Ljj$/nio/channels/AsynchronousFileChannel;)Ljava/nio/channels/AsynchronousFileChannel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/FileApiFlips;->flipOpenOptionSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion0;->m([Ljava/nio/file/attribute/FileAttribute;)[Ljj$/nio/file/attribute/FileAttribute;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljj$/nio/file/spi/FileSystemProvider;->newByteChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/PathApiFlips;->flipDirectoryStreamFilterPath(Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream$Filter;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->newDirectoryStream(Ljj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/PathApiFlips;->flipDirectoryStreamPath(Ljava/nio/file/DirectoryStream;)Ljava/nio/file/DirectoryStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newFileChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/FileApiFlips;->flipOpenOptionSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion0;->m([Ljava/nio/file/attribute/FileAttribute;)[Ljj$/nio/file/attribute/FileAttribute;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljj$/nio/file/spi/FileSystemProvider;->newFileChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-virtual {v0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljj$/nio/file/FileSystem;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/FileSystem$Wrapper;->convert(Ljj$/nio/file/FileSystem;)Ljava/nio/file/FileSystem;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newFileSystem(Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->newFileSystem(Ljj$/nio/file/Path;Ljava/util/Map;)Ljj$/nio/file/FileSystem;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/FileSystem$Wrapper;->convert(Ljj$/nio/file/FileSystem;)Ljava/nio/file/FileSystem;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion1;->m([Ljava/nio/file/OpenOption;)[Ljj$/nio/file/OpenOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->newInputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion1;->m([Ljava/nio/file/OpenOption;)[Ljj$/nio/file/OpenOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->newOutputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/FileApiFlips;->flipFileAttributes(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/file/Path$$ExternalSynthetic$CollectionConversion0;->m([Ljava/nio/file/LinkOption;)[Ljj$/nio/file/LinkOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljj$/nio/file/spi/FileSystemProvider;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/attribute/BasicFileAttributes$Wrapper;->convert(Ljj$/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p3}, Ljj$/nio/file/Path$$ExternalSynthetic$CollectionConversion0;->m([Ljava/nio/file/LinkOption;)[Ljj$/nio/file/LinkOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljj$/nio/file/spi/FileSystemProvider;->readAttributes(Ljj$/nio/file/Path;Ljava/lang/String;[Ljj$/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/FileApiFlips;->flipMapWithMaybeFileTimeValues(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljj$/nio/file/spi/FileSystemProvider;->readSymbolicLink(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)V
    .registers 6

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p3}, Ljj$/nio/file/FileApiFlips;->flipMaybeFileTime(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p4}, Ljj$/nio/file/Path$$ExternalSynthetic$CollectionConversion0;->m([Ljava/nio/file/LinkOption;)[Ljj$/nio/file/LinkOption;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Ljj$/nio/file/spi/FileSystemProvider;->setAttribute(Ljj$/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljj$/nio/file/LinkOption;)V

    return-void
.end method
