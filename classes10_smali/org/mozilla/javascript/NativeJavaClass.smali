.class public Lorg/mozilla/javascript/NativeJavaClass;
.super Lorg/mozilla/javascript/NativeJavaObject;
.source "NativeJavaClass.java"

# interfaces
.implements Lorg/mozilla/javascript/Function;


# static fields
.field static final javaClassPropertyName:Ljava/lang/String; = "__javaObject__"

.field private static final serialVersionUID:J = -0x59a93e92bdc24ba0L


# instance fields
.field private staticFieldAndMethods:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeJavaObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/NativeJavaClass;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/NativeJavaObject;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;Z)V

    return-void
.end method

.method static constructInternal([Ljava/lang/Object;Lorg/mozilla/javascript/MemberBox;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p1, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    iget-boolean v1, p1, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_78

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_b
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1d

    aget-object v4, p0, v3

    aget-object v5, v0, v3

    invoke-static {v4, v5}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1d
    array-length v3, p0

    array-length v4, v0

    if-ne v3, v4, :cond_49

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p0, v3

    if-eqz v3, :cond_3a

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p0, v3

    instance-of v3, v3, Lorg/mozilla/javascript/NativeArray;

    if-nez v3, :cond_3a

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p0, v3

    instance-of v3, v3, Lorg/mozilla/javascript/NativeJavaArray;

    if-eqz v3, :cond_49

    :cond_3a
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object p0, p0, v2

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-static {p0, v2}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_72

    :cond_49
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    array-length v4, p0

    array-length v5, v0

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    :goto_5b
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-ge v2, v5, :cond_71

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v5, v2

    aget-object v5, p0, v5

    invoke-static {v5, v3}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_71
    move-object p0, v4

    :goto_72
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aput-object p0, v1, v0

    goto :goto_93

    :cond_78
    move-object v1, p0

    :goto_79
    array-length v3, v1

    if-ge v2, v3, :cond_93

    aget-object v3, v1, v2

    aget-object v4, v0, v2

    invoke-static {v3, v4}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_90

    if-ne v1, p0, :cond_8e

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    :cond_8e
    aput-object v4, v1, v2

    :cond_90
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    :cond_93
    :goto_93
    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/MemberBox;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructSpecific(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/MemberBox;)Lorg/mozilla/javascript/Scriptable;
    .registers 4

    invoke-static {p2, p3}, Lorg/mozilla/javascript/NativeJavaClass;->constructInternal([Ljava/lang/Object;Lorg/mozilla/javascript/MemberBox;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object p3

    invoke-virtual {p3, p0, p1, p2}, Lorg/mozilla/javascript/WrapFactory;->wrapNewObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method private static findNestedClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-nez p0, :cond_23

    invoke-static {p1}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_23
    invoke-static {p0, p1}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    array-length p3, p4

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2b

    const/4 p3, 0x0

    aget-object v0, p4, p3

    instance-of v0, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaClass;->getClassObject()Ljava/lang/Class;

    move-result-object v0

    aget-object p3, p4, p3

    check-cast p3, Lorg/mozilla/javascript/Scriptable;

    :cond_13
    instance-of v1, p3, Lorg/mozilla/javascript/Wrapper;

    if-eqz v1, :cond_25

    move-object v1, p3

    check-cast v1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {v1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    return-object p3

    :cond_25
    invoke-interface {p3}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    if-nez p3, :cond_13

    :cond_2b
    invoke-virtual {p0, p1, p2, p4}, Lorg/mozilla/javascript/NativeJavaClass;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 9

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaClass;->getClassObject()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v2

    if-nez v2, :cond_36

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_36

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v1, v1, Lorg/mozilla/javascript/JavaMembers;->ctors:Lorg/mozilla/javascript/NativeJavaMethod;

    invoke-virtual {v1, p1, p3}, Lorg/mozilla/javascript/NativeJavaMethod;->findCachedFunction(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_27

    iget-object v0, v1, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    aget-object v0, v0, v2

    invoke-static {p1, p2, p3, v0}, Lorg/mozilla/javascript/NativeJavaClass;->constructSpecific(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/MemberBox;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_27
    invoke-static {p3}, Lorg/mozilla/javascript/NativeJavaMethod;->scriptSignature([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "msg.no.java.ctor"

    invoke-static {p3, p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_36
    array-length v1, p3

    if-eqz v1, :cond_96

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    :try_start_3d
    const-string v2, "Dalvik"

    const-string v3, "java.vm.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_66

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_66

    aget-object p3, p3, v3

    invoke-static {p3}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptableObject(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p3

    invoke-static {v0, p3}, Lorg/mozilla/javascript/NativeJavaObject;->createInterfaceAdapter(Ljava/lang/Class;Lorg/mozilla/javascript/ScriptableObject;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Lorg/mozilla/javascript/WrapFactory;->wrapAsJavaObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_66
    const-string p2, "JavaAdapter"

    invoke-interface {v1, p2, v1}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p2, v2, :cond_89

    check-cast p2, Lorg/mozilla/javascript/Function;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    const/4 v4, 0x1

    aget-object p3, p3, v3

    aput-object p3, v2, v4

    invoke-interface {p2, p1, v1, v2}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_80} :catch_81

    return-object p1

    :catch_81
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_89

    goto :goto_8b

    :cond_89
    const-string p1, ""

    :goto_8b
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "msg.cant.instantiate"

    invoke-static {p3, p1, p2}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_96
    const-string p1, "msg.adapter.zero.args"

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 6

    const-string v0, "prototype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaClass;->staticFieldAndMethods:Ljava/util/Map;

    if-eqz v0, :cond_15

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    return-object v0

    :cond_15
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/JavaMembers;->has(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    invoke-virtual {p2, p0, p1, v0, v1}, Lorg/mozilla/javascript/JavaMembers;->get(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_27
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v1

    const-string v2, "__javaObject__"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object p1, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ClassClass:Ljava/lang/Class;

    invoke-virtual {v1, v0, p2, p1, v2}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_44
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaClass;->getClassObject()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/mozilla/javascript/NativeJavaClass;->findNestedClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_56

    invoke-virtual {v1, v0, p2, v2}, Lorg/mozilla/javascript/WrapFactory;->wrapJavaClass(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/mozilla/javascript/Scriptable;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    return-object p1

    :cond_56
    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    invoke-virtual {p2, p1}, Lorg/mozilla/javascript/JavaMembers;->reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "JavaClass"

    return-object v0
.end method

.method public getClassObject()Ljava/lang/Class;
    .registers 2

    invoke-super {p0}, Lorg/mozilla/javascript/NativeJavaObject;->unwrap()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_16

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    goto :goto_16

    :cond_7
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_e

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_e
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_15

    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    return-object p1

    :cond_15
    return-object p0

    :cond_16
    :goto_16
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaClass;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIds()[Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/JavaMembers;->getIds(Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 4

    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/javascript/JavaMembers;->has(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_13

    const-string p2, "__javaObject__"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :cond_13
    :goto_13
    return v0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .registers 3

    instance-of v0, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_17

    instance-of v0, p1, Lorg/mozilla/javascript/NativeJavaClass;

    if-nez v0, :cond_17

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaClass;->getClassObject()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method protected initMembers()V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->parent:Lorg/mozilla/javascript/Scriptable;

    iget-boolean v2, p0, Lorg/mozilla/javascript/NativeJavaObject;->isAdapter:Z

    invoke-static {v1, v0, v0, v2}, Lorg/mozilla/javascript/JavaMembers;->lookupClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Ljava/lang/Class;Z)Lorg/mozilla/javascript/JavaMembers;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lorg/mozilla/javascript/JavaMembers;->getFieldAndMethodsObjects(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaClass;->staticFieldAndMethods:Ljava/util/Map;

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaObject;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaObject;->javaObject:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/JavaMembers;->put(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaClass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaClass;->getClassObject()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
