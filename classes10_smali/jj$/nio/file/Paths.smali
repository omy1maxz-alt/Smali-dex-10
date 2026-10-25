.class public final Ljj$/nio/file/Paths;
.super Ljava/lang/Object;
.source "Paths.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs get(Ljava/lang/String;[Ljava/lang/String;)Ljj$/nio/file/Path;
    .registers 3

    invoke-static {p0, p1}, Ljj$/nio/file/Path$-CC;->of(Ljava/lang/String;[Ljava/lang/String;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/net/URI;)Ljj$/nio/file/Path;
    .registers 2

    invoke-static {p0}, Ljj$/nio/file/Path$-CC;->of(Ljava/net/URI;)Ljj$/nio/file/Path;

    move-result-object v0

    return-object v0
.end method
