.class Lorg/mozilla/javascript/tools/shell/Main$IProxy;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;
.implements Lorg/mozilla/javascript/tools/shell/QuitAction;


# static fields
.field private static final EVAL_INLINE_SCRIPT:I = 0x2

.field private static final PROCESS_FILES:I = 0x1

.field private static final SYSTEM_EXIT:I = 0x3


# instance fields
.field args:[Ljava/lang/String;

.field scriptText:Ljava/lang/String;

.field private type:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/javascript/tools/shell/Main$IProxy;->type:I

    return-void
.end method


# virtual methods
.method public quit(Lorg/mozilla/javascript/Context;I)V
    .registers 4

    iget p1, p0, Lorg/mozilla/javascript/tools/shell/Main$IProxy;->type:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    invoke-static {p2}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_9
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 5

    sget-boolean v0, Lorg/mozilla/javascript/tools/shell/Main;->useRequire:Z

    if-eqz v0, :cond_10

    sget-object v0, Lorg/mozilla/javascript/tools/shell/Main;->global:Lorg/mozilla/javascript/tools/shell/Global;

    sget-object v1, Lorg/mozilla/javascript/tools/shell/Main;->modulePath:Ljava/util/List;

    sget-boolean v2, Lorg/mozilla/javascript/tools/shell/Main;->sandboxed:Z

    invoke-virtual {v0, p1, v1, v2}, Lorg/mozilla/javascript/tools/shell/Global;->installRequire(Lorg/mozilla/javascript/Context;Ljava/util/List;Z)Lorg/mozilla/javascript/commonjs/module/Require;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/tools/shell/Main;->require:Lorg/mozilla/javascript/commonjs/module/Require;

    :cond_10
    iget v0, p0, Lorg/mozilla/javascript/tools/shell/Main$IProxy;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/Main$IProxy;->args:[Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/tools/shell/Main;->processFiles(Lorg/mozilla/javascript/Context;[Ljava/lang/String;)V

    goto :goto_23

    :cond_1b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/Main$IProxy;->scriptText:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/tools/shell/Main;->evalInlineScript(Lorg/mozilla/javascript/Context;Ljava/lang/String;)V

    :goto_23
    const/4 p1, 0x0

    return-object p1

    :cond_25
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
