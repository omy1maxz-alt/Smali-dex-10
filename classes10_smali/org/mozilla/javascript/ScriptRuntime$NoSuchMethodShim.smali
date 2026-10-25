.class Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;
.super Ljava/lang/Object;
.source "ScriptRuntime.java"

# interfaces
.implements Lorg/mozilla/javascript/Callable;


# instance fields
.field methodName:Ljava/lang/String;

.field noSuchMethodMethod:Lorg/mozilla/javascript/Callable;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/Callable;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->noSuchMethodMethod:Lorg/mozilla/javascript/Callable;

    iput-object p2, p0, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->methodName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->methodName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    invoke-static {p4, v1, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->newArrayLiteral([Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    const/4 v1, 0x1

    aput-object p4, v0, v1

    iget-object p4, p0, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->noSuchMethodMethod:Lorg/mozilla/javascript/Callable;

    invoke-interface {p4, p1, p2, p3, v0}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
