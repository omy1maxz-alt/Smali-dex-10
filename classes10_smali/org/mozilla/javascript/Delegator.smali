.class public Lorg/mozilla/javascript/Delegator;
.super Ljava/lang/Object;
.source "Delegator.java"

# interfaces
.implements Lorg/mozilla/javascript/Function;
.implements Lorg/mozilla/javascript/SymbolScriptable;


# instance fields
.field protected obj:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/Delegator;->obj:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/Delegator;->obj:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Function;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 6

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->newInstance()Lorg/mozilla/javascript/Delegator;

    move-result-object v0

    array-length v1, p3

    if-nez v1, :cond_13

    new-instance p1, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {p1}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    goto :goto_1a

    :cond_13
    const/4 v1, 0x0

    aget-object p3, p3, v1

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    :goto_1a
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/Delegator;->setDelegee(Lorg/mozilla/javascript/Scriptable;)V

    return-object v0

    :cond_1e
    check-cast v0, Lorg/mozilla/javascript/Function;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method

.method public delete(I)V
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public delete(Lorg/mozilla/javascript/Symbol;)V
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz v1, :cond_d

    check-cast v0, Lorg/mozilla/javascript/SymbolScriptable;

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/SymbolScriptable;->delete(Lorg/mozilla/javascript/Symbol;)V

    :cond_d
    return-void
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz v1, :cond_f

    check-cast v0, Lorg/mozilla/javascript/SymbolScriptable;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/SymbolScriptable;->get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_14

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-eq p1, v0, :cond_14

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->FunctionClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_b

    goto :goto_14

    :cond_b
    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_15

    :cond_14
    :goto_14
    move-object p1, p0

    :goto_15
    return-object p1
.end method

.method public getDelegee()Lorg/mozilla/javascript/Scriptable;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/Delegator;->obj:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public getIds()[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParentScope()Lorg/mozilla/javascript/Scriptable;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz v1, :cond_f

    check-cast v0, Lorg/mozilla/javascript/SymbolScriptable;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/SymbolScriptable;->has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->hasInstance(Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method protected newInstance()Lorg/mozilla/javascript/Delegator;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Delegator;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz v1, :cond_d

    check-cast v0, Lorg/mozilla/javascript/SymbolScriptable;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/SymbolScriptable;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public setDelegee(Lorg/mozilla/javascript/Scriptable;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/Delegator;->obj:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method public setParentScope(Lorg/mozilla/javascript/Scriptable;)V
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method public setPrototype(Lorg/mozilla/javascript/Scriptable;)V
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Delegator;->getDelegee()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method
