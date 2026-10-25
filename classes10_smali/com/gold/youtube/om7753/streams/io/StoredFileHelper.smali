.class public Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;
.super Ljava/lang/Object;
.source "StoredFileHelper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J


# instance fields
.field private transient context:Landroid/content/Context;

.field private transient docFile:Landroidx/documentfile/provider/DocumentFile;

.field private transient docTree:Landroidx/documentfile/provider/DocumentFile;

.field private transient ioFile:Ljava/io/File;

.field protected source:Ljava/lang/String;

.field private sourceTree:Ljava/lang/String;

.field private srcName:Ljava/lang/String;

.field private srcType:Ljava/lang/String;

.field protected tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/gold/youtube/om7753/App;->debug:Z

    sput-boolean v0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->DEBUG:Z

    const-class v0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    const-string v0, "file"

    if-eqz p4, :cond_3e

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1e

    goto :goto_3e

    :cond_1e
    invoke-static {p1, p3}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p3

    if-eqz p3, :cond_36

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_30

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    return-void

    :cond_30
    iput-object p3, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->takePermissionSAF()V

    goto :goto_4b

    :cond_36
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "SAF not available"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    :goto_3e
    new-instance p3, Ljava/io/File;

    iget-object p4, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    invoke-static {p4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    iput-object p3, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    :goto_4b
    if-eqz p2, :cond_63

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5d

    invoke-static {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    :cond_5d
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    :cond_63
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/gold/youtube/om7753/util/FilePickerActivityHelper;->isOwnFileUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p2}, Lcom/gold/youtube/om7753/util/FilePickerActivityHelper;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    goto :goto_26

    :cond_1a
    invoke-static {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    :goto_26
    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    if-eqz p5, :cond_18

    invoke-virtual {p2, p4, p3}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_10

    goto :goto_1c

    :cond_10
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot create the file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    invoke-direct {p0, p1, p4, p3}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->createSAF(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    :goto_1c
    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    if-nez p3, :cond_c

    const-string p3, "application/octet-stream"

    :cond_c
    iput-object p3, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    :cond_16
    iput-object p4, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_29

    iget-object p2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p2

    if-nez p2, :cond_31

    iget-object p2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    if-eqz p2, :cond_21

    goto :goto_31

    :cond_21
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The filename is already in use by non-file entity and cannot overwrite it"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    iget-object p2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result p2

    if-eqz p2, :cond_52

    :cond_31
    :goto_31
    iget-object p2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-void

    :cond_52
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot create the file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static applyInitialPathToPickerIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    invoke-static {p0}, Lcom/gold/youtube/om7753/settings/NewSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_17

    if-nez p2, :cond_9

    return-object p1

    :cond_9
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p0, p3, :cond_16

    const-string p0, "android.provider.extra.INITIAL_URI"

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_16
    return-object p1

    :cond_17
    if-nez p2, :cond_1c

    if-nez p3, :cond_1c

    return-object p1

    :cond_1c
    if-nez p2, :cond_23

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    goto :goto_31

    :cond_23
    :try_start_23
    invoke-static {p2}, Lcom/gold/youtube/om7753/util/FilePickerActivityHelper;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_28

    goto :goto_31

    :catchall_28
    new-instance p0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_31
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3d

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_4d

    :cond_3d
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_49

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_4d

    :cond_49
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    :cond_4d
    if-eqz p3, :cond_55

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, p2

    :cond_55
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string p2, "nononsense.intent.START_PATH"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private assertValid()V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In invalid state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createSAF(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    invoke-static {p1, v0, p3}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->findFileSAFHelper(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x0

    goto :goto_24

    :cond_1c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Directory with the same name found but cannot delete"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    :goto_24
    if-nez p1, :cond_3d

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    if-nez v0, :cond_2e

    const-string p2, "application/octet-stream"

    :cond_2e
    invoke-virtual {p1, p2, p3}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_35

    goto :goto_3d

    :cond_35
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot create the file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    :goto_3d
    return-object p1
.end method

.method public static deserialize(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;Landroid/content/Context;)Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_a
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance p1, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    iget-object p0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1c
    new-instance v1, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    iget-object p1, v1, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    iput-object p1, v1, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    :cond_31
    iget-object p1, v1, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    if-nez p1, :cond_39

    iget-object p0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    iput-object p0, v1, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    :cond_39
    return-object v1
.end method

.method private getLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :goto_8
    return-object p1
.end method

.method public static getNewPicker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 7

    const/4 v1, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.content.extra.SHOW_ADVANCED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x43

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    if-eqz p1, :cond_25

    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_25
    invoke-static {p0, p2, p3, p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->applyInitialPathToPickerIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getPicker(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    const/4 v1, 0x1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.content.extra.SHOW_ADVANCED"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.intent.category.OPENABLE"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/16 p1, 0x43

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getPicker(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 4

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getPicker(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->applyInitialPathToPickerIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private stringMismatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x1

    if-nez p1, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-nez p2, :cond_f

    const/4 v0, 0x1

    :cond_f
    if-eq v2, v0, :cond_12

    return v1

    :cond_12
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private takePermissionSAF()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_1a

    :catch_11
    move-exception v0

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    :goto_1a
    return-void

    :cond_1b
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public canWrite()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v0

    :goto_15
    return v0
.end method

.method public create()Z
    .registers 5

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->assertValid()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    :try_start_8
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_38

    :catch_f
    return v1

    :cond_10
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_15

    goto :goto_38

    :cond_15
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canRead()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_5b

    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->createSAF(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_34} :catch_5b

    if-nez v0, :cond_37

    return v1

    :cond_37
    const/4 v1, 0x1

    :goto_38
    if-eqz v1, :cond_5b

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_49

    :cond_45
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_49
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    :catch_5b
    :cond_5b
    :goto_5b
    return v1
.end method

.method public delete()Z
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    :cond_11
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    move-result v0

    :try_start_15
    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_25} :catch_25

    :catch_25
    return v0
.end method

.method public equals(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->stringMismatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_60

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_60

    :cond_25
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->isDirect()Z

    move-result v0

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->isDirect()Z

    move-result v1

    if-eq v0, v1, :cond_30

    return v2

    :cond_30
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_47
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_60
    :goto_60
    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    if-eqz v1, :cond_84

    iget-object v3, p1, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    if-eqz v3, :cond_84

    iget-object v4, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    if-eqz v4, :cond_84

    iget-object v4, p1, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    if-nez v4, :cond_71

    goto :goto_84

    :cond_71
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    iget-object p1, p1, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_82

    goto :goto_83

    :cond_82
    const/4 v0, 0x0

    :goto_83
    return v0

    :cond_84
    :goto_84
    return v2
.end method

.method public existsAsFile()Z
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_e

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    if-nez v2, :cond_e

    goto :goto_32

    :cond_e
    const/4 v2, 0x1

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_30

    :cond_22
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_31

    :goto_30
    const/4 v1, 0x1

    :cond_31
    return v1

    :cond_32
    :goto_32
    sget-boolean v0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->DEBUG:Z

    if-eqz v0, :cond_74

    sget-object v0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "existsAsFile called but something is null: source = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v3, :cond_48

    const-string v3, "null => storage is invalid"

    :cond_48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], docFile = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    const-string v4, "null"

    if-nez v3, :cond_57

    move-object v3, v4

    :cond_57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "], ioFile = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    if-nez v3, :cond_64

    goto :goto_65

    :cond_64
    move-object v4, v3

    :goto_65
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    return v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    :cond_1a
    return-object v0
.end method

.method public getParentUri()Landroid/net/Uri;
    .registers 2

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->assertValid()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_d

    :cond_9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getStream()Lcom/gold/youtube/om7753/streams/io/SharpStream;
    .registers 4

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->assertValid()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_f

    new-instance v0, Lus/shandian/giga/io/FileStream;

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-direct {v0, v1}, Lus/shandian/giga/io/FileStream;-><init>(Ljava/io/File;)V

    return-object v0

    :cond_f
    new-instance v0, Lus/shandian/giga/io/FileStreamSAF;

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lus/shandian/giga/io/FileStreamSAF;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_9

    goto :goto_12

    :cond_9
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    :cond_11
    return-object v0

    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->assertValid()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_12
    return-object v0
.end method

.method public invalidate()V
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    iput-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    return-void
.end method

.method public isDirect()Z
    .registers 2

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->assertValid()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isInvalid()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public length()J
    .registers 3

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->assertValid()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->ioFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->length()J

    move-result-wide v0

    :goto_12
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    const-string v1, "  tag="

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Invalid state] name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sourceFile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  treeSource="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    if-nez v2, :cond_46

    const-string v2, ""

    :cond_46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate()V
    .registers 4

    invoke-direct {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->assertValid()V

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getStream()Lcom/gold/youtube/om7753/streams/io/SharpStream;

    move-result-object v0

    const-wide/16 v1, 0x0

    :try_start_9
    invoke-virtual {v0, v1, v2}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->setLength(J)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V

    return-void

    :catchall_10
    move-exception v1

    if-eqz v0, :cond_1b

    :try_start_13
    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/SharpStream;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw v1
.end method
