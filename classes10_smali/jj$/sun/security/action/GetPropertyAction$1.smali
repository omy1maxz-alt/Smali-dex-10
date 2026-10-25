.class Ljj$/sun/security/action/GetPropertyAction$1;
.super Ljava/lang/Object;
.source "GetPropertyAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/sun/security/action/GetPropertyAction$1;->run()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/Properties;
    .registers 2

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method
