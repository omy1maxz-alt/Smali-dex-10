.class public Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;
.super Ljava/lang/Object;
.source "CachingModuleScriptProviderBase.java"


# instance fields
.field private final moduleScript:Lorg/mozilla/javascript/commonjs/module/ModuleScript;

.field private final validator:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/commonjs/module/ModuleScript;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;->moduleScript:Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    iput-object p2, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;->validator:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getModule()Lorg/mozilla/javascript/commonjs/module/ModuleScript;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;->moduleScript:Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    return-object v0
.end method

.method getValidator()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;->validator:Ljava/lang/Object;

    return-object v0
.end method
