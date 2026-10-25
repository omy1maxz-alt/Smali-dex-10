.class Ljj$/nio/file/Files$2;
.super Ljava/lang/Object;
.source "Files.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic val$delegate:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    iput-object p1, p0, Ljj$/nio/file/Files$2;->val$delegate:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Ljj$/nio/file/Files$2;->val$delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_6
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-virtual {v0}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/nio/file/Files$2;->next()Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljj$/nio/file/Path;
    .registers 4

    :try_start_0
    iget-object v0, p0, Ljj$/nio/file/Files$2;->val$delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/Path;
    :try_end_8
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-virtual {v0}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
