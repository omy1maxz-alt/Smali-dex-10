.class Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;
.super Ljava/lang/Object;
.source "Dim.java"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;
.implements Lorg/mozilla/javascript/ContextFactory$Listener;
.implements Lorg/mozilla/javascript/debug/Debugger;


# instance fields
.field private booleanResult:Z

.field private dim:Lorg/mozilla/javascript/tools/debugger/Dim;

.field private id:Ljava/lang/Object;

.field private object:Ljava/lang/Object;

.field private objectArrayResult:[Ljava/lang/Object;

.field private objectResult:Ljava/lang/Object;

.field private stringResult:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/mozilla/javascript/tools/debugger/Dim;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    iput p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->type:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/mozilla/javascript/tools/debugger/Dim;ILorg/mozilla/javascript/tools/debugger/Dim$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/Dim;I)V

    return-void
.end method

.method static synthetic access$1000(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->booleanResult:Z

    return p0
.end method

.method static synthetic access$1102(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->id:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->objectResult:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->objectArrayResult:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->text:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;)V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->withContext()V

    return-void
.end method

.method static synthetic access$802(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->object:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->stringResult:Ljava/lang/String;

    return-object p0
.end method

.method private withContext()V
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$2100(Lorg/mozilla/javascript/tools/debugger/Dim;)Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ContextFactory;->call(Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public contextCreated(Lorg/mozilla/javascript/Context;)V
    .registers 7

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_8
    new-instance v0, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    invoke-direct {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;-><init>()V

    new-instance v2, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;

    iget-object v3, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;-><init>(Lorg/mozilla/javascript/tools/debugger/Dim;I)V

    invoke-virtual {p1, v2, v0}, Lorg/mozilla/javascript/Context;->setDebugger(Lorg/mozilla/javascript/debug/Debugger;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Context;->setGeneratingDebug(Z)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    return-void
.end method

.method public contextReleased(Lorg/mozilla/javascript/Context;)V
    .registers 3

    iget p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->type:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_8
    return-void
.end method

.method public getFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;)Lorg/mozilla/javascript/debug/DebugFrame;
    .registers 6

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->type:I

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {v0, p2}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$2200(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/debug/DebuggableScript;)Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_11

    return-object v0

    :cond_11
    new-instance v1, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-direct {v1, p1, v2, p2, v0}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;Lorg/mozilla/javascript/tools/debugger/Dim$1;)V

    return-object v1
.end method

.method public handleCompilationDone(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V
    .registers 4

    iget p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->type:I

    if-eqz p1, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_7
    invoke-interface {p2}, Lorg/mozilla/javascript/debug/DebuggableScript;->isTopLevel()Z

    move-result p1

    if-nez p1, :cond_e

    return-void

    :cond_e
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$2400(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V

    return-void
.end method

.method public run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 10

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->type:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_80

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_b  #0x7
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->object:Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$2000(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/Context;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->objectArrayResult:[Ljava/lang/Object;

    goto/16 :goto_7f

    :pswitch_17  #0x6
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->object:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->id:Ljava/lang/Object;

    invoke-static {v0, p1, v2, v3}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$1900(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->objectResult:Ljava/lang/Object;

    goto :goto_7f

    :pswitch_24  #0x5
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->object:Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, v0, :cond_30

    const-string/jumbo p1, "undefined"

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->stringResult:Ljava/lang/String;

    goto :goto_7f

    :cond_30
    if-nez p1, :cond_37

    const-string p1, "null"

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->stringResult:Ljava/lang/String;

    goto :goto_7f

    :cond_37
    instance-of v0, p1, Lorg/mozilla/javascript/NativeCall;

    if-eqz v0, :cond_40

    const-string p1, "[object Call]"

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->stringResult:Ljava/lang/String;

    goto :goto_7f

    :cond_40
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->stringResult:Ljava/lang/String;

    goto :goto_7f

    :pswitch_47  #0x4
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Context;->stringIsCompilableUnit(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->booleanResult:Z

    goto :goto_7f

    :pswitch_50  #0x3
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$1800(Lorg/mozilla/javascript/tools/debugger/Dim;)Lorg/mozilla/javascript/tools/debugger/ScopeProvider;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {v0}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$1800(Lorg/mozilla/javascript/tools/debugger/Dim;)Lorg/mozilla/javascript/tools/debugger/ScopeProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/javascript/tools/debugger/ScopeProvider;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_64

    :cond_63
    move-object v0, v1

    :goto_64
    if-nez v0, :cond_6b

    new-instance v0, Lorg/mozilla/javascript/ImporterTopLevel;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/ImporterTopLevel;-><init>(Lorg/mozilla/javascript/Context;)V

    :cond_6b
    move-object v3, v0

    iget-object v4, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->text:Ljava/lang/String;

    iget-object v5, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->url:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lorg/mozilla/javascript/Context;->evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7f

    :pswitch_77  #0x2
    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->text:Ljava/lang/String;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$DimIProxy;->url:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3, v1}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    :goto_7f
    return-object v1

    :pswitch_data_80
    .packed-switch 0x2
        :pswitch_77  #00000002
        :pswitch_50  #00000003
        :pswitch_47  #00000004
        :pswitch_24  #00000005
        :pswitch_17  #00000006
        :pswitch_b  #00000007
    .end packed-switch
.end method
