.class public final Ljj$/nio/file/attribute/PosixFilePermissions;
.super Ljava/lang/Object;
.source "PosixFilePermissions.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asFileAttribute(Ljava/util/Set;)Ljj$/nio/file/attribute/FileAttribute;
    .registers 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/nio/file/attribute/PosixFilePermission;

    if-eqz v1, :cond_18

    goto :goto_9

    :cond_18
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    :cond_1e
    move-object p0, v0

    new-instance v1, Ljj$/nio/file/attribute/PosixFilePermissions$1;

    invoke-direct {v1, p0}, Ljj$/nio/file/attribute/PosixFilePermissions$1;-><init>(Ljava/util/Set;)V

    return-object v1
.end method

.method public static fromString(Ljava/lang/String;)Ljava/util/Set;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_a0

    const-class v0, Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljj$/nio/file/attribute/PosixFilePermissions;->isR(C)Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1e
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljj$/nio/file/attribute/PosixFilePermissions;->isW(C)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2e
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljj$/nio/file/attribute/PosixFilePermissions;->isX(C)Z

    move-result v1

    if-eqz v1, :cond_3e

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3e
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljj$/nio/file/attribute/PosixFilePermissions;->isR(C)Z

    move-result v1

    if-eqz v1, :cond_4e

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4e
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljj$/nio/file/attribute/PosixFilePermissions;->isW(C)Z

    move-result v1

    if-eqz v1, :cond_5e

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5e
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljj$/nio/file/attribute/PosixFilePermissions;->isX(C)Z

    move-result v1

    if-eqz v1, :cond_6e

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6e
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljj$/nio/file/attribute/PosixFilePermissions;->isR(C)Z

    move-result v1

    if-eqz v1, :cond_7e

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7e
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljj$/nio/file/attribute/PosixFilePermissions;->isW(C)Z

    move-result v1

    if-eqz v1, :cond_8e

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8e
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljj$/nio/file/attribute/PosixFilePermissions;->isX(C)Z

    move-result v1

    if-eqz v1, :cond_9f

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9f
    return-object v0

    :cond_a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isR(C)Z
    .registers 2

    const/16 v0, 0x72

    invoke-static {p0, v0}, Ljj$/nio/file/attribute/PosixFilePermissions;->isSet(CC)Z

    move-result v0

    return v0
.end method

.method private static isSet(CC)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isW(C)Z
    .registers 2

    const/16 v0, 0x77

    invoke-static {p0, v0}, Ljj$/nio/file/attribute/PosixFilePermissions;->isSet(CC)Z

    move-result v0

    return v0
.end method

.method private static isX(C)Z
    .registers 2

    const/16 v0, 0x78

    invoke-static {p0, v0}, Ljj$/nio/file/attribute/PosixFilePermissions;->isSet(CC)Z

    move-result v0

    return v0
.end method

.method public static toString(Ljava/util/Set;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Ljj$/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Ljj$/nio/file/attribute/PosixFilePermissions;->writeBits(Ljava/lang/StringBuilder;ZZZ)V

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Ljj$/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Ljj$/nio/file/attribute/PosixFilePermissions;->writeBits(Ljava/lang/StringBuilder;ZZZ)V

    sget-object v1, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    sget-object v2, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Ljj$/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljj$/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Ljj$/nio/file/attribute/PosixFilePermissions;->writeBits(Ljava/lang/StringBuilder;ZZZ)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static writeBits(Ljava/lang/StringBuilder;ZZZ)V
    .registers 6

    const/16 v0, 0x2d

    if-eqz p1, :cond_a

    const/16 v1, 0x72

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_a
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_d
    if-eqz p2, :cond_15

    const/16 v1, 0x77

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_15
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_18
    if-eqz p3, :cond_20

    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_20
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_23
    return-void
.end method
