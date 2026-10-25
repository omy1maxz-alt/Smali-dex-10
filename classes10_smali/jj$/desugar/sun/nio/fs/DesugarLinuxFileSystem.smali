.class public Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;
.super Ljj$/nio/file/FileSystem;
.source "DesugarLinuxFileSystem.java"


# static fields
.field private static final GLOB_SYNTAX:Ljava/lang/String; = "glob"

.field private static final REGEX_SYNTAX:Ljava/lang/String; = "regex"

.field public static final SEPARATOR:Ljava/lang/String; = "/"


# instance fields
.field private final provider:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

.field private final rootDir:Ljava/lang/String;

.field private final userDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljj$/nio/file/FileSystem;-><init>()V

    iput-object p1, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->provider:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    iput-object p2, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->userDir:Ljava/lang/String;

    iput-object p3, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->rootDir:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$getPathMatcher$0(Ljava/util/regex/Pattern;Ljj$/nio/file/Path;)Z
    .registers 3

    invoke-interface {p1}, Ljj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFileStores()Ljava/lang/Iterable;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getPath(Ljava/lang/String;[Ljava/lang/String;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;
    .registers 8

    array-length v0, p2

    if-nez v0, :cond_5

    move-object v0, p1

    goto :goto_2f

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_2a

    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_24

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_2f
    new-instance v1, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v2, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->userDir:Ljava/lang/String;

    iget-object v3, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->rootDir:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2, v3}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic getPath(Ljava/lang/String;[Ljava/lang/String;)Ljj$/nio/file/Path;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object p1

    return-object p1
.end method

.method public getPathMatcher(Ljava/lang/String;)Ljj$/nio/file/PathMatcher;
    .registers 8

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_58

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_58

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "glob"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-static {v2}, Ljj$/desugar/sun/nio/fs/DesugarGlobs;->toUnixRegexPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2f

    :cond_26
    const-string v3, "regex"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    move-object v3, v2

    :goto_2f
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    new-instance v5, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticLambda4;

    invoke-direct {v5, v4}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticLambda4;-><init>(Ljava/util/regex/Pattern;)V

    return-object v5

    :cond_39
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Syntax \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' not recognized"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_58
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const-string v1, "Requested <syntax>:<pattern> spliterator(\':\') position(%d) is out of bound in %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRootDir()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->rootDir:Ljava/lang/String;

    return-object v0
.end method

.method public getRootDirectories()Ljava/lang/Iterable;
    .registers 5

    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->userDir:Ljava/lang/String;

    iget-object v2, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->rootDir:Ljava/lang/String;

    const-string v3, "/"

    invoke-direct {v0, p0, v3, v1, v2}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSeparator()Ljava/lang/String;
    .registers 2

    const-string v0, "/"

    return-object v0
.end method

.method public getUserDir()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->userDir:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPrincipalLookupService()Ljj$/nio/file/attribute/UserPrincipalLookupService;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isOpen()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public newWatchService()Ljj$/nio/file/WatchService;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public provider()Ljj$/nio/file/spi/FileSystemProvider;
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;->provider:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    return-object v0
.end method

.method public supportedFileAttributeViews()Ljava/util/Set;
    .registers 2

    const-string v0, "basic"

    invoke-static {v0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
