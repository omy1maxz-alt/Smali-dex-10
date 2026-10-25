.class public Lorg/mozilla/javascript/JavaScriptException;
.super Lorg/mozilla/javascript/RhinoException;
.source "JavaScriptException.java"


# static fields
.field private static final serialVersionUID:J = -0x6a639115d68db9edL


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Lorg/mozilla/javascript/RhinoException;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, v0, v1}, Lorg/mozilla/javascript/RhinoException;->recordErrorOrigin(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object p1, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    instance-of v0, p1, Lorg/mozilla/javascript/NativeError;

    if-eqz v0, :cond_39

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_39

    check-cast p1, Lorg/mozilla/javascript/NativeError;

    const-string v0, "fileName"

    invoke-virtual {p1, v0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p1, v0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_27
    const-string p2, "lineNumber"

    invoke-virtual {p1, p2, p1}, Lorg/mozilla/javascript/IdScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p1, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_36
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/NativeError;->setStackProvider(Lorg/mozilla/javascript/RhinoException;)V

    :cond_39
    return-void
.end method


# virtual methods
.method public details()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    if-nez v0, :cond_7

    const-string v0, "null"

    return-object v0

    :cond_7
    instance-of v1, v0, Lorg/mozilla/javascript/NativeError;

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    :try_start_10
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    iget-object v0, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    instance-of v1, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_22

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result v0

    return v0
.end method

.method public getSourceName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->sourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    return-object v0
.end method
