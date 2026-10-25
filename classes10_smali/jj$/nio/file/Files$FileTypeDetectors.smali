.class Ljj$/nio/file/Files$FileTypeDetectors;
.super Ljava/lang/Object;
.source "Files.java"


# static fields
.field static final defaultFileTypeDetector:Ljj$/nio/file/spi/FileTypeDetector;

.field static final installedDetectors:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljj$/nio/file/Files$FileTypeDetectors;->createDefaultFileTypeDetector()Ljj$/nio/file/spi/FileTypeDetector;

    move-result-object v0

    sput-object v0, Ljj$/nio/file/Files$FileTypeDetectors;->defaultFileTypeDetector:Ljj$/nio/file/spi/FileTypeDetector;

    invoke-static {}, Ljj$/nio/file/Files$FileTypeDetectors;->loadInstalledDetectors()Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljj$/nio/file/Files$FileTypeDetectors;->installedDetectors:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDefaultFileTypeDetector()Ljj$/nio/file/spi/FileTypeDetector;
    .registers 1

    new-instance v0, Ljj$/nio/file/Files$FileTypeDetectors$1;

    invoke-direct {v0}, Ljj$/nio/file/Files$FileTypeDetectors$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/nio/file/spi/FileTypeDetector;

    return-object v0
.end method

.method private static loadInstalledDetectors()Ljava/util/List;
    .registers 1

    new-instance v0, Ljj$/nio/file/Files$FileTypeDetectors$2;

    invoke-direct {v0}, Ljj$/nio/file/Files$FileTypeDetectors$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
