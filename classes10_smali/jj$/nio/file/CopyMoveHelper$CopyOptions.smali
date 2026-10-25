.class Ljj$/nio/file/CopyMoveHelper$CopyOptions;
.super Ljava/lang/Object;
.source "CopyMoveHelper.java"


# instance fields
.field copyAttributes:Z

.field followLinks:Z

.field replaceExisting:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/nio/file/CopyMoveHelper$CopyOptions;->replaceExisting:Z

    iput-boolean v0, p0, Ljj$/nio/file/CopyMoveHelper$CopyOptions;->copyAttributes:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/nio/file/CopyMoveHelper$CopyOptions;->followLinks:Z

    return-void
.end method

.method static varargs parse([Ljj$/nio/file/CopyOption;)Ljj$/nio/file/CopyMoveHelper$CopyOptions;
    .registers 8

    new-instance v0, Ljj$/nio/file/CopyMoveHelper$CopyOptions;

    invoke-direct {v0}, Ljj$/nio/file/CopyMoveHelper$CopyOptions;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_4c

    aget-object v4, p0, v3

    sget-object v5, Ljj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljj$/nio/file/StandardCopyOption;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_14

    iput-boolean v6, v0, Ljj$/nio/file/CopyMoveHelper$CopyOptions;->replaceExisting:Z

    goto :goto_22

    :cond_14
    sget-object v5, Ljj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljj$/nio/file/LinkOption;

    if-ne v4, v5, :cond_1b

    iput-boolean v2, v0, Ljj$/nio/file/CopyMoveHelper$CopyOptions;->followLinks:Z

    goto :goto_22

    :cond_1b
    sget-object v5, Ljj$/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljj$/nio/file/StandardCopyOption;

    if-ne v4, v5, :cond_25

    iput-boolean v6, v0, Ljj$/nio/file/CopyMoveHelper$CopyOptions;->copyAttributes:Z

    nop

    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_25
    if-nez v4, :cond_2d

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_2d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a recognized copy option"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4c
    return-object v0
.end method
