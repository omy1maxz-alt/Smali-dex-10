.class Lorg/mozilla/javascript/SecureCaller$SecureClassLoaderImpl;
.super Ljava/security/SecureClassLoader;
.source "SecureCaller.java"


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method defineAndLinkClass(Ljava/lang/String;[BLjava/security/CodeSource;)Ljava/lang/Class;
    .registers 10

    array-length v4, p2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/SecureClassLoader;->resolveClass(Ljava/lang/Class;)V

    return-object p1
.end method
