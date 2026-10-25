.class Lcom/gold/youtube/om7753/settings/files/TrickOutputStream;
.super Ljava/io/FileOutputStream;
.source "TrickOutputStream.java"


# instance fields
.field private final mPfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method private constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/io/FileDescriptor;)V
    .registers 3

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Lcom/gold/youtube/om7753/settings/files/TrickOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method static create(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 7

    const-string v0, "Can\'t get ParcelFileDescriptor"

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_27

    nop

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_19

    new-instance v2, Lcom/gold/youtube/om7753/settings/files/TrickOutputStream;

    invoke-direct {v2, v1, v0}, Lcom/gold/youtube/om7753/settings/files/TrickOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/io/FileDescriptor;)V

    return-object v2

    :cond_19
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Can\'t get FileDescriptor"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_21
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_27
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/TrickOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
