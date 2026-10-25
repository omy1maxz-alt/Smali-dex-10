.class public final synthetic Ljj$/nio/file/StandardCopyOption$EnumConversion;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic convert(Ljj$/nio/file/StandardCopyOption;)Ljava/nio/file/StandardCopyOption;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object v0, Ljj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljj$/nio/file/StandardCopyOption;

    if-ne p0, v0, :cond_b

    sget-object p0, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    return-object p0

    :cond_b
    sget-object v0, Ljj$/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljj$/nio/file/StandardCopyOption;

    if-ne p0, v0, :cond_12

    sget-object p0, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    return-object p0

    :cond_12
    sget-object p0, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    return-object p0
.end method

.method public static synthetic convert(Ljava/nio/file/StandardCopyOption;)Ljj$/nio/file/StandardCopyOption;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object v0, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    if-ne p0, v0, :cond_b

    sget-object p0, Ljj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljj$/nio/file/StandardCopyOption;

    return-object p0

    :cond_b
    sget-object v0, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    if-ne p0, v0, :cond_12

    sget-object p0, Ljj$/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljj$/nio/file/StandardCopyOption;

    return-object p0

    :cond_12
    sget-object p0, Ljj$/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljj$/nio/file/StandardCopyOption;

    return-object p0
.end method
