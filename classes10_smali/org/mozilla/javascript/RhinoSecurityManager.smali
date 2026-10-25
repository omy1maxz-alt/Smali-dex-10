.class public Lorg/mozilla/javascript/RhinoSecurityManager;
.super Ljava/lang/SecurityManager;
.source "RhinoSecurityManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/SecurityManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCurrentScriptClass()Ljava/lang/Class;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/SecurityManager;->getClassContext()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    const-class v4, Lorg/mozilla/javascript/InterpretedFunction;

    if-eq v3, v4, :cond_16

    const-class v4, Lorg/mozilla/javascript/NativeFunction;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1e

    :cond_16
    const-class v4, Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1e
    return-object v3

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method
