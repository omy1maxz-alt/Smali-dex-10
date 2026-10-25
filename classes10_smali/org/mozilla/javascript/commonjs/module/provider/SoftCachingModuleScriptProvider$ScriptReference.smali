.class Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;
.super Ljava/lang/ref/SoftReference;
.source "SoftCachingModuleScriptProvider.java"


# instance fields
.field private final base:Ljava/net/URI;

.field private final moduleId:Ljava/lang/String;

.field private final uri:Ljava/net/URI;

.field private final validator:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/Script;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 7

    invoke-direct {p0, p1, p6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p2, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->moduleId:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->uri:Ljava/net/URI;

    iput-object p4, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->base:Ljava/net/URI;

    iput-object p5, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->validator:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getCachedModuleScript()Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Script;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    new-instance v1, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;

    new-instance v2, Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    iget-object v3, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->uri:Ljava/net/URI;

    iget-object v4, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->base:Ljava/net/URI;

    invoke-direct {v2, v0, v3, v4}, Lorg/mozilla/javascript/commonjs/module/ModuleScript;-><init>(Lorg/mozilla/javascript/Script;Ljava/net/URI;Ljava/net/URI;)V

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->validator:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;-><init>(Lorg/mozilla/javascript/commonjs/module/ModuleScript;Ljava/lang/Object;)V

    return-object v1
.end method

.method getModuleId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->moduleId:Ljava/lang/String;

    return-object v0
.end method
