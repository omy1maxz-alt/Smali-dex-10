.class Lorg/mozilla/javascript/tools/debugger/Main$IProxy;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/mozilla/javascript/tools/debugger/ScopeProvider;


# static fields
.field public static final EXIT_ACTION:I = 0x1

.field public static final SCOPE_PROVIDER:I = 0x2


# instance fields
.field private scope:Lorg/mozilla/javascript/Scriptable;

.field private final type:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/javascript/tools/debugger/Main$IProxy;->type:I

    return-void
.end method

.method public static newScopeProvider(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/tools/debugger/ScopeProvider;
    .registers 3

    new-instance v0, Lorg/mozilla/javascript/tools/debugger/Main$IProxy;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/tools/debugger/Main$IProxy;-><init>(I)V

    iput-object p0, v0, Lorg/mozilla/javascript/tools/debugger/Main$IProxy;->scope:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method


# virtual methods
.method public getScope()Lorg/mozilla/javascript/Scriptable;
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/Main$IProxy;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_8
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Main$IProxy;->scope:Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_f

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_f
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Main$IProxy;->scope:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public run()V
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/Main$IProxy;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_8
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
