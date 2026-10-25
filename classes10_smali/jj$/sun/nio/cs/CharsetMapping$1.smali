.class Ljj$/sun/nio/cs/CharsetMapping$1;
.super Ljava/lang/Object;
.source "CharsetMapping.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field final synthetic val$is:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    iput-object p1, p0, Ljj$/sun/nio/cs/CharsetMapping$1;->val$is:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/sun/nio/cs/CharsetMapping$1;->run()Ljj$/sun/nio/cs/CharsetMapping;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljj$/sun/nio/cs/CharsetMapping;
    .registers 3

    new-instance v0, Ljj$/sun/nio/cs/CharsetMapping;

    invoke-direct {v0}, Ljj$/sun/nio/cs/CharsetMapping;-><init>()V

    iget-object v1, p0, Ljj$/sun/nio/cs/CharsetMapping$1;->val$is:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljj$/sun/nio/cs/CharsetMapping;->load(Ljava/io/InputStream;)Ljj$/sun/nio/cs/CharsetMapping;

    move-result-object v0

    return-object v0
.end method
