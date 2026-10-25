.class public final synthetic Ljj$/nio/file/Path$$ExternalSynthetic$CollectionConversion3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m([Ljj$/nio/file/LinkOption;)[Ljava/nio/file/LinkOption;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_15

    aget-object v3, p0, v2

    invoke-static {v3}, Ljj$/nio/file/LinkOption$EnumConversion;->convert(Ljj$/nio/file/LinkOption;)Ljava/nio/file/LinkOption;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    return-object v1
.end method
