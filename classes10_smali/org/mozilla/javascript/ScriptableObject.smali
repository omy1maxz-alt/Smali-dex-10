.class public abstract Lorg/mozilla/javascript/ScriptableObject;
.super Ljava/lang/Object;
.source "ScriptableObject.java"

# interfaces
.implements Lorg/mozilla/javascript/Scriptable;
.implements Lorg/mozilla/javascript/SymbolScriptable;
.implements Ljava/io/Serializable;
.implements Lorg/mozilla/javascript/debug/DebuggableObject;
.implements Lorg/mozilla/javascript/ConstProperties;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CONST:I = 0xd

.field public static final DONTENUM:I = 0x2

.field public static final EMPTY:I = 0x0

.field private static final GET_ARRAY_LENGTH:Ljava/lang/reflect/Method;

.field private static final KEY_COMPARATOR:Ljava/util/Comparator;

.field public static final PERMANENT:I = 0x4

.field public static final READONLY:I = 0x1

.field public static final UNINITIALIZED_CONST:I = 0x8

.field private static final serialVersionUID:J = 0x2745afa870ac78baL


# instance fields
.field private volatile associatedValues:Ljava/util/Map;

.field private transient externalData:Lorg/mozilla/javascript/ExternalArrayData;

.field private isExtensible:Z

.field private isSealed:Z

.field private parentScopeObject:Lorg/mozilla/javascript/Scriptable;

.field private prototypeObject:Lorg/mozilla/javascript/Scriptable;

.field private transient slotMap:Lorg/mozilla/javascript/SlotMapContainer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lorg/mozilla/javascript/ScriptableObject;

    :try_start_2
    const-class v0, Lorg/mozilla/javascript/ScriptableObject;

    const-string v1, "getExternalArrayLength"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/ScriptableObject;->GET_ARRAY_LENGTH:Ljava/lang/reflect/Method;
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_f} :catch_17

    new-instance v0, Lorg/mozilla/javascript/ScriptableObject$KeyComparator;

    invoke-direct {v0}, Lorg/mozilla/javascript/ScriptableObject$KeyComparator;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/ScriptableObject;->KEY_COMPARATOR:Ljava/util/Comparator;

    return-void

    :catch_17
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isSealed:Z

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->createSlotMap(I)Lorg/mozilla/javascript/SlotMapContainer;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isSealed:Z

    if-eqz p1, :cond_16

    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->parentScopeObject:Lorg/mozilla/javascript/Scriptable;

    iput-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->prototypeObject:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->createSlotMap(I)Lorg/mozilla/javascript/SlotMapContainer;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    return-void

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static buildClassCtor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Lorg/mozilla/javascript/BaseFunction;
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/FunctionObject;->getMethodList(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_c
    array-length v6, v3

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v5, v6, :cond_7a

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "init"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_22

    goto :goto_77

    :cond_22
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v12, v11

    if-ne v12, v7, :cond_5c

    aget-object v12, v11, v4

    sget-object v13, Lorg/mozilla/javascript/ScriptRuntime;->ContextClass:Ljava/lang/Class;

    if-ne v12, v13, :cond_5c

    aget-object v12, v11, v10

    sget-object v13, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-ne v12, v13, :cond_5c

    aget-object v12, v11, v8

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_5c

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-eqz v12, :cond_5c

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v10

    if-eqz v1, :cond_54

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_56

    :cond_54
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_56
    aput-object v0, v2, v8

    invoke-virtual {v6, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    :cond_5c
    array-length v7, v11

    if-ne v7, v10, :cond_77

    aget-object v7, v11, v4

    sget-object v8, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-ne v7, v8, :cond_77

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_77

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v6, v9, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    :cond_77
    :goto_77
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_7a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x0

    :goto_7f
    array-length v11, v5

    if-ge v6, v11, :cond_91

    aget-object v11, v5, v6

    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    if-nez v11, :cond_8e

    aget-object v6, v5, v6

    goto :goto_92

    :cond_8e
    add-int/lit8 v6, v6, 0x1

    goto :goto_7f

    :cond_91
    move-object v6, v9

    :goto_92
    if-eqz v6, :cond_2de

    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-virtual {v6, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v6}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v12

    invoke-static {v12, v11}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lorg/mozilla/javascript/BaseFunction;

    if-eqz v13, :cond_c1

    check-cast v12, Lorg/mozilla/javascript/BaseFunction;

    invoke-virtual {v12}, Lorg/mozilla/javascript/BaseFunction;->getPrototypeProperty()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_c1

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    move-object/from16 v14, p1

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c3

    return-object v12

    :cond_c1
    move-object/from16 v14, p1

    :cond_c3
    if-eqz v2, :cond_ea

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_ea

    invoke-virtual {v12}, Ljava/lang/Class;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v13

    if-nez v13, :cond_ea

    invoke-static {v12}, Lorg/mozilla/javascript/ScriptableObject;->extendsScriptable(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v12

    invoke-static {v0, v12, v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_ea

    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    goto :goto_eb

    :cond_ea
    move-object v2, v9

    :goto_eb
    if-nez v2, :cond_f1

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    :cond_f1
    invoke-interface {v6, v2}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    const-class v2, Lorg/mozilla/javascript/annotations/JSConstructor;

    invoke-static {v3, v2}, Lorg/mozilla/javascript/ScriptableObject;->findAnnotatedMember([Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v2

    if-nez v2, :cond_102

    const-class v2, Lorg/mozilla/javascript/annotations/JSConstructor;

    invoke-static {v5, v2}, Lorg/mozilla/javascript/ScriptableObject;->findAnnotatedMember([Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object v2

    :cond_102
    const-string v12, "jsConstructor"

    if-nez v2, :cond_10a

    invoke-static {v3, v12}, Lorg/mozilla/javascript/FunctionObject;->findSingleMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    :cond_10a
    if-nez v2, :cond_13a

    array-length v13, v5

    if-ne v13, v10, :cond_112

    aget-object v2, v5, v4

    goto :goto_12c

    :cond_112
    array-length v13, v5

    if-ne v13, v8, :cond_12c

    aget-object v13, v5, v4

    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v13, v13

    if-nez v13, :cond_121

    aget-object v2, v5, v10

    goto :goto_12c

    :cond_121
    aget-object v13, v5, v10

    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v13, v13

    if-nez v13, :cond_12c

    aget-object v2, v5, v4

    :cond_12c
    :goto_12c
    if-eqz v2, :cond_12f

    goto :goto_13a

    :cond_12f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.ctor.multiple.parms"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_13a
    :goto_13a
    new-instance v5, Lorg/mozilla/javascript/FunctionObject;

    invoke-direct {v5, v11, v2, v0}, Lorg/mozilla/javascript/FunctionObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v5}, Lorg/mozilla/javascript/FunctionObject;->isVarArgsMethod()Z

    move-result v11

    if-nez v11, :cond_2d3

    invoke-virtual {v5, v0, v6}, Lorg/mozilla/javascript/FunctionObject;->initAsConstructor(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    array-length v14, v3

    const/4 v15, 0x0

    :goto_154
    if-ge v15, v14, :cond_2b2

    aget-object v8, v3, v15

    if-ne v8, v2, :cond_161

    move-object/from16 p1, v11

    move-object/from16 v22, v12

    move-object/from16 p3, v13

    goto :goto_198

    :cond_161
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v4, "finishInit"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19c

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    move-object/from16 p1, v11

    array-length v11, v4

    if-ne v11, v7, :cond_19e

    const/4 v11, 0x0

    aget-object v7, v4, v11

    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-ne v7, v11, :cond_19e

    move-object/from16 p3, v13

    const/4 v7, 0x1

    aget-object v13, v4, v7

    const-class v7, Lorg/mozilla/javascript/FunctionObject;

    if-ne v13, v7, :cond_1a0

    const/4 v7, 0x2

    aget-object v4, v4, v7

    if-ne v4, v11, :cond_1a0

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_1a0

    move-object v9, v8

    :cond_196
    :goto_196
    move-object/from16 v22, v12

    :goto_198
    move/from16 v23, v14

    goto/16 :goto_28c

    :cond_19c
    move-object/from16 p1, v11

    :cond_19e
    move-object/from16 p3, v13

    :cond_1a0
    const/16 v4, 0x24

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1aa

    :goto_1a9
    goto :goto_196

    :cond_1aa
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b1

    goto :goto_1a9

    :cond_1b1
    const-class v4, Lorg/mozilla/javascript/annotations/JSFunction;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1c0

    const-class v4, Lorg/mozilla/javascript/annotations/JSFunction;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    goto :goto_1e8

    :cond_1c0
    const-class v4, Lorg/mozilla/javascript/annotations/JSStaticFunction;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1cf

    const-class v4, Lorg/mozilla/javascript/annotations/JSStaticFunction;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    goto :goto_1e8

    :cond_1cf
    const-class v4, Lorg/mozilla/javascript/annotations/JSGetter;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1de

    const-class v4, Lorg/mozilla/javascript/annotations/JSGetter;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    goto :goto_1e8

    :cond_1de
    const-class v4, Lorg/mozilla/javascript/annotations/JSSetter;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1e7

    goto :goto_1a9

    :cond_1e7
    const/4 v4, 0x0

    :goto_1e8
    const-string v7, "jsFunction_"

    const-string v11, "jsGet_"

    const-string v13, "jsStaticFunction_"

    if-nez v4, :cond_20b

    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1f9

    :goto_1f6
    move-object/from16 v22, v12

    goto :goto_20e

    :cond_1f9
    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_203

    move-object/from16 v22, v12

    move-object v7, v13

    goto :goto_20e

    :cond_203
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_196

    move-object v7, v11

    goto :goto_1f6

    :cond_20b
    move-object/from16 v22, v12

    const/4 v7, 0x0

    :goto_20e
    instance-of v12, v4, Lorg/mozilla/javascript/annotations/JSStaticFunction;

    if-nez v12, :cond_217

    if-ne v7, v13, :cond_215

    goto :goto_217

    :cond_215
    const/4 v12, 0x0

    goto :goto_218

    :cond_217
    :goto_217
    const/4 v12, 0x1

    :goto_218
    if-eqz v12, :cond_21d

    move-object/from16 v13, p1

    goto :goto_21f

    :cond_21d
    move-object/from16 v13, p3

    :goto_21f
    move/from16 v23, v14

    invoke-static {v10, v7, v4}, Lorg/mozilla/javascript/ScriptableObject;->getPropertyName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2ab

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    instance-of v4, v4, Lorg/mozilla/javascript/annotations/JSGetter;

    if-nez v4, :cond_26e

    if-ne v7, v11, :cond_235

    goto :goto_26e

    :cond_235
    if-eqz v12, :cond_249

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_242

    goto :goto_249

    :cond_242
    const-string v0, "jsStaticFunction must be used with static method."

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_249
    :goto_249
    new-instance v4, Lorg/mozilla/javascript/FunctionObject;

    invoke-direct {v4, v14, v8, v6}, Lorg/mozilla/javascript/FunctionObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v4}, Lorg/mozilla/javascript/FunctionObject;->isVarArgsConstructor()Z

    move-result v7

    if-nez v7, :cond_263

    if-eqz v12, :cond_258

    move-object v7, v5

    goto :goto_259

    :cond_258
    move-object v7, v6

    :goto_259
    const/4 v8, 0x2

    invoke-static {v7, v14, v4, v8}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    if-eqz v1, :cond_28c

    invoke-virtual {v4}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    goto :goto_28c

    :cond_263
    invoke-interface {v2}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.varargs.fun"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_26e
    :goto_26e
    instance-of v4, v6, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v4, :cond_29c

    const-string v4, "jsSet_"

    invoke-static {v3, v14, v4}, Lorg/mozilla/javascript/ScriptableObject;->findSetterMethod([Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v20

    if-eqz v20, :cond_27c

    const/4 v11, 0x0

    goto :goto_27d

    :cond_27c
    const/4 v11, 0x1

    :goto_27d
    or-int/lit8 v21, v11, 0x6

    move-object/from16 v16, v6

    check-cast v16, Lorg/mozilla/javascript/ScriptableObject;

    const/16 v18, 0x0

    move-object/from16 v17, v14

    move-object/from16 v19, v8

    invoke-virtual/range {v16 .. v21}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    :cond_28c
    :goto_28c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, p1

    move-object/from16 v13, p3

    move-object/from16 v12, v22

    move/from16 v14, v23

    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x1

    goto/16 :goto_154

    :cond_29c
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.extend.scriptable"

    invoke-static {v1, v0, v14}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_2ab
    const-string v0, "duplicate.defineClass.name"

    invoke-static {v0, v10, v14}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_2b2
    if-eqz v9, :cond_2c4

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v5, v2, v0

    const/4 v0, 0x2

    aput-object v6, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v9, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c4
    if-eqz v1, :cond_2d2

    invoke-virtual {v5}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    instance-of v0, v6, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_2d2

    check-cast v6, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v6}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_2d2
    return-object v5

    :cond_2d3
    invoke-interface {v2}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.varargs.ctor"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_2de
    move-object/from16 v14, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.zero.arg.ctor"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    goto :goto_2ec

    :goto_2eb
    throw v0

    :goto_2ec
    goto :goto_2eb
.end method

.method protected static buildDataDescriptor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject;
    .registers 6

    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    sget-object v1, Lorg/mozilla/javascript/TopLevel$Builtins;->Object:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {v0, p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    const-string/jumbo p0, "value"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    and-int/lit8 p0, p2, 0x1

    const/4 p1, 0x1

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string/jumbo v2, "writable"

    invoke-virtual {v0, v2, p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    and-int/lit8 p0, p2, 0x2

    if-nez p0, :cond_29

    const/4 p0, 0x1

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v2, "enumerable"

    invoke-virtual {v0, v2, p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    and-int/lit8 p0, p2, 0x4

    if-nez p0, :cond_38

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "configurable"

    invoke-virtual {v0, p1, p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static callMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/Function;

    if-eqz v1, :cond_1b

    check-cast v0, Lorg/mozilla/javascript/Function;

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    if-eqz p0, :cond_15

    invoke-interface {v0, p0, p2, p1, p3}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    invoke-static {p0, v0, p2, p1, p3}, Lorg/mozilla/javascript/Context;->call(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static callMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->callMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private checkNotSealed(Ljava/lang/Object;I)V
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isSealed()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_12

    :cond_e
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_12
    const-string p2, "msg.modify.sealed"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1
.end method

.method static checkValidAttributes(I)V
    .registers 2

    and-int/lit8 v0, p0, -0x10

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createSlotMap(I)Lorg/mozilla/javascript/SlotMapContainer;
    .registers 3

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_14

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/ThreadSafeSlotMapContainer;-><init>(I)V

    return-object v0

    :cond_14
    new-instance v0, Lorg/mozilla/javascript/SlotMapContainer;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/SlotMapContainer;-><init>(I)V

    return-object v0
.end method

.method public static defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->buildClassCtor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Lorg/mozilla/javascript/BaseFunction;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p1}, Lorg/mozilla/javascript/BaseFunction;->getClassPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    invoke-static {p0, p2, p1, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public static defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Ljava/lang/String;

    return-void
.end method

.method public static defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;ZZ)Ljava/lang/String;

    return-void
.end method

.method public static defineConstProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V
    .registers 4

    instance-of v0, p0, Lorg/mozilla/javascript/ConstProperties;

    if-eqz v0, :cond_b

    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/ConstProperties;

    invoke-interface {v0, p1, p0}, Lorg/mozilla/javascript/ConstProperties;->defineConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_12

    :cond_b
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/16 v1, 0xd

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    :goto_12
    return-void
.end method

.method public static defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5

    instance-of v0, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v0, :cond_8

    invoke-interface {p0, p1, p0, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    :cond_8
    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static deleteProperty(Lorg/mozilla/javascript/Scriptable;I)Z
    .registers 4

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    invoke-interface {v0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public static deleteProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    invoke-interface {v0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method protected static ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 2

    instance-of v0, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    return-object p0

    :cond_7
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "msg.arg.not.object"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method protected static ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .registers 2

    instance-of v0, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    return-object p0

    :cond_7
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "msg.arg.not.object"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method protected static ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;
    .registers 2

    instance-of v0, p0, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/mozilla/javascript/SymbolScriptable;

    return-object p0

    :cond_7
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "msg.object.not.symbolscriptable"

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static extendsScriptable(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findAnnotatedMember([Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)Ljava/lang/reflect/Member;
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_f

    check-cast v2, Ljava/lang/reflect/Member;

    return-object v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private findAttributeSlot(Ljava/lang/String;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/javascript/SlotMapContainer;->get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p3

    if-nez p3, :cond_16

    if-eqz p1, :cond_b

    goto :goto_f

    :cond_b
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_f
    const-string p2, "msg.prop.not.found"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_16
    return-object p3
.end method

.method private findAttributeSlot(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lorg/mozilla/javascript/SlotMapContainer;->get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p2

    if-eqz p2, :cond_a

    return-object p2

    :cond_a
    const-string p2, "msg.prop.not.found"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1
.end method

.method private static findSetterMethod([Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_56

    aget-object v4, p0, v3

    const-class v5, Lorg/mozilla/javascript/annotations/JSSetter;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/mozilla/javascript/annotations/JSSetter;

    if-eqz v5, :cond_53

    invoke-interface {v5}, Lorg/mozilla/javascript/annotations/JSSetter;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    invoke-interface {v5}, Lorg/mozilla/javascript/annotations/JSSetter;->value()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    :cond_52
    return-object v4

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    array-length p2, p0

    :goto_66
    if-ge v1, p2, :cond_78

    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    return-object v0

    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_78
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getArrayPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    sget-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->Array:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/TopLevel;->getBuiltinPrototype(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method private static getBase(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    :cond_0
    invoke-interface {p0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_d

    :cond_7
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-nez p0, :cond_0

    :goto_d
    return-object p0
.end method

.method private static getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    :cond_0
    invoke-interface {p0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_d

    :cond_7
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-nez p0, :cond_0

    :goto_d
    return-object p0
.end method

.method private static getBase(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lorg/mozilla/javascript/SymbolScriptable;->has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    :cond_b
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-nez p0, :cond_0

    :goto_11
    return-object p0
.end method

.method public static getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/mozilla/javascript/BaseFunction;

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    check-cast p0, Lorg/mozilla/javascript/BaseFunction;

    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getPrototypeProperty()Ljava/lang/Object;

    move-result-object p0

    goto :goto_20

    :cond_14
    instance-of p1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz p1, :cond_27

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    const-string p1, "prototype"

    invoke-interface {p0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    :goto_20
    instance-of p1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz p1, :cond_27

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    return-object p0

    :cond_27
    return-object v0
.end method

.method public static getDefaultValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x2

    if-ge v2, v3, :cond_5a

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    const/4 v4, 0x1

    if-ne p1, v3, :cond_10

    if-nez v2, :cond_e

    goto :goto_12

    :cond_e
    const/4 v4, 0x0

    goto :goto_12

    :cond_10
    if-ne v2, v4, :cond_e

    :goto_12
    if-eqz v4, :cond_18

    const-string/jumbo v3, "toString"

    goto :goto_1b

    :cond_18
    const-string/jumbo v3, "valueOf"

    :goto_1b
    invoke-static {p0, v3}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lorg/mozilla/javascript/Function;

    if-nez v5, :cond_24

    goto :goto_57

    :cond_24
    check-cast v3, Lorg/mozilla/javascript/Function;

    if-nez v1, :cond_2c

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    :cond_2c
    invoke-interface {v3}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v3, v1, v5, p0, v6}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_57

    instance-of v5, v3, Lorg/mozilla/javascript/Scriptable;

    if-nez v5, :cond_3d

    return-object v3

    :cond_3d
    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-eq p1, v5, :cond_56

    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->FunctionClass:Ljava/lang/Class;

    if-ne p1, v5, :cond_46

    goto :goto_56

    :cond_46
    if-eqz v4, :cond_57

    instance-of v4, v3, Lorg/mozilla/javascript/Wrapper;

    if-eqz v4, :cond_57

    check-cast v3, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {v3}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_57

    :cond_56
    :goto_56
    return-object v3

    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5a
    if-nez p1, :cond_60

    const-string/jumbo p0, "undefined"

    goto :goto_64

    :cond_60
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_64
    const-string p1, "msg.default.value"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    goto :goto_6c

    :goto_6b
    throw p0

    :goto_6c
    goto :goto_6b
.end method

.method public static getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    sget-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->Function:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/TopLevel;->getBuiltinPrototype(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static getGeneratorFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    sget-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->GeneratorFunction:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/TopLevel;->getBuiltinPrototype(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    sget-object v0, Lorg/mozilla/javascript/TopLevel$Builtins;->Object:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/TopLevel;->getBuiltinPrototype(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public static getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;
    .registers 5

    move-object v0, p0

    :cond_1
    invoke-interface {v0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_a

    goto :goto_10

    :cond_a
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_10
    return-object v1
.end method

.method public static getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    move-object v0, p0

    :cond_1
    invoke-interface {v0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_a

    goto :goto_10

    :cond_a
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_10
    return-object v1
.end method

.method public static getProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Ljava/lang/Object;
    .registers 5

    move-object v0, p0

    :cond_1
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object v1

    invoke-interface {v1, p1, p0}, Lorg/mozilla/javascript/SymbolScriptable;->get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_e

    goto :goto_14

    :cond_e
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_14
    return-object v1
.end method

.method public static getPropertyIds(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;
    .registers 8

    if-nez p0, :cond_5

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    return-object p0

    :cond_5
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_b
    :goto_b
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-nez p0, :cond_18

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjToIntMap;->getKeys()[Ljava/lang/Object;

    move-result-object v0

    :cond_17
    return-object v0

    :cond_18
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_20

    goto :goto_b

    :cond_20
    const/4 v4, 0x0

    if-nez v2, :cond_3d

    array-length v5, v0

    if-nez v5, :cond_28

    move-object v0, v3

    goto :goto_b

    :cond_28
    new-instance v2, Lorg/mozilla/javascript/ObjToIntMap;

    array-length v5, v0

    array-length v6, v3

    add-int/2addr v5, v6

    invoke-direct {v2, v5}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    const/4 v5, 0x0

    :goto_31
    array-length v6, v0

    if-eq v5, v6, :cond_3c

    aget-object v6, v0, v5

    invoke-virtual {v2, v6}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_3c
    move-object v0, v1

    :cond_3d
    :goto_3d
    array-length v5, v3

    if-eq v4, v5, :cond_b

    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d
.end method

.method private static getPropertyName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p1, 0x0

    instance-of v0, p2, Lorg/mozilla/javascript/annotations/JSGetter;

    if-eqz v0, :cond_6e

    check-cast p2, Lorg/mozilla/javascript/annotations/JSGetter;

    invoke-interface {p2}, Lorg/mozilla/javascript/annotations/JSGetter;->value()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_83

    :cond_1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x3

    if-le p2, v0, :cond_83

    const-string p2, "get"

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_83

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_48

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_83

    :cond_48
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_83

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_83

    :cond_6e
    instance-of v0, p2, Lorg/mozilla/javascript/annotations/JSFunction;

    if-eqz v0, :cond_79

    check-cast p2, Lorg/mozilla/javascript/annotations/JSFunction;

    invoke-interface {p2}, Lorg/mozilla/javascript/annotations/JSFunction;->value()Ljava/lang/String;

    move-result-object p1

    goto :goto_83

    :cond_79
    instance-of v0, p2, Lorg/mozilla/javascript/annotations/JSStaticFunction;

    if-eqz v0, :cond_83

    check-cast p2, Lorg/mozilla/javascript/annotations/JSStaticFunction;

    invoke-interface {p2}, Lorg/mozilla/javascript/annotations/JSStaticFunction;->value()Ljava/lang/String;

    move-result-object p1

    :cond_83
    :goto_83
    if-eqz p1, :cond_8d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_8c

    goto :goto_8d

    :cond_8c
    move-object p0, p1

    :cond_8d
    :goto_8d
    return-object p0
.end method

.method public static getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 2

    :goto_0
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    move-object p0, v0

    goto :goto_0
.end method

.method public static getTopScopeValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    :cond_4
    instance-of v0, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_12

    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    return-object v0

    :cond_12
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTypedProperty(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Class;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, p1, :cond_9

    const/4 p0, 0x0

    :cond_9
    invoke-static {p0, p2}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getTypedProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, p1, :cond_9

    const/4 p0, 0x0

    :cond_9
    invoke-static {p0, p2}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hasProperty(Lorg/mozilla/javascript/Scriptable;I)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static hasProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method protected static isFalse(Ljava/lang/Object;)Z
    .registers 1

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->isTrue(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected static isTrue(Ljava/lang/Object;)Z
    .registers 2

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p0, v0, :cond_c

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private putConstImpl(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Z
    .registers 8

    iget-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    if-nez v0, :cond_16

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_16

    :cond_f
    const-string p1, "msg.not.extensible"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_16
    :goto_16
    if-eq p0, p3, :cond_22

    iget-object p5, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {p5, p1, p2}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    if-nez p1, :cond_32

    const/4 p1, 0x0

    return p1

    :cond_22
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_37

    iget-object p5, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {p5, p1, p2}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    if-nez p1, :cond_32

    return v1

    :cond_32
    invoke-virtual {p1, p4, p0, p3}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1

    :cond_37
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    iget-object p3, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    sget-object v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_CONST:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-virtual {p3, p1, p2, v0}, Lorg/mozilla/javascript/SlotMapContainer;->get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result p3

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_5a

    and-int/lit8 p1, p3, 0x8

    if-eqz p1, :cond_59

    iput-object p4, p2, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    const/16 p1, 0x8

    if-eq p5, p1, :cond_59

    and-int/lit8 p1, p3, -0x9

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    :cond_59
    return v1

    :cond_5a
    const-string p2, "msg.var.redecl"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1
.end method

.method public static putConstProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v0, p0

    :cond_7
    instance-of v1, v0, Lorg/mozilla/javascript/ConstProperties;

    if-eqz v1, :cond_10

    check-cast v0, Lorg/mozilla/javascript/ConstProperties;

    invoke-interface {v0, p1, p0, p2}, Lorg/mozilla/javascript/ConstProperties;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method private putImpl(Ljava/lang/Object;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Z
    .registers 8

    const-string v0, "msg.not.extensible"

    const/4 v1, 0x1

    if-eq p0, p3, :cond_30

    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v2, p1, p2}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    iget-boolean p2, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    if-nez p2, :cond_2c

    if-eqz p1, :cond_1c

    instance-of p2, p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez p2, :cond_2c

    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result p2

    and-int/2addr p2, v1

    if-eqz p2, :cond_2c

    :cond_1c
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result p2

    if-nez p2, :cond_27

    goto :goto_2c

    :cond_27
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_2c
    :goto_2c
    if-nez p1, :cond_68

    const/4 p1, 0x0

    return p1

    :cond_30
    iget-boolean v2, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    if-nez v2, :cond_59

    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v2, p1, p2}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    if-eqz p1, :cond_47

    instance-of p2, p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez p2, :cond_51

    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result p2

    and-int/2addr p2, v1

    if-eqz p2, :cond_51

    :cond_47
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result p2

    if-nez p2, :cond_54

    :cond_51
    if-nez p1, :cond_68

    return v1

    :cond_54
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_59
    iget-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isSealed:Z

    if-eqz v0, :cond_60

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    :cond_60
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    sget-object v1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-virtual {v0, p1, p2, v1}, Lorg/mozilla/javascript/SlotMapContainer;->get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    :cond_68
    invoke-virtual {p1, p4, p0, p3}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public static putProperty(Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)V
    .registers 4

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v0, p0

    :cond_7
    invoke-interface {v0, p1, p0, p2}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public static putProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v0, p0

    :cond_7
    invoke-interface {v0, p1, p0, p2}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public static putProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v0, p0

    :cond_7
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object v0

    invoke-interface {v0, p1, p0, p2}, Lorg/mozilla/javascript/SymbolScriptable;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->createSlotMap(I)Lorg/mozilla/javascript/SlotMapContainer;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1e

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ScriptableObject$Slot;

    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/SlotMapContainer;->addSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public static redefineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Z)V
    .registers 4

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getBase(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    instance-of v0, p0, Lorg/mozilla/javascript/ConstProperties;

    if-eqz v0, :cond_1b

    check-cast p0, Lorg/mozilla/javascript/ConstProperties;

    invoke-interface {p0, p1}, Lorg/mozilla/javascript/ConstProperties;->isConst(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_1b

    :cond_14
    const-string p0, "msg.const.redecl"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_1b
    :goto_1b
    if-nez p2, :cond_1e

    return-void

    :cond_1e
    const-string p0, "msg.var.redecl"

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private setGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Callable;ZZ)V
    .registers 8

    if-eqz p1, :cond_b

    if-nez p2, :cond_5

    goto :goto_b

    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    :goto_b
    if-nez p5, :cond_10

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    :cond_10
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    sget-object v1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_GETTER_SETTER:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-virtual {v0, p1, p2, v1}, Lorg/mozilla/javascript/SlotMapContainer;->get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p2

    check-cast p2, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    goto :goto_2e

    :cond_21
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p2

    instance-of v0, p2, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez v0, :cond_2c

    return-void

    :cond_2c
    check-cast p2, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    :goto_2e
    if-nez p5, :cond_40

    invoke-virtual {p2}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result p5

    and-int/lit8 p5, p5, 0x1

    if-nez p5, :cond_39

    goto :goto_40

    :cond_39
    const-string p2, "msg.modify.readonly"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_40
    :goto_40
    if-eqz p4, :cond_45

    iput-object p3, p2, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    goto :goto_47

    :cond_45
    iput-object p3, p2, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    :goto_47
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object p1, p2, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v0}, Lorg/mozilla/javascript/SlotMapContainer;->readLock()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v2}, Lorg/mozilla/javascript/SlotMapContainer;->dirtySize()I

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_2f

    :cond_16
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v2}, Lorg/mozilla/javascript/SlotMapContainer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_35

    goto :goto_1f

    :cond_2f
    :goto_2f
    iget-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/javascript/SlotMapContainer;->unlockRead(J)V

    return-void

    :catchall_35
    move-exception p1

    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v2, v0, v1}, Lorg/mozilla/javascript/SlotMapContainer;->unlockRead(J)V

    goto :goto_3d

    :goto_3c
    throw p1

    :goto_3d
    goto :goto_3c
.end method


# virtual methods
.method addLazilyInitializedValue(Ljava/lang/String;ILorg/mozilla/javascript/LazilyLoadedCtor;I)V
    .registers 7

    if-eqz p1, :cond_b

    if-nez p2, :cond_5

    goto :goto_b

    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    :goto_b
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    sget-object v1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_GETTER_SETTER:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-virtual {v0, p1, p2, v1}, Lorg/mozilla/javascript/SlotMapContainer;->get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    invoke-virtual {p1, p4}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    const/4 p2, 0x0

    iput-object p2, p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    iput-object p2, p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    iput-object p3, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    return-void
.end method

.method protected applyDescriptorToAttributeBitset(ILorg/mozilla/javascript/ScriptableObject;)I
    .registers 5

    const-string v0, "enumerable"

    invoke-static {p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_15

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    and-int/lit8 p1, p1, -0x3

    goto :goto_15

    :cond_13
    or-int/lit8 p1, p1, 0x2

    :cond_15
    :goto_15
    const-string/jumbo v0, "writable"

    invoke-static {p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_29

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    and-int/lit8 p1, p1, -0x2

    goto :goto_29

    :cond_27
    or-int/lit8 p1, p1, 0x1

    :cond_29
    :goto_29
    const-string v0, "configurable"

    invoke-static {p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v1, :cond_3c

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3a

    and-int/lit8 p1, p1, -0x5

    goto :goto_3c

    :cond_3a
    or-int/lit8 p1, p1, 0x4

    :cond_3c
    :goto_3c
    return p1
.end method

.method public final declared-synchronized associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    if-eqz p2, :cond_16

    :try_start_3
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->associatedValues:Ljava/util/Map;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->associatedValues:Ljava/util/Map;

    :cond_e
    invoke-static {v0, p1, p2}, Lorg/mozilla/javascript/Kit;->initHash(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object p1

    :catchall_14
    move-exception p1

    goto :goto_1c

    :cond_16
    :try_start_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_14

    :goto_1c
    monitor-exit p0

    throw p1
.end method

.method public avoidObjectDetection()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected checkPropertyChange(Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/ScriptableObject;)V
    .registers 6

    if-nez p2, :cond_11

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result p1

    if-eqz p1, :cond_a

    goto/16 :goto_e1

    :cond_a
    const-string p1, "msg.not.extensible"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_11
    const-string v0, "configurable"

    invoke-virtual {p2, v0, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptableObject;->isFalse(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->isTrue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    const-string v0, "enumerable"

    invoke-virtual {p2, v0, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptableObject;->isTrue(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->isTrue(Ljava/lang/Object;)Z

    move-result v0

    if-ne v1, v0, :cond_d3

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v0

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v1

    if-nez v0, :cond_49

    if-nez v1, :cond_49

    goto/16 :goto_e1

    :cond_49
    if-eqz v0, :cond_88

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string/jumbo v0, "writable"

    invoke-virtual {p2, v0, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptableObject;->isFalse(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->isTrue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    const-string/jumbo v0, "value"

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, v0, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lorg/mozilla/javascript/ScriptableObject;->sameValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7a

    goto :goto_e1

    :cond_7a
    const-string p2, "msg.change.value.with.writable.false"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_81
    const-string p2, "msg.change.writable.false.to.true.with.configurable.false"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_88
    if-eqz v1, :cond_bf

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v0

    if-eqz v0, :cond_bf

    const-string v0, "set"

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/ScriptableObject;->sameValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    const-string v0, "get"

    invoke-static {p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, v0, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Lorg/mozilla/javascript/ScriptableObject;->sameValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b1

    goto :goto_e1

    :cond_b1
    const-string p2, "msg.change.getter.with.configurable.false"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_b8
    const-string p2, "msg.change.setter.with.configurable.false"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_bf
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result p2

    if-eqz p2, :cond_cc

    const-string p2, "msg.change.property.data.to.accessor.with.configurable.false"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_cc
    const-string p2, "msg.change.property.accessor.to.data.with.configurable.false"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_d3
    const-string p2, "msg.change.enumerable.with.configurable.false"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_da
    const-string p2, "msg.change.configurable.false.to.true"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_e1
    :goto_e1
    return-void
.end method

.method protected checkPropertyDefinition(Lorg/mozilla/javascript/ScriptableObject;)V
    .registers 5

    const-string v0, "get"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_18

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v0, v2, :cond_18

    instance-of v2, v0, Lorg/mozilla/javascript/Callable;

    if-eqz v2, :cond_13

    goto :goto_18

    :cond_13
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_18
    :goto_18
    const-string v0, "set"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_2e

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v0, v1, :cond_2e

    instance-of v1, v0, Lorg/mozilla/javascript/Callable;

    if-eqz v1, :cond_29

    goto :goto_2e

    :cond_29
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2e
    :goto_2e
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_42

    :cond_3b
    const-string p1, "msg.both.data.and.accessor.desc"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_42
    :goto_42
    return-void
.end method

.method public defineConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)V
    .registers 9

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v5, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->putConstImpl(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    if-eq p2, p0, :cond_1c

    instance-of v0, p2, Lorg/mozilla/javascript/ConstProperties;

    if-eqz v0, :cond_1b

    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/ConstProperties;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/ConstProperties;->defineConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)V

    :cond_1b
    return-void

    :cond_1c
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public defineFunctionProperties([Ljava/lang/String;Ljava/lang/Class;I)V
    .registers 9

    invoke-static {p2}, Lorg/mozilla/javascript/FunctionObject;->getMethodList(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_26

    aget-object v2, p1, v1

    invoke-static {v0, v2}, Lorg/mozilla/javascript/FunctionObject;->findSingleMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_1b

    new-instance v4, Lorg/mozilla/javascript/FunctionObject;

    invoke-direct {v4, v2, v3, p0}, Lorg/mozilla/javascript/FunctionObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p0, v2, v4, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.method.not.found"

    invoke-static {p2, v2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_26
    return-void
.end method

.method public defineOwnProperties(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Lorg/mozilla/javascript/ScriptableObject;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_1f

    aget-object v5, v1, v4

    invoke-static {p2, v5, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/ScriptableObject;->checkPropertyDefinition(Lorg/mozilla/javascript/ScriptableObject;)V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_1f
    array-length p2, v1

    :goto_20
    if-ge v0, p2, :cond_2c

    aget-object v3, v1, v0

    aget-object v4, v2, v0

    invoke-virtual {p0, p1, v3, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_2c
    return-void
.end method

.method public defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)V
    .registers 5

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ScriptableObject;->checkPropertyDefinition(Lorg/mozilla/javascript/ScriptableObject;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)V

    return-void
.end method

.method protected defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)V
    .registers 8

    sget-object v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->QUERY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-eqz p4, :cond_18

    if-nez v0, :cond_11

    const/4 p4, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getPropertyDescriptor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p4

    :goto_15
    invoke-virtual {p0, p2, p4, p3}, Lorg/mozilla/javascript/ScriptableObject;->checkPropertyChange(Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/ScriptableObject;)V

    :cond_18
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result p4

    if-nez v0, :cond_2f

    if-eqz p4, :cond_23

    sget-object v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_GETTER_SETTER:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    goto :goto_25

    :cond_23
    sget-object v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    :goto_25
    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {p0, v2, p3}, Lorg/mozilla/javascript/ScriptableObject;->applyDescriptorToAttributeBitset(ILorg/mozilla/javascript/ScriptableObject;)I

    move-result v2

    goto :goto_37

    :cond_2f
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v2

    invoke-virtual {p0, v2, p3}, Lorg/mozilla/javascript/ScriptableObject;->applyDescriptorToAttributeBitset(ILorg/mozilla/javascript/ScriptableObject;)I

    move-result v2

    :goto_37
    if-eqz p4, :cond_63

    instance-of p4, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez p4, :cond_43

    sget-object p4, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_GETTER_SETTER:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-virtual {p0, p1, p2, p4}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    :cond_43
    check-cast v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    const-string p1, "get"

    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p1, p2, :cond_51

    iput-object p1, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    :cond_51
    const-string p1, "set"

    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_5b

    iput-object p1, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    :cond_5b
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    goto :goto_8a

    :cond_63
    instance-of p4, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz p4, :cond_73

    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result p4

    if-eqz p4, :cond_73

    sget-object p4, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->CONVERT_ACCESSOR_TO_DATA:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-virtual {p0, p1, p2, p4}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    :cond_73
    const-string/jumbo p1, "value"

    invoke-static {p3, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p1, p2, :cond_81

    iput-object p1, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    goto :goto_87

    :cond_81
    if-eqz v1, :cond_87

    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    :cond_87
    :goto_87
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    :goto_8a
    return-void
.end method

.method public defineProperty(Ljava/lang/String;Ljava/lang/Class;I)V
    .registers 13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4f

    add-int/lit8 v1, v0, 0x3

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    aget-char v0, v1, v3

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    aput-char v0, v1, v3

    const/16 v0, 0x67

    aput-char v0, v1, v2

    const/16 v0, 0x65

    const/4 v3, 0x1

    aput-char v0, v1, v3

    const/4 v0, 0x2

    const/16 v3, 0x74

    aput-char v3, v1, v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const/16 v3, 0x73

    aput-char v3, v1, v2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {p2}, Lorg/mozilla/javascript/FunctionObject;->getMethodList(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-static {p2, v0}, Lorg/mozilla/javascript/FunctionObject;->findSingleMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {p2, v2}, Lorg/mozilla/javascript/FunctionObject;->findSingleMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-nez p2, :cond_43

    or-int/lit8 p3, p3, 0x1

    :cond_43
    move v8, p3

    const/4 v5, 0x0

    if-nez p2, :cond_48

    const/4 p2, 0x0

    :cond_48
    move-object v7, p2

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    return-void

    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(Ljava/lang/String;I)V

    return-void
.end method

.method public defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_4d

    new-instance v3, Lorg/mozilla/javascript/MemberBox;

    invoke-direct {v3, p3}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_1c

    if-eqz p2, :cond_18

    const/4 v4, 0x1

    goto :goto_19

    :cond_18
    const/4 v4, 0x0

    :goto_19
    iput-object p2, v3, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    goto :goto_21

    :cond_1c
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iput-object v4, v3, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    const/4 v4, 0x1

    :goto_21
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const-string v7, "msg.bad.getter.parms"

    if-nez v6, :cond_31

    if-eqz v4, :cond_2f

    const-string v7, "msg.obj.getter.parms"

    goto :goto_41

    :cond_2f
    move-object v7, v0

    goto :goto_41

    :cond_31
    array-length v6, v5

    if-ne v6, v2, :cond_41

    aget-object v5, v5, v1

    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-eq v5, v6, :cond_3f

    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableObjectClass:Ljava/lang/Class;

    if-eq v5, v6, :cond_3f

    goto :goto_41

    :cond_3f
    if-nez v4, :cond_2f

    :cond_41
    :goto_41
    if-nez v7, :cond_44

    goto :goto_4e

    :cond_44
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_4d
    move-object v3, v0

    :goto_4e
    if-eqz p4, :cond_b1

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p3, v4, :cond_a6

    new-instance p3, Lorg/mozilla/javascript/MemberBox;

    invoke-direct {p3, p4}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_6f

    if-eqz p2, :cond_6b

    const/4 v4, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v4, 0x0

    :goto_6c
    iput-object p2, p3, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    goto :goto_74

    :cond_6f
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    iput-object p2, p3, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    const/4 v4, 0x1

    :goto_74
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    array-length v5, p2

    if-ne v5, v2, :cond_80

    if-eqz v4, :cond_99

    const-string v0, "msg.setter2.expected"

    goto :goto_99

    :cond_80
    array-length v2, p2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_97

    aget-object p2, p2, v1

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-eq p2, v2, :cond_91

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableObjectClass:Ljava/lang/Class;

    if-eq p2, v2, :cond_91

    const-string p2, "msg.setter2.parms"

    goto :goto_95

    :cond_91
    if-nez v4, :cond_99

    const-string p2, "msg.setter1.parms"

    :goto_95
    move-object v0, p2

    goto :goto_99

    :cond_97
    const-string v0, "msg.setter.parms"

    :cond_99
    :goto_99
    if-nez v0, :cond_9d

    move-object v0, p3

    goto :goto_b1

    :cond_9d
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_a6
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.setter.return"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_b1
    :goto_b1
    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    sget-object p3, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_GETTER_SETTER:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-virtual {p2, p1, v1, p3}, Lorg/mozilla/javascript/SlotMapContainer;->get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    invoke-virtual {p1, p5}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    iput-object v3, p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    iput-object v0, p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    return-void
.end method

.method public defineProperty(Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(Lorg/mozilla/javascript/Symbol;I)V

    return-void
.end method

.method public delete(I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v1, v0, p1}, Lorg/mozilla/javascript/SlotMapContainer;->remove(Ljava/lang/Object;I)V

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/SlotMapContainer;->remove(Ljava/lang/Object;I)V

    return-void
.end method

.method public delete(Lorg/mozilla/javascript/Symbol;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/SlotMapContainer;->remove(Ljava/lang/Object;I)V

    return-void
.end method

.method protected equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    if-ne p0, p1, :cond_5

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_5
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    :goto_7
    return-object p1
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lorg/mozilla/javascript/ExternalArrayData;->getArrayLength()I

    move-result p2

    if-ge p1, p2, :cond_11

    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    invoke-interface {p2, p1}, Lorg/mozilla/javascript/ExternalArrayData;->getArrayElement(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_11
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    :cond_14
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    if-nez p1, :cond_20

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    :cond_20
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_27

    :cond_c
    instance-of v0, p1, Lorg/mozilla/javascript/Symbol;

    if-eqz v0, :cond_17

    check-cast p1, Lorg/mozilla/javascript/Symbol;

    invoke-virtual {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_27

    :cond_17
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_26

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_27

    :cond_26
    move-object p1, v1

    :goto_27
    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p1, v0, :cond_3b

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p1, v0, :cond_30

    goto :goto_3b

    :cond_30
    instance-of v0, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_3a

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    :cond_3a
    return-object p1

    :cond_3b
    :goto_3b
    return-object v1
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    if-nez p1, :cond_c

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    :cond_c
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    if-nez p1, :cond_c

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    :cond_c
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllIds()[Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->associatedValues:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes(I)I
    .registers 4

    sget-object v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->QUERY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->findAttributeSlot(Ljava/lang/String;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result p1

    return p1
.end method

.method public final getAttributes(ILorg/mozilla/javascript/Scriptable;)I
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(I)I

    move-result p1

    return p1
.end method

.method public getAttributes(Ljava/lang/String;)I
    .registers 4

    sget-object v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->QUERY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/mozilla/javascript/ScriptableObject;->findAttributeSlot(Ljava/lang/String;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result p1

    return p1
.end method

.method public final getAttributes(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)I
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAttributes(Lorg/mozilla/javascript/Symbol;)I
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->QUERY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->findAttributeSlot(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result p1

    return p1
.end method

.method public abstract getClassName()Ljava/lang/String;
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getDefaultValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getExternalArrayData()Lorg/mozilla/javascript/ExternalArrayData;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    return-object v0
.end method

.method public getExternalArrayLength()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Lorg/mozilla/javascript/ExternalArrayData;->getArrayLength()I

    move-result v0

    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getGetterOrSetter(Ljava/lang/String;IZ)Ljava/lang/Object;
    .registers 5

    if-eqz p1, :cond_b

    if-nez p2, :cond_5

    goto :goto_b

    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    :goto_b
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    if-nez p1, :cond_15

    const/4 p1, 0x0

    return-object p1

    :cond_15
    instance-of p2, p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz p2, :cond_28

    check-cast p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz p3, :cond_20

    iget-object p1, p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    goto :goto_22

    :cond_20
    iget-object p1, p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    :goto_22
    if-eqz p1, :cond_25

    goto :goto_27

    :cond_25
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_27
    return-object p1

    :cond_28
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1
.end method

.method public getIds()[Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getIds(ZZ)[Ljava/lang/Object;
    .registers 13

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-interface {v0}, Lorg/mozilla/javascript/ExternalArrayData;->getArrayLength()I

    move-result v0

    :goto_b
    if-nez v0, :cond_10

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_1e

    :cond_10
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v0, :cond_1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1e
    :goto_1e
    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v3}, Lorg/mozilla/javascript/SlotMapContainer;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    return-object v2

    :cond_27
    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v3}, Lorg/mozilla/javascript/SlotMapContainer;->readLock()J

    move-result-wide v3

    :try_start_2d
    iget-object v5, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v5}, Lorg/mozilla/javascript/SlotMapContainer;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v0

    :cond_34
    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_74

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-nez p1, :cond_4a

    invoke-virtual {v7}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_34

    :cond_4a
    if-nez p2, :cond_52

    iget-object v8, v7, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    instance-of v8, v8, Lorg/mozilla/javascript/Symbol;

    if-nez v8, :cond_34

    :cond_52
    if-ne v6, v0, :cond_63

    iget-object v8, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v8}, Lorg/mozilla/javascript/SlotMapContainer;->dirtySize()I

    move-result v8

    add-int/2addr v8, v0

    new-array v8, v8, [Ljava/lang/Object;

    if-eqz v2, :cond_62

    invoke-static {v2, v1, v8, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_62
    move-object v2, v8

    :cond_63
    add-int/lit8 v8, v6, 0x1

    iget-object v9, v7, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    if-eqz v9, :cond_6a

    goto :goto_70

    :cond_6a
    iget v7, v7, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_70
    aput-object v9, v2, v6
    :try_end_72
    .catchall {:try_start_2d .. :try_end_72} :catchall_98

    move v6, v8

    goto :goto_34

    :cond_74
    iget-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {p1, v3, v4}, Lorg/mozilla/javascript/SlotMapContainer;->unlockRead(J)V

    array-length p1, v2

    add-int/2addr p1, v0

    if-ne v6, p1, :cond_7e

    goto :goto_84

    :cond_7e
    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, p1, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p1

    :goto_84
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    if-eqz p1, :cond_97

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_97

    sget-object p1, Lorg/mozilla/javascript/ScriptableObject;->KEY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_97
    return-object v2

    :catchall_98
    move-exception p1

    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {p2, v3, v4}, Lorg/mozilla/javascript/SlotMapContainer;->unlockRead(J)V

    goto :goto_a0

    :goto_9f
    throw p1

    :goto_a0
    goto :goto_9f
.end method

.method protected getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .registers 4

    sget-object v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->QUERY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->getSlot(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p2

    if-nez p2, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_11

    move-object v0, p0

    :cond_11
    invoke-virtual {p2, p1, v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getPropertyDescriptor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method

.method public getParentScope()Lorg/mozilla/javascript/Scriptable;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->parentScopeObject:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->prototypeObject:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method protected getSlot(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .registers 6

    instance-of v0, p2, Lorg/mozilla/javascript/Symbol;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {p1, p2, v1, p3}, Lorg/mozilla/javascript/SlotMapContainer;->get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    return-object p1

    :cond_c
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object p1

    iget-object p2, p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-nez p2, :cond_1e

    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v0, 0x0

    iget p1, p1, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-virtual {p2, v0, p1, p3}, Lorg/mozilla/javascript/SlotMapContainer;->get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    return-object p1

    :cond_1e
    iget-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {p1, p2, v1, p3}, Lorg/mozilla/javascript/SlotMapContainer;->get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    return-object p1
.end method

.method public getTypeOf()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->avoidObjectDetection()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "undefined"

    goto :goto_c

    :cond_a
    const-string v0, "object"

    :goto_c
    return-object v0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .registers 6

    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_f

    invoke-interface {p2}, Lorg/mozilla/javascript/ExternalArrayData;->getArrayLength()I

    move-result p2

    if-ge p1, p2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, p1}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 4

    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 4

    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .registers 2

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->jsDelegatesTo(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method protected isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z
    .registers 3

    const-string v0, "get"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "set"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method public isConst(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result p1

    const/4 v0, 0x5

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method protected isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z
    .registers 3

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "writable"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v0}, Lorg/mozilla/javascript/SlotMapContainer;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isExtensible()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    return v0
.end method

.method protected isGenericDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method protected isGetterOrSetter(Ljava/lang/String;IZ)Z
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/SlotMapContainer;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    instance-of p2, p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz p2, :cond_1e

    const/4 p2, 0x1

    if-eqz p3, :cond_15

    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    iget-object v0, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->setter:Ljava/lang/Object;

    if-eqz v0, :cond_15

    return p2

    :cond_15
    if-nez p3, :cond_1e

    check-cast p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    iget-object p1, p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;->getter:Ljava/lang/Object;

    if-eqz p1, :cond_1e

    return p2

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public final isSealed()Z
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isSealed:Z

    return v0
.end method

.method public preventExtensions()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isExtensible:Z

    return-void
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    invoke-interface {v0}, Lorg/mozilla/javascript/ExternalArrayData;->getArrayLength()I

    move-result p2

    if-ge p1, p2, :cond_11

    iget-object p2, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    invoke-interface {p2, p1, p3}, Lorg/mozilla/javascript/ExternalArrayData;->setArrayElement(ILjava/lang/Object;)V

    return-void

    :cond_11
    new-instance p1, Lorg/mozilla/javascript/JavaScriptException;

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    sget-object p3, Lorg/mozilla/javascript/TopLevel$NativeErrors;->RangeError:Lorg/mozilla/javascript/TopLevel$NativeErrors;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "External array index out of bounds "

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {p2, p0, p3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->newNativeError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$NativeErrors;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    invoke-direct {p1, p2, v1, v3}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw p1

    :cond_29
    invoke-direct {p0, v1, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->putImpl(Ljava/lang/Object;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    return-void

    :cond_30
    if-eq p2, p0, :cond_36

    invoke-interface {p2, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    :cond_36
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->putImpl(Ljava/lang/Object;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    if-eq p2, p0, :cond_e

    invoke-interface {p2, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    :cond_e
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->putImpl(Ljava/lang/Object;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    if-eq p2, p0, :cond_12

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/SymbolScriptable;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    :cond_12
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->putConstImpl(Ljava/lang/String;ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    if-eq p2, p0, :cond_1e

    instance-of v0, p2, Lorg/mozilla/javascript/ConstProperties;

    if-eqz v0, :cond_1a

    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/ConstProperties;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/ConstProperties;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_1d

    :cond_1a
    invoke-interface {p2, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :goto_1d
    return-void

    :cond_1e
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method protected sameValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    return v1

    :cond_6
    if-ne p2, v0, :cond_a

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_a
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_41

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_41

    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2d

    return v1

    :cond_2d
    const-wide/16 v0, 0x0

    cmpl-double v6, v2, v0

    if-nez v6, :cond_41

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_41

    const/4 p1, 0x0

    return p1

    :cond_41
    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public sealObject()V
    .registers 7

    iget-boolean v0, p0, Lorg/mozilla/javascript/ScriptableObject;->isSealed:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v0}, Lorg/mozilla/javascript/SlotMapContainer;->readLock()J

    move-result-wide v0

    :try_start_a
    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v2}, Lorg/mozilla/javascript/SlotMapContainer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/ScriptableObject$Slot;

    iget-object v4, v3, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    instance-of v5, v4, Lorg/mozilla/javascript/LazilyLoadedCtor;

    if-eqz v5, :cond_10

    check-cast v4, Lorg/mozilla/javascript/LazilyLoadedCtor;
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_3f

    :try_start_24
    invoke-virtual {v4}, Lorg/mozilla/javascript/LazilyLoadedCtor;->init()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2e

    :try_start_27
    invoke-virtual {v4}, Lorg/mozilla/javascript/LazilyLoadedCtor;->getValue()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    goto :goto_10

    :catchall_2e
    move-exception v2

    invoke-virtual {v4}, Lorg/mozilla/javascript/LazilyLoadedCtor;->getValue()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    throw v2

    :cond_36
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/mozilla/javascript/ScriptableObject;->isSealed:Z
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_3f

    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v2, v0, v1}, Lorg/mozilla/javascript/SlotMapContainer;->unlockRead(J)V

    goto :goto_46

    :catchall_3f
    move-exception v2

    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v3, v0, v1}, Lorg/mozilla/javascript/SlotMapContainer;->unlockRead(J)V

    throw v2

    :cond_46
    :goto_46
    return-void
.end method

.method public setAttributes(II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    sget-object v1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-direct {p0, v0, p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->findAttributeSlot(Ljava/lang/String;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    return-void
.end method

.method public setAttributes(ILorg/mozilla/javascript/Scriptable;I)V
    .registers 4

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(II)V

    return-void
.end method

.method public setAttributes(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    sget-object v1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-direct {p0, p1, v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->findAttributeSlot(Ljava/lang/String;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    return-void
.end method

.method public final setAttributes(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;I)V
    .registers 4

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(Ljava/lang/String;I)V

    return-void
.end method

.method public setAttributes(Lorg/mozilla/javascript/Symbol;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->checkNotSealed(Ljava/lang/Object;I)V

    sget-object v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->findAttributeSlot(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    return-void
.end method

.method public setExternalArrayData(Lorg/mozilla/javascript/ExternalArrayData;)V
    .registers 8

    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->externalData:Lorg/mozilla/javascript/ExternalArrayData;

    if-nez p1, :cond_a

    const-string p1, "length"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->delete(Ljava/lang/String;)V

    goto :goto_15

    :cond_a
    const/4 v2, 0x0

    sget-object v3, Lorg/mozilla/javascript/ScriptableObject;->GET_ARRAY_LENGTH:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v1, "length"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;I)V

    :goto_15
    return-void
.end method

.method public setGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Callable;Z)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->setGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Callable;ZZ)V

    return-void
.end method

.method public setParentScope(Lorg/mozilla/javascript/Scriptable;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->parentScopeObject:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method public setPrototype(Lorg/mozilla/javascript/Scriptable;)V
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xb4

    if-ge v0, v1, :cond_13

    goto :goto_1a

    :cond_13
    const-string p1, "msg.not.extensible"

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_1a
    :goto_1a
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject;->prototypeObject:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject;->slotMap:Lorg/mozilla/javascript/SlotMapContainer;

    invoke-virtual {v0}, Lorg/mozilla/javascript/SlotMapContainer;->size()I

    move-result v0

    return v0
.end method
