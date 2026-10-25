.class public Lorg/mozilla/javascript/tools/shell/Environment;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "Environment.java"


# static fields
.field static final serialVersionUID:J = -0x5fa4044c42772a9L


# instance fields
.field private thePrototypeInstance:Lorg/mozilla/javascript/tools/shell/Environment;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/Environment;->thePrototypeInstance:Lorg/mozilla/javascript/tools/shell/Environment;

    iput-object p0, p0, Lorg/mozilla/javascript/tools/shell/Environment;->thePrototypeInstance:Lorg/mozilla/javascript/tools/shell/Environment;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/ScriptableObject;)V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/Environment;->thePrototypeInstance:Lorg/mozilla/javascript/tools/shell/Environment;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    const-string v0, "Environment"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopLevelProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_22

    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_22

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    const-string v0, "prototype"

    invoke-interface {p1, v0, p1}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    :cond_22
    return-void
.end method

.method private collectIds()[Ljava/lang/Object;
    .registers 2

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static defineClass(Lorg/mozilla/javascript/ScriptableObject;)V
    .registers 2

    :try_start_0
    const-class v0, Lorg/mozilla/javascript/tools/shell/Environment;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    new-instance v0, Ljava/lang/Error;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/Environment;->thePrototypeInstance:Lorg/mozilla/javascript/tools/shell/Environment;

    if-ne p0, v0, :cond_9

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_18
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1
.end method

.method public getAllIds()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/Environment;->thePrototypeInstance:Lorg/mozilla/javascript/tools/shell/Environment;

    if-ne p0, v0, :cond_9

    invoke-super {p0}, Lorg/mozilla/javascript/ScriptableObject;->getAllIds()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/tools/shell/Environment;->collectIds()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Environment"

    return-object v0
.end method

.method public getIds()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/Environment;->thePrototypeInstance:Lorg/mozilla/javascript/tools/shell/Environment;

    if-ne p0, v0, :cond_9

    invoke-super {p0}, Lorg/mozilla/javascript/ScriptableObject;->getIds()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-direct {p0}, Lorg/mozilla/javascript/tools/shell/Environment;->collectIds()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/Environment;->thePrototypeInstance:Lorg/mozilla/javascript/tools/shell/Environment;

    if-ne p0, v0, :cond_9

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1

    :cond_9
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/Environment;->thePrototypeInstance:Lorg/mozilla/javascript/tools/shell/Environment;

    if-ne p0, v0, :cond_8

    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_13

    :cond_8
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p2

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    return-void
.end method
