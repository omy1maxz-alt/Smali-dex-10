.class final Lorg/mozilla/javascript/ScriptRuntime$1;
.super Lorg/mozilla/javascript/BaseFunction;
.source "ScriptRuntime.java"


# static fields
.field private static final serialVersionUID:J = -0x51c3ab3075dc730eL


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const-string p1, "msg.op.not.allowed"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public getLength()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
