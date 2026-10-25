.class public Lorg/mozilla/javascript/NativeJavaPackage;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "NativeJavaPackage.java"


# static fields
.field private static final serialVersionUID:J = 0x67522583d936a423L


# instance fields
.field private transient classLoader:Ljava/lang/ClassLoader;

.field private negativeCache:Ljava/util/Set;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lorg/mozilla/javascript/NativeJavaPackage;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    check-cast p1, Lorg/mozilla/javascript/NativeJavaPackage;

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    iget-object p1, p1, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    if-ne v0, p1, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method forcePackage(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeJavaPackage;
    .registers 7

    invoke-super {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    instance-of v1, v0, Lorg/mozilla/javascript/NativeJavaPackage;

    if-eqz v1, :cond_d

    check-cast v0, Lorg/mozilla/javascript/NativeJavaPackage;

    return-object v0

    :cond_d
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    move-object v0, p1

    goto :goto_2d

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    new-instance v1, Lorg/mozilla/javascript/NativeJavaPackage;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v1, v2, v0, v3}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {v1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    invoke-super {p0, p1, p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 3

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/NativeJavaPackage;->getPkgProperty(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "JavaPackage"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaPackage;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized getPkgProperty(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_95

    if-eq v0, v1, :cond_b

    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_95

    if-eqz v0, :cond_18

    monitor-exit p0

    return-object v1

    :cond_18
    :try_start_18
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_22

    move-object v0, p1

    goto :goto_38

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_38
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/Context;->getClassShutter()Lorg/mozilla/javascript/ClassShutter;

    move-result-object v3

    if-eqz v3, :cond_48

    invoke-interface {v3, v0}, Lorg/mozilla/javascript/ClassShutter;->visibleToScripts(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6a

    :cond_48
    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v3, :cond_51

    invoke-static {v3, v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_55

    :cond_51
    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    :goto_55
    if-eqz v3, :cond_6a

    invoke-virtual {v2}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v3}, Lorg/mozilla/javascript/WrapFactory;->wrapJavaClass(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    :cond_6a
    if-nez v1, :cond_8e

    if-eqz p3, :cond_7e

    new-instance v1, Lorg/mozilla/javascript/NativeJavaPackage;

    const/4 p3, 0x1

    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {v1, p3, v0, v2}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    invoke-static {v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_8e

    :cond_7e
    iget-object p3, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    if-nez p3, :cond_89

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    :cond_89
    iget-object p3, p0, Lorg/mozilla/javascript/NativeJavaPackage;->negativeCache:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8e
    :goto_8e
    if-eqz v1, :cond_93

    invoke-super {p0, p1, p2, v1}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    :try_end_93
    .catchall {:try_start_18 .. :try_end_93} :catchall_95

    :cond_93
    monitor-exit p0

    return-object v1

    :catchall_95
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaPackage;->classLoader:Ljava/lang/ClassLoader;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_10
    xor-int/2addr v0, v1

    return v0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 4

    const-string p1, "msg.pkg.int"

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaPackage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
