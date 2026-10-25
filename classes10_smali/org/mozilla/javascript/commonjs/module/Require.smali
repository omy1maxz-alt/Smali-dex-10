.class public Lorg/mozilla/javascript/commonjs/module/Require;
.super Lorg/mozilla/javascript/BaseFunction;
.source "Require.java"


# static fields
.field private static final loadingModuleInterfaces:Ljava/lang/ThreadLocal;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final exportedModuleInterfaces:Ljava/util/Map;

.field private final loadLock:Ljava/lang/Object;

.field private mainExports:Lorg/mozilla/javascript/Scriptable;

.field private mainModuleId:Ljava/lang/String;

.field private final moduleScriptProvider:Lorg/mozilla/javascript/commonjs/module/ModuleScriptProvider;

.field private final nativeScope:Lorg/mozilla/javascript/Scriptable;

.field private final paths:Lorg/mozilla/javascript/Scriptable;

.field private final postExec:Lorg/mozilla/javascript/Script;

.field private final preExec:Lorg/mozilla/javascript/Script;

.field private final sandboxed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/commonjs/module/Require;->loadingModuleInterfaces:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/commonjs/module/ModuleScriptProvider;Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Script;Z)V
    .registers 9

    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/commonjs/module/Require;->mainModuleId:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/commonjs/module/Require;->exportedModuleInterfaces:Ljava/util/Map;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/commonjs/module/Require;->loadLock:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mozilla/javascript/commonjs/module/Require;->moduleScriptProvider:Lorg/mozilla/javascript/commonjs/module/ModuleScriptProvider;

    iput-object p2, p0, Lorg/mozilla/javascript/commonjs/module/Require;->nativeScope:Lorg/mozilla/javascript/Scriptable;

    iput-boolean p6, p0, Lorg/mozilla/javascript/commonjs/module/Require;->sandboxed:Z

    iput-object p4, p0, Lorg/mozilla/javascript/commonjs/module/Require;->preExec:Lorg/mozilla/javascript/Script;

    iput-object p5, p0, Lorg/mozilla/javascript/commonjs/module/Require;->postExec:Lorg/mozilla/javascript/Script;

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    if-nez p6, :cond_34

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/Require;->paths:Lorg/mozilla/javascript/Scriptable;

    const-string p2, "paths"

    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/commonjs/module/Require;->defineReadOnlyProperty(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_36

    :cond_34
    iput-object v0, p0, Lorg/mozilla/javascript/commonjs/module/Require;->paths:Lorg/mozilla/javascript/Scriptable;

    :goto_36
    return-void
.end method

.method private static defineReadOnlyProperty(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(Ljava/lang/String;I)V

    return-void
.end method

.method private executeModuleScript(Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/commonjs/module/ModuleScript;Z)Lorg/mozilla/javascript/Scriptable;
    .registers 10

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/Require;->nativeScope:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {p4}, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p4}, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->getBase()Ljava/net/URI;

    move-result-object v2

    const-string v3, "id"

    invoke-static {v0, v3, p2}, Lorg/mozilla/javascript/commonjs/module/Require;->defineReadOnlyProperty(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p2, p0, Lorg/mozilla/javascript/commonjs/module/Require;->sandboxed:Z

    if-nez p2, :cond_23

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v3, "uri"

    invoke-static {v0, v3, p2}, Lorg/mozilla/javascript/commonjs/module/Require;->defineReadOnlyProperty(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_23
    new-instance p2, Lorg/mozilla/javascript/commonjs/module/ModuleScope;

    iget-object v3, p0, Lorg/mozilla/javascript/commonjs/module/Require;->nativeScope:Lorg/mozilla/javascript/Scriptable;

    invoke-direct {p2, v3, v1, v2}, Lorg/mozilla/javascript/commonjs/module/ModuleScope;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/net/URI;Ljava/net/URI;)V

    const-string v1, "exports"

    invoke-interface {p2, v1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    const-string v2, "module"

    invoke-interface {p2, v2, p2, v0}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v0, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/commonjs/module/Require;->install(Lorg/mozilla/javascript/Scriptable;)V

    if-eqz p5, :cond_41

    const-string p3, "main"

    invoke-static {p0, p3, v0}, Lorg/mozilla/javascript/commonjs/module/Require;->defineReadOnlyProperty(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_41
    iget-object p3, p0, Lorg/mozilla/javascript/commonjs/module/Require;->preExec:Lorg/mozilla/javascript/Script;

    invoke-static {p3, p1, p2}, Lorg/mozilla/javascript/commonjs/module/Require;->executeOptionalScript(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p4}, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->getScript()Lorg/mozilla/javascript/Script;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    iget-object p3, p0, Lorg/mozilla/javascript/commonjs/module/Require;->postExec:Lorg/mozilla/javascript/Script;

    invoke-static {p3, p1, p2}, Lorg/mozilla/javascript/commonjs/module/Require;->executeOptionalScript(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    iget-object p2, p0, Lorg/mozilla/javascript/commonjs/module/Require;->nativeScope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method

.method private static executeOptionalScript(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .registers 3

    if-eqz p0, :cond_5

    invoke-interface {p0, p1, p2}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private getExportedModuleInterface(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;Z)Lorg/mozilla/javascript/Scriptable;
    .registers 16

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/Require;->exportedModuleInterfaces:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_15

    if-nez p5, :cond_d

    return-object v0

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempt to set main module after it was loaded"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    sget-object v0, Lorg/mozilla/javascript/commonjs/module/Require;->loadingModuleInterfaces:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_28

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v2, :cond_28

    return-object v2

    :cond_28
    iget-object v2, p0, Lorg/mozilla/javascript/commonjs/module/Require;->loadLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2b
    iget-object v3, p0, Lorg/mozilla/javascript/commonjs/module/Require;->exportedModuleInterfaces:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_37

    monitor-exit v2

    return-object v3

    :cond_37
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/commonjs/module/Require;->getModule(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;)Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    move-result-object v7

    iget-boolean p3, p0, Lorg/mozilla/javascript/commonjs/module/Require;->sandboxed:Z

    if-eqz p3, :cond_63

    invoke-virtual {v7}, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->isSandboxed()Z

    move-result p3

    if-eqz p3, :cond_46

    goto :goto_63

    :cond_46
    iget-object p3, p0, Lorg/mozilla/javascript/commonjs/module/Require;->nativeScope:Lorg/mozilla/javascript/Scriptable;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Module \""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" is not contained in sandbox."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lorg/mozilla/javascript/ScriptRuntime;->throwError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/JavaScriptException;

    move-result-object p1

    throw p1

    :cond_63
    :goto_63
    iget-object p3, p0, Lorg/mozilla/javascript/commonjs/module/Require;->nativeScope:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {p1, p3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    if-nez v1, :cond_6d

    const/4 p4, 0x1

    goto :goto_6e

    :cond_6d
    const/4 p4, 0x0

    :goto_6e
    if-eqz p4, :cond_78

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_78
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catchall {:try_start_2b .. :try_end_7b} :catchall_ab

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    :try_start_81
    invoke-direct/range {v3 .. v8}, Lorg/mozilla/javascript/commonjs/module/Require;->executeModuleScript(Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/commonjs/module/ModuleScript;Z)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    if-eq p3, p1, :cond_8b

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8a
    .catch Ljava/lang/RuntimeException; {:try_start_81 .. :try_end_8a} :catch_99
    .catchall {:try_start_81 .. :try_end_8a} :catchall_97

    move-object p3, p1

    :cond_8b
    if-eqz p4, :cond_95

    :try_start_8d
    iget-object p1, p0, Lorg/mozilla/javascript/commonjs/module/Require;->exportedModuleInterfaces:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_95
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_8d .. :try_end_96} :catchall_ab

    return-object p3

    :catchall_97
    move-exception p1

    goto :goto_9e

    :catch_99
    move-exception p1

    :try_start_9a
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_97

    :goto_9e
    if-eqz p4, :cond_aa

    :try_start_a0
    iget-object p2, p0, Lorg/mozilla/javascript/commonjs/module/Require;->exportedModuleInterfaces:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object p2, Lorg/mozilla/javascript/commonjs/module/Require;->loadingModuleInterfaces:Ljava/lang/ThreadLocal;

    invoke-virtual {p2, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_aa
    throw p1

    :catchall_ab
    move-exception p1

    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_a0 .. :try_end_ad} :catchall_ab

    throw p1
.end method

.method private getModule(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;)Lorg/mozilla/javascript/commonjs/module/ModuleScript;
    .registers 11

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/Require;->moduleScriptProvider:Lorg/mozilla/javascript/commonjs/module/ModuleScriptProvider;

    iget-object v5, p0, Lorg/mozilla/javascript/commonjs/module/Require;->paths:Lorg/mozilla/javascript/Scriptable;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/commonjs/module/ModuleScriptProvider;->getModuleScript(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    move-result-object p3

    if-eqz p3, :cond_f

    return-object p3

    :cond_f
    iget-object p3, p0, Lorg/mozilla/javascript/commonjs/module/Require;->nativeScope:Lorg/mozilla/javascript/Scriptable;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Module \""

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" not found."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lorg/mozilla/javascript/ScriptRuntime;->throwError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/JavaScriptException;

    move-result-object p1

    throw p1
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2c} :catch_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception p1

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_32
    move-exception p1

    throw p1
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    if-eqz p4, :cond_9e

    array-length v0, p4

    const/4 v1, 0x1

    if-lt v0, v1, :cond_9e

    const/4 v0, 0x0

    aget-object p4, p4, v0

    const-class v1, Ljava/lang/String;

    invoke-static {p4, v1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string v1, "./"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_27

    const-string v1, "../"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_27

    :cond_23
    move-object v3, v2

    move-object v4, v3

    :goto_25
    move-object v2, p4

    goto :goto_7b

    :cond_27
    :goto_27
    instance-of v1, p3, Lorg/mozilla/javascript/commonjs/module/ModuleScope;

    if-eqz v1, :cond_83

    check-cast p3, Lorg/mozilla/javascript/commonjs/module/ModuleScope;

    invoke-virtual {p3}, Lorg/mozilla/javascript/commonjs/module/ModuleScope;->getBase()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p3}, Lorg/mozilla/javascript/commonjs/module/ModuleScope;->getUri()Ljava/net/URI;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    if-nez v2, :cond_40

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_78

    :cond_40
    invoke-virtual {v2, p3}, Ljava/net/URI;->relativize(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v0, 0x2e

    if-ne p3, v0, :cond_78

    iget-boolean p3, p0, Lorg/mozilla/javascript/commonjs/module/Require;->sandboxed:Z

    if-nez p3, :cond_5d

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_78

    :cond_5d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Module \""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\" is not contained in sandbox."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->throwError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/JavaScriptException;

    move-result-object p1

    throw p1

    :cond_78
    :goto_78
    move-object v3, v1

    move-object v4, v2

    goto :goto_25

    :goto_7b
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/commonjs/module/Require;->getExportedModuleInterface(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;Z)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_83
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t resolve relative module ID \""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\" when require() is used outside of a module"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->throwError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/JavaScriptException;

    move-result-object p1

    throw p1

    :cond_9e
    const-string p3, "require() needs one argument"

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->throwError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/JavaScriptException;

    move-result-object p1

    goto :goto_a6

    :goto_a5
    throw p1

    :goto_a6
    goto :goto_a5
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    const-string p3, "require() can not be invoked as a constructor"

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->throwError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/JavaScriptException;

    move-result-object p1

    throw p1
.end method

.method public getArity()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .registers 2

    const-string v0, "require"

    return-object v0
.end method

.method public getLength()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public install(Lorg/mozilla/javascript/Scriptable;)V
    .registers 3

    const-string v0, "require"

    invoke-static {p1, v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public requireMain(Lorg/mozilla/javascript/Context;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;
    .registers 10

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/Require;->mainModuleId:Ljava/lang/String;

    if-eqz v0, :cond_26

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/mozilla/javascript/commonjs/module/Require;->mainExports:Lorg/mozilla/javascript/Scriptable;

    return-object p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Main module already set to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/Require;->mainModuleId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    :try_start_26
    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/Require;->moduleScriptProvider:Lorg/mozilla/javascript/commonjs/module/ModuleScriptProvider;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/mozilla/javascript/commonjs/module/Require;->paths:Lorg/mozilla/javascript/Scriptable;

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/commonjs/module/ModuleScriptProvider;->getModuleScript(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    move-result-object v0
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_32} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_32} :catch_9a

    if-eqz v0, :cond_41

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/commonjs/module/Require;->getExportedModuleInterface(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;Z)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/Require;->mainExports:Lorg/mozilla/javascript/Scriptable;

    goto :goto_95

    :cond_41
    iget-boolean v0, p0, Lorg/mozilla/javascript/commonjs/module/Require;->sandboxed:Z

    if-nez v0, :cond_95

    const/4 v0, 0x0

    :try_start_46
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/net/URISyntaxException; {:try_start_46 .. :try_end_4b} :catch_4d

    move-object v0, v1

    goto :goto_4e

    :catch_4d
    nop

    :goto_4e
    if-eqz v0, :cond_59

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_57

    goto :goto_59

    :cond_57
    :goto_57
    move-object v4, v0

    goto :goto_69

    :cond_59
    :goto_59
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    goto :goto_57

    :goto_69
    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/commonjs/module/Require;->getExportedModuleInterface(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;Z)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/Require;->mainExports:Lorg/mozilla/javascript/Scriptable;

    goto :goto_95

    :cond_78
    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/Require;->nativeScope:Lorg/mozilla/javascript/Scriptable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Module \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" not found."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->throwError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/JavaScriptException;

    move-result-object p1

    throw p1

    :cond_95
    :goto_95
    iput-object p2, p0, Lorg/mozilla/javascript/commonjs/module/Require;->mainModuleId:Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/commonjs/module/Require;->mainExports:Lorg/mozilla/javascript/Scriptable;

    return-object p1

    :catch_9a
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_a1
    move-exception p1

    goto :goto_a4

    :goto_a3
    throw p1

    :goto_a4
    goto :goto_a3
.end method
