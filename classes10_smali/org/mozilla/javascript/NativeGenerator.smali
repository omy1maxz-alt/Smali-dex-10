.class public final Lorg/mozilla/javascript/NativeGenerator;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeGenerator.java"


# static fields
.field public static final GENERATOR_CLOSE:I = 0x2

.field public static final GENERATOR_SEND:I = 0x0

.field private static final GENERATOR_TAG:Ljava/lang/Object;

.field public static final GENERATOR_THROW:I = 0x1

.field private static final Id___iterator__:I = 0x5

.field private static final Id_close:I = 0x1

.field private static final Id_next:I = 0x2

.field private static final Id_send:I = 0x3

.field private static final Id_throw:I = 0x4

.field private static final MAX_PROTOTYPE_ID:I = 0x5

.field private static final serialVersionUID:J = 0x16d762746ec522c9L


# instance fields
.field private firstTime:Z

.field private function:Lorg/mozilla/javascript/NativeFunction;

.field private lineNumber:I

.field private lineSource:Ljava/lang/String;

.field private locked:Z

.field private savedState:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Generator"

    sput-object v0, Lorg/mozilla/javascript/NativeGenerator;->GENERATOR_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeGenerator;->firstTime:Z

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeGenerator;->firstTime:Z

    iput-object p2, p0, Lorg/mozilla/javascript/NativeGenerator;->function:Lorg/mozilla/javascript/NativeFunction;

    iput-object p3, p0, Lorg/mozilla/javascript/NativeGenerator;->savedState:Ljava/lang/Object;

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    sget-object p2, Lorg/mozilla/javascript/NativeGenerator;->GENERATOR_TAG:Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopScopeValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/NativeGenerator;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method static init(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/NativeGenerator;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/NativeGenerator;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeGenerator;-><init>()V

    if-eqz p0, :cond_11

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    :cond_11
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    if-eqz p1, :cond_1a

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_1a
    if-eqz p0, :cond_21

    sget-object p1, Lorg/mozilla/javascript/NativeGenerator;->GENERATOR_TAG:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-object v0
.end method

.method private resume(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 16

    iget-object v0, p0, Lorg/mozilla/javascript/NativeGenerator;->savedState:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_1c

    if-ne p3, v2, :cond_b

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :cond_b
    if-ne p3, v1, :cond_e

    goto :goto_12

    :cond_e
    invoke-static {p2}, Lorg/mozilla/javascript/NativeIterator;->getStopIterationObject(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    :goto_12
    new-instance p1, Lorg/mozilla/javascript/JavaScriptException;

    iget-object p2, p0, Lorg/mozilla/javascript/NativeGenerator;->lineSource:Ljava/lang/String;

    iget p3, p0, Lorg/mozilla/javascript/NativeGenerator;->lineNumber:I

    invoke-direct {p1, p4, p2, p3}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw p1

    :cond_1c
    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_1e
    monitor-enter p0
    :try_end_1f
    .catch Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException; {:try_start_1e .. :try_end_1f} :catch_5a
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_1e .. :try_end_1f} :catch_4a
    .catchall {:try_start_1e .. :try_end_1f} :catchall_48

    :try_start_1f
    iget-boolean v4, p0, Lorg/mozilla/javascript/NativeGenerator;->locked:Z

    if-nez v4, :cond_3e

    iput-boolean v1, p0, Lorg/mozilla/javascript/NativeGenerator;->locked:Z

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_45

    :try_start_26
    iget-object v5, p0, Lorg/mozilla/javascript/NativeGenerator;->function:Lorg/mozilla/javascript/NativeFunction;

    iget-object v9, p0, Lorg/mozilla/javascript/NativeGenerator;->savedState:Ljava/lang/Object;

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v10, p4

    invoke-virtual/range {v5 .. v10}, Lorg/mozilla/javascript/NativeFunction;->resumeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_32
    .catch Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException; {:try_start_26 .. :try_end_32} :catch_5a
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_26 .. :try_end_32} :catch_4a
    .catchall {:try_start_26 .. :try_end_32} :catchall_48

    monitor-enter p0

    :try_start_33
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeGenerator;->locked:Z

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3b

    if-ne p3, v2, :cond_3a

    iput-object v3, p0, Lorg/mozilla/javascript/NativeGenerator;->savedState:Ljava/lang/Object;

    :cond_3a
    return-object p1

    :catchall_3b
    move-exception p1

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1

    :cond_3e
    :try_start_3e
    const-string p1, "msg.already.exec.gen"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :catchall_45
    move-exception p1

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_45

    :try_start_47
    throw p1
    :try_end_48
    .catch Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException; {:try_start_47 .. :try_end_48} :catch_5a
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_47 .. :try_end_48} :catch_4a
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p1

    goto :goto_68

    :catch_4a
    move-exception p1

    :try_start_4b
    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result p2

    iput p2, p0, Lorg/mozilla/javascript/NativeGenerator;->lineNumber:I

    invoke-virtual {p1}, Lorg/mozilla/javascript/RhinoException;->lineSource()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/NativeGenerator;->lineSource:Ljava/lang/String;

    iput-object v3, p0, Lorg/mozilla/javascript/NativeGenerator;->savedState:Ljava/lang/Object;

    throw p1

    :catch_5a
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_4b .. :try_end_5c} :catchall_48

    monitor-enter p0

    :try_start_5d
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeGenerator;->locked:Z

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_65

    if-ne p3, v2, :cond_64

    iput-object v3, p0, Lorg/mozilla/javascript/NativeGenerator;->savedState:Ljava/lang/Object;

    :cond_64
    return-object p1

    :catchall_65
    move-exception p1

    :try_start_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw p1

    :goto_68
    monitor-enter p0

    :try_start_69
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeGenerator;->locked:Z

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_71

    if-ne p3, v2, :cond_70

    iput-object v3, p0, Lorg/mozilla/javascript/NativeGenerator;->savedState:Ljava/lang/Object;

    :cond_70
    throw p1

    :catchall_71
    move-exception p1

    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw p1
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    sget-object v0, Lorg/mozilla/javascript/NativeGenerator;->GENERATOR_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    instance-of v1, p4, Lorg/mozilla/javascript/NativeGenerator;

    if-eqz v1, :cond_74

    move-object p1, p4

    check-cast p1, Lorg/mozilla/javascript/NativeGenerator;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6a

    const/4 v3, 0x0

    if-eq v0, v1, :cond_61

    const/4 v1, 0x3

    if-eq v0, v1, :cond_40

    const/4 v1, 0x4

    if-eq v0, v1, :cond_33

    const/4 p1, 0x5

    if-ne v0, p1, :cond_29

    return-object p4

    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    array-length p4, p5

    if-lez p4, :cond_39

    aget-object p4, p5, v3

    goto :goto_3b

    :cond_39
    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_3b
    invoke-direct {p1, p2, p3, v2, p4}, Lorg/mozilla/javascript/NativeGenerator;->resume(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_40
    array-length p4, p5

    if-lez p4, :cond_46

    aget-object p4, p5, v3

    goto :goto_48

    :cond_46
    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_48
    iget-boolean p5, p1, Lorg/mozilla/javascript/NativeGenerator;->firstTime:Z

    if-eqz p5, :cond_5c

    sget-object p5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {p4, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_55

    goto :goto_5c

    :cond_55
    const-string p1, "msg.send.newborn"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_5c
    :goto_5c
    invoke-direct {p1, p2, p3, v3, p4}, Lorg/mozilla/javascript/NativeGenerator;->resume(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_61
    iput-boolean v3, p1, Lorg/mozilla/javascript/NativeGenerator;->firstTime:Z

    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-direct {p1, p2, p3, v3, p4}, Lorg/mozilla/javascript/NativeGenerator;->resume(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6a
    new-instance p4, Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException;

    invoke-direct {p4}, Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException;-><init>()V

    invoke-direct {p1, p2, p3, v1, p4}, Lorg/mozilla/javascript/NativeGenerator;->resume(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_74
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1d

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_15

    const/4 v1, 0x2

    const-string v0, "next"

    goto :goto_3d

    :cond_15
    const/16 v1, 0x73

    if-ne v0, v1, :cond_3b

    const/4 v1, 0x3

    const-string v0, "send"

    goto :goto_3d

    :cond_1d
    if-ne v0, v1, :cond_34

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2b

    const/4 v1, 0x1

    const-string v0, "close"

    goto :goto_3d

    :cond_2b
    const/16 v1, 0x74

    if-ne v0, v1, :cond_3b

    const-string/jumbo v0, "throw"

    const/4 v1, 0x4

    goto :goto_3d

    :cond_34
    const/16 v2, 0xc

    if-ne v0, v2, :cond_3b

    const-string v0, "__iterator__"

    goto :goto_3d

    :cond_3b
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3d
    if-eqz v0, :cond_48

    if-eq v0, p1, :cond_48

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_49

    :cond_48
    move v3, v1

    :goto_49
    return v3
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Generator"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_29

    const/4 v2, 0x2

    if-eq p1, v2, :cond_26

    const/4 v2, 0x3

    if-eq p1, v2, :cond_21

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1d

    const/4 v0, 0x5

    if-ne p1, v0, :cond_13

    const-string v0, "__iterator__"

    goto :goto_2b

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    const-string/jumbo v1, "throw"

    goto :goto_23

    :cond_21
    const-string v1, "send"

    :goto_23
    move-object v0, v1

    const/4 v1, 0x0

    goto :goto_2b

    :cond_26
    const-string v0, "next"

    goto :goto_2b

    :cond_29
    const-string v0, "close"

    :goto_2b
    sget-object v2, Lorg/mozilla/javascript/NativeGenerator;->GENERATOR_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method
