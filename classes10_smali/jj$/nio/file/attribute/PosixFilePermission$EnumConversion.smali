.class public final synthetic Ljj$/nio/file/attribute/PosixFilePermission$EnumConversion;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic convert(Ljj$/nio/file/attribute/PosixFilePermission;)Ljava/nio/file/attribute/PosixFilePermission;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    if-ne p0, v0, :cond_b

    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    return-object p0

    :cond_b
    sget-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    if-ne p0, v0, :cond_12

    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object p0

    :cond_12
    sget-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    if-ne p0, v0, :cond_19

    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object p0

    :cond_19
    sget-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    if-ne p0, v0, :cond_20

    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    return-object p0

    :cond_20
    sget-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    if-ne p0, v0, :cond_27

    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object p0

    :cond_27
    sget-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    if-ne p0, v0, :cond_2e

    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object p0

    :cond_2e
    sget-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    if-ne p0, v0, :cond_35

    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    return-object p0

    :cond_35
    sget-object v0, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    if-ne p0, v0, :cond_3c

    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object p0

    :cond_3c
    sget-object p0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    return-object p0
.end method

.method public static synthetic convert(Ljava/nio/file/attribute/PosixFilePermission;)Ljj$/nio/file/attribute/PosixFilePermission;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    if-ne p0, v0, :cond_b

    sget-object p0, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    return-object p0

    :cond_b
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    if-ne p0, v0, :cond_12

    sget-object p0, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    return-object p0

    :cond_12
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    if-ne p0, v0, :cond_19

    sget-object p0, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    return-object p0

    :cond_19
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    if-ne p0, v0, :cond_20

    sget-object p0, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    return-object p0

    :cond_20
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    if-ne p0, v0, :cond_27

    sget-object p0, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    return-object p0

    :cond_27
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    if-ne p0, v0, :cond_2e

    sget-object p0, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    return-object p0

    :cond_2e
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    if-ne p0, v0, :cond_35

    sget-object p0, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    return-object p0

    :cond_35
    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    if-ne p0, v0, :cond_3c

    sget-object p0, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    return-object p0

    :cond_3c
    sget-object p0, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    return-object p0
.end method
