.class public Lorg/mozilla/javascript/FunctionObject;
.super Lorg/mozilla/javascript/BaseFunction;
.source "FunctionObject.java"


# static fields
.field public static final JAVA_BOOLEAN_TYPE:I = 0x3

.field public static final JAVA_DOUBLE_TYPE:I = 0x4

.field public static final JAVA_INT_TYPE:I = 0x2

.field public static final JAVA_OBJECT_TYPE:I = 0x6

.field public static final JAVA_SCRIPTABLE_TYPE:I = 0x5

.field public static final JAVA_STRING_TYPE:I = 0x1

.field public static final JAVA_UNSUPPORTED_TYPE:I = 0x0

.field private static final VARARGS_CTOR:S = -0x2s

.field private static final VARARGS_METHOD:S = -0x1s

.field private static sawSecurityException:Z = false

.field private static final serialVersionUID:J = -0x4a002e39945f012bL


# instance fields
.field private functionName:Ljava/lang/String;

.field private transient hasVoidReturn:Z

.field private isStatic:Z

.field member:Lorg/mozilla/javascript/MemberBox;

.field private parmsLength:I

.field private transient returnTypeTag:I

.field private transient typeTags:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lorg/mozilla/javascript/Scriptable;)V
    .registers 9

    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    instance-of v0, p2, Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    new-instance v0, Lorg/mozilla/javascript/MemberBox;

    check-cast p2, Ljava/lang/reflect/Constructor;

    invoke-direct {v0, p2}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Constructor;)V

    iput-object v0, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    iput-boolean v1, p0, Lorg/mozilla/javascript/FunctionObject;->isStatic:Z

    goto :goto_23

    :cond_14
    new-instance v0, Lorg/mozilla/javascript/MemberBox;

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-direct {v0, p2}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result p2

    iput-boolean p2, p0, Lorg/mozilla/javascript/FunctionObject;->isStatic:Z

    :goto_23
    iget-object p2, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p2}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p1, p0, Lorg/mozilla/javascript/FunctionObject;->functionName:Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    iget-object p1, p1, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    array-length v0, p1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_a4

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    const/4 v4, 0x2

    if-nez v2, :cond_45

    aget-object v2, p1, v4

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_a4

    :cond_45
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_79

    iget-boolean v0, p0, Lorg/mozilla/javascript/FunctionObject;->isStatic:Z

    if-eqz v0, :cond_72

    aget-object v0, p1, v3

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->ContextClass:Ljava/lang/Class;

    if-ne v0, v3, :cond_72

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne v0, v3, :cond_72

    aget-object v0, p1, v4

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->FunctionClass:Ljava/lang/Class;

    if-ne v0, v3, :cond_72

    aget-object p1, p1, v2

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_72

    const/4 p1, -0x2

    iput p1, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    goto :goto_cb

    :cond_72
    const-string p1, "msg.varargs.ctor"

    invoke-static {p1, p2}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_79
    iget-boolean v0, p0, Lorg/mozilla/javascript/FunctionObject;->isStatic:Z

    if-eqz v0, :cond_9d

    aget-object v0, p1, v3

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->ContextClass:Ljava/lang/Class;

    if-ne v0, v3, :cond_9d

    aget-object v0, p1, v1

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-ne v0, v3, :cond_9d

    aget-object v0, p1, v4

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne v0, v3, :cond_9d

    aget-object p1, p1, v2

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->FunctionClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_9d

    const/4 p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    goto :goto_cb

    :cond_9d
    const-string p1, "msg.varargs.fun"

    invoke-static {p1, p2}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_a4
    iput v0, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    if-lez v0, :cond_cb

    new-array v2, v0, [B

    iput-object v2, p0, Lorg/mozilla/javascript/FunctionObject;->typeTags:[B

    :goto_ac
    if-eq v3, v0, :cond_cb

    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/mozilla/javascript/FunctionObject;->getTypeTag(Ljava/lang/Class;)I

    move-result v2

    if-eqz v2, :cond_be

    iget-object v4, p0, Lorg/mozilla/javascript/FunctionObject;->typeTags:[B

    int-to-byte v2, v2

    aput-byte v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_ac

    :cond_be
    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "msg.bad.parms"

    invoke-static {p3, p1, p2}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_cb
    :goto_cb
    iget-object p1, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p1}, Lorg/mozilla/javascript/MemberBox;->isMethod()Z

    move-result p1

    if-eqz p1, :cond_eb

    iget-object p1, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p1}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_e4

    iput-boolean v1, p0, Lorg/mozilla/javascript/FunctionObject;->hasVoidReturn:Z

    goto :goto_f9

    :cond_e4
    invoke-static {p1}, Lorg/mozilla/javascript/FunctionObject;->getTypeTag(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/FunctionObject;->returnTypeTag:I

    goto :goto_f9

    :cond_eb
    iget-object p1, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p1}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_fd

    :goto_f9
    invoke-static {p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;)V

    return-void

    :cond_fd
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.bad.ctor.return"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    goto :goto_109

    :goto_108
    throw p1

    :goto_109
    goto :goto_108
.end method

.method public static convertArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4

    packed-switch p3, :pswitch_data_46

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_9  #0x6
    return-object p2

    :pswitch_a  #0x5
    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :pswitch_f  #0x4
    instance-of p0, p2, Ljava/lang/Double;

    if-eqz p0, :cond_14

    return-object p2

    :cond_14
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_1d  #0x3
    instance-of p0, p2, Ljava/lang/Boolean;

    if-eqz p0, :cond_22

    return-object p2

    :cond_22
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2d

    :cond_2b
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2d
    return-object p0

    :pswitch_2e  #0x2
    instance-of p0, p2, Ljava/lang/Integer;

    if-eqz p0, :cond_33

    return-object p2

    :cond_33
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3c  #0x1
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_41

    return-object p2

    :cond_41
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3c  #00000001
        :pswitch_2e  #00000002
        :pswitch_1d  #00000003
        :pswitch_f  #00000004
        :pswitch_a  #00000005
        :pswitch_9  #00000006
    .end packed-switch
.end method

.method public static convertArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    invoke-static {p3}, Lorg/mozilla/javascript/FunctionObject;->getTypeTag(Ljava/lang/Class;)I

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/FunctionObject;->convertArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg.cant.convert"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0
.end method

.method static findSingleMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-eq v2, v0, :cond_29

    aget-object v3, p0, v2

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    if-nez v1, :cond_17

    move-object v1, v3

    goto :goto_26

    :cond_17
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "msg.no.overload"

    invoke-static {v0, p1, p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_29
    return-object v1
.end method

.method static getMethodList(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    sget-boolean v1, Lorg/mozilla/javascript/FunctionObject;->sawSecurityException:Z

    if-nez v1, :cond_d

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    const/4 v1, 0x1

    sput-boolean v1, Lorg/mozilla/javascript/FunctionObject;->sawSecurityException:Z

    :cond_d
    move-object v1, v0

    :goto_e
    if-nez v1, :cond_14

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    :cond_14
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_17
    array-length v5, v1

    if-ge v3, v5, :cond_3b

    sget-boolean v5, Lorg/mozilla/javascript/FunctionObject;->sawSecurityException:Z

    if-eqz v5, :cond_27

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v5, p0, :cond_36

    goto :goto_33

    :cond_27
    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_36

    :goto_33
    aput-object v0, v1, v3

    goto :goto_38

    :cond_36
    add-int/lit8 v4, v4, 0x1

    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_3b
    new-array p0, v4, [Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    :goto_3e
    array-length v3, v1

    if-ge v2, v3, :cond_4f

    aget-object v3, v1, v2

    if-eqz v3, :cond_4c

    add-int/lit8 v3, v0, 0x1

    aget-object v4, v1, v2

    aput-object v4, p0, v0

    move v0, v3

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_4f
    return-object p0
.end method

.method public static getTypeTag(Ljava/lang/Class;)I
    .registers 2

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->IntegerClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_37

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_f

    goto :goto_37

    :cond_f
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_35

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_18

    goto :goto_35

    :cond_18
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->DoubleClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_33

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_21

    goto :goto_33

    :cond_21
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 p0, 0x5

    return p0

    :cond_2b
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_31

    const/4 p0, 0x6

    return p0

    :cond_31
    const/4 p0, 0x0

    return p0

    :cond_33
    :goto_33
    const/4 p0, 0x4

    return p0

    :cond_35
    :goto_35
    const/4 p0, 0x3

    return p0

    :cond_37
    :goto_37
    const/4 p0, 0x2

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget p1, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    if-lez p1, :cond_22

    iget-object v0, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    iget-object v0, v0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/mozilla/javascript/FunctionObject;->typeTags:[B

    const/4 p1, 0x0

    :goto_10
    iget v1, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    if-eq p1, v1, :cond_22

    iget-object v1, p0, Lorg/mozilla/javascript/FunctionObject;->typeTags:[B

    aget-object v2, v0, p1

    invoke-static {v2}, Lorg/mozilla/javascript/FunctionObject;->getTypeTag(Ljava/lang/Class;)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_22
    iget-object p1, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p1}, Lorg/mozilla/javascript/MemberBox;->isMethod()Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p1}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/javascript/FunctionObject;->hasVoidReturn:Z

    goto :goto_42

    :cond_3c
    invoke-static {p1}, Lorg/mozilla/javascript/FunctionObject;->getTypeTag(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/FunctionObject;->returnTypeTag:I

    :cond_42
    :goto_42
    return-void
.end method


# virtual methods
.method public addAsConstructor(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/FunctionObject;->initAsConstructor(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p1, p2, p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_16

    aget-object v3, p4, v2

    instance-of v3, v3, Lorg/mozilla/javascript/ConsString;

    if-eqz v3, :cond_13

    aget-object v3, p4, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v2

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_16
    iget v2, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_63

    const/4 v0, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-ne v2, v0, :cond_35

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p3, v0, v4

    aput-object p4, v0, v6

    aput-object p0, v0, v5

    iget-object p3, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p3, v3, v0}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_32
    const/4 v1, 0x1

    goto/16 :goto_e9

    :cond_35
    if-nez p3, :cond_39

    const/4 p3, 0x1

    goto :goto_3a

    :cond_39
    const/4 p3, 0x0

    :goto_3a
    if-eqz p3, :cond_3f

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_41

    :cond_3f
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_41
    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p4, v0, v4

    aput-object p0, v0, v6

    aput-object p3, v0, v5

    iget-object p3, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p3}, Lorg/mozilla/javascript/MemberBox;->isCtor()Z

    move-result p3

    if-eqz p3, :cond_5b

    iget-object p3, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/MemberBox;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto/16 :goto_e9

    :cond_5b
    iget-object p3, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p3, v3, v0}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto/16 :goto_e9

    :cond_63
    iget-boolean v2, p0, Lorg/mozilla/javascript/FunctionObject;->isStatic:Z

    if-nez v2, :cond_90

    iget-object v2, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_90

    if-ne p3, p2, :cond_83

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    if-eq p2, v5, :cond_83

    invoke-virtual {v2, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    move-object p3, v5

    goto :goto_84

    :cond_83
    const/4 v2, 0x0

    :cond_84
    :goto_84
    if-eqz v2, :cond_87

    goto :goto_90

    :cond_87
    iget-object p1, p0, Lorg/mozilla/javascript/FunctionObject;->functionName:Ljava/lang/String;

    const-string p2, "msg.incompat.call"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_90
    :goto_90
    iget v2, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    if-ne v2, v0, :cond_b3

    move-object v2, p4

    const/4 v0, 0x0

    :goto_96
    iget v5, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    if-eq v0, v5, :cond_d3

    aget-object v5, p4, v0

    iget-object v6, p0, Lorg/mozilla/javascript/FunctionObject;->typeTags:[B

    aget-byte v6, v6, v0

    invoke-static {p1, p2, v5, v6}, Lorg/mozilla/javascript/FunctionObject;->convertArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_b0

    if-ne v2, p4, :cond_ae

    invoke-virtual {p4}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    :cond_ae
    aput-object v6, v2, v0

    :cond_b0
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    :cond_b3
    if-nez v2, :cond_b8

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_d3

    :cond_b8
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_bb
    iget v6, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    if-eq v5, v6, :cond_d3

    if-ge v5, v0, :cond_c4

    aget-object v6, p4, v5

    goto :goto_c6

    :cond_c4
    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_c6
    iget-object v7, p0, Lorg/mozilla/javascript/FunctionObject;->typeTags:[B

    aget-byte v7, v7, v5

    invoke-static {p1, p2, v6, v7}, Lorg/mozilla/javascript/FunctionObject;->convertArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_bb

    :cond_d3
    :goto_d3
    iget-object p4, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p4}, Lorg/mozilla/javascript/MemberBox;->isMethod()Z

    move-result p4

    if-eqz p4, :cond_e3

    iget-object p4, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p4, p3, v2}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto/16 :goto_32

    :cond_e3
    iget-object p3, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p3, v2}, Lorg/mozilla/javascript/MemberBox;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_e9
    if-eqz v1, :cond_fe

    iget-boolean p4, p0, Lorg/mozilla/javascript/FunctionObject;->hasVoidReturn:Z

    if-eqz p4, :cond_f2

    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_fe

    :cond_f2
    iget p4, p0, Lorg/mozilla/javascript/FunctionObject;->returnTypeTag:I

    if-nez p4, :cond_fe

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3, v3}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    :cond_fe
    :goto_fe
    return-object p3
.end method

.method public createObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .registers 3

    iget-object p1, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p1}, Lorg/mozilla/javascript/MemberBox;->isCtor()Z

    move-result p1

    if-nez p1, :cond_2f

    iget p1, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    const/4 p2, -0x2

    if-ne p1, p2, :cond_e

    goto :goto_2f

    :cond_e
    :try_start_e
    iget-object p1, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p1}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Scriptable;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_29

    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getClassPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/mozilla/javascript/Scriptable;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    return-object p1

    :catch_29
    move-exception p1

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2f
    :goto_2f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getArity()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    if-gez v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/FunctionObject;->functionName:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getLength()I
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/FunctionObject;->getArity()I

    move-result v0

    return v0
.end method

.method public getMethodOrConstructor()Ljava/lang/reflect/Member;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->isMethod()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v0, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->ctor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method initAsConstructor(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .registers 5

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/BaseFunction;->setImmunePrototypeProperty(Ljava/lang/Object;)V

    invoke-interface {p2, p0}, Lorg/mozilla/javascript/Scriptable;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    const-string v0, "constructor"

    const/4 v1, 0x7

    invoke-static {p2, v0, p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method isVarArgsConstructor()Z
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isVarArgsMethod()Z
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
