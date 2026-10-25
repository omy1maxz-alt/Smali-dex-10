.class public Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;
.super Lorg/mozilla/javascript/tools/shell/SecurityProxy;
.source "JavaPolicySecurity.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/shell/SecurityProxy;-><init>()V

    new-instance v0, Ljava/security/CodeSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;Ljava/lang/String;)Ljava/net/URL;
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;->getUrlObj(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;Ljava/net/URL;)Ljava/security/ProtectionDomain;
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;->getUrlDomain(Ljava/net/URL;)Ljava/security/ProtectionDomain;

    move-result-object p0

    return-object p0
.end method

.method private getDynamicDomain(Ljava/security/ProtectionDomain;)Ljava/security/ProtectionDomain;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$ContextPermissions;-><init>(Ljava/security/ProtectionDomain;)V

    new-instance p1, Ljava/security/ProtectionDomain;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    return-object p1
.end method

.method private getUrlDomain(Ljava/net/URL;)Ljava/security/ProtectionDomain;
    .registers 4

    new-instance v0, Ljava/security/CodeSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    invoke-static {}, Ljava/security/Policy;->getPolicy()Ljava/security/Policy;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/Policy;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object p1

    new-instance v1, Ljava/security/ProtectionDomain;

    invoke-direct {v1, v0, p1}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    return-object v1
.end method

.method private getUrlObj(Ljava/lang/String;)Ljava/net/URL;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_48

    :catch_6
    nop

    const-string/jumbo v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2d
    :try_start_2d
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/net/MalformedURLException; {:try_start_2d .. :try_end_48} :catch_49

    :goto_48
    return-object v0

    :catch_49
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not construct file URL for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\':"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected callProcessFileSecure(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$1;-><init>(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method public callWithDomain(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    check-cast p1, Ljava/security/ProtectionDomain;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;->getDynamicDomain(Ljava/security/ProtectionDomain;)Ljava/security/ProtectionDomain;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/ProtectionDomain;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance p1, Ljava/security/AccessControlContext;

    invoke-direct {p1, v0}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    new-instance v0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$3;-><init>(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    invoke-static {v0, p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createClassLoader(Ljava/lang/ClassLoader;Ljava/lang/Object;)Lorg/mozilla/javascript/GeneratedClassLoader;
    .registers 4

    check-cast p2, Ljava/security/ProtectionDomain;

    new-instance v0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$2;-><init>(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/GeneratedClassLoader;

    return-object p1
.end method

.method public getDynamicSecurityDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/security/ProtectionDomain;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;->getDynamicDomain(Ljava/security/ProtectionDomain;)Ljava/security/ProtectionDomain;

    move-result-object p1

    return-object p1
.end method

.method public getStaticSecurityDomainClassInternal()Ljava/lang/Class;
    .registers 2

    const-class v0, Ljava/security/ProtectionDomain;

    return-object v0
.end method
