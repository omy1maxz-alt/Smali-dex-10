.class public abstract Landroidx/documentfile/provider/DocumentFile;
.super Ljava/lang/Object;
.source "DocumentFile.java"


# instance fields
.field private final mParent:Landroidx/documentfile/provider/DocumentFile;


# direct methods
.method constructor <init>(Landroidx/documentfile/provider/DocumentFile;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/documentfile/provider/DocumentFile;->mParent:Landroidx/documentfile/provider/DocumentFile;

    return-void
.end method

.method public static fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_d

    new-instance v0, Landroidx/documentfile/provider/SingleDocumentFile;

    invoke-direct {v0, v1, p0, p1}, Landroidx/documentfile/provider/SingleDocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    :cond_d
    return-object v1
.end method

.method public static fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1f

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :cond_15
    new-instance v2, Landroidx/documentfile/provider/TreeDocumentFile;

    invoke-static {p1, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v1, p0, p1}, Landroidx/documentfile/provider/TreeDocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    return-object v2

    :cond_1f
    return-object v1
.end method


# virtual methods
.method public abstract canRead()Z
.end method

.method public abstract canWrite()Z
.end method

.method public abstract createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
.end method

.method public abstract createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
.end method

.method public abstract delete()Z
.end method

.method public abstract exists()Z
.end method

.method public findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .registers 7

    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getParentFile()Landroidx/documentfile/provider/DocumentFile;
    .registers 2

    iget-object v0, p0, Landroidx/documentfile/provider/DocumentFile;->mParent:Landroidx/documentfile/provider/DocumentFile;

    return-object v0
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract isFile()Z
.end method

.method public abstract length()J
.end method

.method public abstract listFiles()[Landroidx/documentfile/provider/DocumentFile;
.end method
