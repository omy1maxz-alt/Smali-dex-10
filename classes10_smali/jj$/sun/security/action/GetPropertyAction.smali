.class public Ljj$/sun/security/action/GetPropertyAction;
.super Ljava/lang/Object;
.source "GetPropertyAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private defaultVal:Ljava/lang/String;

.field private theProp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/sun/security/action/GetPropertyAction;->theProp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/sun/security/action/GetPropertyAction;->theProp:Ljava/lang/String;

    iput-object p2, p0, Ljj$/sun/security/action/GetPropertyAction;->defaultVal:Ljava/lang/String;

    return-void
.end method

.method public static privilegedGetProperties()Ljava/util/Properties;
    .registers 1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljj$/sun/security/action/GetPropertyAction$1;

    invoke-direct {v0}, Ljj$/sun/security/action/GetPropertyAction$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    return-object v0
.end method

.method public static privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljj$/sun/security/action/GetPropertyAction;

    invoke-direct {v0, p0}, Ljj$/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static privilegedGetProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljj$/sun/security/action/GetPropertyAction;

    invoke-direct {v0, p0, p1}, Ljj$/sun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/sun/security/action/GetPropertyAction;->run()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljj$/sun/security/action/GetPropertyAction;->theProp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v1, p0, Ljj$/sun/security/action/GetPropertyAction;->defaultVal:Ljava/lang/String;

    goto :goto_c

    :cond_b
    move-object v1, v0

    :goto_c
    return-object v1
.end method
