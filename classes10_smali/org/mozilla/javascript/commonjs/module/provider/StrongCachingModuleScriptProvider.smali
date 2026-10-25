.class public Lorg/mozilla/javascript/commonjs/module/provider/StrongCachingModuleScriptProvider;
.super Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;
.source "StrongCachingModuleScriptProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final modules:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;)V
    .registers 5

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;-><init>(Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->getConcurrencyLevel()I

    move-result v0

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000  # 0.75f

    invoke-direct {p1, v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/provider/StrongCachingModuleScriptProvider;->modules:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected getLoadedModule(Ljava/lang/String;)Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/StrongCachingModuleScriptProvider;->modules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;

    return-object p1
.end method

.method protected putLoadedModule(Ljava/lang/String;Lorg/mozilla/javascript/commonjs/module/ModuleScript;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/StrongCachingModuleScriptProvider;->modules:Ljava/util/Map;

    new-instance v1, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;

    invoke-direct {v1, p2, p3}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;-><init>(Lorg/mozilla/javascript/commonjs/module/ModuleScript;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
