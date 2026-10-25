.class public final synthetic Ljj$/io/DesugarFile;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toPath(Ljava/io/File;)Ljj$/nio/file/Path;
    .registers 4

    invoke-static {}, Ljj$/nio/file/FileSystems;->getDefault()Ljj$/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljj$/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method
