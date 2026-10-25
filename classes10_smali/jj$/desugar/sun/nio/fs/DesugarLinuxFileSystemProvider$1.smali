.class synthetic Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$1;
.super Ljava/lang/Object;
.source "DesugarLinuxFileSystemProvider.java"


# static fields
.field static final synthetic $SwitchMap$java$nio$file$AccessMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Ljj$/nio/file/AccessMode;->values()[Ljj$/nio/file/AccessMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$1;->$SwitchMap$java$nio$file$AccessMode:[I

    :try_start_9
    sget-object v0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$1;->$SwitchMap$java$nio$file$AccessMode:[I

    sget-object v1, Ljj$/nio/file/AccessMode;->READ:Ljj$/nio/file/AccessMode;

    invoke-virtual {v1}, Ljj$/nio/file/AccessMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$1;->$SwitchMap$java$nio$file$AccessMode:[I

    sget-object v1, Ljj$/nio/file/AccessMode;->WRITE:Ljj$/nio/file/AccessMode;

    invoke-virtual {v1}, Ljj$/nio/file/AccessMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystemProvider$1;->$SwitchMap$java$nio$file$AccessMode:[I

    sget-object v1, Ljj$/nio/file/AccessMode;->EXECUTE:Ljj$/nio/file/AccessMode;

    invoke-virtual {v1}, Ljj$/nio/file/AccessMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    return-void
.end method
