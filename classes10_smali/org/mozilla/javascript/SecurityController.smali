.class public abstract Lorg/mozilla/javascript/SecurityController;
.super Ljava/lang/Object;
.source "SecurityController.java"


# static fields
.field private static global:Lorg/mozilla/javascript/SecurityController;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLoader(Ljava/lang/ClassLoader;Ljava/lang/Object;)Lorg/mozilla/javascript/GeneratedClassLoader;
    .registers 4

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-nez p0, :cond_a

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    :cond_a
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getSecurityController()Lorg/mozilla/javascript/SecurityController;

    move-result-object v1

    if-nez v1, :cond_15

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/Context;->createClassLoader(Ljava/lang/ClassLoader;)Lorg/mozilla/javascript/GeneratedClassLoader;

    move-result-object p0

    goto :goto_1d

    :cond_15
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/SecurityController;->getDynamicSecurityDomain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/mozilla/javascript/SecurityController;->createClassLoader(Ljava/lang/ClassLoader;Ljava/lang/Object;)Lorg/mozilla/javascript/GeneratedClassLoader;

    move-result-object p0

    :goto_1d
    return-object p0
.end method

.method public static getStaticSecurityDomainClass()Ljava/lang/Class;
    .registers 1

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getSecurityController()Lorg/mozilla/javascript/SecurityController;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Lorg/mozilla/javascript/SecurityController;->getStaticSecurityDomainClassInternal()Ljava/lang/Class;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method static global()Lorg/mozilla/javascript/SecurityController;
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/SecurityController;->global:Lorg/mozilla/javascript/SecurityController;

    return-object v0
.end method

.method public static hasGlobal()Z
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/SecurityController;->global:Lorg/mozilla/javascript/SecurityController;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static initGlobal(Lorg/mozilla/javascript/SecurityController;)V
    .registers 2

    if-eqz p0, :cond_11

    sget-object v0, Lorg/mozilla/javascript/SecurityController;->global:Lorg/mozilla/javascript/SecurityController;

    if-nez v0, :cond_9

    sput-object p0, Lorg/mozilla/javascript/SecurityController;->global:Lorg/mozilla/javascript/SecurityController;

    return-void

    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Cannot overwrite already installed global SecurityController"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public callWithDomain(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    new-instance v0, Lorg/mozilla/javascript/SecurityController$1;

    invoke-direct {v0, p0, p3, p5, p6}, Lorg/mozilla/javascript/SecurityController$1;-><init>(Lorg/mozilla/javascript/SecurityController;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p4, v0, p1}, Lorg/mozilla/javascript/SecurityController;->execWithDomain(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Script;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract createClassLoader(Ljava/lang/ClassLoader;Ljava/lang/Object;)Lorg/mozilla/javascript/GeneratedClassLoader;
.end method

.method public execWithDomain(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Script;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "callWithDomain should be overridden"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getDynamicSecurityDomain(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public getStaticSecurityDomainClassInternal()Ljava/lang/Class;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
