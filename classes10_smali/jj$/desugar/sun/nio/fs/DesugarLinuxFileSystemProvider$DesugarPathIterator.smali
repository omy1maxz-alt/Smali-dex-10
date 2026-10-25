.class Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;
.super Ljava/lang/Object;
.source "DesugarLinuxFileSystemProvider.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final candidates:[Ljava/io/File;

.field private final filter:Ljava/nio/file/DirectoryStream$Filter;

.field private index:I

.field final synthetic this$0:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;


# direct methods
.method constructor <init>(Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;Ljj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)V
    .registers 6

    iput-object p1, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->this$0:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->index:I

    invoke-interface {p2}, Ljj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_15

    new-array v0, v0, [Ljava/io/File;

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    iput-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->candidates:[Ljava/io/File;

    iput-object p3, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->filter:Ljava/nio/file/DirectoryStream$Filter;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->next()Ljj$/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_d

    iget v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->index:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->index:I

    return v1

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->next()Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljj$/nio/file/Path;
    .registers 7

    nop

    :goto_1
    iget v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->index:I

    iget-object v1, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->candidates:[Ljava/io/File;

    array-length v1, v1

    if-lt v0, v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->candidates:[Ljava/io/File;

    iget v1, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->index:I

    aget-object v0, v0, v1

    new-instance v1, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;

    iget-object v2, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->this$0:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    invoke-static {v2}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->access$000(Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;)Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->this$0:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    invoke-static {v4}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->access$100(Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->this$0:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    invoke-static {v5}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;->access$200(Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljj$/desugar/sun/nio/fs/DesugarUnixPath;-><init>(Ljj$/nio/file/FileSystem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2f
    iget-object v2, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;->filter:Ljava/nio/file/DirectoryStream$Filter;

    invoke-interface {v2, v1}, Ljava/nio/file/DirectoryStream$Filter;->accept(Ljava/lang/Object;)Z

    move-result v2
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_35} :catch_3a

    nop

    if-eqz v2, :cond_39

    return-object v1

    :cond_39
    goto :goto_1

    :catch_3a
    move-exception v2

    new-instance v3, Ljava/nio/file/DirectoryIteratorException;

    invoke-direct {v3, v2}, Ljava/nio/file/DirectoryIteratorException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method
