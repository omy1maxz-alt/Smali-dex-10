.class public Ljj$/desugar/sun/nio/fs/DesugarUnixPath;
.super Ljava/lang/Object;
.source "DesugarUnixPath.java"

# interfaces
.implements Ljj$/nio/file/Path;


# static fields
.field private static final PATH_COMPONENT_SPLITERATOR:Ljava/util/regex/Pattern;

.field private static final SEPARATOR:Ljava/lang/String; = "/"


# instance fields
.field private volatile byteArrayValue:[B

.field private final fileNames:Ljava/util/List;

.field private final fileSystem:Ljj$/nio/file/FileSystem;

.field private final isAbsolutePath:Z

.field private final pathText:Ljava/lang/String;

.field private final rootDir:Ljava/lang/String;

.field private final userDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "/+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->PATH_COMPONENT_SPLITERATOR:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    invoke-static {p2}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getFileNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljj$/nio/file/FileSystem;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Ljj$/nio/file/FileSystem;

    iput-boolean p2, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolutePath:Z

    iput-object p3, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    invoke-static {p2, p3}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getPathText(ZLjava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->pathText:Ljava/lang/String;

    iput-object p4, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iput-object p5, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    return-void
.end method

.method private static getFileNames(Ljava/lang/String;)Ljava/util/List;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ""

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->PATH_COMPONENT_SPLITERATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Ljj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljj$/desugar/sun/nio/fs/DesugarUnixPath$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljj$/util/stream/Collectors;->toUnmodifiableList()Ljj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljj$/util/stream/Stream;->collect(Ljj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static getPathText(ZLjava/util/Collection;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    if-eqz p0, :cond_b

    move-object v2, v1

    goto :goto_d

    :cond_b
    const-string v2, ""

    :goto_d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, p1}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getFileNames$0(Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private subPathName(II)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    const-string v1, "/"

    invoke-static {v1, v0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method asByteArray()[B
    .registers 3

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->byteArrayValue:[B

    if-nez v0, :cond_10

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->pathText:Ljava/lang/String;

    invoke-static {}, Ljj$/desugar/sun/nio/fs/DesugarUtil;->jnuEncoding()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->byteArrayValue:[B

    :cond_10
    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->byteArrayValue:[B

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljj$/nio/file/Path;

    invoke-virtual {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->compareTo(Ljj$/nio/file/Path;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljj$/nio/file/Path;)I
    .registers 4

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->pathText:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, v1, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->pathText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Ljj$/nio/file/FileSystem;

    iget-object v2, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v3, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->endsWith(Ljj$/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public endsWith(Ljj$/nio/file/Path;)Z
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return v1

    :cond_9
    invoke-interface {p1}, Ljj$/nio/file/Path;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_14
    invoke-interface {p1}, Ljj$/nio/file/Path;->getNameCount()I

    move-result v0

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getNameCount()I

    move-result v2

    if-ge v2, v0, :cond_1f

    return v1

    :cond_1f
    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getNameCount()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    :goto_25
    if-ltz v3, :cond_3c

    sub-int v4, v3, v0

    add-int/2addr v4, v2

    invoke-virtual {p0, v4}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getName(I)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v4

    invoke-interface {p1, v3}, Ljj$/nio/file/Path;->getName(I)Ljj$/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    return v1

    :cond_39
    add-int/lit8 v3, v3, -0x1

    goto :goto_25

    :cond_3c
    const/4 v1, 0x1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    invoke-virtual {p0, v0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->compareTo(Ljj$/nio/file/Path;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public getFileName()Ljj$/desugar/sun/nio/fs/DesugarUnixPath;
    .registers 6

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolutePath:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_29

    :cond_e
    move-object v0, p0

    goto :goto_29

    :cond_10
    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Ljj$/nio/file/FileSystem;

    iget-object v2, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getNameCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v4, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    return-object v0
.end method

.method public bridge synthetic getFileName()Ljj$/nio/file/Path;
    .registers 2

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getFileName()Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    return-object v0
.end method

.method public getFileSystem()Ljj$/nio/file/FileSystem;
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Ljj$/nio/file/FileSystem;

    return-object v0
.end method

.method public getName(I)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;
    .registers 7

    if-ltz p1, :cond_1c

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getNameCount()I

    move-result v0

    if-ge p1, v0, :cond_1c

    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Ljj$/nio/file/FileSystem;

    iget-object v2, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v4, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    const-string v1, "Requested name for index (%d) is out of bound in \n%s."

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getName(I)Ljj$/nio/file/Path;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getName(I)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object p1

    return-object p1
.end method

.method public getNameCount()I
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParent()Ljj$/desugar/sun/nio/fs/DesugarUnixPath;
    .registers 8

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getNameCount()I

    move-result v0

    if-eqz v0, :cond_37

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-boolean v1, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolutePath:Z

    if-nez v1, :cond_e

    goto :goto_37

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolutePath:Z

    if-eqz v2, :cond_1c

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->subPathName(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v4, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Ljj$/nio/file/FileSystem;

    iget-object v5, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v6, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v5, v6}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_37
    :goto_37
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic getParent()Ljj$/nio/file/Path;
    .registers 2

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getParent()Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Ljj$/desugar/sun/nio/fs/DesugarUnixPath;
    .registers 6

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v1

    iget-object v2, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    iget-object v3, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v4, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getRoot()Ljj$/nio/file/Path;
    .registers 2

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getRoot()Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    return-object v0
.end method

.method getUserDir()Ljj$/desugar/sun/nio/fs/DesugarUnixPath;
    .registers 6

    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v1

    iget-object v2, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v3, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v4, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->pathText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolutePath:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    invoke-static {p0}, Ljj$/nio/file/Path$-CC;->$default$iterator(Ljj$/nio/file/Path;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public normalize()Ljj$/desugar/sun/nio/fs/DesugarUnixPath;
    .registers 7

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_54

    :cond_1e
    goto :goto_33

    :sswitch_1f
    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_34

    :sswitch_29
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_34

    :goto_33
    const/4 v3, -0x1

    :goto_34
    packed-switch v3, :pswitch_data_5e

    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :pswitch_3b  #0x1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    goto :goto_40

    :pswitch_3f  #0x0
    nop

    :goto_40
    goto :goto_b

    :cond_41
    new-instance v1, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v2, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Ljj$/nio/file/FileSystem;

    iget-boolean v3, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolutePath:Z

    invoke-static {v3, v0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getPathText(ZLjava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v5, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    nop

    :sswitch_data_54
    .sparse-switch
        0x2e -> :sswitch_29
        0x5c0 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_3f  #00000000
        :pswitch_3b  #00000001
    .end packed-switch
.end method

.method public bridge synthetic normalize()Ljj$/nio/file/Path;
    .registers 2

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->normalize()Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    return-object v0
.end method

.method public varargs synthetic register(Ljj$/nio/file/WatchService;[Ljj$/nio/file/WatchEvent$Kind;)Ljj$/nio/file/WatchKey;
    .registers 3

    invoke-static {p0, p1, p2}, Ljj$/nio/file/Path$-CC;->$default$register(Ljj$/nio/file/Path;Ljj$/nio/file/WatchService;[Ljj$/nio/file/WatchEvent$Kind;)Ljj$/nio/file/WatchKey;

    move-result-object p1

    return-object p1
.end method

.method public varargs register(Ljj$/nio/file/WatchService;[Ljj$/nio/file/WatchEvent$Kind;[Ljj$/nio/file/WatchEvent$Modifier;)Ljj$/nio/file/WatchKey;
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Watch Service is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public relativize(Ljj$/nio/file/Path;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;
    .registers 13

    instance-of v0, p1, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    if-eqz v0, :cond_6c

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolute()Z

    move-result v0

    invoke-interface {p1}, Ljj$/nio/file/Path;->isAbsolute()Z

    move-result v1

    if-ne v0, v1, :cond_64

    move-object v0, p1

    check-cast v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v0, v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v1, :cond_37

    if-ge v3, v2, :cond_37

    iget-object v4, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileNames:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v4

    move v4, v3

    :goto_3e
    if-ge v4, v1, :cond_48

    const-string v5, ".."

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_48
    move v4, v3

    :goto_49
    if-ge v4, v2, :cond_57

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_57
    new-instance v5, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v6, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Ljj$/nio/file/FileSystem;

    iget-object v9, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v10, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v10}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'other\' is different type of Path in absolute property."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s)."

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic relativize(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->relativize(Ljj$/nio/file/Path;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Ljj$/nio/file/Path;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;
    .registers 7

    instance-of v0, p1, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljj$/nio/file/Path;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    return-object v0

    :cond_e
    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Ljj$/nio/file/FileSystem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->pathText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v4, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s)."

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic resolve(Ljava/lang/String;)Ljj$/nio/file/Path;
    .registers 2

    invoke-static {p0, p1}, Ljj$/nio/file/Path$-CC;->$default$resolve(Ljj$/nio/file/Path;Ljava/lang/String;)Ljj$/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resolve(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->resolve(Ljj$/nio/file/Path;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object p1

    return-object p1
.end method

.method public resolveSibling(Ljava/lang/String;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;
    .registers 6

    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Ljj$/nio/file/FileSystem;

    iget-object v2, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v3, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->resolveSibling(Ljj$/nio/file/Path;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    return-object v0
.end method

.method public resolveSibling(Ljj$/nio/file/Path;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;
    .registers 6

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getParent()Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    if-nez v0, :cond_12

    move-object v1, p1

    check-cast v1, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    goto :goto_16

    :cond_12
    invoke-virtual {v0, p1}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->resolve(Ljj$/nio/file/Path;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v1

    :goto_16
    return-object v1

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s)."

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic resolveSibling(Ljava/lang/String;)Ljj$/nio/file/Path;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->resolveSibling(Ljava/lang/String;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resolveSibling(Ljj$/nio/file/Path;)Ljj$/nio/file/Path;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->resolveSibling(Ljj$/nio/file/Path;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object p1

    return-object p1
.end method

.method public startsWith(Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Ljj$/nio/file/FileSystem;

    iget-object v2, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v3, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->startsWith(Ljj$/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljj$/nio/file/Path;)Z
    .registers 7

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolute()Z

    move-result v0

    invoke-interface {p1}, Ljj$/nio/file/Path;->isAbsolute()Z

    move-result v2

    if-eq v0, v2, :cond_14

    return v1

    :cond_14
    invoke-interface {p1}, Ljj$/nio/file/Path;->getNameCount()I

    move-result v0

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getNameCount()I

    move-result v2

    if-ge v2, v0, :cond_1f

    return v1

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    if-ge v2, v0, :cond_34

    invoke-virtual {p0, v2}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getName(I)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v3

    invoke-interface {p1, v2}, Ljj$/nio/file/Path;->getName(I)Ljj$/nio/file/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    return v1

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_34
    const/4 v1, 0x1

    return v1
.end method

.method public subpath(II)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;
    .registers 8

    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Ljj$/nio/file/FileSystem;

    invoke-direct {p0, p1, p2}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->subPathName(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v4, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic subpath(II)Ljj$/nio/file/Path;
    .registers 3

    invoke-virtual {p0, p1, p2}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->subpath(II)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object p1

    return-object p1
.end method

.method public toAbsolutePath()Ljj$/desugar/sun/nio/fs/DesugarUnixPath;
    .registers 2

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getUserDir()Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->resolve(Ljj$/nio/file/Path;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public bridge synthetic toAbsolutePath()Ljj$/nio/file/Path;
    .registers 2

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->toAbsolutePath()Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    return-object v0
.end method

.method public toFile()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs toRealPath([Ljj$/nio/file/LinkOption;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;
    .registers 7

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->provider()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljj$/nio/file/AccessMode;

    const/4 v2, 0x0

    sget-object v3, Ljj$/nio/file/AccessMode;->READ:Ljj$/nio/file/AccessMode;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljj$/nio/file/spi/FileSystemProvider;->checkAccess(Ljj$/nio/file/Path;[Ljj$/nio/file/AccessMode;)V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljj$/nio/file/LinkOption;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->toAbsolutePath()Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object v0

    return-object v0

    :cond_24
    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->fileSystem:Ljj$/nio/file/FileSystem;

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->userDir:Ljava/lang/String;

    iget-object v4, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->rootDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic toRealPath([Ljj$/nio/file/LinkOption;)Ljj$/nio/file/Path;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->toRealPath([Ljj$/nio/file/LinkOption;)Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;->pathText:Ljava/lang/String;

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .registers 2

    invoke-static {p0}, Ljj$/desugar/sun/nio/fs/DesugarUnixUriUtils;->toUri(Ljj$/desugar/sun/nio/fs/DesugarUnixPath;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
