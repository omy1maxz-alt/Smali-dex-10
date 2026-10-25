.class public Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;
.super Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/JsRuntimeChalBaseJCP;
.source "JsEngineChallengeProvider.java"


# static fields
.field private static final INSTANCE:Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;


# instance fields
.field private executeCount:I

.field private jsExecutor:Ljava/util/concurrent/ExecutorService;

.field private jsIsolate:Landroidx/javascriptengine/JavaScriptIsolate;

.field private jsSandbox:Landroidx/javascriptengine/JavaScriptSandbox;

.field private final npmLibFilenames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2YG6x4UYGnlwiNiSZxXDNP6xKvM()Ljava/lang/String;
    .registers 1

    .line 169
    const-string v0, "Failed to create JS executor"

    return-object v0
.end method

.method public static synthetic $r8$lambda$3_9KWxQiWeadJaD9PnfsSwJIR2I()Ljava/lang/String;
    .registers 1

    .line 67
    const-string v0, "Failed to read npm source"

    return-object v0
.end method

.method public static synthetic $r8$lambda$IHXe-a0TpF2FvPvnHU4DTAK1HDk()Ljava/lang/String;
    .registers 1

    .line 102
    const-string v0, "Closed the JavaScript isolate"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Zlr22pBNmMLXoz_snuUp1tC0Vlo(Z)Ljava/lang/String;
    .registers 3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Execution failed, warmup: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kT4HqEsDlD6l-ikHCMLWOYVKw8o(Z)Ljava/lang/String;
    .registers 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JavaScript engine error, warmup: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mewX2y9YADIiYrPSkBNAfd4lrBo(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$vh9A1uJkrOBZ2_qFtDTse-GSoUY(Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->lambda$runJS$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->INSTANCE:Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 46
    invoke-direct {p0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/JsRuntimeChalBaseJCP;-><init>()V

    .line 35
    const-string v0, "nsigsolver/meriyah-6.1.4.min.js"

    const-string v1, "nsigsolver/astring-1.9.0.min.js"

    const-string v2, "nsigsolver/polyfill.js"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->npmLibFilenames:Ljava/util/List;

    .line 41
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->jsExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->executeCount:I

    return-void
.end method

.method private ensureIsolate()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->jsSandbox:Landroidx/javascriptengine/JavaScriptSandbox;

    if-nez v0, :cond_18

    .line 75
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroidx/javascriptengine/JavaScriptSandbox;->createConnectedInstanceAsync(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/javascriptengine/JavaScriptSandbox;

    iput-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->jsSandbox:Landroidx/javascriptengine/JavaScriptSandbox;

    .line 78
    :cond_18
    iget-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->jsIsolate:Landroidx/javascriptengine/JavaScriptIsolate;

    if-nez v0, :cond_42

    .line 81
    iget-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->jsSandbox:Landroidx/javascriptengine/JavaScriptSandbox;

    const-string v1, "JS_FEATURE_ISOLATE_MAX_HEAP_SIZE"

    invoke-virtual {v0, v1}, Landroidx/javascriptengine/JavaScriptSandbox;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 82
    new-instance v0, Landroidx/javascriptengine/IsolateStartupParameters;

    invoke-direct {v0}, Landroidx/javascriptengine/IsolateStartupParameters;-><init>()V

    const-wide/32 v1, 0x8000000

    .line 84
    invoke-virtual {v0, v1, v2}, Landroidx/javascriptengine/IsolateStartupParameters;->setMaxHeapSizeBytes(J)V

    .line 85
    iget-object v1, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->jsSandbox:Landroidx/javascriptengine/JavaScriptSandbox;

    invoke-virtual {v1, v0}, Landroidx/javascriptengine/JavaScriptSandbox;->createIsolate(Landroidx/javascriptengine/IsolateStartupParameters;)Landroidx/javascriptengine/JavaScriptIsolate;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->jsIsolate:Landroidx/javascriptengine/JavaScriptIsolate;

    return-void

    .line 87
    :cond_3a
    iget-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->jsSandbox:Landroidx/javascriptengine/JavaScriptSandbox;

    invoke-virtual {v0}, Landroidx/javascriptengine/JavaScriptSandbox;->createIsolate()Landroidx/javascriptengine/JavaScriptIsolate;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->jsIsolate:Landroidx/javascriptengine/JavaScriptIsolate;

    :cond_42
    return-void
.end method

.method public static getInstance()Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;
    .registers 1

    .line 49
    sget-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->INSTANCE:Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;

    return-object v0
.end method

.method private synthetic lambda$runJS$2(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->ensureIsolate()V

    .line 116
    iget-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->jsIsolate:Landroidx/javascriptengine/JavaScriptIsolate;

    invoke-virtual {v0, p1}, Landroidx/javascriptengine/JavaScriptIsolate;->evaluateJavaScriptAsync(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 123
    iget v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->executeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->executeCount:I

    return-object p1
.end method

.method private npmSource(Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;)Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;
    .registers 9

    .line 64
    :try_start_0
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->npmLibFilenames:Ljava/util/List;

    const-string v0, "Failed to read js challenge solver lib script"

    invoke-static {p0, v0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/ScriptUtils;->loadScript(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    new-instance v1, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;

    sget-object v3, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->V8_NPM:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    sget-object v4, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->BUILTIN:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    const-string v5, "0.0.1"

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;-><init>(Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Lcom/gold/extension/shared/spoof/js/nsigsolver/common/ScriptUtils$ScriptLoaderError; {:try_start_0 .. :try_end_14} :catch_15

    return-object v1

    :catch_15
    move-exception v0

    move-object p0, v0

    .line 67
    new-instance p1, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private resetIsolate()V
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->jsIsolate:Landroidx/javascriptengine/JavaScriptIsolate;

    if-eqz v0, :cond_a

    .line 95
    :try_start_4
    invoke-virtual {v0}, Landroidx/javascriptengine/JavaScriptIsolate;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->jsIsolate:Landroidx/javascriptengine/JavaScriptIsolate;

    :cond_a
    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->executeCount:I

    .line 102
    new-instance p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method private runJS(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderError;
        }
    .end annotation

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->jsExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p2, :cond_1a

    .line 130
    const-string p0, ""

    return-object p0

    :catch_16
    move-exception p1

    goto :goto_31

    :catch_18
    move-exception p1

    goto :goto_31

    .line 133
    :cond_1a
    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    return-object p1

    .line 136
    :cond_21
    const-string p1, "JavaScript engine error: empty response"

    .line 137
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 138
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderError;

    invoke-direct {v0, p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_31} :catch_18
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_31} :catch_16

    .line 141
    :goto_31
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 142
    instance-of v1, v0, Ljava/util/concurrent/ExecutionException;

    if-eqz v1, :cond_3f

    check-cast v0, Ljava/util/concurrent/ExecutionException;

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 145
    :cond_3f
    instance-of v1, v0, Landroidx/javascriptengine/EvaluationFailedException;

    if-eqz v1, :cond_7e

    check-cast v0, Landroidx/javascriptengine/EvaluationFailedException;

    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5e

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid or unexpected token"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 148
    :try_start_57
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProvider;->cacheService:Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;

    const-string p1, "challenge-solver"

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheService;->clear(Ljava/lang/String;)V
    :try_end_5e
    .catch Lcom/gold/extension/shared/spoof/js/nsigsolver/common/CacheError; {:try_start_57 .. :try_end_5e} :catch_5e

    .line 153
    :catch_5e
    :cond_5e
    new-instance p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider$$ExternalSyntheticLambda4;

    invoke-direct {p0, p2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider$$ExternalSyntheticLambda4;-><init>(Z)V

    invoke-static {p0, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 154
    new-instance p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "JavaScript engine error: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0

    .line 156
    :cond_7e
    new-instance p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider$$ExternalSyntheticLambda5;

    invoke-direct {p0, p2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider$$ExternalSyntheticLambda5;-><init>(Z)V

    invoke-static {p0, p1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 157
    new-instance p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderError;

    const-string p2, "Execution failed"

    invoke-direct {p0, p2, p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0
.end method


# virtual methods
.method public builtinSource(Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;)Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;
    .registers 3

    .line 55
    sget-object v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;->LIB:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    if-ne p1, v0, :cond_b

    .line 56
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->npmSource(Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;)Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 59
    :cond_b
    invoke-super {p0, p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/JsRuntimeChalBaseJCP;->builtinSource(Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;)Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;

    move-result-object p0

    return-object p0
.end method

.method public runJsRuntime(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderError;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->warmup()V

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->runJS(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public warmup()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->jsExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->jsExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 165
    :cond_10
    :try_start_10
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->jsExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->executeCount:I

    .line 167
    invoke-virtual {p0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/JsRuntimeChalBaseJCP;->resetLoadedPlayerState()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1c} :catch_1d

    goto :goto_26

    :catch_1d
    move-exception v0

    .line 169
    new-instance v1, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 173
    :cond_26
    :goto_26
    iget v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->executeCount:I

    if-nez v0, :cond_32

    .line 175
    :try_start_2a
    invoke-virtual {p0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/JsRuntimeChalBaseJCP;->constructCommonStdin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 178
    invoke-direct {p0, v0, v1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->runJS(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_32

    :catch_32
    :cond_32
    return-void
.end method
