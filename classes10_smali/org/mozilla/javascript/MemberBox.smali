.class final Lorg/mozilla/javascript/MemberBox;
.super Ljava/lang/Object;
.source "MemberBox.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final primitives:[Ljava/lang/Class;

.field private static final serialVersionUID:J = 0x583e1be606e304b5L


# instance fields
.field transient argTypes:[Ljava/lang/Class;

.field transient delegateTo:Ljava/lang/Object;

.field private transient memberObject:Ljava/lang/reflect/Member;

.field transient vararg:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lorg/mozilla/javascript/MemberBox;->primitives:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/MemberBox;->init(Ljava/lang/reflect/Constructor;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/MemberBox;->init(Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private init(Ljava/lang/reflect/Constructor;)V
    .registers 3

    iput-object p1, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result p1

    iput-boolean p1, p0, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    return-void
.end method

.method private init(Ljava/lang/reflect/Method;)V
    .registers 3

    iput-object p1, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result p1

    iput-boolean p1, p0, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    return-void
.end method

.method private static readMember(Ljava/io/ObjectInputStream;)Ljava/lang/reflect/Member;
    .registers 4

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-static {p0}, Lorg/mozilla/javascript/MemberBox;->readParameters(Ljava/io/ObjectInputStream;)[Ljava/lang/Class;

    move-result-object p0

    if-eqz v0, :cond_23

    :try_start_1e
    invoke-virtual {v2, v1, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0

    :cond_23
    invoke-virtual {v2, p0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find member: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-static {p1}, Lorg/mozilla/javascript/MemberBox;->readMember(Ljava/io/ObjectInputStream;)Ljava/lang/reflect/Member;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_11

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/MemberBox;->init(Ljava/lang/reflect/Method;)V

    goto :goto_16

    :cond_11
    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/MemberBox;->init(Ljava/lang/reflect/Constructor;)V

    :goto_16
    return-void
.end method

.method private static readParameters(Ljava/io/ObjectInputStream;)[Ljava/lang/Class;
    .registers 6

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readShort()S

    move-result v0

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_25

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    aput-object v3, v1, v2

    goto :goto_22

    :cond_18
    sget-object v3, Lorg/mozilla/javascript/MemberBox;->primitives:[Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v4

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_25
    return-object v1
.end method

.method private static searchAccessibleMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 8

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_66

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_66

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_28
    if-eq v2, v3, :cond_3e

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_3b

    :try_start_36
    invoke-virtual {v4, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_36 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_3a} :catch_3b

    return-object p0

    :catch_3b
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_45

    goto :goto_66

    :cond_45
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    :try_start_4f
    invoke-virtual {v0, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2
    :try_end_61
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4f .. :try_end_61} :catch_64
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_61} :catch_64

    if-nez v2, :cond_3e

    return-object v1

    :catch_64
    nop

    goto :goto_3e

    :cond_66
    :goto_66
    const/4 p0, 0x0

    return-object p0
.end method

.method private static writeMember(Ljava/io/ObjectOutputStream;Ljava/lang/reflect/Member;)V
    .registers 4

    if-nez p1, :cond_7

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    return-void

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    instance-of v0, p1, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1c

    instance-of v1, p1, Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_14

    goto :goto_1c

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not Method or Constructor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_1c
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    invoke-interface {p1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    if-eqz v0, :cond_39

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/MemberBox;->writeParameters(Ljava/io/ObjectOutputStream;[Ljava/lang/Class;)V

    goto :goto_42

    :cond_39
    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/MemberBox;->writeParameters(Ljava/io/ObjectOutputStream;[Ljava/lang/Class;)V

    :goto_42
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/MemberBox;->writeMember(Ljava/io/ObjectOutputStream;Ljava/lang/reflect/Member;)V

    return-void
.end method

.method private static writeParameters(Ljava/io/ObjectOutputStream;[Ljava/lang/Class;)V
    .registers 8

    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->writeShort(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_4b

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    if-nez v3, :cond_18

    invoke-virtual {p0, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_29

    :cond_18
    const/4 v3, 0x0

    :goto_19
    sget-object v4, Lorg/mozilla/javascript/MemberBox;->primitives:[Ljava/lang/Class;

    array-length v5, v4

    if-ge v3, v5, :cond_2f

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {p0, v3}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Primitive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4b
    return-void
.end method


# virtual methods
.method ctor()Ljava/lang/reflect/Constructor;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method getDeclaringClass()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_8} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    goto :goto_2c

    :catch_b
    move-exception p1

    goto :goto_31

    :catch_d
    move-exception v1

    :try_start_e
    iget-object v2, p0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    invoke-static {v0, v2}, Lorg/mozilla/javascript/MemberBox;->searchAccessibleMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1a

    iput-object v2, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    move-object v0, v2

    goto :goto_22

    :cond_1a
    sget-object v2, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/VMBridge;->tryToMakeAccessible(Ljava/lang/reflect/AccessibleObject;)Z

    move-result v2

    if-eqz v2, :cond_27

    :goto_22
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_27
    invoke-static {v1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_2c} :catch_b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2c} :catch_9

    :goto_2c
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_31
    :goto_31
    check-cast p1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/reflect/InvocationTargetException;

    if-nez p2, :cond_31

    instance-of p2, p1, Lorg/mozilla/javascript/ContinuationPending;

    if-eqz p2, :cond_42

    check-cast p1, Lorg/mozilla/javascript/ContinuationPending;

    throw p1

    :cond_42
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    goto :goto_48

    :goto_47
    throw p1

    :goto_48
    goto :goto_47
.end method

.method isCtor()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Constructor;

    return v0
.end method

.method isMethod()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Method;

    return v0
.end method

.method isPublic()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method isStatic()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method member()Ljava/lang/reflect/Member;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method method()Ljava/lang/reflect/Method;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/mozilla/javascript/MemberBox;->ctor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    goto :goto_1e

    :catch_b
    move-exception v1

    :try_start_c
    sget-object v2, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/VMBridge;->tryToMakeAccessible(Ljava/lang/reflect/AccessibleObject;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_19
    invoke-static {v1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_9

    :goto_1e
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method toJavaDeclaration()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/mozilla/javascript/MemberBox;->isMethod()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_40

    :cond_23
    invoke-virtual {p0}, Lorg/mozilla/javascript/MemberBox;->ctor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_3d

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_40
    iget-object v1, p0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    invoke-static {v1}, Lorg/mozilla/javascript/JavaMembers;->liveConnectSignature([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
