.class public final synthetic Ljj$/nio/file/FileSystem$Wrapper;
.super Ljava/nio/file/FileSystem;
.source "D8$$SyntheticClass"


# instance fields
.field public final synthetic wrappedValue:Ljj$/nio/file/FileSystem;


# direct methods
.method private synthetic constructor <init>(Ljj$/nio/file/FileSystem;)V
    .registers 2

    invoke-direct {p0}, Ljava/nio/file/FileSystem;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/FileSystem$Wrapper;->wrappedValue:Ljj$/nio/file/FileSystem;

    return-void
.end method

.method public static synthetic convert(Ljj$/nio/file/FileSystem;)Ljava/nio/file/FileSystem;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljj$/nio/file/FileSystem$VivifiedWrapper;

    if-eqz v0, :cond_d

    check-cast p0, Ljj$/nio/file/FileSystem$VivifiedWrapper;

    iget-object p0, p0, Ljj$/nio/file/FileSystem$VivifiedWrapper;->wrappedValue:Ljava/nio/file/FileSystem;

    return-object p0

    :cond_d
    new-instance v0, Ljj$/nio/file/FileSystem$Wrapper;

    invoke-direct {v0, p0}, Ljj$/nio/file/FileSystem$Wrapper;-><init>(Ljj$/nio/file/FileSystem;)V

    return-object v0
.end method


# virtual methods
.method public synthetic close()V
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileSystem$Wrapper;->wrappedValue:Ljj$/nio/file/FileSystem;

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->close()V

    return-void
.end method

.method public synthetic equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/FileSystem$Wrapper;->wrappedValue:Ljj$/nio/file/FileSystem;

    instance-of v1, p1, Ljj$/nio/file/FileSystem$Wrapper;

    if-eqz v1, :cond_a

    check-cast p1, Ljj$/nio/file/FileSystem$Wrapper;

    iget-object p1, p1, Ljj$/nio/file/FileSystem$Wrapper;->wrappedValue:Ljj$/nio/file/FileSystem;

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic getFileStores()Ljava/lang/Iterable;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileSystem$Wrapper;->wrappedValue:Ljj$/nio/file/FileSystem;

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->getFileStores()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .registers 4

    iget-object v0, p0, Ljj$/nio/file/FileSystem$Wrapper;->wrappedValue:Ljj$/nio/file/FileSystem;

    invoke-virtual {v0, p1, p2}, Ljj$/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljj$/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/Path$Wrapper;->convert(Ljj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/FileSystem$Wrapper;->wrappedValue:Ljj$/nio/file/FileSystem;

    invoke-virtual {v0, p1}, Ljj$/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljj$/nio/file/PathMatcher;

    move-result-object p1

    invoke-static {p1}, Ljj$/nio/file/PathMatcher$Wrapper;->convert(Ljj$/nio/file/PathMatcher;)Ljava/nio/file/PathMatcher;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getRootDirectories()Ljava/lang/Iterable;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileSystem$Wrapper;->wrappedValue:Ljj$/nio/file/FileSystem;

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->getRootDirectories()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/PathApiFlips;->flipIterablePath(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getSeparator()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileSystem$Wrapper;->wrappedValue:Ljj$/nio/file/FileSystem;

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileSystem$Wrapper;->wrappedValue:Ljj$/nio/file/FileSystem;

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->getUserPrincipalLookupService()Ljj$/nio/file/attribute/UserPrincipalLookupService;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/UserPrincipalLookupService$Wrapper;->convert(Ljj$/nio/file/attribute/UserPrincipalLookupService;)Ljava/nio/file/attribute/UserPrincipalLookupService;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileSystem$Wrapper;->wrappedValue:Ljj$/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic isOpen()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileSystem$Wrapper;->wrappedValue:Ljj$/nio/file/FileSystem;

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->isOpen()Z

    move-result v0

    return v0
.end method

.method public synthetic isReadOnly()Z
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileSystem$Wrapper;->wrappedValue:Ljj$/nio/file/FileSystem;

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public synthetic newWatchService()Ljava/nio/file/WatchService;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileSystem$Wrapper;->wrappedValue:Ljj$/nio/file/FileSystem;

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->newWatchService()Ljj$/nio/file/WatchService;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/WatchService$Wrapper;->convert(Ljj$/nio/file/WatchService;)Ljava/nio/file/WatchService;

    move-result-object v0

    return-object v0
.end method

.method public synthetic provider()Ljava/nio/file/spi/FileSystemProvider;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileSystem$Wrapper;->wrappedValue:Ljj$/nio/file/FileSystem;

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->provider()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/spi/FileSystemProvider$Wrapper;->convert(Ljj$/nio/file/spi/FileSystemProvider;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method public synthetic supportedFileAttributeViews()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileSystem$Wrapper;->wrappedValue:Ljj$/nio/file/FileSystem;

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->supportedFileAttributeViews()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
