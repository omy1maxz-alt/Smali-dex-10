.class public Ljj$/sun/security/action/GetIntegerAction;
.super Ljava/lang/Object;
.source "GetIntegerAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private defaultSet:Z

.field private defaultVal:I

.field private theProp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/sun/security/action/GetIntegerAction;->theProp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/sun/security/action/GetIntegerAction;->theProp:Ljava/lang/String;

    iput p2, p0, Ljj$/sun/security/action/GetIntegerAction;->defaultVal:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/sun/security/action/GetIntegerAction;->defaultSet:Z

    return-void
.end method

.method public static privilegedGetProperty(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {p0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljj$/sun/security/action/GetIntegerAction;

    invoke-direct {v0, p0}, Ljj$/sun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static privilegedGetProperty(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 4

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {p0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_16

    :cond_b
    new-instance v0, Ljj$/sun/security/action/GetIntegerAction;

    invoke-direct {v0, p0}, Ljj$/sun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_16
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1e

    :cond_1d
    move v1, p1

    :goto_1e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public run()Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Ljj$/sun/security/action/GetIntegerAction;->theProp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_13

    iget-boolean v1, p0, Ljj$/sun/security/action/GetIntegerAction;->defaultSet:Z

    if-eqz v1, :cond_13

    iget v1, p0, Ljj$/sun/security/action/GetIntegerAction;->defaultVal:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_13
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/sun/security/action/GetIntegerAction;->run()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
