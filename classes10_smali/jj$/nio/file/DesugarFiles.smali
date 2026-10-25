.class public final Ljj$/nio/file/DesugarFiles;
.super Ljava/lang/Object;
.source "DesugarFiles.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readString(Ljj$/nio/file/Path;)Ljava/lang/String;
    .registers 2

    sget-object v0, Ljj$/sun/nio/cs/UTF_8;->INSTANCE:Ljj$/sun/nio/cs/UTF_8;

    invoke-static {p0, v0}, Ljj$/nio/file/DesugarFiles;->readString(Ljj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readString(Ljj$/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljj$/nio/file/Files;->readAllBytes(Ljj$/nio/file/Path;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static varargs writeString(Ljj$/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljj$/nio/file/OpenOption;)Ljj$/nio/file/Path;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0, p3}, Ljj$/nio/file/Files;->write(Ljj$/nio/file/Path;[B[Ljj$/nio/file/OpenOption;)Ljj$/nio/file/Path;

    return-object p0
.end method

.method public static varargs writeString(Ljj$/nio/file/Path;Ljava/lang/CharSequence;[Ljj$/nio/file/OpenOption;)Ljj$/nio/file/Path;
    .registers 4

    sget-object v0, Ljj$/sun/nio/cs/UTF_8;->INSTANCE:Ljj$/sun/nio/cs/UTF_8;

    invoke-static {p0, p1, v0, p2}, Ljj$/nio/file/DesugarFiles;->writeString(Ljj$/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljj$/nio/file/OpenOption;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method
