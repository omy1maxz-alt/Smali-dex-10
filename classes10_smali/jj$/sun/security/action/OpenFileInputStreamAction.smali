.class public Ljj$/sun/security/action/OpenFileInputStreamAction;
.super Ljava/lang/Object;
.source "OpenFileInputStreamAction.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/sun/security/action/OpenFileInputStreamAction;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljj$/sun/security/action/OpenFileInputStreamAction;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()Ljava/io/FileInputStream;
    .registers 3

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Ljj$/sun/security/action/OpenFileInputStreamAction;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/sun/security/action/OpenFileInputStreamAction;->run()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method
