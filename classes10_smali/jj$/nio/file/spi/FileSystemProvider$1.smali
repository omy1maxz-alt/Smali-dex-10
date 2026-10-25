.class Ljj$/nio/file/spi/FileSystemProvider$1;
.super Ljava/lang/Object;
.source "FileSystemProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/nio/file/spi/FileSystemProvider$1;->run()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/List;
    .registers 2

    invoke-static {}, Ljj$/nio/file/spi/FileSystemProvider;->-$$Nest$smloadInstalledProviders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
