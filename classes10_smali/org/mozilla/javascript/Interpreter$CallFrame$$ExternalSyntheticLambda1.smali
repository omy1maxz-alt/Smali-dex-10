.class public final synthetic Lorg/mozilla/javascript/Interpreter$CallFrame$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/mozilla/javascript/Callable;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/Interpreter$CallFrame;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame$$ExternalSyntheticLambda1;->f$0:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iput-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame$$ExternalSyntheticLambda1;->f$0:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/Interpreter$CallFrame;->$r8$lambda$jLvmDhQ_YxdZ4SAl4rQ0-Nk9h1U(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
