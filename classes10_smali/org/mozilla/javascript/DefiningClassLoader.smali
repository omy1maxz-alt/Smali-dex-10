.class public Lorg/mozilla/javascript/DefiningClassLoader;
.super Ljava/lang/ClassLoader;
.source "DefiningClassLoader.java"

# interfaces
.implements Lorg/mozilla/javascript/GeneratedClassLoader;


# instance fields
.field private final parentLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/DefiningClassLoader;->parentLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/DefiningClassLoader;->parentLoader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public defineClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .registers 9

    array-length v4, p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/SecurityUtilities;->getProtectionDomain(Ljava/lang/Class;)Ljava/security/ProtectionDomain;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-super/range {v0 .. v5}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public linkClass(Ljava/lang/Class;)V
    .registers 2

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->resolveClass(Ljava/lang/Class;)V

    return-void
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 4

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/mozilla/javascript/DefiningClassLoader;->parentLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findSystemClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_13
    :goto_13
    if-eqz p2, :cond_18

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->resolveClass(Ljava/lang/Class;)V

    :cond_18
    return-object v0
.end method
