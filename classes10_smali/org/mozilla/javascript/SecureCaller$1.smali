.class final Lorg/mozilla/javascript/SecureCaller$1;
.super Ljava/lang/Object;
.source "SecureCaller.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field final synthetic val$thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Thread;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/SecureCaller$1;->val$thread:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/SecureCaller$1;->val$thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
