.class public abstract Ljj$/nio/file/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract getFileStores()Ljava/lang/Iterable;
.end method

.method public varargs abstract getPath(Ljava/lang/String;[Ljava/lang/String;)Ljj$/nio/file/Path;
.end method

.method public abstract getPathMatcher(Ljava/lang/String;)Ljj$/nio/file/PathMatcher;
.end method

.method public abstract getRootDirectories()Ljava/lang/Iterable;
.end method

.method public abstract getSeparator()Ljava/lang/String;
.end method

.method public abstract getUserPrincipalLookupService()Ljj$/nio/file/attribute/UserPrincipalLookupService;
.end method

.method public abstract isOpen()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract newWatchService()Ljj$/nio/file/WatchService;
.end method

.method public abstract provider()Ljj$/nio/file/spi/FileSystemProvider;
.end method

.method public abstract supportedFileAttributeViews()Ljava/util/Set;
.end method
