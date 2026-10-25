.class public final synthetic Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;
.super Ljj$/nio/file/spi/FileSystemProvider;
.source "D8$$SyntheticClass"


# instance fields
.field public final synthetic wrappedValue:Ljava/nio/file/spi/FileSystemProvider;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/spi/FileSystemProvider;)V
    .registers 2

    invoke-direct {p0}, Ljj$/nio/file/spi/FileSystemProvider;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    return-void
.end method

.method public static synthetic convert(Ljava/nio/file/spi/FileSystemProvider;)Ljj$/nio/file/spi/FileSystemProvider;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;

    iget-object p0, p0, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->wrappedValue:Ljj$/nio/file/spi/FileSystemProvider;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;-><init>(Ljava/nio/file/spi/FileSystemProvider;)V

    return-object v0
.end method


# virtual methods
.method public synthetic checkAccess(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)V
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion5;->m([Ljj$/nio/file/AccessMode;)[Ljava/nio/file/AccessMode;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V

    return-void
.end method

.method public synthetic copy(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)V
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion6;->m([Ljj$/nio/file/CopyOption;)[Ljava/nio/file/CopyOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    return-void
.end method

.method public synthetic createDirectory(Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)V
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/channels/DesugarChannels$$ExternalSynthetic$CollectionConversion0;->m([Ljj$/nio/file/attribute/FileAttribute;)[Ljava/nio/file/attribute/FileAttribute;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V

    return-void
.end method

.method public synthetic createLink(Ljj$/nio/file/Path;Ljj$/nio/file/Path;)V
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    return-void
.end method

.method public synthetic createSymbolicLink(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/attribute/FileAttribute;)V
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/channels/DesugarChannels$$ExternalSynthetic$CollectionConversion0;->m([Ljj$/nio/file/attribute/FileAttribute;)[Ljava/nio/file/attribute/FileAttribute;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V

    return-void
.end method

.method public synthetic delete(Ljj$/nio/file/Path;)V
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/file/spi/FileSystemProvider;->delete(Ljava/nio/file/Path;)V

    return-void
.end method

.method public synthetic deleteIfExists(Ljj$/nio/file/Path;)Z
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/file/spi/FileSystemProvider;->deleteIfExists(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    instance-of v1, p1, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;

    iget-object p1, p1, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic getFileAttributeView(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/FileAttributeView;
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/FileApiFlips;->flipFileAttributeView(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/file/Path$$ExternalSynthetic$CollectionConversion3;->m([Ljj$/nio/file/LinkOption;)[Ljava/nio/file/LinkOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/attribute/FileAttributeView$VivifiedWrapper;->convert(Ljava/nio/file/attribute/FileAttributeView;)Ljj$/nio/file/attribute/FileAttributeView;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFileStore(Ljj$/nio/file/Path;)Ljj$/nio/file/FileStore;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/file/spi/FileSystemProvider;->getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/FileStore$VivifiedWrapper;->convert(Ljava/nio/file/FileStore;)Ljj$/nio/file/FileStore;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFileSystem(Ljava/net/URI;)Ljj$/nio/file/FileSystem;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-virtual {v0, p1}, Ljava/nio/file/spi/FileSystemProvider;->getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/FileSystem$VivifiedWrapper;->convert(Ljava/nio/file/FileSystem;)Ljj$/nio/file/FileSystem;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getPath(Ljava/net/URI;)Ljj$/nio/file/Path;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-virtual {v0, p1}, Ljava/nio/file/spi/FileSystemProvider;->getPath(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getScheme()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-virtual {v0}, Ljava/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isHidden(Ljj$/nio/file/Path;)Z
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/file/spi/FileSystemProvider;->isHidden(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public synthetic isSameFile(Ljj$/nio/file/Path;Ljj$/nio/file/Path;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public synthetic move(Ljj$/nio/file/Path;Ljj$/nio/file/Path;[Ljj$/nio/file/CopyOption;)V
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion6;->m([Ljj$/nio/file/CopyOption;)[Ljava/nio/file/CopyOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    return-void
.end method

.method public synthetic newAsynchronousFileChannel(Ljj$/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljj$/nio/file/attribute/FileAttribute;)Ljj$/nio/channels/AsynchronousFileChannel;
    .registers 6

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/FileApiFlips;->flipOpenOptionSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p4}, Ljj$/nio/channels/DesugarChannels$$ExternalSynthetic$CollectionConversion0;->m([Ljj$/nio/file/attribute/FileAttribute;)[Ljava/nio/file/attribute/FileAttribute;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/nio/file/spi/FileSystemProvider;->newAsynchronousFileChannel(Ljava/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/AsynchronousFileChannel;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/channels/AsynchronousFileChannel$VivifiedWrapper;->convert(Ljava/nio/channels/AsynchronousFileChannel;)Ljj$/nio/channels/AsynchronousFileChannel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newByteChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/FileApiFlips;->flipOpenOptionSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/channels/DesugarChannels$$ExternalSynthetic$CollectionConversion0;->m([Ljj$/nio/file/attribute/FileAttribute;)[Ljava/nio/file/attribute/FileAttribute;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newDirectoryStream(Ljj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/PathApiFlips;->flipDirectoryStreamFilterPath(Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream$Filter;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/PathApiFlips;->flipDirectoryStreamPath(Ljava/nio/file/DirectoryStream;)Ljava/nio/file/DirectoryStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newFileChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/FileApiFlips;->flipOpenOptionSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/channels/DesugarChannels$$ExternalSynthetic$CollectionConversion0;->m([Ljj$/nio/file/attribute/FileAttribute;)[Ljava/nio/file/attribute/FileAttribute;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->newFileChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljj$/nio/file/FileSystem;
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-virtual {v0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/FileSystem$VivifiedWrapper;->convert(Ljava/nio/file/FileSystem;)Ljj$/nio/file/FileSystem;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newFileSystem(Ljj$/nio/file/Path;Ljava/util/Map;)Ljj$/nio/file/FileSystem;
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->newFileSystem(Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/FileSystem$VivifiedWrapper;->convert(Ljava/nio/file/FileSystem;)Ljj$/nio/file/FileSystem;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newInputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/InputStream;
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion4;->m([Ljj$/nio/file/OpenOption;)[Ljava/nio/file/OpenOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newOutputStream(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/io/OutputStream;
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/spi/FileSystemProvider$$ExternalSynthetic$CollectionConversion4;->m([Ljj$/nio/file/OpenOption;)[Ljava/nio/file/OpenOption;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/file/spi/FileSystemProvider;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readAttributes(Ljj$/nio/file/Path;Ljava/lang/String;[Ljj$/nio/file/LinkOption;)Ljava/util/Map;
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p3}, Ljj$/nio/file/Path$$ExternalSynthetic$CollectionConversion3;->m([Ljj$/nio/file/LinkOption;)[Ljava/nio/file/LinkOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/FileApiFlips;->flipMapWithMaybeFileTimeValues(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readAttributes(Ljj$/nio/file/Path;Ljava/lang/Class;[Ljj$/nio/file/LinkOption;)Ljj$/nio/file/attribute/BasicFileAttributes;
    .registers 5

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Ljj$/nio/file/FileApiFlips;->flipFileAttributes(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-static {p3}, Ljj$/nio/file/Path$$ExternalSynthetic$CollectionConversion3;->m([Ljj$/nio/file/LinkOption;)[Ljava/nio/file/LinkOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/file/spi/FileSystemProvider;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/attribute/BasicFileAttributes$VivifiedWrapper;->convert(Ljava/nio/file/attribute/BasicFileAttributes;)Ljj$/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readSymbolicLink(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/file/spi/FileSystemProvider;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/Path$VivifiedWrapper;->convert(Ljava/nio/file/Path;)Ljj$/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setAttribute(Ljj$/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljj$/nio/file/LinkOption;)V
    .registers 6

    iget-object v0, p0, Ljj$/nio/file/spi/FileSystemProvider$VivifiedWrapper;->wrappedValue:Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p3}, Ljj$/nio/file/FileApiFlips;->flipMaybeFileTime(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p4}, Ljj$/nio/file/Path$$ExternalSynthetic$CollectionConversion3;->m([Ljj$/nio/file/LinkOption;)[Ljava/nio/file/LinkOption;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/nio/file/spi/FileSystemProvider;->setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)V

    return-void
.end method
