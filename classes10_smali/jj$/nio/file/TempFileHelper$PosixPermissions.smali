.class Ljj$/nio/file/TempFileHelper$PosixPermissions;
.super Ljava/lang/Object;
.source "TempFileHelper.java"


# static fields
.field static final dirPermissions:Ljj$/nio/file/attribute/FileAttribute;

.field static final filePermissions:Ljj$/nio/file/attribute/FileAttribute;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/PosixFilePermissions;->asFileAttribute(Ljava/util/Set;)Ljj$/nio/file/attribute/FileAttribute;

    move-result-object v0

    sput-object v0, Ljj$/nio/file/TempFileHelper$PosixPermissions;->filePermissions:Ljj$/nio/file/attribute/FileAttribute;

    sget-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    sget-object v2, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljj$/nio/file/attribute/PosixFilePermissions;->asFileAttribute(Ljava/util/Set;)Ljj$/nio/file/attribute/FileAttribute;

    move-result-object v0

    sput-object v0, Ljj$/nio/file/TempFileHelper$PosixPermissions;->dirPermissions:Ljj$/nio/file/attribute/FileAttribute;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
