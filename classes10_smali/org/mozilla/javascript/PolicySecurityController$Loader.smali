.class Lorg/mozilla/javascript/PolicySecurityController$Loader;
.super Ljava/security/SecureClassLoader;
.source "PolicySecurityController.java"

# interfaces
.implements Lorg/mozilla/javascript/GeneratedClassLoader;


# instance fields
.field private final codeSource:Ljava/security/CodeSource;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/security/CodeSource;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    iput-object p2, p0, Lorg/mozilla/javascript/PolicySecurityController$Loader;->codeSource:Ljava/security/CodeSource;

    return-void
.end method


# virtual methods
.method public defineClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .registers 9

    array-length v4, p2

    iget-object v5, p0, Lorg/mozilla/javascript/PolicySecurityController$Loader;->codeSource:Ljava/security/CodeSource;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public linkClass(Ljava/lang/Class;)V
    .registers 2

    invoke-virtual {p0, p1}, Ljava/security/SecureClassLoader;->resolveClass(Ljava/lang/Class;)V

    return-void
.end method
