.class public Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;
.super Ljava/lang/Object;
.source "Dim.java"

# interfaces
.implements Lorg/mozilla/javascript/debug/DebugFrame;


# instance fields
.field private breakpoints:[Z

.field private contextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

.field private dim:Lorg/mozilla/javascript/tools/debugger/Dim;

.field private fsource:Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

.field private lineNumber:I

.field private scope:Lorg/mozilla/javascript/Scriptable;

.field private thisObj:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method private constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->get(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->contextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    iput-object p3, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->fsource:Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    invoke-virtual {p3}, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;->sourceInfo()Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->access$2500(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)[Z

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->breakpoints:[Z

    invoke-virtual {p3}, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;->firstLine()I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->lineNumber:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;Lorg/mozilla/javascript/tools/debugger/Dim$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;)Lorg/mozilla/javascript/Scriptable;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;)Lorg/mozilla/javascript/Scriptable;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    return-object p0
.end method


# virtual methods
.method public contextData()Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->contextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    return-object v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->fsource:Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->lineNumber:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->fsource:Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;->sourceInfo()Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDebuggerStatement(Lorg/mozilla/javascript/Context;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$2800(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Lorg/mozilla/javascript/Context;)V

    return-void
.end method

.method public onEnter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .registers 5

    iget-object p4, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->contextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    invoke-static {p4, p0}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$2600(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;)V

    iput-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iput-object p3, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {p2}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$2700(Lorg/mozilla/javascript/tools/debugger/Dim;)Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {p2, p0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$2800(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Lorg/mozilla/javascript/Context;)V

    :cond_16
    return-void
.end method

.method public onExceptionThrown(Lorg/mozilla/javascript/Context;Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {v0, p1, p2, p0}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$3000(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/Context;Ljava/lang/Throwable;Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;)V

    return-void
.end method

.method public onExit(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)V
    .registers 4

    iget-object p3, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {p3}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$3100(Lorg/mozilla/javascript/tools/debugger/Dim;)Z

    move-result p3

    if-eqz p3, :cond_f

    if-nez p2, :cond_f

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {p2, p0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$2800(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Lorg/mozilla/javascript/Context;)V

    :cond_f
    iget-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->contextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    invoke-static {p1}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$3200(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;)V

    return-void
.end method

.method public onLineChange(Lorg/mozilla/javascript/Context;I)V
    .registers 5

    iput p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->lineNumber:I

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->breakpoints:[Z

    aget-boolean p2, v0, p2

    if-nez p2, :cond_40

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {p2}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$2900(Lorg/mozilla/javascript/tools/debugger/Dim;)Z

    move-result p2

    if-nez p2, :cond_40

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->contextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    invoke-static {p2}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$1400(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_32

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->contextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    invoke-static {v1}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$1500(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;)I

    move-result v1

    if-ltz v1, :cond_32

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->contextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    invoke-virtual {p2}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->frameCount()I

    move-result p2

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->contextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    invoke-static {v1}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$1500(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;)I

    move-result v1

    if-gt p2, v1, :cond_31

    const/4 p2, 0x1

    goto :goto_32

    :cond_31
    const/4 p2, 0x0

    :cond_32
    :goto_32
    if-nez p2, :cond_35

    return-void

    :cond_35
    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->contextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    const/4 v1, -0x1

    invoke-static {p2, v1}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$1502(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;I)I

    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->contextData:Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;

    invoke-static {p2, v0}, Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;->access$1402(Lorg/mozilla/javascript/tools/debugger/Dim$ContextData;Z)Z

    :cond_40
    iget-object p2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->dim:Lorg/mozilla/javascript/tools/debugger/Dim;

    invoke-static {p2, p0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim;->access$2800(Lorg/mozilla/javascript/tools/debugger/Dim;Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;Lorg/mozilla/javascript/Context;)V

    return-void
.end method

.method public scope()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public sourceInfo()Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->fsource:Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    invoke-virtual {v0}, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;->sourceInfo()Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public thisObj()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$StackFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method
