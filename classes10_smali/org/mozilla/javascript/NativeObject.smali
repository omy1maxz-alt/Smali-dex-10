.class public Lorg/mozilla/javascript/NativeObject;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeObject.java"

# interfaces
.implements Ljava/util/Map;


# static fields
.field private static final ConstructorId_assign:I = -0xf

.field private static final ConstructorId_create:I = -0x9

.field private static final ConstructorId_defineProperties:I = -0x8

.field private static final ConstructorId_defineProperty:I = -0x5

.field private static final ConstructorId_freeze:I = -0xd

.field private static final ConstructorId_getOwnPropertyDescriptor:I = -0x4

.field private static final ConstructorId_getOwnPropertyNames:I = -0x3

.field private static final ConstructorId_getOwnPropertySymbols:I = -0xe

.field private static final ConstructorId_getPrototypeOf:I = -0x1

.field private static final ConstructorId_is:I = -0x10

.field private static final ConstructorId_isExtensible:I = -0x6

.field private static final ConstructorId_isFrozen:I = -0xb

.field private static final ConstructorId_isSealed:I = -0xa

.field private static final ConstructorId_keys:I = -0x2

.field private static final ConstructorId_preventExtensions:I = -0x7

.field private static final ConstructorId_seal:I = -0xc

.field private static final ConstructorId_setPrototypeOf:I = -0x11

.field private static final Id___defineGetter__:I = 0x9

.field private static final Id___defineSetter__:I = 0xa

.field private static final Id___lookupGetter__:I = 0xb

.field private static final Id___lookupSetter__:I = 0xc

.field private static final Id_constructor:I = 0x1

.field private static final Id_hasOwnProperty:I = 0x5

.field private static final Id_isPrototypeOf:I = 0x7

.field private static final Id_propertyIsEnumerable:I = 0x6

.field private static final Id_toLocaleString:I = 0x3

.field private static final Id_toSource:I = 0x8

.field private static final Id_toString:I = 0x2

.field private static final Id_valueOf:I = 0x4

.field private static final MAX_PROTOTYPE_ID:I = 0xc

.field private static final OBJECT_TAG:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x580f0dd5006845f4L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Object"

    sput-object v0, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method private static getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_11

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p0}, Lorg/mozilla/javascript/IdScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1

    :cond_b
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1a

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeObject;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eq p1, v1, :cond_1c

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_1c
    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    new-instance v0, Lorg/mozilla/javascript/NativeObject$EntrySet;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/NativeObject$EntrySet;-><init>(Lorg/mozilla/javascript/NativeObject;)V

    return-object v0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    sget-object v6, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_19
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v6

    const-string v8, "msg.incompat.call"

    const-string/jumbo v9, "writable"

    const-string v10, ".to.object"

    const-string/jumbo v11, "undef"

    const-string v12, "msg."

    const-string v14, "null"

    const-string v15, "configurable"

    const/4 v13, 0x0

    const/4 v7, 0x1

    packed-switch v6, :pswitch_data_652

    :pswitch_32  #0x0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3c  #0xb, 0xc
    array-length v0, v5

    if-lt v0, v7, :cond_77

    instance-of v0, v4, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v0, :cond_44

    goto :goto_77

    :cond_44
    move-object v0, v4

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    aget-object v3, v5, v13

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object v2

    iget-object v3, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-eqz v3, :cond_53

    const/4 v3, 0x0

    goto :goto_55

    :cond_53
    iget v3, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    :goto_55
    const/16 v4, 0xc

    if-ne v6, v4, :cond_5a

    const/4 v13, 0x1

    :cond_5a
    :goto_5a
    iget-object v4, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    invoke-virtual {v0, v4, v3, v13}, Lorg/mozilla/javascript/ScriptableObject;->getGetterOrSetter(Ljava/lang/String;IZ)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_63

    goto :goto_71

    :cond_63
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-nez v0, :cond_6a

    goto :goto_71

    :cond_6a
    instance-of v5, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v5, :cond_71

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    goto :goto_5a

    :cond_71
    :goto_71
    if-eqz v4, :cond_74

    return-object v4

    :cond_74
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :cond_77
    :goto_77
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :pswitch_7a  #0x9, 0xa
    array-length v0, v5

    const/4 v3, 0x2

    if-lt v0, v3, :cond_cb

    aget-object v0, v5, v7

    instance-of v0, v0, Lorg/mozilla/javascript/Callable;

    if-nez v0, :cond_85

    goto :goto_cb

    :cond_85
    instance-of v0, v4, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v0, :cond_a1

    if-nez v4, :cond_8c

    goto :goto_94

    :cond_8c
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    :goto_94
    aget-object v0, v5, v13

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "msg.extend.scriptable"

    invoke-static {v2, v14, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    :cond_a1
    move-object v0, v4

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    aget-object v3, v5, v13

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object v2

    iget-object v3, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-eqz v3, :cond_b0

    const/4 v2, 0x0

    goto :goto_b2

    :cond_b0
    iget v2, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    :goto_b2
    aget-object v4, v5, v7

    check-cast v4, Lorg/mozilla/javascript/Callable;

    const/16 v5, 0xa

    if-ne v6, v5, :cond_bb

    goto :goto_bc

    :cond_bb
    const/4 v7, 0x0

    :goto_bc
    invoke-virtual {v0, v3, v2, v4, v7}, Lorg/mozilla/javascript/ScriptableObject;->setGetterOrSetter(Ljava/lang/String;ILorg/mozilla/javascript/Callable;Z)V

    instance-of v2, v0, Lorg/mozilla/javascript/NativeArray;

    if-eqz v2, :cond_c8

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/NativeArray;->setDenseOnly(Z)V

    :cond_c8
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :cond_cb
    :goto_cb
    array-length v0, v5

    const/4 v2, 0x2

    if-lt v0, v2, :cond_d2

    aget-object v0, v5, v7

    goto :goto_d4

    :cond_d2
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_d4
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_d9  #0x8
    invoke-static/range {p2 .. p5}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToSource(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_de  #0x7
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v2, 0xb4

    if-lt v0, v2, :cond_108

    if-eqz v4, :cond_ee

    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    :cond_ee
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_f9

    move-object v11, v14

    :cond_f9
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_108
    array-length v0, v5

    if-eqz v0, :cond_11f

    aget-object v0, v5, v13

    instance-of v0, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_11f

    aget-object v0, v5, v13

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    :cond_115
    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    if-ne v0, v4, :cond_11d

    const/4 v13, 0x1

    goto :goto_11f

    :cond_11d
    if-nez v0, :cond_115

    :cond_11f
    :goto_11f
    invoke-static {v13}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_124  #0x6
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v3, 0xb4

    if-lt v0, v3, :cond_14e

    if-eqz v4, :cond_134

    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14e

    :cond_134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_13f

    move-object v11, v14

    :cond_13f
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_14e
    array-length v0, v5

    if-ge v0, v7, :cond_154

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_156

    :cond_154
    aget-object v0, v5, v13

    :goto_156
    instance-of v3, v0, Lorg/mozilla/javascript/Symbol;

    if-eqz v3, :cond_178

    move-object v2, v4

    check-cast v2, Lorg/mozilla/javascript/SymbolScriptable;

    check-cast v0, Lorg/mozilla/javascript/Symbol;

    invoke-interface {v2, v0, v4}, Lorg/mozilla/javascript/SymbolScriptable;->has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v2

    if-eqz v2, :cond_176

    instance-of v3, v4, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v3, :cond_176

    move-object v2, v4

    check-cast v2, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(Lorg/mozilla/javascript/Symbol;)I

    move-result v0

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-nez v0, :cond_1cf

    :goto_174
    const/4 v13, 0x1

    goto :goto_1cf

    :cond_176
    move v13, v2

    goto :goto_1cf

    :cond_178
    invoke-static {v2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object v2

    :try_start_17c
    iget-object v0, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-nez v0, :cond_19a

    iget v0, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-interface {v4, v0, v4}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    if-eqz v0, :cond_1b2

    instance-of v3, v4, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v3, :cond_1b2

    move-object v0, v4

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    iget v3, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(I)I

    move-result v0

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-nez v0, :cond_1cf

    goto :goto_174

    :cond_19a
    invoke-interface {v4, v0, v4}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    if-eqz v0, :cond_1b2

    instance-of v3, v4, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v3, :cond_1b2

    move-object v0, v4

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    iget-object v3, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(Ljava/lang/String;)I

    move-result v0
    :try_end_1ad
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_17c .. :try_end_1ad} :catch_1b4

    const/4 v2, 0x2

    and-int/2addr v0, v2

    if-nez v0, :cond_1cf

    goto :goto_174

    :cond_1b2
    move v13, v0

    goto :goto_1cf

    :catch_1b4
    move-exception v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/RhinoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-nez v4, :cond_1c3

    iget v2, v2, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1c3
    const-string v2, "msg.prop.not.found"

    invoke-static {v2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d4

    :cond_1cf
    :goto_1cf
    invoke-static {v13}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1d4
    throw v0

    :pswitch_1d5  #0x5
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v3, 0xb4

    if-lt v0, v3, :cond_1ff

    if-eqz v4, :cond_1e5

    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ff

    :cond_1e5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_1f0

    move-object v11, v14

    :cond_1f0
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_1ff
    array-length v0, v5

    if-ge v0, v7, :cond_205

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_207

    :cond_205
    aget-object v0, v5, v13

    :goto_207
    instance-of v3, v0, Lorg/mozilla/javascript/Symbol;

    if-eqz v3, :cond_216

    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptableObject;->ensureSymbolScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/SymbolScriptable;

    move-result-object v2

    check-cast v0, Lorg/mozilla/javascript/Symbol;

    invoke-interface {v2, v0, v4}, Lorg/mozilla/javascript/SymbolScriptable;->has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    goto :goto_229

    :cond_216
    invoke-static {v2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    move-result-object v0

    iget-object v2, v0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->stringId:Ljava/lang/String;

    if-nez v2, :cond_225

    iget v0, v0, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->index:I

    invoke-interface {v4, v0, v4}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    goto :goto_229

    :cond_225
    invoke-interface {v4, v2, v4}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    :goto_229
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_22e  #0x4
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v0

    const/16 v2, 0xb4

    if-lt v0, v2, :cond_258

    if-eqz v4, :cond_23e

    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_258

    :cond_23e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_249

    move-object v11, v14

    :cond_249
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_258
    return-object v4

    :pswitch_259  #0x3
    const-string/jumbo v0, "toString"

    invoke-static {v4, v0}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lorg/mozilla/javascript/Callable;

    if-eqz v5, :cond_26d

    check-cast v0, Lorg/mozilla/javascript/Callable;

    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_26d
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_272  #0x2
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_299

    invoke-static/range {p2 .. p5}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToSource(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_298

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_298

    sub-int/2addr v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_298

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_298
    return-object v0

    :cond_299
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_29e  #0x1
    if-eqz v4, :cond_2a5

    invoke-virtual {v0, v2, v3, v5}, Lorg/mozilla/javascript/BaseFunction;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    :cond_2a5
    array-length v0, v5

    if-eqz v0, :cond_2bc

    aget-object v0, v5, v13

    if-eqz v0, :cond_2bc

    aget-object v0, v5, v13

    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b5

    goto :goto_2bc

    :cond_2b5
    aget-object v0, v5, v13

    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    :cond_2bc
    :goto_2bc
    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    return-object v0

    :pswitch_2c2  #0xffffffff
    array-length v0, v5

    if-ge v0, v7, :cond_2c8

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_2ca

    :cond_2c8
    aget-object v0, v5, v13

    :goto_2ca
    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    :pswitch_2d3  #0xfffffffe
    array-length v0, v5

    if-ge v0, v7, :cond_2d9

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_2db

    :cond_2d9
    aget-object v0, v5, v13

    :goto_2db
    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    :goto_2e3
    array-length v4, v0

    if-ge v13, v4, :cond_2f1

    aget-object v4, v0, v13

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2e3

    :cond_2f1
    invoke-virtual {v2, v3, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    :pswitch_2f6  #0xfffffffd
    array-length v0, v5

    if-ge v0, v7, :cond_2fc

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_2fe

    :cond_2fc
    aget-object v0, v5, v13

    :goto_2fe
    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    invoke-virtual {v0, v7, v13}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object v0

    :goto_30a
    array-length v4, v0

    if-ge v13, v4, :cond_318

    aget-object v4, v0, v13

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_30a

    :cond_318
    invoke-virtual {v2, v3, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    :pswitch_31d  #0xfffffffc
    array-length v0, v5

    if-ge v0, v7, :cond_323

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_325

    :cond_323
    aget-object v0, v5, v13

    :goto_325
    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    array-length v3, v5

    const/4 v4, 0x2

    if-ge v3, v4, :cond_334

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_336

    :cond_334
    aget-object v3, v5, v7

    :goto_336
    invoke-virtual {v0, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    if-nez v0, :cond_33e

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_33e
    return-object v0

    :pswitch_33f  #0xfffffffb
    array-length v0, v5

    if-ge v0, v7, :cond_345

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_347

    :cond_345
    aget-object v0, v5, v13

    :goto_347
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    array-length v3, v5

    const/4 v4, 0x2

    if-ge v3, v4, :cond_352

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_354

    :cond_352
    aget-object v3, v5, v7

    :goto_354
    array-length v6, v5

    const/4 v7, 0x3

    if-ge v6, v7, :cond_35b

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_35d

    :cond_35b
    aget-object v4, v5, v4

    :goto_35d
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)V

    return-object v0

    :pswitch_365  #0xfffffffa
    array-length v0, v5

    if-ge v0, v7, :cond_36b

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_36d

    :cond_36b
    aget-object v0, v5, v13

    :goto_36d
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_37c

    instance-of v2, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v2, :cond_37c

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_37c
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_389  #0xfffffff9
    array-length v0, v5

    if-ge v0, v7, :cond_38f

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_391

    :cond_38f
    aget-object v0, v5, v13

    :goto_391
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_39e

    instance-of v2, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v2, :cond_39e

    return-object v0

    :cond_39e
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->preventExtensions()V

    return-object v0

    :pswitch_3a6  #0xfffffff8
    array-length v0, v5

    if-ge v0, v7, :cond_3ac

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_3ae

    :cond_3ac
    aget-object v0, v5, v13

    :goto_3ae
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    array-length v4, v5

    const/4 v6, 0x2

    if-ge v4, v6, :cond_3b9

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_3bb

    :cond_3b9
    aget-object v4, v5, v7

    :goto_3bb
    invoke-static {v4, v3}, Lorg/mozilla/javascript/Context;->toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperties(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;)V

    return-object v0

    :pswitch_3c7  #0xfffffff7
    array-length v0, v5

    if-ge v0, v7, :cond_3cd

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_3cf

    :cond_3cd
    aget-object v0, v5, v13

    :goto_3cf
    if-nez v0, :cond_3d3

    const/4 v0, 0x0

    goto :goto_3d7

    :cond_3d3
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    :goto_3d7
    new-instance v4, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v4}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    invoke-virtual {v4, v3}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v4, v0}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    array-length v0, v5

    if-le v0, v7, :cond_3fa

    aget-object v0, v5, v7

    invoke-static {v0}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3fa

    aget-object v0, v5, v7

    invoke-static {v0, v3}, Lorg/mozilla/javascript/Context;->toObject(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperties(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/ScriptableObject;)V

    :cond_3fa
    return-object v4

    :pswitch_3fb  #0xfffffff6
    array-length v0, v5

    if-ge v0, v7, :cond_401

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_403

    :cond_401
    aget-object v0, v5, v13

    :goto_403
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_412

    instance-of v3, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v3, :cond_412

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_412
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v3

    if-eqz v3, :cond_41f

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_41f
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->getAllIds()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    :goto_424
    if-ge v13, v4, :cond_43e

    aget-object v5, v3, v13

    invoke-virtual {v0, v2, v5}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v5

    invoke-virtual {v5, v15}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43b

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_43b
    add-int/lit8 v13, v13, 0x1

    goto :goto_424

    :cond_43e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_441  #0xfffffff5
    array-length v0, v5

    if-ge v0, v7, :cond_447

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_449

    :cond_447
    aget-object v0, v5, v13

    :goto_449
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_458

    instance-of v3, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v3, :cond_458

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_458
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v3

    if-eqz v3, :cond_465

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_465
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->getAllIds()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    :goto_46a
    if-ge v13, v4, :cond_497

    aget-object v5, v3, v13

    invoke-virtual {v0, v2, v5}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v15}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_481

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_481
    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v7

    if-eqz v7, :cond_494

    invoke-virtual {v5, v9}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_494

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_494
    add-int/lit8 v13, v13, 0x1

    goto :goto_46a

    :cond_497
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_49a  #0xfffffff4
    array-length v0, v5

    if-ge v0, v7, :cond_4a0

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_4a2

    :cond_4a0
    aget-object v0, v5, v13

    :goto_4a2
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_4af

    instance-of v3, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v3, :cond_4af

    return-object v0

    :cond_4af
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->getAllIds()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_4b9
    if-ge v5, v4, :cond_4d8

    aget-object v6, v3, v5

    invoke-virtual {v0, v2, v6}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v15}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d5

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v15, v7, v8}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v6, v7, v13}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)V

    :cond_4d5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b9

    :cond_4d8
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->preventExtensions()V

    return-object v0

    :pswitch_4dc  #0xfffffff3
    array-length v0, v5

    if-ge v0, v7, :cond_4e2

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_4e4

    :cond_4e2
    aget-object v0, v5, v13

    :goto_4e4
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_4f1

    instance-of v3, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v3, :cond_4f1

    return-object v0

    :cond_4f1
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_4fb
    if-ge v5, v4, :cond_531

    aget-object v6, v3, v5

    invoke-virtual {v0, v2, v6}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/mozilla/javascript/ScriptableObject;->isDataDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v8

    if-eqz v8, :cond_51a

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v9}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51a

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v9, v7, v8}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_51a
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v15}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52b

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v15, v7, v8}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_52b
    invoke-virtual {v0, v2, v6, v7, v13}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4fb

    :cond_531
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->preventExtensions()V

    return-object v0

    :pswitch_535  #0xfffffff2
    array-length v0, v5

    if-ge v0, v7, :cond_53b

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_53d

    :cond_53b
    aget-object v0, v5, v13

    :goto_53d
    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/NativeObject;->getCompatibleObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_54e
    array-length v5, v0

    if-ge v13, v5, :cond_55f

    aget-object v5, v0, v13

    instance-of v5, v5, Lorg/mozilla/javascript/Symbol;

    if-eqz v5, :cond_55c

    aget-object v5, v0, v13

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55c
    add-int/lit8 v13, v13, 0x1

    goto :goto_54e

    :cond_55f
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    :pswitch_568  #0xfffffff1
    array-length v0, v5

    if-lt v0, v7, :cond_5c9

    aget-object v0, v5, v13

    invoke-static {v2, v4, v0}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    :goto_571
    array-length v3, v5

    if-ge v7, v3, :cond_5c8

    aget-object v3, v5, v7

    if-eqz v3, :cond_5c5

    aget-object v3, v5, v7

    invoke-static {v3}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_581

    goto :goto_5c5

    :cond_581
    aget-object v3, v5, v7

    invoke-static {v2, v4, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-interface {v3}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v6

    array-length v8, v6

    const/4 v9, 0x0

    :goto_58d
    if-ge v9, v8, :cond_5c5

    aget-object v10, v6, v9

    instance-of v11, v10, Ljava/lang/String;

    if-eqz v11, :cond_5a9

    check-cast v10, Ljava/lang/String;

    invoke-interface {v3, v10, v3}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v11, v12, :cond_5c2

    invoke-static {v11}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5c2

    invoke-interface {v0, v10, v0, v11}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_5c2

    :cond_5a9
    instance-of v11, v10, Ljava/lang/Number;

    if-eqz v11, :cond_5c2

    invoke-static {v10}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v10

    invoke-interface {v3, v10, v3}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v11, v12, :cond_5c2

    invoke-static {v11}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5c2

    invoke-interface {v0, v10, v0, v11}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_5c2
    :goto_5c2
    add-int/lit8 v9, v9, 0x1

    goto :goto_58d

    :cond_5c5
    :goto_5c5
    add-int/lit8 v7, v7, 0x1

    goto :goto_571

    :cond_5c8
    return-object v0

    :cond_5c9
    const-string v0, "assign"

    invoke-static {v8, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :pswitch_5d0  #0xfffffff0
    array-length v0, v5

    if-ge v0, v7, :cond_5d6

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_5d8

    :cond_5d6
    aget-object v0, v5, v13

    :goto_5d8
    array-length v2, v5

    const/4 v3, 0x2

    if-ge v2, v3, :cond_5df

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_5e1

    :cond_5df
    aget-object v2, v5, v7

    :goto_5e1
    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->same(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_5ea  #0xffffffef
    const/4 v3, 0x2

    array-length v4, v5

    if-lt v4, v3, :cond_647

    aget-object v3, v5, v7

    if-nez v3, :cond_5f4

    const/4 v7, 0x0

    goto :goto_5fa

    :cond_5f4
    aget-object v3, v5, v7

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    :goto_5fa
    instance-of v3, v7, Lorg/mozilla/javascript/Symbol;

    if-nez v3, :cond_63c

    aget-object v3, v5, v13

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v4

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_60b

    invoke-static {v2, v3, v0}, Lorg/mozilla/javascript/ScriptRuntimeES6;->requireObjectCoercible(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/IdFunctionObject;)Ljava/lang/Object;

    :cond_60b
    instance-of v0, v3, Lorg/mozilla/javascript/ScriptableObject;

    if-nez v0, :cond_610

    return-object v3

    :cond_610
    check-cast v3, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ScriptableObject;->isExtensible()Z

    move-result v0

    if-eqz v0, :cond_635

    move-object v0, v7

    :goto_619
    if-eqz v0, :cond_631

    if-eq v0, v3, :cond_622

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_619

    :cond_622
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "msg.object.cyclic.prototype"

    invoke-static {v2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_631
    invoke-virtual {v3, v7}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-object v3

    :cond_635
    const-string v0, "msg.not.extensible"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_63c
    invoke-static {v7}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "msg.arg.not.object"

    invoke-static {v2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    :cond_647
    const-string/jumbo v0, "setPrototypeOf"

    invoke-static {v8, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    goto :goto_650

    :goto_64f
    throw v0

    :goto_650
    goto :goto_64f

    nop

    :pswitch_data_652
    .packed-switch -0x11
        :pswitch_5ea  #ffffffef
        :pswitch_5d0  #fffffff0
        :pswitch_568  #fffffff1
        :pswitch_535  #fffffff2
        :pswitch_4dc  #fffffff3
        :pswitch_49a  #fffffff4
        :pswitch_441  #fffffff5
        :pswitch_3fb  #fffffff6
        :pswitch_3c7  #fffffff7
        :pswitch_3a6  #fffffff8
        :pswitch_389  #fffffff9
        :pswitch_365  #fffffffa
        :pswitch_33f  #fffffffb
        :pswitch_31d  #fffffffc
        :pswitch_2f6  #fffffffd
        :pswitch_2d3  #fffffffe
        :pswitch_2c2  #ffffffff
        :pswitch_32  #00000000
        :pswitch_29e  #00000001
        :pswitch_272  #00000002
        :pswitch_259  #00000003
        :pswitch_22e  #00000004
        :pswitch_1d5  #00000005
        :pswitch_124  #00000006
        :pswitch_de  #00000007
        :pswitch_d9  #00000008
        :pswitch_7a  #00000009
        :pswitch_7a  #0000000a
        :pswitch_3c  #0000000b
        :pswitch_3c  #0000000c
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .registers 9

    sget-object v6, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    const/4 v3, -0x1

    const-string v4, "getPrototypeOf"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    iget v0, v0, Lorg/mozilla/javascript/Context;->version:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_22

    const/16 v3, -0x11

    const/4 v5, 0x2

    const-string/jumbo v4, "setPrototypeOf"

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    :cond_22
    const/4 v3, -0x2

    const/4 v5, 0x1

    const-string v4, "keys"

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x3

    const-string v4, "getOwnPropertyNames"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xe

    const-string v4, "getOwnPropertySymbols"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x4

    const/4 v5, 0x2

    const-string v4, "getOwnPropertyDescriptor"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x5

    const/4 v5, 0x3

    const-string v4, "defineProperty"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x6

    const/4 v5, 0x1

    const-string v4, "isExtensible"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x7

    const-string v4, "preventExtensions"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/4 v3, -0x8

    const/4 v5, 0x2

    const-string v4, "defineProperties"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x9

    const-string v4, "create"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xa

    const/4 v5, 0x1

    const-string v4, "isSealed"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xb

    const-string v4, "isFrozen"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xc

    const-string v4, "seal"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xd

    const-string v4, "freeze"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0xf

    const/4 v5, 0x2

    const-string v4, "assign"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    const/16 v3, -0x10

    const-string v4, "is"

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/16 v3, 0xb

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eq v0, v4, :cond_91

    const/16 v7, 0x74

    if-eq v0, v6, :cond_7a

    if-eq v0, v3, :cond_76

    const/16 v8, 0x10

    if-eq v0, v8, :cond_42

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3e

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3a

    const/16 v1, 0xe

    if-eq v0, v1, :cond_26

    goto/16 :goto_8e

    :cond_26
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_33

    const/4 v1, 0x5

    const-string v0, "hasOwnProperty"

    goto/16 :goto_95

    :cond_33
    if-ne v0, v7, :cond_8e

    const-string/jumbo v0, "toLocaleString"

    const/4 v1, 0x3

    goto :goto_95

    :cond_3a
    const-string v0, "isPrototypeOf"

    const/4 v1, 0x7

    goto :goto_95

    :cond_3e
    const/4 v1, 0x6

    const-string v0, "propertyIsEnumerable"

    goto :goto_95

    :cond_42
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x64

    const/16 v2, 0x53

    const/16 v4, 0x47

    if-ne v0, v1, :cond_60

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_59

    const/16 v1, 0x9

    const-string v0, "__defineGetter__"

    goto :goto_95

    :cond_59
    if-ne v0, v2, :cond_8e

    const/16 v1, 0xa

    const-string v0, "__defineSetter__"

    goto :goto_95

    :cond_60
    const/16 v1, 0x6c

    if-ne v0, v1, :cond_8e

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_6f

    const-string v0, "__lookupGetter__"

    const/16 v1, 0xb

    goto :goto_95

    :cond_6f
    if-ne v0, v2, :cond_8e

    const/16 v1, 0xc

    const-string v0, "__lookupSetter__"

    goto :goto_95

    :cond_76
    const/4 v1, 0x1

    const-string v0, "constructor"

    goto :goto_95

    :cond_7a
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x6f

    if-ne v0, v2, :cond_88

    const-string/jumbo v0, "toSource"

    const/16 v1, 0x8

    goto :goto_95

    :cond_88
    if-ne v0, v7, :cond_8e

    const-string/jumbo v0, "toString"

    goto :goto_95

    :cond_8e
    :goto_8e
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_95

    :cond_91
    const/4 v1, 0x4

    const-string/jumbo v0, "valueOf"

    :goto_95
    if-eqz v0, :cond_a0

    if-eq v0, p1, :cond_a0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a0

    goto :goto_a1

    :cond_a0
    move v5, v1

    :goto_a1
    return v5
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Object"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_40

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10  #0xc
    const-string v0, "__lookupSetter__"

    goto :goto_3a

    :pswitch_13  #0xb
    const-string v0, "__lookupGetter__"

    goto :goto_3a

    :pswitch_16  #0xa
    const-string v1, "__defineSetter__"

    goto :goto_1b

    :pswitch_19  #0x9
    const-string v1, "__defineGetter__"

    :goto_1b
    move-object v0, v1

    const/4 v2, 0x2

    goto :goto_3a

    :pswitch_1e  #0x8
    const-string/jumbo v0, "toSource"

    goto :goto_36

    :pswitch_22  #0x7
    const-string v0, "isPrototypeOf"

    goto :goto_3a

    :pswitch_25  #0x6
    const-string v0, "propertyIsEnumerable"

    goto :goto_3a

    :pswitch_28  #0x5
    const-string v0, "hasOwnProperty"

    goto :goto_3a

    :pswitch_2b  #0x4
    const-string/jumbo v0, "valueOf"

    goto :goto_36

    :pswitch_2f  #0x3
    const-string/jumbo v0, "toLocaleString"

    goto :goto_36

    :pswitch_33  #0x2
    const-string/jumbo v0, "toString"

    :goto_36
    const/4 v2, 0x0

    goto :goto_3a

    :pswitch_38  #0x1
    const-string v0, "constructor"

    :goto_3a
    sget-object v1, Lorg/mozilla/javascript/NativeObject;->OBJECT_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0, v2}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_33  #00000002
        :pswitch_2f  #00000003
        :pswitch_2b  #00000004
        :pswitch_28  #00000005
        :pswitch_25  #00000006
        :pswitch_22  #00000007
        :pswitch_1e  #00000008
        :pswitch_19  #00000009
        :pswitch_16  #0000000a
        :pswitch_13  #0000000b
        :pswitch_10  #0000000c
    .end packed-switch
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    new-instance v0, Lorg/mozilla/javascript/NativeObject$KeySet;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/NativeObject$KeySet;-><init>(Lorg/mozilla/javascript/NativeObject;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 2

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_e

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->delete(Ljava/lang/String;)V

    goto :goto_1b

    :cond_e
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1b

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->delete(I)V

    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    new-instance v0, Lorg/mozilla/javascript/NativeObject$ValueCollection;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/NativeObject$ValueCollection;-><init>(Lorg/mozilla/javascript/NativeObject;)V

    return-object v0
.end method
