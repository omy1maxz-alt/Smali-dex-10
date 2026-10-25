.class public final Lorg/mozilla/javascript/JavaAdapter;
.super Ljava/lang/Object;
.source "JavaAdapter.java"

# interfaces
.implements Lorg/mozilla/javascript/IdFunctionCall;


# static fields
.field private static final FTAG:Ljava/lang/Object;

.field private static final Id_JavaAdapter:I = 0x1


# direct methods
.method public static synthetic $r8$lambda$RhoMg7_DFZ5Wj5W_0fBedu9o0sQ(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;JLorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 7

    invoke-static/range {p0 .. p6}, Lorg/mozilla/javascript/JavaAdapter;->lambda$callMethod$0(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;JLorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jD16HtgOAwsZhTZ4dDuKKJahxQc(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/JavaAdapter;->lambda$runScript$1(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string v0, "JavaAdapter"

    sput-object v0, Lorg/mozilla/javascript/JavaAdapter;->FTAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendMethodSignature([Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/StringBuilder;)I
    .registers 8

    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1e

    aget-object v3, p0, v2

    invoke-static {p2, v3}, Lorg/mozilla/javascript/JavaAdapter;->appendTypeString(Ljava/lang/StringBuilder;Ljava/lang/Class;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_19

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_1b

    :cond_19
    add-int/lit8 v0, v0, 0x1

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1e
    const/16 p0, 0x29

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lorg/mozilla/javascript/JavaAdapter;->appendTypeString(Ljava/lang/StringBuilder;Ljava/lang/Class;)Ljava/lang/StringBuilder;

    return v0
.end method

.method private static appendOverridableMethods(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_5e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/JavaAdapter;->getMethodSignature(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_5b

    :cond_30
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_5b

    :cond_3d
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_47
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_53

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    :cond_53
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5b
    :goto_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5e
    return-void
.end method

.method private static appendTypeString(Ljava/lang/StringBuilder;Ljava/lang/Class;)Ljava/lang/StringBuilder;
    .registers 4

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1d

    const/16 p1, 0x5a

    goto :goto_31

    :cond_1d
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_24

    const/16 p1, 0x4a

    goto :goto_31

    :cond_24
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    :goto_31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4e

    :cond_35
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4e
    return-object p0
.end method

.method public static callMethod(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 14

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-nez p0, :cond_a

    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object p0

    :cond_a
    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-nez v0, :cond_19

    invoke-static {p0, p2, v1, p1, p3}, Lorg/mozilla/javascript/Context;->call(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_19
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_28

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/JavaAdapter;->doCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_28
    new-instance v7, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/ContextFactory;->call(Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convertResult(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne p0, v0, :cond_e

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-eq p1, v0, :cond_e

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-eq p1, v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    invoke-static {p0, p1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static createAdapterCode(Lorg/mozilla/javascript/ObjToIntMap;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/String;)[B
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p3

    move-object/from16 v1, p4

    new-instance v9, Lorg/mozilla/classfile/ClassFileWriter;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<adapter>"

    invoke-direct {v9, v8, v2, v3}, Lorg/mozilla/classfile/ClassFileWriter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "factory"

    const-string v3, "Lorg/mozilla/javascript/ContextFactory;"

    const/16 v4, 0x11

    invoke-virtual {v9, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v2, "delegee"

    const-string v3, "Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {v9, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    const-string v2, "self"

    invoke-virtual {v9, v2, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addField(Ljava/lang/String;Ljava/lang/String;S)V

    if-nez v7, :cond_2c

    const/4 v11, 0x0

    goto :goto_2e

    :cond_2c
    array-length v2, v7

    move v11, v2

    :goto_2e
    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v11, :cond_41

    aget-object v3, v7, v2

    if-eqz v3, :cond_3e

    aget-object v3, v7, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInterface(Ljava/lang/String;)V

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_41
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_53
    if-ge v4, v3, :cond_6d

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v13

    if-nez v13, :cond_67

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v6

    if-eqz v6, :cond_6a

    :cond_67
    invoke-static {v9, v8, v12, v5}, Lorg/mozilla/javascript/JavaAdapter;->generateCtor(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Constructor;)V

    :cond_6a
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    :cond_6d
    invoke-static {v9, v8, v12}, Lorg/mozilla/javascript/JavaAdapter;->generateSerialCtor(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_75

    invoke-static {v9, v8, v12, v1}, Lorg/mozilla/javascript/JavaAdapter;->generateEmptyCtor(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    new-instance v13, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v13}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    new-instance v14, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v14}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    const/4 v15, 0x0

    :goto_80
    if-ge v15, v11, :cond_108

    aget-object v1, v7, v15

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v5, 0x0

    :goto_89
    array-length v1, v6

    if-ge v5, v1, :cond_104

    aget-object v1, v6, v5

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_fb

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-nez v2, :cond_fb

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_a5

    goto :goto_fb

    :cond_a5
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    move-object/from16 v2, p2

    :try_start_b5
    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_b8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b5 .. :try_end_b8} :catch_b9

    goto :goto_fb

    :catch_b9
    nop

    goto :goto_bd

    :cond_bb
    move-object/from16 v2, p2

    :goto_bd
    invoke-static {v1, v3}, Lorg/mozilla/javascript/JavaAdapter;->getMethodSignature(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v16

    const/16 v17, 0x1

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v18, v3

    move-object v3, v4

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    move/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v6

    move/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/JavaAdapter;->generateMethod(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)V

    const/4 v1, 0x0

    invoke-virtual {v13, v10, v1}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    move-object/from16 v2, v19

    invoke-virtual {v14, v2, v1}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    goto :goto_ff

    :cond_fb
    :goto_fb
    move/from16 v18, v5

    move-object/from16 v16, v6

    :goto_ff
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v6, v16

    goto :goto_89

    :cond_104
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_80

    :cond_108
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/JavaAdapter;->getOverridableMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x0

    :goto_10d
    array-length v1, v10

    if-ge v11, v1, :cond_182

    aget-object v7, v10, v11

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v15

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v15, :cond_126

    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_178

    :cond_126
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-static {v7, v5}, Lorg/mozilla/javascript/JavaAdapter;->getMethodSignature(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_178

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v16

    const/16 v17, 0x1

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v8, v3

    move-object v3, v6

    move-object/from16 v18, v4

    move-object v4, v5

    move-object/from16 v19, v5

    move-object/from16 v5, v16

    move-object/from16 p2, v10

    move-object v10, v6

    move/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/JavaAdapter;->generateMethod(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)V

    const/4 v6, 0x0

    invoke-virtual {v13, v8, v6}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    invoke-virtual {v14, v10, v6}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    if-nez v15, :cond_17a

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v4, v10

    move-object/from16 v5, v18

    const/4 v8, 0x0

    move-object/from16 v6, v19

    invoke-static/range {v1 .. v7}, Lorg/mozilla/javascript/JavaAdapter;->generateSuper(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_17b

    :cond_178
    move-object/from16 p2, v10

    :cond_17a
    const/4 v8, 0x0

    :goto_17b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    goto :goto_10d

    :cond_182
    const/4 v8, 0x0

    new-instance v6, Lorg/mozilla/javascript/ObjToIntMap$Iterator;

    invoke-direct {v6, v0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;-><init>(Lorg/mozilla/javascript/ObjToIntMap;)V

    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->start()V

    :goto_18b
    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->done()Z

    move-result v0

    if-nez v0, :cond_1bc

    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v14, v2}, Lorg/mozilla/javascript/ObjToIntMap;->has(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19f

    goto :goto_1b8

    :cond_19f
    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getValue()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_1a6
    if-ge v1, v0, :cond_1af

    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a6

    :cond_1af
    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/JavaAdapter;->generateMethod(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)V

    :goto_1b8
    invoke-virtual {v6}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->next()V

    goto :goto_18b

    :cond_1bc
    invoke-virtual {v9}, Lorg/mozilla/classfile/ClassFileWriter;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static createAdapterWrapper(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 6

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/NativeJavaObject;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, p1, v2, v3}, Lorg/mozilla/javascript/NativeJavaObject;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;Z)V

    invoke-virtual {v1, p0}, Lorg/mozilla/javascript/NativeJavaObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-object v1
.end method

.method private static doCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 13

    const/4 v0, 0x0

    :goto_1
    array-length v1, p4

    if-eq v0, v1, :cond_22

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    int-to-long v3, v3

    and-long/2addr v3, p5

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1f

    aget-object v1, p4, v0

    instance-of v2, v1, Lorg/mozilla/javascript/Scriptable;

    if-nez v2, :cond_1f

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, p1, v1, v3}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p4, v0

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_22
    invoke-interface {p3, p0, p1, p2, p4}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static generateCtor(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Constructor;)V
    .registers 15

    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length v0, p3

    const/16 v1, 0xb7

    const/4 v2, 0x3

    const-string v3, "<init>"

    const/4 v4, 0x1

    const/16 v5, 0x2a

    if-nez v0, :cond_1d

    const-string p3, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ContextFactory;)V"

    invoke-virtual {p0, v3, p3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string p3, "()V"

    invoke-virtual {p0, v1, p2, v3, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ContextFactory;"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    array-length v7, p3

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2b
    if-ge v9, v7, :cond_35

    aget-object v10, p3, v9

    invoke-static {v0, v10}, Lorg/mozilla/javascript/JavaAdapter;->appendTypeString(Ljava/lang/StringBuilder;Ljava/lang/Class;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    :cond_35
    const-string v7, ")V"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v7, v4}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    invoke-virtual {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    array-length v7, p3

    :goto_45
    if-ge v8, v7, :cond_52

    aget-object v9, p3, v8

    invoke-static {p0, v2, v9}, Lorg/mozilla/javascript/JavaAdapter;->generatePushParam(Lorg/mozilla/classfile/ClassFileWriter;ILjava/lang/Class;)I

    move-result v9

    add-int/2addr v2, v9

    int-to-short v2, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_45

    :cond_52
    invoke-virtual {v0, v4, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v1, p2, v3, p3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5c
    invoke-virtual {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 p2, 0x2b

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 p3, 0xb5

    const-string v0, "delegee"

    const-string v1, "Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, p3, p1, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string v0, "factory"

    const-string v3, "Lorg/mozilla/javascript/ContextFactory;"

    invoke-virtual {p0, p3, p1, v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 p2, 0xb8

    const-string v0, "org/mozilla/javascript/JavaAdapter"

    const-string v3, "createAdapterWrapper"

    const-string v4, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, p2, v0, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "self"

    invoke-virtual {p0, p3, p1, p2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private static generateEmptyCtor(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string v0, "<init>"

    const-string v1, "()V"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/16 v3, 0x2a

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 v4, 0xb7

    invoke-virtual {p0, v4, p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 p2, 0xb5

    const-string v2, "factory"

    const-string v5, "Lorg/mozilla/javascript/ContextFactory;"

    invoke-virtual {p0, p2, p1, v2, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xbb

    invoke-virtual {p0, v2, p3}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    const/16 v2, 0x59

    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v4, p3, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0xb8

    const-string v0, "org/mozilla/javascript/JavaAdapter"

    const-string v1, "runScript"

    const-string v2, "(Lorg/mozilla/javascript/Script;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, p3, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x4c

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string v2, "delegee"

    const-string v4, "Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, p2, p1, v2, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string v1, "createAdapterWrapper"

    const-string v2, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, p3, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "self"

    invoke-virtual {p0, p2, p1, p3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private static generateMethod(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)V
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p4, v0}, Lorg/mozilla/javascript/JavaAdapter;->appendMethodSignature([Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/StringBuilder;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, p2, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 v3, 0xb4

    const-string v4, "factory"

    const-string v5, "Lorg/mozilla/javascript/ContextFactory;"

    invoke-virtual {p0, v3, p1, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string v4, "self"

    const-string v5, "Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, v3, p1, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string v0, "delegee"

    invoke-virtual {p0, v3, p1, v0, v5}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(Ljava/lang/String;)V

    const/16 p1, 0xb8

    const-string p2, "org/mozilla/javascript/JavaAdapter"

    const-string v0, "getFunction"

    const-string v3, "(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;"

    invoke-virtual {p0, p1, p2, v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p3

    invoke-static {p0, p3, v0}, Lorg/mozilla/javascript/JavaAdapter;->generatePushWrappedArgs(Lorg/mozilla/classfile/ClassFileWriter;[Ljava/lang/Class;I)V

    array-length v0, p3

    const/16 v3, 0x40

    if-gt v0, v3, :cond_6f

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    :goto_4b
    array-length v5, p3

    if-eq v0, v5, :cond_5d

    aget-object v5, p3, v0

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_5a

    shl-int v5, v2, v0

    int-to-long v5, v5

    or-long/2addr v3, v5

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_5d
    invoke-virtual {p0, v3, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(J)V

    const-string p3, "callMethod"

    const-string v0, "(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)Ljava/lang/Object;"

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p4, p5}, Lorg/mozilla/javascript/JavaAdapter;->generateReturnResult(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/Class;Z)V

    int-to-short p1, v1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void

    :cond_6f
    const-string p0, "JavaAdapter can not subclass methods with more then 64 arguments."

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    goto :goto_77

    :goto_76
    throw p0

    :goto_77
    goto :goto_76
.end method

.method private static generatePopResult(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/Class;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_39

    const/16 v0, 0x69

    if-eq p1, v0, :cond_33

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x73

    if-eq p1, v0, :cond_33

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_33

    packed-switch p1, :pswitch_data_46

    goto :goto_44

    :pswitch_27  #0x64
    const/16 p1, 0xaf

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_44

    :cond_2d
    const/16 p1, 0xad

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_44

    :cond_33
    :pswitch_33  #0x62, 0x63
    const/16 p1, 0xac

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_44

    :cond_39
    const/16 p1, 0xae

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_44

    :cond_3f
    const/16 p1, 0xb0

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x62
        :pswitch_33  #00000062
        :pswitch_33  #00000063
        :pswitch_27  #00000064
    .end packed-switch
.end method

.method private static generatePushParam(Lorg/mozilla/classfile/ClassFileWriter;ILjava/lang/Class;)I
    .registers 6

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    return v1

    :cond_b
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x66

    if-eq p2, v0, :cond_3d

    const/16 v0, 0x69

    if-eq p2, v0, :cond_39

    const/16 v0, 0x6c

    const/4 v2, 0x2

    if-eq p2, v0, :cond_35

    const/16 v0, 0x73

    if-eq p2, v0, :cond_39

    const/16 v0, 0x7a

    if-eq p2, v0, :cond_39

    packed-switch p2, :pswitch_data_42

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_31  #0x64
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addDLoad(I)V

    return v2

    :cond_35
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLLoad(I)V

    return v2

    :cond_39
    :pswitch_39  #0x62, 0x63
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addILoad(I)V

    return v1

    :cond_3d
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addFLoad(I)V

    return v1

    nop

    :pswitch_data_42
    .packed-switch 0x62
        :pswitch_39  #00000062
        :pswitch_39  #00000063
        :pswitch_31  #00000064
    .end packed-switch
.end method

.method static generatePushWrappedArgs(Lorg/mozilla/classfile/ClassFileWriter;[Ljava/lang/Class;I)V
    .registers 5

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    const/16 p2, 0xbd

    const-string v0, "java/lang/Object"

    invoke-virtual {p0, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    :goto_c
    array-length v1, p1

    if-eq v0, v1, :cond_26

    const/16 v1, 0x59

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addPush(I)V

    aget-object v1, p1, v0

    invoke-static {p0, p2, v1}, Lorg/mozilla/javascript/JavaAdapter;->generateWrapArg(Lorg/mozilla/classfile/ClassFileWriter;ILjava/lang/Class;)I

    move-result v1

    add-int/2addr p2, v1

    const/16 v1, 0x53

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_26
    return-void
.end method

.method static generateReturnResult(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/Class;Z)V
    .registers 7

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_10

    const/16 p1, 0x57

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 p1, 0xb1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_d8

    :cond_10
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v1, 0xac

    const-string v2, "org/mozilla/javascript/Context"

    const/16 v3, 0xb8

    if-ne p1, v0, :cond_27

    const-string/jumbo p1, "toBoolean"

    const-string p2, "(Ljava/lang/Object;)Z"

    invoke-virtual {p0, v3, v2, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_d8

    :cond_27
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_47

    const-string/jumbo p1, "toString"

    const-string p2, "(Ljava/lang/Object;)Ljava/lang/String;"

    invoke-virtual {p0, v3, v2, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 p1, 0xb6

    const-string p2, "java/lang/String"

    const-string v0, "charAt"

    const-string v2, "(I)C"

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto/16 :goto_d8

    :cond_47
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b3

    const-string/jumbo p2, "toNumber"

    const-string v0, "(Ljava/lang/Object;)D"

    invoke-virtual {p0, v3, v2, p2, v0}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x62

    if-eq p2, v0, :cond_aa

    const/16 v0, 0x64

    if-eq p2, v0, :cond_a4

    const/16 v0, 0x66

    if-eq p2, v0, :cond_99

    const/16 v0, 0x69

    if-eq p2, v0, :cond_aa

    const/16 v0, 0x6c

    if-eq p2, v0, :cond_8e

    const/16 v0, 0x73

    if-ne p2, v0, :cond_77

    goto :goto_aa

    :cond_77
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected return type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8e
    const/16 p1, 0x8f

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 p1, 0xad

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_d8

    :cond_99
    const/16 p1, 0x90

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 p1, 0xae

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_d8

    :cond_a4
    const/16 p1, 0xaf

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_d8

    :cond_aa
    :goto_aa
    const/16 p1, 0x8e

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_d8

    :cond_b3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_ce

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addLoadConstant(Ljava/lang/String;)V

    const-string p2, "java/lang/Class"

    const-string v0, "forName"

    const-string v1, "(Ljava/lang/String;)Ljava/lang/Class;"

    invoke-virtual {p0, v3, p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "org/mozilla/javascript/JavaAdapter"

    const-string v0, "convertResult"

    const-string v1, "(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;"

    invoke-virtual {p0, v3, p2, v0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ce
    const/16 p2, 0xc0

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    const/16 p1, 0xb0

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_d8
    return-void
.end method

.method private static generateSerialCtor(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "<init>"

    const-string v1, "(Lorg/mozilla/javascript/ContextFactory;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/16 v1, 0x2a

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 v2, 0xb7

    const-string v3, "()V"

    invoke-virtual {p0, v2, p2, v0, v3}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 p2, 0x2b

    invoke-virtual {p0, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 p2, 0xb5

    const-string v0, "factory"

    const-string v2, "Lorg/mozilla/javascript/ContextFactory;"

    invoke-virtual {p0, p2, p1, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string v0, "delegee"

    const-string v2, "Lorg/mozilla/javascript/Scriptable;"

    invoke-virtual {p0, p2, p1, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const-string v0, "self"

    invoke-virtual {p0, p2, p1, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private static generateSuper(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 11

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "super$"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p4, v0}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    const/16 p1, 0x19

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    array-length p1, p5

    const/4 v2, 0x1

    :goto_1e
    if-ge v1, p1, :cond_2a

    aget-object v3, p5, v1

    invoke-static {p0, v2, v3}, Lorg/mozilla/javascript/JavaAdapter;->generatePushParam(Lorg/mozilla/classfile/ClassFileWriter;ILjava/lang/Class;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2a
    const/16 p1, 0xb7

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    invoke-static {p0, p6}, Lorg/mozilla/javascript/JavaAdapter;->generatePopResult(Lorg/mozilla/classfile/ClassFileWriter;Ljava/lang/Class;)V

    goto :goto_40

    :cond_3b
    const/16 p1, 0xb1

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_40
    add-int/2addr v2, v0

    int-to-short p1, v2

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    return-void
.end method

.method private static generateWrapArg(Lorg/mozilla/classfile/ClassFileWriter;ILjava/lang/Class;)I
    .registers 10

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    const/16 p2, 0x19

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    goto/16 :goto_96

    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "<init>"

    const/16 v3, 0xb7

    const/16 v4, 0x59

    const/16 v5, 0xbb

    const/16 v6, 0x15

    if-ne p2, v0, :cond_2d

    const-string p2, "java/lang/Boolean"

    invoke-virtual {p0, v5, p2}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p0, v6, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const-string p1, "(Z)V"

    invoke-virtual {p0, v3, p2, v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96

    :cond_2d
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_41

    invoke-virtual {p0, v6, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const/16 p1, 0xb8

    const-string p2, "java/lang/String"

    const-string/jumbo v0, "valueOf"

    const-string v2, "(C)Ljava/lang/String;"

    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96

    :cond_41
    const-string v0, "java/lang/Double"

    invoke-virtual {p0, v5, v0}, Lorg/mozilla/classfile/ClassFileWriter;->add(ILjava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v4, 0x62

    const/4 v5, 0x2

    if-eq p2, v4, :cond_89

    const/16 v4, 0x64

    if-eq p2, v4, :cond_82

    const/16 v4, 0x66

    if-eq p2, v4, :cond_77

    const/16 v4, 0x69

    if-eq p2, v4, :cond_89

    const/16 v4, 0x6c

    if-eq p2, v4, :cond_6c

    const/16 v4, 0x73

    if-eq p2, v4, :cond_89

    goto :goto_91

    :cond_6c
    const/16 p2, 0x16

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const/16 p1, 0x8a

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_87

    :cond_77
    const/16 p2, 0x17

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const/16 p1, 0x8d

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    goto :goto_91

    :cond_82
    const/16 p2, 0x18

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    :goto_87
    const/4 v1, 0x2

    goto :goto_91

    :cond_89
    invoke-virtual {p0, v6, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(II)V

    const/16 p1, 0x87

    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    :goto_91
    const-string p1, "(D)V"

    invoke-virtual {p0, v3, v0, v2, p1}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_96
    return v1
.end method

.method private static getAdapterClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;[Ljava/lang/Class;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Class;
    .registers 8

    invoke-static {p0}, Lorg/mozilla/javascript/ClassCache;->get(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ClassCache;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ClassCache;->getInterfaceAdapterCacheMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p3}, Lorg/mozilla/javascript/JavaAdapter;->getObjectFunctionNames(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ObjToIntMap;

    move-result-object p3

    new-instance v1, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;

    invoke-direct {v1, p1, p2, p3}, Lorg/mozilla/javascript/JavaAdapter$JavaAdapterSignature;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lorg/mozilla/javascript/ObjToIntMap;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-nez v2, :cond_40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ClassCache;->newClassSerialNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p3, v2, p1, p2, v3}, Lorg/mozilla/javascript/JavaAdapter;->createAdapterCode(Lorg/mozilla/javascript/ObjToIntMap;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v2, p1}, Lorg/mozilla/javascript/JavaAdapter;->loadAdapterClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mozilla/javascript/ClassCache;->isCachingEnabled()Z

    move-result p0

    if-eqz p0, :cond_40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    return-object v2
.end method

.method public static getAdapterSelf(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const-string v0, "self"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static getArgsToConvert([Ljava/lang/Class;)[I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    array-length v3, p0

    if-eq v1, v3, :cond_13

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_10

    add-int/lit8 v2, v2, 0x1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_13
    if-nez v2, :cond_17

    const/4 p0, 0x0

    return-object p0

    :cond_17
    new-array v1, v2, [I

    const/4 v2, 0x0

    :goto_1a
    array-length v3, p0

    if-eq v0, v3, :cond_2d

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_2a

    add-int/lit8 v3, v2, 0x1

    aput v0, v1, v2

    move v2, v3

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2d
    return-object v1
.end method

.method public static getFunction(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;
    .registers 3

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    instance-of v0, p0, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_11

    check-cast p0, Lorg/mozilla/javascript/Function;

    return-object p0

    :cond_11
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static getMethodSignature(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lorg/mozilla/javascript/JavaAdapter;->appendMethodSignature([Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/StringBuilder;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getObjectFunctionNames(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ObjToIntMap;
    .registers 8

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getPropertyIds(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/ObjToIntMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    array-length v4, v0

    if-eq v3, v4, :cond_37

    aget-object v4, v0, v3

    instance-of v4, v4, Ljava/lang/String;

    if-nez v4, :cond_16

    goto :goto_34

    :cond_16
    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lorg/mozilla/javascript/Function;

    if-eqz v6, :cond_34

    check-cast v5, Lorg/mozilla/javascript/Function;

    const-string v6, "length"

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_31

    const/4 v5, 0x0

    :cond_31
    invoke-virtual {v1, v4, v5}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_37
    return-object v1
.end method

.method static getOverridableMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v2, p0

    :goto_b
    if-eqz v2, :cond_15

    invoke-static {v2, v0, v1}, Lorg/mozilla/javascript/JavaAdapter;->appendOverridableMethods(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_b

    :cond_15
    :goto_15
    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_27

    aget-object v5, v2, v4

    invoke-static {v5, v0, v1}, Lorg/mozilla/javascript/JavaAdapter;->appendOverridableMethods(Ljava/lang/Class;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_27
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_15

    :cond_2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/reflect/Method;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 10

    new-instance v1, Lorg/mozilla/javascript/JavaAdapter;

    invoke-direct {v1}, Lorg/mozilla/javascript/JavaAdapter;-><init>()V

    new-instance p0, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v2, Lorg/mozilla/javascript/JavaAdapter;->FTAG:Ljava/lang/Object;

    const/4 v3, 0x1

    const-string v4, "JavaAdapter"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdFunctionObject;->markAsConstructor(Lorg/mozilla/javascript/Scriptable;)V

    if-eqz p2, :cond_1b

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_1b
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    return-void
.end method

.method static js_createAdapter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    array-length v0, p2

    if-eqz v0, :cond_e7

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_26

    aget-object v3, p2, v2

    instance-of v4, v3, Lorg/mozilla/javascript/NativeObject;

    if-eqz v4, :cond_10

    goto :goto_26

    :cond_10
    instance-of v4, v3, Lorg/mozilla/javascript/NativeJavaClass;

    if-eqz v4, :cond_17

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_17
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.not.java.class.arg"

    invoke-static {p2, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_26
    :goto_26
    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2b
    if-ge v5, v2, :cond_56

    aget-object v7, p2, v5

    check-cast v7, Lorg/mozilla/javascript/NativeJavaClass;

    invoke-virtual {v7}, Lorg/mozilla/javascript/NativeJavaClass;->getClassObject()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isInterface()Z

    move-result v8

    if-nez v8, :cond_4e

    if-nez v3, :cond_3f

    move-object v3, v7

    goto :goto_53

    :cond_3f
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.only.one.super"

    invoke-static {p2, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    :cond_4e
    add-int/lit8 v8, v6, 0x1

    aput-object v7, v4, v6

    move v6, v8

    :goto_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_56
    if-nez v3, :cond_5a

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    :cond_5a
    new-array v5, v6, [Ljava/lang/Class;

    invoke-static {v4, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v4, p2, v2

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    invoke-static {p1, v3, v5, v4}, Lorg/mozilla/javascript/JavaAdapter;->getAdapterClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;[Ljava/lang/Class;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Class;

    move-result-object v3

    sub-int/2addr v0, v2

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    const/4 v6, 0x2

    if-lez v0, :cond_a6

    add-int/lit8 v7, v0, 0x2

    :try_start_71
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v1

    aput-object v1, v7, v5

    add-int/2addr v2, v5

    invoke-static {p2, v2, v7, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/mozilla/javascript/NativeJavaClass;

    invoke-direct {v0, p1, v3, v5}, Lorg/mozilla/javascript/NativeJavaClass;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Z)V

    iget-object v0, v0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->ctors:Lorg/mozilla/javascript/NativeJavaMethod;

    invoke-virtual {v0, p0, v7}, Lorg/mozilla/javascript/NativeJavaMethod;->findCachedFunction(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_97

    iget-object p2, v0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object p0, p2, p0

    invoke-static {v7, p0}, Lorg/mozilla/javascript/NativeJavaClass;->constructInternal([Ljava/lang/Object;Lorg/mozilla/javascript/MemberBox;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_c2

    :cond_97
    invoke-static {p2}, Lorg/mozilla/javascript/NativeJavaMethod;->scriptSignature([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.no.java.ctor"

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_a6
    new-array p2, v6, [Ljava/lang/Class;

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    aput-object v0, p2, v1

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ContextFactoryClass:Ljava/lang/Class;

    aput-object v0, p2, v5

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v4, v0, v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object p0

    aput-object p0, v0, v5

    invoke-virtual {v3, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_c2
    invoke-static {v3, p0}, Lorg/mozilla/javascript/JavaAdapter;->getAdapterSelf(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Lorg/mozilla/javascript/Wrapper;

    if-eqz p2, :cond_e0

    move-object p2, p0

    check-cast p2, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p2}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_e0

    instance-of p0, p2, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz p0, :cond_df

    move-object p0, p2

    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_df} :catch_e1

    :cond_df
    return-object p2

    :cond_e0
    return-object p0

    :catch_e1
    move-exception p0

    invoke-static {p0}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_e7
    const-string p0, "msg.adapter.zero.args"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    goto :goto_ef

    :goto_ee
    throw p0

    :goto_ef
    goto :goto_ee
.end method

.method private static synthetic lambda$callMethod$0(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;JLorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 14

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/JavaAdapter;->doCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$runScript$1(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;
    .registers 3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getGlobal(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/mozilla/javascript/Script;->exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    return-object v0
.end method

.method static loadAdapterClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .registers 6

    invoke-static {}, Lorg/mozilla/javascript/SecurityController;->getStaticSecurityDomainClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/security/CodeSource;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    const-class v1, Ljava/security/ProtectionDomain;

    if-ne v0, v1, :cond_e

    goto :goto_10

    :cond_e
    :goto_e
    move-object v1, v2

    goto :goto_28

    :cond_10
    :goto_10
    invoke-static {}, Lorg/mozilla/javascript/SecurityUtilities;->getScriptProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v1

    if-nez v1, :cond_1c

    const-class v1, Lorg/mozilla/javascript/JavaAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v1

    :cond_1c
    const-class v3, Ljava/security/CodeSource;

    if-ne v0, v3, :cond_28

    if-nez v1, :cond_23

    goto :goto_e

    :cond_23
    invoke-virtual {v1}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v0

    move-object v1, v0

    :cond_28
    :goto_28
    invoke-static {v2, v1}, Lorg/mozilla/javascript/SecurityController;->createLoader(Ljava/lang/ClassLoader;Ljava/lang/Object;)Lorg/mozilla/javascript/GeneratedClassLoader;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/mozilla/javascript/GeneratedClassLoader;->defineClass(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/mozilla/javascript/GeneratedClassLoader;->linkClass(Ljava/lang/Class;)V

    return-object p0
.end method

.method public static readAdapterObject(Lorg/mozilla/javascript/Scriptable;Ljava/io/ObjectInputStream;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_21
    array-length v6, v2

    if-ge v5, v6, :cond_2f

    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_2f
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0, v1, v3, p1}, Lorg/mozilla/javascript/JavaAdapter;->getAdapterClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;[Ljava/lang/Class;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->ContextFactoryClass:Ljava/lang/Class;

    aput-object v5, v3, v4

    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v7, 0x2

    aput-object v5, v3, v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p1, v2, v6

    aput-object p0, v2, v7

    :try_start_50
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_58
    .catch Ljava/lang/InstantiationException; {:try_start_50 .. :try_end_58} :catch_59
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_58} :catch_59
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_50 .. :try_end_58} :catch_59
    .catch Ljava/lang/NoSuchMethodException; {:try_start_50 .. :try_end_58} :catch_59

    return-object p0

    :catch_59
    new-instance p0, Ljava/lang/ClassNotFoundException;

    const-string p1, "adapter"

    invoke-direct {p0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_62

    :goto_61
    throw p0

    :goto_62
    goto :goto_61
.end method

.method public static runScript(Lorg/mozilla/javascript/Script;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    new-instance v1, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/mozilla/javascript/Script;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ContextFactory;->call(Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    return-object p0
.end method

.method public static writeAdapterObject(Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_17
    array-length v4, v1

    if-ge v3, v4, :cond_25

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_25
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :try_start_28
    const-string v1, "delegee"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_35} :catch_36
    .catch Ljava/lang/NoSuchFieldException; {:try_start_28 .. :try_end_35} :catch_36

    return-void

    :catch_36
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    goto :goto_3d

    :goto_3c
    throw p0

    :goto_3d
    goto :goto_3c
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object p4, Lorg/mozilla/javascript/JavaAdapter;->FTAG:Ljava/lang/Object;

    invoke-virtual {p1, p4}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_14

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_14

    invoke-static {p2, p3, p5}, Lorg/mozilla/javascript/JavaAdapter;->js_createAdapter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_14
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->unknown()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
