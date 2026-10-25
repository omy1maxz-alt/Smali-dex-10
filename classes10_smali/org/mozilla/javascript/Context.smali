.class public Lorg/mozilla/javascript/Context;
.super Ljava/lang/Object;
.source "Context.java"


# static fields
.field public static final FEATURE_DYNAMIC_SCOPE:I = 0x7

.field public static final FEATURE_E4X:I = 0x6

.field public static final FEATURE_ENABLE_XML_SECURE_PARSING:I = 0x14

.field public static final FEATURE_ENHANCED_JAVA_ACCESS:I = 0xd

.field public static final FEATURE_ENUMERATE_IDS_FIRST:I = 0x10

.field public static final FEATURE_INTEGER_WITHOUT_DECIMAL_PLACE:I = 0x12

.field public static final FEATURE_LITTLE_ENDIAN:I = 0x13

.field public static final FEATURE_LOCATION_INFORMATION_IN_ERROR:I = 0xa

.field public static final FEATURE_MEMBER_EXPR_AS_FUNCTION_NAME:I = 0x2

.field public static final FEATURE_NON_ECMA_GET_YEAR:I = 0x1

.field public static final FEATURE_OLD_UNDEF_NULL_THIS:I = 0xf

.field public static final FEATURE_PARENT_PROTO_PROPERTIES:I = 0x5

.field public static final FEATURE_PARENT_PROTO_PROPRTIES:I = 0x5

.field public static final FEATURE_RESERVED_KEYWORD_AS_IDENTIFIER:I = 0x3

.field public static final FEATURE_STRICT_EVAL:I = 0x9

.field public static final FEATURE_STRICT_MODE:I = 0xb

.field public static final FEATURE_STRICT_VARS:I = 0x8

.field public static final FEATURE_THREAD_SAFE_OBJECTS:I = 0x11

.field public static final FEATURE_TO_STRING_AS_SOURCE:I = 0x4

.field public static final FEATURE_V8_EXTENSIONS:I = 0xe

.field public static final FEATURE_WARNING_AS_ERROR:I = 0xc

.field public static final VERSION_1_0:I = 0x64

.field public static final VERSION_1_1:I = 0x6e

.field public static final VERSION_1_2:I = 0x78

.field public static final VERSION_1_3:I = 0x82

.field public static final VERSION_1_4:I = 0x8c

.field public static final VERSION_1_5:I = 0x96

.field public static final VERSION_1_6:I = 0xa0

.field public static final VERSION_1_7:I = 0xaa

.field public static final VERSION_1_8:I = 0xb4

.field public static final VERSION_DEFAULT:I = 0x0

.field public static final VERSION_ES6:I = 0xc8

.field public static final VERSION_UNKNOWN:I = -0x1

.field private static codegenClass:Ljava/lang/Class; = null

.field public static final emptyArgs:[Ljava/lang/Object;

.field public static final errorReporterProperty:Ljava/lang/String; = "error reporter"

.field private static interpreterClass:Ljava/lang/Class; = null

.field public static final languageVersionProperty:Ljava/lang/String; = "language version"


# instance fields
.field activationNames:Ljava/util/Set;

.field private applicationClassLoader:Ljava/lang/ClassLoader;

.field cachedXMLLib:Lorg/mozilla/javascript/xml/XMLLib;

.field private classShutter:Lorg/mozilla/javascript/ClassShutter;

.field currentActivationCall:Lorg/mozilla/javascript/NativeCall;

.field debugger:Lorg/mozilla/javascript/debug/Debugger;

.field private debuggerData:Ljava/lang/Object;

.field private enterCount:I

.field private errorReporter:Lorg/mozilla/javascript/ErrorReporter;

.field private final factory:Lorg/mozilla/javascript/ContextFactory;

.field public generateObserverCount:Z

.field private generatingDebug:Z

.field private generatingDebugChanged:Z

.field private generatingSource:Z

.field private hasClassShutter:Z

.field instructionCount:I

.field instructionThreshold:I

.field interpreterSecurityDomain:Ljava/lang/Object;

.field isContinuationsTopCall:Z

.field isTopLevelStrict:Z

.field iterating:Lorg/mozilla/javascript/ObjToIntMap;

.field lastInterpreterFrame:Ljava/lang/Object;

.field private locale:Ljava/util/Locale;

.field private maximumInterpreterStackDepth:I

.field private optimizationLevel:I

.field previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

.field private propertyListeners:Ljava/lang/Object;

.field regExpProxy:Lorg/mozilla/javascript/RegExpProxy;

.field scratchScriptable:Lorg/mozilla/javascript/Scriptable;

.field scratchUint32:J

.field private sealKey:Ljava/lang/Object;

.field private sealed:Z

.field private securityController:Lorg/mozilla/javascript/SecurityController;

.field private threadLocalMap:Ljava/util/Map;

.field topCallScope:Lorg/mozilla/javascript/Scriptable;

.field typeErrorThrower:Lorg/mozilla/javascript/BaseFunction;

.field useDynamicScope:Z

.field version:I

.field private wrapFactory:Lorg/mozilla/javascript/WrapFactory;


# direct methods
.method public static synthetic $r8$lambda$FBfUmmX3GbL3akcaT52xTgeMGSk(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Context;->lambda$call$0(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    sput-object v0, Lorg/mozilla/javascript/Context;->emptyArgs:[Ljava/lang/Object;

    const-string v0, "org.mozilla.javascript.optimizer.Codegen"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/Context;->codegenClass:Ljava/lang/Class;

    const-string v0, "org.mozilla.javascript.Interpreter"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/Context;->interpreterClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Context;-><init>(Lorg/mozilla/javascript/ContextFactory;)V

    return-void
.end method

.method protected constructor <init>(Lorg/mozilla/javascript/ContextFactory;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Context;->generatingSource:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/Context;->generateObserverCount:Z

    if-eqz p1, :cond_1d

    iput-object p1, p0, Lorg/mozilla/javascript/Context;->factory:Lorg/mozilla/javascript/ContextFactory;

    iput v0, p0, Lorg/mozilla/javascript/Context;->version:I

    sget-object p1, Lorg/mozilla/javascript/Context;->codegenClass:Ljava/lang/Class;

    if-eqz p1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, -0x1

    :goto_15
    iput v0, p0, Lorg/mozilla/javascript/Context;->optimizationLevel:I

    const p1, 0x7fffffff

    iput p1, p0, Lorg/mozilla/javascript/Context;->maximumInterpreterStackDepth:I

    return-void

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ClassShutter;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/Context;->classShutter:Lorg/mozilla/javascript/ClassShutter;

    return-object p0
.end method

.method static synthetic access$002(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ClassShutter;)Lorg/mozilla/javascript/ClassShutter;
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/Context;->classShutter:Lorg/mozilla/javascript/ClassShutter;

    return-object p1
.end method

.method public static addContextListener(Lorg/mozilla/javascript/ContextListener;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.mozilla.javascript.tools.debugger.Main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "org.mozilla.javascript.ContextFactory"

    invoke-static {v1}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v2

    aput-object v2, v1, v4

    :try_start_28
    const-string v2, "attachTo"

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_39
    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ContextFactory;->addListener(Lorg/mozilla/javascript/ContextFactory$Listener;)V

    return-void
.end method

.method public static call(Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/mozilla/javascript/Context;->call(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static call(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    if-nez p0, :cond_6

    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object p0

    :cond_6
    new-instance v0, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Context$$ExternalSyntheticLambda0;-><init>(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lorg/mozilla/javascript/Context;->call(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static call(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/mozilla/javascript/Context;->enter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ContextFactory;)Lorg/mozilla/javascript/Context;

    move-result-object p0

    :try_start_5
    invoke-interface {p1, p0}, Lorg/mozilla/javascript/ContextAction;->run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return-object p0

    :catchall_d
    move-exception p0

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    throw p0
.end method

.method public static checkLanguageVersion(I)V
    .registers 4

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->isValidLanguageVersion(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad language version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkOptimizationLevel(I)V
    .registers 4

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->isValidOptimizationLevel(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Optimization level outside [-1..9]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private compileImpl(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;ZLorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;)Ljava/lang/Object;
    .registers 24

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move/from16 v11, p6

    if-nez p3, :cond_10

    const-string/jumbo v0, "unnamed script"

    move-object v12, v0

    goto :goto_12

    :cond_10
    move-object/from16 v12, p3

    :goto_12
    if-eqz v10, :cond_23

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getSecurityController()Lorg/mozilla/javascript/SecurityController;

    move-result-object v0

    if-eqz v0, :cond_1b

    goto :goto_23

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "securityDomain should be null if setSecurityController() was never called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_23
    if-nez v8, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    xor-int/2addr v0, v11

    if-nez v0, :cond_2e

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2e
    new-instance v13, Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {v13}, Lorg/mozilla/javascript/CompilerEnvirons;-><init>()V

    invoke-virtual {v13, p0}, Lorg/mozilla/javascript/CompilerEnvirons;->initFromContext(Lorg/mozilla/javascript/Context;)V

    if-nez p8, :cond_3e

    invoke-virtual {v13}, Lorg/mozilla/javascript/CompilerEnvirons;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    move-object v14, v0

    goto :goto_40

    :cond_3e
    move-object/from16 v14, p8

    :goto_40
    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move/from16 v3, p4

    move-object v4, v13

    move-object v5, v14

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/Context;->parse(Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;Z)Lorg/mozilla/javascript/ast/ScriptNode;

    move-result-object v0

    if-nez p7, :cond_55

    :try_start_50
    invoke-direct {p0}, Lorg/mozilla/javascript/Context;->createCompiler()Lorg/mozilla/javascript/Evaluator;

    move-result-object v1

    goto :goto_57

    :cond_55
    move-object/from16 v1, p7

    :goto_57
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSource()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v13, v0, v2, v11}, Lorg/mozilla/javascript/Evaluator;->compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_5f
    .catch Lorg/mozilla/classfile/ClassFileWriter$ClassFileFormatException; {:try_start_50 .. :try_end_5f} :catch_60

    goto :goto_7a

    :catch_60
    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move/from16 v3, p4

    move-object v4, v13

    move-object v5, v14

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/Context;->parse(Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;Z)Lorg/mozilla/javascript/ast/ScriptNode;

    move-result-object v0

    invoke-static {}, Lorg/mozilla/javascript/Context;->createInterpreter()Lorg/mozilla/javascript/Evaluator;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSource()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v13, v0, v2, v11}, Lorg/mozilla/javascript/Evaluator;->compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_7a
    iget-object v2, v7, Lorg/mozilla/javascript/Context;->debugger:Lorg/mozilla/javascript/debug/Debugger;

    if-eqz v2, :cond_96

    if-nez v9, :cond_83

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_83
    instance-of v2, v0, Lorg/mozilla/javascript/debug/DebuggableScript;

    if-eqz v2, :cond_8e

    move-object v2, v0

    check-cast v2, Lorg/mozilla/javascript/debug/DebuggableScript;

    invoke-static {p0, v2, v9}, Lorg/mozilla/javascript/Context;->notifyDebugger_r(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V

    goto :goto_96

    :cond_8e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT SUPPORTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_96
    :goto_96
    if-eqz v11, :cond_9d

    invoke-interface {v1, p0, v8, v0, v10}, Lorg/mozilla/javascript/Evaluator;->createFunctionObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;

    move-result-object v0

    goto :goto_a1

    :cond_9d
    invoke-interface {v1, v0, v10}, Lorg/mozilla/javascript/Evaluator;->createScriptObject(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object v0

    :goto_a1
    return-object v0
.end method

.method private createCompiler()Lorg/mozilla/javascript/Evaluator;
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/Context;->optimizationLevel:I

    if-ltz v0, :cond_f

    sget-object v0, Lorg/mozilla/javascript/Context;->codegenClass:Ljava/lang/Class;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->newInstanceOrNull(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Evaluator;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_16

    invoke-static {}, Lorg/mozilla/javascript/Context;->createInterpreter()Lorg/mozilla/javascript/Evaluator;

    move-result-object v0

    :cond_16
    return-object v0
.end method

.method static createInterpreter()Lorg/mozilla/javascript/Evaluator;
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/Context;->interpreterClass:Ljava/lang/Class;

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->newInstanceOrNull(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Evaluator;

    return-object v0
.end method

.method public static enter()Lorg/mozilla/javascript/Context;
    .registers 2

    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/mozilla/javascript/Context;->enter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ContextFactory;)Lorg/mozilla/javascript/Context;

    move-result-object v0

    return-object v0
.end method

.method public static enter(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Context;
    .registers 2

    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/Context;->enter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ContextFactory;)Lorg/mozilla/javascript/Context;

    move-result-object p0

    return-object p0
.end method

.method static final enter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ContextFactory;)Lorg/mozilla/javascript/Context;
    .registers 5

    sget-object v0, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v0}, Lorg/mozilla/javascript/VMBridge;->getThreadContextHelper()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/VMBridge;->getContext(Ljava/lang/Object;)Lorg/mozilla/javascript/Context;

    move-result-object v2

    if-eqz v2, :cond_d

    goto :goto_3b

    :cond_d
    if-nez p0, :cond_33

    invoke-virtual {p1}, Lorg/mozilla/javascript/ContextFactory;->makeContext()Lorg/mozilla/javascript/Context;

    move-result-object p0

    iget v2, p0, Lorg/mozilla/javascript/Context;->enterCount:I

    if-nez v2, :cond_2b

    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/ContextFactory;->onContextCreated(Lorg/mozilla/javascript/Context;)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/ContextFactory;->isSealed()Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->isSealed()Z

    move-result p1

    if-nez p1, :cond_37

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Context;->seal(Ljava/lang/Object;)V

    goto :goto_37

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "factory.makeContext() returned Context instance already associated with some thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    iget p1, p0, Lorg/mozilla/javascript/Context;->enterCount:I

    if-nez p1, :cond_42

    :cond_37
    :goto_37
    invoke-virtual {v0, v1, p0}, Lorg/mozilla/javascript/VMBridge;->setContext(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)V

    move-object v2, p0

    :goto_3b
    iget p0, v2, Lorg/mozilla/javascript/Context;->enterCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v2, Lorg/mozilla/javascript/Context;->enterCount:I

    return-object v2

    :cond_42
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "can not use Context instance already associated with some thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static exit()V
    .registers 5

    sget-object v0, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v0}, Lorg/mozilla/javascript/VMBridge;->getThreadContextHelper()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/VMBridge;->getContext(Ljava/lang/Object;)Lorg/mozilla/javascript/Context;

    move-result-object v2

    if-eqz v2, :cond_25

    iget v3, v2, Lorg/mozilla/javascript/Context;->enterCount:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_14

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_14
    iget v3, v2, Lorg/mozilla/javascript/Context;->enterCount:I

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/mozilla/javascript/Context;->enterCount:I

    if-nez v3, :cond_24

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/mozilla/javascript/VMBridge;->setContext(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)V

    iget-object v0, v2, Lorg/mozilla/javascript/Context;->factory:Lorg/mozilla/javascript/ContextFactory;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ContextFactory;->onContextReleased(Lorg/mozilla/javascript/Context;)V

    :cond_24
    return-void

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling Context.exit without previous Context.enter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private firePropertyChangeImpl(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    invoke-static {p1, v0}, Lorg/mozilla/javascript/Kit;->getListener(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    instance-of v2, v1, Ljava/beans/PropertyChangeListener;

    if-eqz v2, :cond_16

    check-cast v1, Ljava/beans/PropertyChangeListener;

    new-instance v2, Ljava/beans/PropertyChangeEvent;

    invoke-direct {v2, p0, p2, p3, p4}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/beans/PropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static getContext()Lorg/mozilla/javascript/Context;
    .registers 2

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No Context associated with current Thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCurrentContext()Lorg/mozilla/javascript/Context;
    .registers 2

    sget-object v0, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v0}, Lorg/mozilla/javascript/VMBridge;->getThreadContextHelper()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/VMBridge;->getContext(Ljava/lang/Object;)Lorg/mozilla/javascript/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDebuggableView(Lorg/mozilla/javascript/Script;)Lorg/mozilla/javascript/debug/DebuggableScript;
    .registers 2

    instance-of v0, p0, Lorg/mozilla/javascript/NativeFunction;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/mozilla/javascript/NativeFunction;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeFunction;->getDebuggableView()Lorg/mozilla/javascript/debug/DebuggableScript;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method static getSourcePositionFromStack([I)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    iget-object v2, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-eqz v2, :cond_17

    invoke-static {}, Lorg/mozilla/javascript/Context;->createInterpreter()Lorg/mozilla/javascript/Evaluator;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-interface {v2, v0, p0}, Lorg/mozilla/javascript/Evaluator;->getSourcePositionFromStack(Lorg/mozilla/javascript/Context;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v2, :cond_41

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3e

    const-string v7, ".java"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3e

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    if-ltz v5, :cond_3e

    aput v5, p0, v3

    return-object v6

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_41
    return-object v1
.end method

.method public static getUndefinedValue()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public static isValidLanguageVersion(I)Z
    .registers 1

    sparse-switch p0, :sswitch_data_8

    const/4 p0, 0x0

    return p0

    :sswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0x64 -> :sswitch_5
        0x6e -> :sswitch_5
        0x78 -> :sswitch_5
        0x82 -> :sswitch_5
        0x8c -> :sswitch_5
        0x96 -> :sswitch_5
        0xa0 -> :sswitch_5
        0xaa -> :sswitch_5
        0xb4 -> :sswitch_5
        0xc8 -> :sswitch_5
    .end sparse-switch
.end method

.method public static isValidOptimizationLevel(I)Z
    .registers 2

    const/4 v0, -0x1

    if-gt v0, p0, :cond_9

    const/16 v0, 0x9

    if-gt p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static javaToJS(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 5

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_2d

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_2d

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_2d

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_11

    goto :goto_2d

    :cond_11
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_20

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p0, v2}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    :cond_2d
    :goto_2d
    return-object p0
.end method

.method public static jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->coerceTypeImpl(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$0(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 5

    invoke-interface {p0, p4, p1, p2, p3}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static notifyDebugger_r(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->debugger:Lorg/mozilla/javascript/debug/Debugger;

    invoke-interface {v0, p0, p1, p2}, Lorg/mozilla/javascript/debug/Debugger;->handleCompilationDone(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    invoke-interface {p1}, Lorg/mozilla/javascript/debug/DebuggableScript;->getFunctionCount()I

    move-result v1

    if-eq v0, v1, :cond_16

    invoke-interface {p1, v0}, Lorg/mozilla/javascript/debug/DebuggableScript;->getFunction(I)Lorg/mozilla/javascript/debug/DebuggableScript;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lorg/mozilla/javascript/Context;->notifyDebugger_r(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_16
    return-void
.end method

.method static onSealedMutation()V
    .registers 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private parse(Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;Z)Lorg/mozilla/javascript/ast/ScriptNode;
    .registers 10

    new-instance v0, Lorg/mozilla/javascript/Parser;

    invoke-direct {v0, p4, p5}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V

    const/4 v1, 0x1

    if-eqz p6, :cond_a

    iput-boolean v1, v0, Lorg/mozilla/javascript/Parser;->calledByCompileFunction:Z

    :cond_a
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->setDefaultUseStrictDirective(Z)V

    :cond_13
    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/javascript/Parser;->parse(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;

    move-result-object p2

    if-eqz p6, :cond_43

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p3

    if-eqz p3, :cond_2c

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p3

    invoke-virtual {p3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result p3

    const/16 p6, 0x6e

    if-ne p3, p6, :cond_2c

    goto :goto_43

    :cond_2c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "compileFunction only accepts source with single JS function: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_43
    :goto_43
    new-instance p1, Lorg/mozilla/javascript/IRFactory;

    invoke-direct {p1, p4, p5}, Lorg/mozilla/javascript/IRFactory;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/IRFactory;->transformTree(Lorg/mozilla/javascript/ast/AstRoot;)Lorg/mozilla/javascript/ast/ScriptNode;

    move-result-object p1

    return-object p1
.end method

.method public static removeContextListener(Lorg/mozilla/javascript/ContextListener;)V
    .registers 2

    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ContextFactory;->addListener(Lorg/mozilla/javascript/ContextFactory$Listener;)V

    return-void
.end method

.method public static reportError(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v2

    aget v0, v0, v1

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3, v1}, Lorg/mozilla/javascript/Context;->reportError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static reportError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 13

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/mozilla/javascript/ErrorReporter;->error(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_13
    new-instance v0, Lorg/mozilla/javascript/EvaluatorException;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/mozilla/javascript/EvaluatorException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    throw v0
.end method

.method public static reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v2

    aget v0, v0, v1

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    return-object p0
.end method

.method public static reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;
    .registers 12

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/mozilla/javascript/ErrorReporter;->runtimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    return-object p0

    :cond_14
    new-instance v6, Lorg/mozilla/javascript/EvaluatorException;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/EvaluatorException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6
.end method

.method static reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;
    .registers 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    return-object p0
.end method

.method static reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    return-object p0
.end method

.method static reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    return-object p0
.end method

.method static reportRuntimeError3(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage3(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    return-object p0
.end method

.method static reportRuntimeError4(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage4(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    return-object p0
.end method

.method public static reportWarning(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v2

    aget v0, v0, v1

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3, v1}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static reportWarning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 13

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Context;->reportError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_1c

    :cond_10
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lorg/mozilla/javascript/ErrorReporter;->warning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_1c
    return-void
.end method

.method public static reportWarning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aget p1, v0, v1

    const/4 v0, 0x0

    invoke-static {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public static setCachingEnabled(Z)V
    .registers 1

    return-void
.end method

.method public static throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 3

    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_b
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_21

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_21

    :cond_1e
    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_21
    :goto_21
    instance-of v0, p0, Lorg/mozilla/javascript/RhinoException;

    if-eqz v0, :cond_28

    check-cast p0, Lorg/mozilla/javascript/RhinoException;

    throw p0

    :cond_28
    new-instance v0, Lorg/mozilla/javascript/WrappedException;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/WrappedException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2f

    :goto_2e
    throw v0

    :goto_2f
    goto :goto_2e
.end method

.method public static toBoolean(Ljava/lang/Object;)Z
    .registers 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static toNumber(Ljava/lang/Object;)D
    .registers 3

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 2

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/mozilla/javascript/RhinoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public addActivationName(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->activationNames:Ljava/util/Set;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Context;->activationNames:Ljava/util/Set;

    :cond_12
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->activationNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->propertyListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/Kit;->addListener(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/Context;->propertyListeners:Ljava/lang/Object;

    return-void
.end method

.method public callFunctionWithContinuations(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    instance-of v0, p1, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v0, :cond_21

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Context;->isContinuationsTopCall:Z

    iget-boolean v6, p0, Lorg/mozilla/javascript/Context;->isTopLevelStrict:Z

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptRuntime;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot have any pending top calls when executing a script with continuations"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Function argument was not created by interpreted mode "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public captureContinuation()Lorg/mozilla/javascript/ContinuationPending;
    .registers 3

    new-instance v0, Lorg/mozilla/javascript/ContinuationPending;

    invoke-static {p0}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ContinuationPending;-><init>(Lorg/mozilla/javascript/NativeContinuation;)V

    return-object v0
.end method

.method public final compileFunction(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Function;
    .registers 14

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lorg/mozilla/javascript/Context;->compileFunction(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Function;

    move-result-object p1

    return-object p1
.end method

.method final compileFunction(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Function;
    .registers 18

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object v8, p3

    move-object v9, p4

    :try_start_b
    invoke-direct/range {v1 .. v9}, Lorg/mozilla/javascript/Context;->compileImpl(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;ZLorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Function;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final compileReader(Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;
    .registers 14

    if-gez p3, :cond_5

    const/4 p3, 0x0

    const/4 v4, 0x0

    goto :goto_6

    :cond_5
    move v4, p3

    :goto_6
    const/4 v1, 0x0

    invoke-static {p1}, Lorg/mozilla/javascript/Kit;->readReader(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lorg/mozilla/javascript/Context;->compileImpl(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;ZLorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Script;

    return-object p1
.end method

.method public final compileReader(Lorg/mozilla/javascript/Scriptable;Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;
    .registers 6

    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/mozilla/javascript/Context;->compileReader(Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object p1

    return-object p1
.end method

.method public final compileString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;
    .registers 12

    if-gez p3, :cond_5

    const/4 p3, 0x0

    const/4 v5, 0x0

    goto :goto_6

    :cond_5
    move v5, p3

    :goto_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Lorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object p1

    return-object p1
.end method

.method final compileString(Ljava/lang/String;Lorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;
    .registers 16

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v7, p2

    move-object v8, p3

    :try_start_9
    invoke-direct/range {v0 .. v8}, Lorg/mozilla/javascript/Context;->compileImpl(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;ZLorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Script;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_10

    return-object p1

    :catch_10
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createClassLoader(Ljava/lang/ClassLoader;)Lorg/mozilla/javascript/GeneratedClassLoader;
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ContextFactory;->createClassLoader(Ljava/lang/ClassLoader;)Lorg/mozilla/javascript/GeneratedClassLoader;

    move-result-object p1

    return-object p1
.end method

.method public final decompileFunction(Lorg/mozilla/javascript/Function;I)Ljava/lang/String;
    .registers 4

    instance-of v0, p1, Lorg/mozilla/javascript/BaseFunction;

    if-eqz v0, :cond_c

    check-cast p1, Lorg/mozilla/javascript/BaseFunction;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/BaseFunction;->decompile(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "function "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() {\n\t[native code]\n}\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final decompileFunctionBody(Lorg/mozilla/javascript/Function;I)Ljava/lang/String;
    .registers 4

    instance-of v0, p1, Lorg/mozilla/javascript/BaseFunction;

    if-eqz v0, :cond_c

    check-cast p1, Lorg/mozilla/javascript/BaseFunction;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/BaseFunction;->decompile(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    const-string p1, "[native code]\n"

    return-object p1
.end method

.method public final decompileScript(Lorg/mozilla/javascript/Script;I)Ljava/lang/String;
    .registers 4

    check-cast p1, Lorg/mozilla/javascript/NativeFunction;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/NativeFunction;->decompile(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final evaluateReader(Lorg/mozilla/javascript/Scriptable;Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lorg/mozilla/javascript/Context;->compileReader(Lorg/mozilla/javascript/Scriptable;Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-interface {p2, p0, p1}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public final evaluateString(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/mozilla/javascript/Context;->compileString(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-interface {p2, p0, p1}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public executeScriptWithContinuations(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p1, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v0, :cond_13

    check-cast p1, Lorg/mozilla/javascript/InterpretedFunction;

    invoke-virtual {p1}, Lorg/mozilla/javascript/InterpretedFunction;->isScript()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/Context;->callFunctionWithContinuations(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Script argument was not a script or was not created by interpreted mode "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->propertyListeners:Ljava/lang/Object;

    if-eqz v0, :cond_7

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/mozilla/javascript/Context;->firePropertyChangeImpl(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final getApplicationClassLoader()Ljava/lang/ClassLoader;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->applicationClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_36

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ContextFactory;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_34

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-static {v1}, Lorg/mozilla/javascript/Kit;->testIfCanLoadRhinoClasses(Ljava/lang/ClassLoader;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-object v1

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ContextFactoryClass:Ljava/lang/Class;

    if-eq v0, v1, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_34

    :cond_2c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :cond_34
    :goto_34
    iput-object v1, p0, Lorg/mozilla/javascript/Context;->applicationClassLoader:Ljava/lang/ClassLoader;

    :cond_36
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->applicationClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method final declared-synchronized getClassShutter()Lorg/mozilla/javascript/ClassShutter;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->classShutter:Lorg/mozilla/javascript/ClassShutter;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getClassShutterSetter()Lorg/mozilla/javascript/Context$ClassShutterSetter;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->hasClassShutter:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_8
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lorg/mozilla/javascript/Context;->hasClassShutter:Z

    new-instance v0, Lorg/mozilla/javascript/Context$1;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/Context$1;-><init>(Lorg/mozilla/javascript/Context;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getDebugger()Lorg/mozilla/javascript/debug/Debugger;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->debugger:Lorg/mozilla/javascript/debug/Debugger;

    return-object v0
.end method

.method public final getDebuggerContextData()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->debuggerData:Ljava/lang/Object;

    return-object v0
.end method

.method public getE4xImplementationFactory()Lorg/mozilla/javascript/xml/XMLLib$Factory;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ContextFactory;->getE4xImplementationFactory()Lorg/mozilla/javascript/xml/XMLLib$Factory;

    move-result-object v0

    return-object v0
.end method

.method public final getElements(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getArrayElements(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    if-nez v0, :cond_6

    sget-object v0, Lorg/mozilla/javascript/DefaultErrorReporter;->instance:Lorg/mozilla/javascript/DefaultErrorReporter;

    :cond_6
    return-object v0
.end method

.method public final getFactory()Lorg/mozilla/javascript/ContextFactory;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->factory:Lorg/mozilla/javascript/ContextFactory;

    return-object v0
.end method

.method public final getImplementationVersion()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lorg/mozilla/javascript/ImplementationVersion;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInstructionObserverThreshold()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    return v0
.end method

.method public final getLanguageVersion()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/Context;->version:I

    return v0
.end method

.method public final getLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->locale:Ljava/util/Locale;

    if-nez v0, :cond_a

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Context;->locale:Ljava/util/Locale;

    :cond_a
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public final getMaximumInterpreterStackDepth()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/Context;->maximumInterpreterStackDepth:I

    return v0
.end method

.method public final getOptimizationLevel()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/Context;->optimizationLevel:I

    return v0
.end method

.method getRegExpProxy()Lorg/mozilla/javascript/RegExpProxy;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->regExpProxy:Lorg/mozilla/javascript/RegExpProxy;

    if-nez v0, :cond_14

    const-string v0, "org.mozilla.javascript.regexp.RegExpImpl"

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->newInstanceOrNull(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/RegExpProxy;

    iput-object v0, p0, Lorg/mozilla/javascript/Context;->regExpProxy:Lorg/mozilla/javascript/RegExpProxy;

    :cond_14
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->regExpProxy:Lorg/mozilla/javascript/RegExpProxy;

    return-object v0
.end method

.method getSecurityController()Lorg/mozilla/javascript/SecurityController;
    .registers 2

    invoke-static {}, Lorg/mozilla/javascript/SecurityController;->global()Lorg/mozilla/javascript/SecurityController;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->securityController:Lorg/mozilla/javascript/SecurityController;

    return-object v0
.end method

.method public final getThreadLocal(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->threadLocalMap:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getWrapFactory()Lorg/mozilla/javascript/WrapFactory;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->wrapFactory:Lorg/mozilla/javascript/WrapFactory;

    if-nez v0, :cond_b

    new-instance v0, Lorg/mozilla/javascript/WrapFactory;

    invoke-direct {v0}, Lorg/mozilla/javascript/WrapFactory;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Context;->wrapFactory:Lorg/mozilla/javascript/WrapFactory;

    :cond_b
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->wrapFactory:Lorg/mozilla/javascript/WrapFactory;

    return-object v0
.end method

.method public hasFeature(I)Z
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/mozilla/javascript/ContextFactory;->hasFeature(Lorg/mozilla/javascript/Context;I)Z

    move-result p1

    return p1
.end method

.method public final initSafeStandardObjects(Lorg/mozilla/javascript/ScriptableObject;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Context;->initSafeStandardObjects(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method

.method public final initSafeStandardObjects()Lorg/mozilla/javascript/ScriptableObject;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/Context;->initSafeStandardObjects(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    return-object v0
.end method

.method public initSafeStandardObjects(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->initSafeStandardObjects(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method

.method public final initStandardObjects(Lorg/mozilla/javascript/ScriptableObject;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/Context;->initStandardObjects(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method

.method public final initStandardObjects()Lorg/mozilla/javascript/ScriptableObject;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/Context;->initStandardObjects(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    return-object v0
.end method

.method public initStandardObjects(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->initStandardObjects(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method

.method public final isActivationNeeded(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->activationNames:Ljava/util/Set;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public final isGeneratingDebug()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->generatingDebug:Z

    return v0
.end method

.method public final isGeneratingDebugChanged()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->generatingDebugChanged:Z

    return v0
.end method

.method public final isGeneratingSource()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->generatingSource:Z

    return v0
.end method

.method public final isSealed()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    return v0
.end method

.method public final isStrictMode()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->isTopLevelStrict:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->currentActivationCall:Lorg/mozilla/javascript/NativeCall;

    if-eqz v0, :cond_d

    iget-boolean v0, v0, Lorg/mozilla/javascript/NativeCall;->isStrict:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method final isVersionECMA1()Z
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/Context;->version:I

    if-eqz v0, :cond_b

    const/16 v1, 0x82

    if-lt v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;
    .registers 6

    new-instance v0, Lorg/mozilla/javascript/NativeArray;

    int-to-long v1, p2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/NativeArray;-><init>(J)V

    sget-object p2, Lorg/mozilla/javascript/TopLevel$Builtins;->Array:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {v0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    return-object v0
.end method

.method public newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_17

    new-instance v0, Lorg/mozilla/javascript/NativeArray;

    invoke-direct {v0, p2}, Lorg/mozilla/javascript/NativeArray;-><init>([Ljava/lang/Object;)V

    sget-object p2, Lorg/mozilla/javascript/TopLevel$Builtins;->Array:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {v0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    return-object v0

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    sget-object v1, Lorg/mozilla/javascript/TopLevel$Builtins;->Object:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {v0, p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    return-object v0
.end method

.method public newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method

.method public newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method

.method protected observeInstructionCount(I)V
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/mozilla/javascript/ContextFactory;->observeInstructionCount(Lorg/mozilla/javascript/Context;I)V

    return-void
.end method

.method public final declared-synchronized putThreadLocal(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_8
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->threadLocalMap:Ljava/util/Map;

    if-nez v0, :cond_13

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/Context;->threadLocalMap:Ljava/util/Map;

    :cond_13
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->threadLocalMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeActivationName(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->activationNames:Ljava/util/Set;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_e
    return-void
.end method

.method public final removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->propertyListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/Kit;->removeListener(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/Context;->propertyListeners:Ljava/lang/Object;

    return-void
.end method

.method public final removeThreadLocal(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->threadLocalMap:Ljava/util/Map;

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resumeContinuation(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    check-cast p1, Lorg/mozilla/javascript/NativeContinuation;

    invoke-static {p1, p0, p2, v0}, Lorg/mozilla/javascript/Interpreter;->restartContinuation(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final seal(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    iput-object p1, p0, Lorg/mozilla/javascript/Context;->sealKey:Ljava/lang/Object;

    return-void
.end method

.method public final setApplicationClassLoader(Ljava/lang/ClassLoader;)V
    .registers 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    if-nez p1, :cond_d

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/Context;->applicationClassLoader:Ljava/lang/ClassLoader;

    return-void

    :cond_d
    invoke-static {p1}, Lorg/mozilla/javascript/Kit;->testIfCanLoadRhinoClasses(Ljava/lang/ClassLoader;)Z

    move-result v0

    if-eqz v0, :cond_16

    iput-object p1, p0, Lorg/mozilla/javascript/Context;->applicationClassLoader:Ljava/lang/ClassLoader;

    return-void

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loader can not resolve Rhino classes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized setClassShutter(Lorg/mozilla/javascript/ClassShutter;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_8
    if-eqz p1, :cond_1d

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->hasClassShutter:Z

    if-nez v0, :cond_15

    iput-object p1, p0, Lorg/mozilla/javascript/Context;->classShutter:Lorg/mozilla/javascript/ClassShutter;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/javascript/Context;->hasClassShutter:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_23

    monitor-exit p0

    return-void

    :cond_15
    :try_start_15
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Cannot overwrite existing ClassShutter object"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setDebugger(Lorg/mozilla/javascript/debug/Debugger;Ljava/lang/Object;)V
    .registers 4

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    iput-object p1, p0, Lorg/mozilla/javascript/Context;->debugger:Lorg/mozilla/javascript/debug/Debugger;

    iput-object p2, p0, Lorg/mozilla/javascript/Context;->debuggerData:Ljava/lang/Object;

    return-void
.end method

.method public final setErrorReporter(Lorg/mozilla/javascript/ErrorReporter;)Lorg/mozilla/javascript/ErrorReporter;
    .registers 5

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v0

    if-ne p1, v0, :cond_10

    return-object v0

    :cond_10
    iget-object v1, p0, Lorg/mozilla/javascript/Context;->propertyListeners:Ljava/lang/Object;

    if-eqz v1, :cond_19

    const-string v2, "error reporter"

    invoke-direct {p0, v1, v2, v0, p1}, Lorg/mozilla/javascript/Context;->firePropertyChangeImpl(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iput-object p1, p0, Lorg/mozilla/javascript/Context;->errorReporter:Lorg/mozilla/javascript/ErrorReporter;

    return-object v0

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setGenerateObserverCount(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/mozilla/javascript/Context;->generateObserverCount:Z

    return-void
.end method

.method public final setGeneratingDebug(Z)V
    .registers 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Context;->generatingDebugChanged:Z

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getOptimizationLevel()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->setOptimizationLevel(I)V

    :cond_16
    iput-boolean p1, p0, Lorg/mozilla/javascript/Context;->generatingDebug:Z

    return-void
.end method

.method public final setGeneratingSource(Z)V
    .registers 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    iput-boolean p1, p0, Lorg/mozilla/javascript/Context;->generatingSource:Z

    return-void
.end method

.method public final setInstructionObserverThreshold(I)V
    .registers 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    if-ltz p1, :cond_14

    iput p1, p0, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    if-lez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Context;->setGenerateObserverCount(Z)V

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setLanguageVersion(I)V
    .registers 6

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->checkLanguageVersion(I)V

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->propertyListeners:Ljava/lang/Object;

    if-eqz v0, :cond_1f

    iget v1, p0, Lorg/mozilla/javascript/Context;->version:I

    if-eq p1, v1, :cond_1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "language version"

    invoke-direct {p0, v0, v3, v1, v2}, Lorg/mozilla/javascript/Context;->firePropertyChangeImpl(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    iput p1, p0, Lorg/mozilla/javascript/Context;->version:I

    return-void
.end method

.method public final setLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lorg/mozilla/javascript/Context;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public final setMaximumInterpreterStackDepth(I)V
    .registers 4

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    iget v0, p0, Lorg/mozilla/javascript/Context;->optimizationLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    if-lt p1, v0, :cond_12

    iput p1, p0, Lorg/mozilla/javascript/Context;->maximumInterpreterStackDepth:I

    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set maximumInterpreterStackDepth to less than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set maximumInterpreterStackDepth when optimizationLevel != -1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setOptimizationLevel(I)V
    .registers 4

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    const/4 v0, -0x2

    const/4 v1, -0x1

    if-ne p1, v0, :cond_c

    const/4 p1, -0x1

    :cond_c
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->checkOptimizationLevel(I)V

    sget-object v0, Lorg/mozilla/javascript/Context;->codegenClass:Ljava/lang/Class;

    if-nez v0, :cond_14

    goto :goto_15

    :cond_14
    move v1, p1

    :goto_15
    iput v1, p0, Lorg/mozilla/javascript/Context;->optimizationLevel:I

    return-void
.end method

.method public final setSecurityController(Lorg/mozilla/javascript/SecurityController;)V
    .registers 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    if-eqz p1, :cond_26

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->securityController:Lorg/mozilla/javascript/SecurityController;

    if-nez v0, :cond_1e

    invoke-static {}, Lorg/mozilla/javascript/SecurityController;->hasGlobal()Z

    move-result v0

    if-nez v0, :cond_16

    iput-object p1, p0, Lorg/mozilla/javascript/Context;->securityController:Lorg/mozilla/javascript/SecurityController;

    return-void

    :cond_16
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Can not overwrite existing global SecurityController object"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Can not overwrite existing SecurityController object"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final setWrapFactory(Lorg/mozilla/javascript/WrapFactory;)V
    .registers 3

    iget-boolean v0, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Context;->onSealedMutation()V

    :cond_7
    if-eqz p1, :cond_c

    iput-object p1, p0, Lorg/mozilla/javascript/Context;->wrapFactory:Lorg/mozilla/javascript/WrapFactory;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final stringIsCompilableUnit(Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-direct {v0}, Lorg/mozilla/javascript/CompilerEnvirons;-><init>()V

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/CompilerEnvirons;->initFromContext(Lorg/mozilla/javascript/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/CompilerEnvirons;->setGeneratingSource(Z)V

    new-instance v2, Lorg/mozilla/javascript/Parser;

    sget-object v3, Lorg/mozilla/javascript/DefaultErrorReporter;->instance:Lorg/mozilla/javascript/DefaultErrorReporter;

    invoke-direct {v2, v0, v3}, Lorg/mozilla/javascript/Parser;-><init>(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ErrorReporter;)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_15
    invoke-virtual {v2, p1, v0, v3}, Lorg/mozilla/javascript/Parser;->parse(Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/javascript/ast/AstRoot;
    :try_end_18
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_15 .. :try_end_18} :catch_1a

    const/4 p1, 0x0

    goto :goto_1b

    :catch_1a
    const/4 p1, 0x1

    :goto_1b
    if-eqz p1, :cond_23

    invoke-virtual {v2}, Lorg/mozilla/javascript/Parser;->eof()Z

    move-result p1

    if-nez p1, :cond_24

    :cond_23
    const/4 v1, 0x1

    :cond_24
    return v1
.end method

.method public final unseal(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_1d

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->sealKey:Ljava/lang/Object;

    if-ne v0, p1, :cond_17

    iget-boolean p1, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mozilla/javascript/Context;->sealed:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/Context;->sealKey:Ljava/lang/Object;

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
