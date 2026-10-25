.class public final synthetic Ljj$/nio/channels/DesugarFileChannel;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs open(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .registers 5

    invoke-interface {p0}, Ljj$/nio/file/Path;->getFileSystem()Ljj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/nio/file/FileSystem;->provider()Ljj$/nio/file/spi/FileSystemProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ljj$/nio/file/spi/FileSystemProvider;->newFileChannel(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    return-object v1
.end method

.method public static varargs open(Ljj$/nio/file/Path;[Ljj$/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;
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

    invoke-static {p0, v0, v1}, Ljj$/nio/channels/DesugarFileChannel$$ExternalSyntheticAPIConversion0;->m(Ljj$/nio/file/Path;Ljava/util/Set;[Ljj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    return-object v1
.end method
