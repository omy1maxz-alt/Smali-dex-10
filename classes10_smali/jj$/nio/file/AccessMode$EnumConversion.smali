.class public final synthetic Ljj$/nio/file/AccessMode$EnumConversion;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic convert(Ljj$/nio/file/AccessMode;)Ljava/nio/file/AccessMode;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object v0, Ljj$/nio/file/AccessMode;->READ:Ljj$/nio/file/AccessMode;

    if-ne p0, v0, :cond_b

    sget-object p0, Ljava/nio/file/AccessMode;->READ:Ljava/nio/file/AccessMode;

    return-object p0

    :cond_b
    sget-object v0, Ljj$/nio/file/AccessMode;->WRITE:Ljj$/nio/file/AccessMode;

    if-ne p0, v0, :cond_12

    sget-object p0, Ljava/nio/file/AccessMode;->WRITE:Ljava/nio/file/AccessMode;

    return-object p0

    :cond_12
    sget-object p0, Ljava/nio/file/AccessMode;->EXECUTE:Ljava/nio/file/AccessMode;

    return-object p0
.end method

.method public static synthetic convert(Ljava/nio/file/AccessMode;)Ljj$/nio/file/AccessMode;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object v0, Ljava/nio/file/AccessMode;->READ:Ljava/nio/file/AccessMode;

    if-ne p0, v0, :cond_b

    sget-object p0, Ljj$/nio/file/AccessMode;->READ:Ljj$/nio/file/AccessMode;

    return-object p0

    :cond_b
    sget-object v0, Ljava/nio/file/AccessMode;->WRITE:Ljava/nio/file/AccessMode;

    if-ne p0, v0, :cond_12

    sget-object p0, Ljj$/nio/file/AccessMode;->WRITE:Ljj$/nio/file/AccessMode;

    return-object p0

    :cond_12
    sget-object p0, Ljj$/nio/file/AccessMode;->EXECUTE:Ljj$/nio/file/AccessMode;

    return-object p0
.end method
