.class public final synthetic Ljj$/nio/file/StandardOpenOption$EnumConversion;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic convert(Ljj$/nio/file/StandardOpenOption;)Ljava/nio/file/StandardOpenOption;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->READ:Ljj$/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_b

    sget-object p0, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    return-object p0

    :cond_b
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->WRITE:Ljj$/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_12

    sget-object p0, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    return-object p0

    :cond_12
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->APPEND:Ljj$/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_19

    sget-object p0, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    return-object p0

    :cond_19
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljj$/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_20

    sget-object p0, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    return-object p0

    :cond_20
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->CREATE:Ljj$/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_27

    sget-object p0, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    return-object p0

    :cond_27
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->CREATE_NEW:Ljj$/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_2e

    sget-object p0, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    return-object p0

    :cond_2e
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljj$/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_35

    sget-object p0, Ljava/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljava/nio/file/StandardOpenOption;

    return-object p0

    :cond_35
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->SPARSE:Ljj$/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_3c

    sget-object p0, Ljava/nio/file/StandardOpenOption;->SPARSE:Ljava/nio/file/StandardOpenOption;

    return-object p0

    :cond_3c
    sget-object v0, Ljj$/nio/file/StandardOpenOption;->SYNC:Ljj$/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_43

    sget-object p0, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    return-object p0

    :cond_43
    sget-object p0, Ljava/nio/file/StandardOpenOption;->DSYNC:Ljava/nio/file/StandardOpenOption;

    return-object p0
.end method

.method public static synthetic convert(Ljava/nio/file/StandardOpenOption;)Ljj$/nio/file/StandardOpenOption;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object v0, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_b

    sget-object p0, Ljj$/nio/file/StandardOpenOption;->READ:Ljj$/nio/file/StandardOpenOption;

    return-object p0

    :cond_b
    sget-object v0, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_12

    sget-object p0, Ljj$/nio/file/StandardOpenOption;->WRITE:Ljj$/nio/file/StandardOpenOption;

    return-object p0

    :cond_12
    sget-object v0, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_19

    sget-object p0, Ljj$/nio/file/StandardOpenOption;->APPEND:Ljj$/nio/file/StandardOpenOption;

    return-object p0

    :cond_19
    sget-object v0, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_20

    sget-object p0, Ljj$/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljj$/nio/file/StandardOpenOption;

    return-object p0

    :cond_20
    sget-object v0, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_27

    sget-object p0, Ljj$/nio/file/StandardOpenOption;->CREATE:Ljj$/nio/file/StandardOpenOption;

    return-object p0

    :cond_27
    sget-object v0, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_2e

    sget-object p0, Ljj$/nio/file/StandardOpenOption;->CREATE_NEW:Ljj$/nio/file/StandardOpenOption;

    return-object p0

    :cond_2e
    sget-object v0, Ljava/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljava/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_35

    sget-object p0, Ljj$/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljj$/nio/file/StandardOpenOption;

    return-object p0

    :cond_35
    sget-object v0, Ljava/nio/file/StandardOpenOption;->SPARSE:Ljava/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_3c

    sget-object p0, Ljj$/nio/file/StandardOpenOption;->SPARSE:Ljj$/nio/file/StandardOpenOption;

    return-object p0

    :cond_3c
    sget-object v0, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    if-ne p0, v0, :cond_43

    sget-object p0, Ljj$/nio/file/StandardOpenOption;->SYNC:Ljj$/nio/file/StandardOpenOption;

    return-object p0

    :cond_43
    sget-object p0, Ljj$/nio/file/StandardOpenOption;->DSYNC:Ljj$/nio/file/StandardOpenOption;

    return-object p0
.end method
