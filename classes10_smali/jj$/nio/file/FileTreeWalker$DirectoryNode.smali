.class Ljj$/nio/file/FileTreeWalker$DirectoryNode;
.super Ljava/lang/Object;
.source "FileTreeWalker.java"


# instance fields
.field private final dir:Ljj$/nio/file/Path;

.field private final iterator:Ljava/util/Iterator;

.field private final key:Ljava/lang/Object;

.field private skipped:Z

.field private final stream:Ljava/nio/file/DirectoryStream;


# direct methods
.method constructor <init>(Ljj$/nio/file/Path;Ljava/lang/Object;Ljava/nio/file/DirectoryStream;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->dir:Ljj$/nio/file/Path;

    iput-object p2, p0, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->key:Ljava/lang/Object;

    iput-object p3, p0, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->stream:Ljava/nio/file/DirectoryStream;

    invoke-interface {p3}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method directory()Ljj$/nio/file/Path;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->dir:Ljj$/nio/file/Path;

    return-object v0
.end method

.method iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method key()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->key:Ljava/lang/Object;

    return-object v0
.end method

.method skip()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->skipped:Z

    return-void
.end method

.method skipped()Z
    .registers 2

    iget-boolean v0, p0, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->skipped:Z

    return v0
.end method

.method stream()Ljava/nio/file/DirectoryStream;
    .registers 2

    iget-object v0, p0, Ljj$/nio/file/FileTreeWalker$DirectoryNode;->stream:Ljava/nio/file/DirectoryStream;

    return-object v0
.end method
