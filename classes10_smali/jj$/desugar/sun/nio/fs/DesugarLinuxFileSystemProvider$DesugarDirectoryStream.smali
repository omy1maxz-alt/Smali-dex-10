.class Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarDirectoryStream;
.super Ljava/lang/Object;
.source "DesugarLinuxFileSystemProvider.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream;


# instance fields
.field iterator:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;

.field final synthetic this$0:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;


# direct methods
.method constructor <init>(Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;Ljj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)V
    .registers 5

    iput-object p1, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarDirectoryStream;->this$0:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;

    invoke-direct {v0, p1, p2, p3}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;-><init>(Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider;Ljj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)V

    iput-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarDirectoryStream;->iterator:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarDirectoryStream;->iterator:Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$DesugarPathIterator;

    return-object v0
.end method
