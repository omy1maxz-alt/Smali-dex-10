.class public interface abstract Ljj$/nio/file/Path;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Iterable;
.implements Ljj$/nio/file/Watchable;


# virtual methods
.method public abstract compareTo(Ljj$/nio/file/Path;)I
.end method

.method public abstract endsWith(Ljava/lang/String;)Z
.end method

.method public abstract endsWith(Ljj$/nio/file/Path;)Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getFileName()Ljj$/nio/file/Path;
.end method

.method public abstract getFileSystem()Ljj$/nio/file/FileSystem;
.end method

.method public abstract getName(I)Ljj$/nio/file/Path;
.end method

.method public abstract getNameCount()I
.end method

.method public abstract getParent()Ljj$/nio/file/Path;
.end method

.method public abstract getRoot()Ljj$/nio/file/Path;
.end method

.method public abstract hashCode()I
.end method

.method public abstract isAbsolute()Z
.end method

.method public abstract iterator()Ljava/util/Iterator;
.end method

.method public abstract normalize()Ljj$/nio/file/Path;
.end method

.method public varargs abstract register(Ljj$/nio/file/WatchService;[Ljj$/nio/file/WatchEvent$Kind;)Ljj$/nio/file/WatchKey;
.end method

.method public varargs abstract register(Ljj$/nio/file/WatchService;[Ljj$/nio/file/WatchEvent$Kind;[Ljj$/nio/file/WatchEvent$Modifier;)Ljj$/nio/file/WatchKey;
.end method

.method public abstract relativize(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;
.end method

.method public abstract resolve(Ljava/lang/String;)Ljj$/nio/file/Path;
.end method

.method public abstract resolve(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;
.end method

.method public abstract resolveSibling(Ljava/lang/String;)Ljj$/nio/file/Path;
.end method

.method public abstract resolveSibling(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;
.end method

.method public abstract startsWith(Ljava/lang/String;)Z
.end method

.method public abstract startsWith(Ljj$/nio/file/Path;)Z
.end method

.method public abstract subpath(II)Ljj$/nio/file/Path;
.end method

.method public abstract toAbsolutePath()Ljj$/nio/file/Path;
.end method

.method public abstract toFile()Ljava/io/File;
.end method

.method public varargs abstract toRealPath([Ljj$/nio/file/LinkOption;)Ljj$/nio/file/Path;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract toUri()Ljava/net/URI;
.end method
