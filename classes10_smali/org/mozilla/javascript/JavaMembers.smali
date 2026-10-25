.class Lorg/mozilla/javascript/JavaMembers;
.super Ljava/lang/Object;
.source "JavaMembers.java"


# instance fields
.field private cl:Ljava/lang/Class;

.field ctors:Lorg/mozilla/javascript/NativeJavaMethod;

.field private fieldAndMethods:Ljava/util/Map;

.field private members:Ljava/util/Map;

.field private staticFieldAndMethods:Ljava/util/Map;

.field private staticMembers:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/JavaMembers;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Z)V

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ContextFactory;->enterContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getClassShutter()Lorg/mozilla/javascript/ClassShutter;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mozilla/javascript/ClassShutter;->visibleToScripts(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_27

    :cond_1c
    const-string p1, "msg.access.prohibited"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_27
    :goto_27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    iput-object p2, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    const/16 p2, 0xd

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p2

    invoke-direct {p0, p1, p3, p2}, Lorg/mozilla/javascript/JavaMembers;->reflect(Lorg/mozilla/javascript/Scriptable;ZZ)V
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_44

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    return-void

    :catchall_44
    move-exception p1

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    throw p1
.end method

.method private static discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;ZZ)V
    .registers 11

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    if-eqz p3, :cond_b5

    :cond_d
    if-nez p2, :cond_2d

    if-eqz p3, :cond_12

    goto :goto_2d

    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_cd

    aget-object v4, v0, v3

    new-instance v5, Lorg/mozilla/javascript/JavaMembers$MethodSignature;

    invoke-direct {v5, v4}, Lorg/mozilla/javascript/JavaMembers$MethodSignature;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_2a} :catch_98

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2d
    :goto_2d
    if-eqz p0, :cond_cd

    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_35
    if-ge v3, v2, :cond_68

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_4b

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    if-nez v5, :cond_4b

    if-eqz p3, :cond_65

    :cond_4b
    new-instance v5, Lorg/mozilla/javascript/JavaMembers$MethodSignature;

    invoke-direct {v5, v4}, Lorg/mozilla/javascript/JavaMembers$MethodSignature;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    if-eqz p3, :cond_62

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v6

    if-nez v6, :cond_62

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_62
    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_68
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_6e
    if-ge v3, v2, :cond_78

    aget-object v4, v0, v3

    invoke-static {v4, p1, p2, p3}, Lorg/mozilla/javascript/JavaMembers;->discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    :cond_78
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0
    :try_end_7c
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_7c} :catch_7d

    goto :goto_2d

    :catch_7d
    :try_start_7d
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_83
    if-ge v3, v2, :cond_cd

    aget-object v4, v0, v3

    new-instance v5, Lorg/mozilla/javascript/JavaMembers$MethodSignature;

    invoke-direct {v5, v4}, Lorg/mozilla/javascript/JavaMembers$MethodSignature;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_95

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95
    .catch Ljava/lang/SecurityException; {:try_start_7d .. :try_end_95} :catch_98

    :cond_95
    add-int/lit8 v3, v3, 0x1

    goto :goto_83

    :catch_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not discover accessible methods of class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to lack of privileges, attemping superclasses/interfaces."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    :cond_b5
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v2, v0

    :goto_ba
    if-ge v1, v2, :cond_c4

    aget-object v3, v0, v1

    invoke-static {v3, p1, p2, p3}, Lorg/mozilla/javascript/JavaMembers;->discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_ba

    :cond_c4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_cd

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/JavaMembers;->discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    :cond_cd
    return-void
.end method

.method private static discoverAccessibleMethods(Ljava/lang/Class;ZZ)[Ljava/lang/reflect/Method;
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0, p1, p2}, Lorg/mozilla/javascript/JavaMembers;->discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/reflect/Method;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private static extractGetMethod([Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;
    .registers 6

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_23

    aget-object v2, p0, v1

    iget-object v3, v2, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    array-length v3, v3

    if-nez v3, :cond_20

    if-eqz p1, :cond_13

    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_13
    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_23

    return-object v2

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractSetMethod(Ljava/lang/Class;[Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_2
    const/4 v2, 0x2

    if-gt v1, v2, :cond_34

    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v3, :cond_31

    aget-object v6, p1, v5

    if-eqz p2, :cond_14

    invoke-virtual {v6}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result v7

    if-eqz v7, :cond_2e

    :cond_14
    iget-object v7, v6, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    array-length v8, v7

    if-ne v8, v0, :cond_2e

    if-ne v1, v0, :cond_20

    aget-object v7, v7, v4

    if-ne v7, p0, :cond_2e

    return-object v6

    :cond_20
    if-eq v1, v2, :cond_25

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_25
    aget-object v7, v7, v4

    invoke-virtual {v7, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2e

    return-object v6

    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractSetMethod([Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_24

    aget-object v2, p0, v1

    if-eqz p1, :cond_e

    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_e
    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_21

    iget-object v3, v2, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    return-object v2

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method private findExplicitFunction(Ljava/lang/String;Z)Lorg/mozilla/javascript/MemberBox;
    .registers 12

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_a

    return-object v1

    :cond_a
    if-eqz p2, :cond_f

    iget-object v2, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    goto :goto_11

    :cond_f
    iget-object v2, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    :goto_11
    const/4 v3, 0x0

    if-eqz p2, :cond_18

    if-nez v0, :cond_18

    const/4 v4, 0x1

    goto :goto_19

    :cond_18
    const/4 v4, 0x0

    :goto_19
    if-eqz v4, :cond_20

    iget-object p2, p0, Lorg/mozilla/javascript/JavaMembers;->ctors:Lorg/mozilla/javascript/NativeJavaMethod;

    iget-object p2, p2, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    goto :goto_3c

    :cond_20
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez p2, :cond_32

    if-nez v2, :cond_32

    iget-object p2, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_32
    instance-of p2, v2, Lorg/mozilla/javascript/NativeJavaMethod;

    if-eqz p2, :cond_3b

    check-cast v2, Lorg/mozilla/javascript/NativeJavaMethod;

    iget-object p2, v2, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    goto :goto_3c

    :cond_3b
    move-object p2, v1

    :goto_3c
    if-eqz p2, :cond_63

    array-length v2, p2

    const/4 v4, 0x0

    :goto_40
    if-ge v4, v2, :cond_63

    aget-object v5, p2, v4

    iget-object v6, v5, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    invoke-static {v6}, Lorg/mozilla/javascript/JavaMembers;->liveConnectSignature([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_60

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v0, v6, v3, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_60

    return-object v5

    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_63
    return-object v1
.end method

.method private static findGetter(ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/MemberBox;
    .registers 4

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1b

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/mozilla/javascript/NativeJavaMethod;

    if-eqz p2, :cond_1b

    check-cast p1, Lorg/mozilla/javascript/NativeJavaMethod;

    iget-object p1, p1, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    invoke-static {p1, p0}, Lorg/mozilla/javascript/JavaMembers;->extractGetMethod([Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;

    move-result-object p0

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAccessibleConstructors(Z)[Ljava/lang/reflect/Constructor;
    .registers 3

    if-eqz p1, :cond_30

    iget-object p1, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ClassClass:Ljava/lang/Class;

    if-eq p1, v0, :cond_30

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not access constructor  of class "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to lack of privileges."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    :cond_30
    iget-object p1, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    return-object p1
.end method

.method private getAccessibleFields(ZZ)[Ljava/lang/reflect/Field;
    .registers 10

    if-nez p2, :cond_4

    if-eqz p1, :cond_4b

    :cond_4
    :try_start_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    :goto_b
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_39

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    if-nez p2, :cond_29

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_29

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    if-eqz v5, :cond_36

    :cond_29
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_33

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_33
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_39
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_b

    :cond_3e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/reflect/Field;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Field;
    :try_end_4a
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4a} :catch_4b

    return-object p1

    :catch_4b
    :cond_4b
    iget-object p1, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1
.end method

.method private getExplicitFunction(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 8

    if-eqz p4, :cond_5

    iget-object p3, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    goto :goto_7

    :cond_5
    iget-object p3, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    :goto_7
    const/4 v0, 0x0

    invoke-direct {p0, p2, p4}, Lorg/mozilla/javascript/JavaMembers;->findExplicitFunction(Ljava/lang/String;Z)Lorg/mozilla/javascript/MemberBox;

    move-result-object p4

    if-eqz p4, :cond_44

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-virtual {p4}, Lorg/mozilla/javascript/MemberBox;->isCtor()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Lorg/mozilla/javascript/NativeJavaConstructor;

    invoke-direct {v0, p4}, Lorg/mozilla/javascript/NativeJavaConstructor;-><init>(Lorg/mozilla/javascript/MemberBox;)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    :cond_24
    invoke-virtual {p4}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/mozilla/javascript/NativeJavaMethod;

    if-eqz v1, :cond_44

    move-object v1, v0

    check-cast v1, Lorg/mozilla/javascript/NativeJavaMethod;

    iget-object v1, v1, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_44

    new-instance v0, Lorg/mozilla/javascript/NativeJavaMethod;

    invoke-direct {v0, p4, p2}, Lorg/mozilla/javascript/NativeJavaMethod;-><init>(Lorg/mozilla/javascript/MemberBox;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    :goto_44
    return-object v0
.end method

.method static javaSignature(Ljava/lang/Class;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v0, 0x0

    :cond_c
    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "[]"

    if-ne v0, v1, :cond_25

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_34
    if-eqz v0, :cond_3c

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_3c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static liveConnectSignature([Ljava/lang/Class;)Ljava/lang/String;
    .registers 5

    array-length v0, p0

    if-nez v0, :cond_6

    const-string p0, "()"

    return-object p0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_11
    if-eq v2, v0, :cond_26

    if-eqz v2, :cond_1a

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/mozilla/javascript/JavaMembers;->javaSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_26
    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static lookupClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Ljava/lang/Class;Z)Lorg/mozilla/javascript/JavaMembers;
    .registers 9

    invoke-static {p0}, Lorg/mozilla/javascript/ClassCache;->get(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ClassCache;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ClassCache;->getClassCacheMap()Ljava/util/Map;

    move-result-object v0

    move-object v1, p1

    :goto_9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/JavaMembers;

    if-eqz v2, :cond_17

    if-eq v1, p1, :cond_16

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-object v2

    :cond_17
    :try_start_17
    new-instance v2, Lorg/mozilla/javascript/JavaMembers;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ClassCache;->getAssociatedScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-direct {v2, v3, v1, p3}, Lorg/mozilla/javascript/JavaMembers;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Z)V
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_20} :catch_2f

    invoke-virtual {p0}, Lorg/mozilla/javascript/ClassCache;->isCachingEnabled()Z

    move-result p0

    if-eqz p0, :cond_2e

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v1, p1, :cond_2e

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-object v2

    :catch_2f
    move-exception v2

    if-eqz p2, :cond_3d

    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v1, 0x0

    move-object v4, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_9

    :cond_3d
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_4d

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_4c

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    goto :goto_4d

    :cond_4c
    throw v2

    :cond_4d
    :goto_4d
    move-object v1, v3

    goto :goto_9
.end method

.method private reflect(Lorg/mozilla/javascript/Scriptable;ZZ)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    invoke-static {v4, v2, v3}, Lorg/mozilla/javascript/JavaMembers;->discoverAccessibleMethods(Ljava/lang/Class;ZZ)[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v5, :cond_52

    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-eqz v9, :cond_22

    iget-object v9, v0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    goto :goto_24

    :cond_22
    iget-object v9, v0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    :goto_24
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_32

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    :cond_32
    instance-of v12, v11, Lorg/mozilla/javascript/ObjArray;

    if-eqz v12, :cond_39

    check-cast v11, Lorg/mozilla/javascript/ObjArray;

    goto :goto_4c

    :cond_39
    instance-of v12, v11, Ljava/lang/reflect/Method;

    if-nez v12, :cond_40

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_40
    new-instance v12, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v12}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    invoke-virtual {v12, v11}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    invoke-interface {v9, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v12

    :goto_4c
    invoke-virtual {v11, v8}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    :goto_4f
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_52
    const/4 v4, 0x0

    :goto_53
    const/4 v5, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_c3

    if-nez v4, :cond_5b

    const/4 v8, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v8, 0x0

    :goto_5c
    if-eqz v8, :cond_61

    iget-object v8, v0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    goto :goto_63

    :cond_61
    iget-object v8, v0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    :goto_63
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/reflect/Method;

    if-eqz v12, :cond_8b

    new-array v12, v7, [Lorg/mozilla/javascript/MemberBox;

    new-instance v13, Lorg/mozilla/javascript/MemberBox;

    check-cast v11, Ljava/lang/reflect/Method;

    invoke-direct {v13, v11}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v13, v12, v6

    goto :goto_ad

    :cond_8b
    check-cast v11, Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v11}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v12

    if-ge v12, v5, :cond_96

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_96
    new-array v13, v12, [Lorg/mozilla/javascript/MemberBox;

    const/4 v14, 0x0

    :goto_99
    if-eq v14, v12, :cond_ac

    invoke-virtual {v11, v14}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/reflect/Method;

    new-instance v7, Lorg/mozilla/javascript/MemberBox;

    invoke-direct {v7, v15}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v7, v13, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    goto :goto_99

    :cond_ac
    move-object v12, v13

    :goto_ad
    new-instance v7, Lorg/mozilla/javascript/NativeJavaMethod;

    invoke-direct {v7, v12}, Lorg/mozilla/javascript/NativeJavaMethod;-><init>([Lorg/mozilla/javascript/MemberBox;)V

    if-eqz v1, :cond_b7

    invoke-static {v7, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;)V

    :cond_b7
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x1

    goto :goto_6b

    :cond_c0
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    :cond_c3
    invoke-direct {v0, v2, v3}, Lorg/mozilla/javascript/JavaMembers;->getAccessibleFields(ZZ)[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v4, v2

    const/4 v7, 0x0

    :goto_c9
    if-ge v7, v4, :cond_15a

    aget-object v8, v2, v7

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    :try_start_d5
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-eqz v10, :cond_de

    iget-object v11, v0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    goto :goto_e0

    :cond_de
    iget-object v11, v0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    :goto_e0
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_ea

    invoke-interface {v11, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_156

    :cond_ea
    instance-of v13, v12, Lorg/mozilla/javascript/NativeJavaMethod;

    if-eqz v13, :cond_113

    check-cast v12, Lorg/mozilla/javascript/NativeJavaMethod;

    new-instance v13, Lorg/mozilla/javascript/FieldAndMethods;

    iget-object v12, v12, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    invoke-direct {v13, v1, v12, v8}, Lorg/mozilla/javascript/FieldAndMethods;-><init>(Lorg/mozilla/javascript/Scriptable;[Lorg/mozilla/javascript/MemberBox;Ljava/lang/reflect/Field;)V

    if-eqz v10, :cond_fc

    iget-object v8, v0, Lorg/mozilla/javascript/JavaMembers;->staticFieldAndMethods:Ljava/util/Map;

    goto :goto_fe

    :cond_fc
    iget-object v8, v0, Lorg/mozilla/javascript/JavaMembers;->fieldAndMethods:Ljava/util/Map;

    :goto_fe
    if-nez v8, :cond_10c

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    if-eqz v10, :cond_10a

    iput-object v8, v0, Lorg/mozilla/javascript/JavaMembers;->staticFieldAndMethods:Ljava/util/Map;

    goto :goto_10c

    :cond_10a
    iput-object v8, v0, Lorg/mozilla/javascript/JavaMembers;->fieldAndMethods:Ljava/util/Map;

    :cond_10c
    :goto_10c
    invoke-interface {v8, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_156

    :cond_113
    instance-of v10, v12, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_12b

    check-cast v12, Ljava/lang/reflect/Field;

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_156

    invoke-interface {v11, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_156

    :cond_12b
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;
    :try_end_12e
    .catch Ljava/lang/SecurityException; {:try_start_d5 .. :try_end_12e} :catch_12f

    goto :goto_156

    :catch_12f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not access field "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " of class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " due to lack of privileges."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    :cond_156
    :goto_156
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_c9

    :cond_15a
    const/4 v1, 0x0

    :goto_15b
    if-eq v1, v5, :cond_25b

    if-nez v1, :cond_161

    const/4 v2, 0x1

    goto :goto_162

    :cond_161
    const/4 v2, 0x0

    :goto_162
    if-eqz v2, :cond_167

    iget-object v4, v0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    goto :goto_169

    :cond_167
    iget-object v4, v0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    :goto_169
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_176
    :goto_176
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_253

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "get"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "set"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const-string v14, "is"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v11, :cond_19d

    if-nez v15, :cond_19d

    if-eqz v13, :cond_19b

    goto :goto_19d

    :cond_19b
    const/4 v15, 0x1

    goto :goto_176

    :cond_19d
    :goto_19d
    if-eqz v15, :cond_1a1

    const/4 v11, 0x2

    goto :goto_1a2

    :cond_1a1
    const/4 v11, 0x3

    :goto_1a2
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1ad

    goto :goto_176

    :cond_1ad
    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v13

    if-eqz v13, :cond_1e5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_1c3

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    goto :goto_1e6

    :cond_1c3
    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v13

    if-nez v13, :cond_1e5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1e6

    :cond_1e5
    move-object v11, v9

    :goto_1e6
    invoke-interface {v7, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1ed

    goto :goto_176

    :cond_1ed
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_207

    if-eqz v3, :cond_176

    instance-of v15, v13, Ljava/lang/reflect/Member;

    if-eqz v15, :cond_176

    check-cast v13, Ljava/lang/reflect/Member;

    invoke-interface {v13}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v13

    if-nez v13, :cond_207

    goto/16 :goto_176

    :cond_207
    invoke-static {v2, v4, v10, v9}, Lorg/mozilla/javascript/JavaMembers;->findGetter(ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/MemberBox;

    move-result-object v10

    if-nez v10, :cond_211

    invoke-static {v2, v4, v14, v9}, Lorg/mozilla/javascript/JavaMembers;->findGetter(ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/MemberBox;

    move-result-object v10

    :cond_211
    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_247

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v12, v9, Lorg/mozilla/javascript/NativeJavaMethod;

    if-eqz v12, :cond_247

    check-cast v9, Lorg/mozilla/javascript/NativeJavaMethod;

    if-eqz v10, :cond_237

    invoke-virtual {v10}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    iget-object v14, v9, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    invoke-static {v12, v14, v2}, Lorg/mozilla/javascript/JavaMembers;->extractSetMethod(Ljava/lang/Class;[Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;

    move-result-object v12

    goto :goto_23d

    :cond_237
    iget-object v12, v9, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    invoke-static {v12, v2}, Lorg/mozilla/javascript/JavaMembers;->extractSetMethod([Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;

    move-result-object v12

    :goto_23d
    iget-object v14, v9, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    array-length v14, v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_244

    goto :goto_245

    :cond_244
    move-object v9, v13

    :goto_245
    move-object v13, v12

    goto :goto_249

    :cond_247
    const/4 v15, 0x1

    move-object v9, v13

    :goto_249
    new-instance v12, Lorg/mozilla/javascript/BeanProperty;

    invoke-direct {v12, v10, v13, v9}, Lorg/mozilla/javascript/BeanProperty;-><init>(Lorg/mozilla/javascript/MemberBox;Lorg/mozilla/javascript/MemberBox;Lorg/mozilla/javascript/NativeJavaMethod;)V

    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_176

    :cond_253
    const/4 v15, 0x1

    invoke-interface {v4, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_15b

    :cond_25b
    invoke-direct {v0, v3}, Lorg/mozilla/javascript/JavaMembers;->getAccessibleConstructors(Z)[Ljava/lang/reflect/Constructor;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Lorg/mozilla/javascript/MemberBox;

    :goto_262
    array-length v3, v1

    if-eq v6, v3, :cond_271

    new-instance v3, Lorg/mozilla/javascript/MemberBox;

    aget-object v4, v1, v6

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v3, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_262

    :cond_271
    new-instance v1, Lorg/mozilla/javascript/NativeJavaMethod;

    iget-object v3, v0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/NativeJavaMethod;-><init>([Lorg/mozilla/javascript/MemberBox;Ljava/lang/String;)V

    iput-object v1, v0, Lorg/mozilla/javascript/JavaMembers;->ctors:Lorg/mozilla/javascript/NativeJavaMethod;

    return-void
.end method


# virtual methods
.method get(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 7

    if-eqz p4, :cond_5

    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    :goto_7
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez p4, :cond_15

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_15
    if-nez v0, :cond_20

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/JavaMembers;->getExplicitFunction(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_20

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    :cond_20
    instance-of p2, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_25

    return-object v0

    :cond_25
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    :try_start_29
    instance-of v1, v0, Lorg/mozilla/javascript/BeanProperty;

    if-eqz v1, :cond_47

    check-cast v0, Lorg/mozilla/javascript/BeanProperty;

    iget-object p4, v0, Lorg/mozilla/javascript/BeanProperty;->getter:Lorg/mozilla/javascript/MemberBox;

    if-nez p4, :cond_36

    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1

    :cond_36
    sget-object v1, Lorg/mozilla/javascript/Context;->emptyArgs:[Ljava/lang/Object;

    invoke-virtual {p4, p3, v1}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iget-object p4, v0, Lorg/mozilla/javascript/BeanProperty;->getter:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p4}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p4

    goto :goto_54

    :cond_47
    check-cast v0, Ljava/lang/reflect/Field;

    if-eqz p4, :cond_4c

    const/4 p3, 0x0

    :cond_4c
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_54} :catch_61

    :goto_54
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    invoke-virtual {p2}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_61
    move-exception p1

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method getFieldAndMethodsObjects(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Ljava/util/Map;
    .registers 9

    if-eqz p3, :cond_5

    iget-object p3, p0, Lorg/mozilla/javascript/JavaMembers;->staticFieldAndMethods:Ljava/util/Map;

    goto :goto_7

    :cond_5
    iget-object p3, p0, Lorg/mozilla/javascript/JavaMembers;->fieldAndMethods:Ljava/util/Map;

    :goto_7
    if-nez p3, :cond_b

    const/4 p1, 0x0

    return-object p1

    :cond_b
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/FieldAndMethods;

    new-instance v2, Lorg/mozilla/javascript/FieldAndMethods;

    iget-object v3, v0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    iget-object v4, v0, Lorg/mozilla/javascript/FieldAndMethods;->field:Ljava/lang/reflect/Field;

    invoke-direct {v2, p1, v3, v4}, Lorg/mozilla/javascript/FieldAndMethods;-><init>(Lorg/mozilla/javascript/Scriptable;[Lorg/mozilla/javascript/MemberBox;Ljava/lang/reflect/Field;)V

    iput-object p2, v2, Lorg/mozilla/javascript/FieldAndMethods;->javaObject:Ljava/lang/Object;

    iget-object v0, v0, Lorg/mozilla/javascript/FieldAndMethods;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_3d
    return-object v1
.end method

.method getIds(Z)[Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    goto :goto_7

    :cond_5
    iget-object p1, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    :goto_7
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method has(Ljava/lang/String;Z)Z
    .registers 5

    if-eqz p2, :cond_5

    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    :goto_7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    return v1

    :cond_f
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/JavaMembers;->findExplicitFunction(Ljava/lang/String;Z)Lorg/mozilla/javascript/MemberBox;

    move-result-object p1

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method put(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 9

    if-eqz p5, :cond_5

    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    :goto_7
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez p5, :cond_15

    if-nez v1, :cond_15

    iget-object p5, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_15
    if-eqz v1, :cond_a7

    instance-of p5, v1, Lorg/mozilla/javascript/FieldAndMethods;

    if-eqz p5, :cond_23

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/mozilla/javascript/FieldAndMethods;

    iget-object v1, p5, Lorg/mozilla/javascript/FieldAndMethods;->field:Ljava/lang/reflect/Field;

    :cond_23
    instance-of p5, v1, Lorg/mozilla/javascript/BeanProperty;

    if-eqz p5, :cond_63

    check-cast v1, Lorg/mozilla/javascript/BeanProperty;

    iget-object p5, v1, Lorg/mozilla/javascript/BeanProperty;->setter:Lorg/mozilla/javascript/MemberBox;

    if-eqz p5, :cond_5e

    iget-object p2, v1, Lorg/mozilla/javascript/BeanProperty;->setters:Lorg/mozilla/javascript/NativeJavaMethod;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_46

    if-nez p4, :cond_36

    goto :goto_46

    :cond_36
    new-array p3, v0, [Ljava/lang/Object;

    aput-object p4, p3, v2

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p5

    invoke-virtual {p2, p4, p5, p1, p3}, Lorg/mozilla/javascript/NativeJavaMethod;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_80

    :cond_46
    :goto_46
    iget-object p1, p5, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    aget-object p1, p1, v2

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p4, p1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p2, v2

    :try_start_52
    iget-object p1, v1, Lorg/mozilla/javascript/BeanProperty;->setter:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {p1, p3, p2}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_57} :catch_58

    goto :goto_80

    :catch_58
    move-exception p1

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_5e
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/JavaMembers;->reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_63
    instance-of p1, v1, Ljava/lang/reflect/Field;

    if-nez p1, :cond_73

    if-nez v1, :cond_6c

    const-string p1, "msg.java.internal.private"

    goto :goto_6e

    :cond_6c
    const-string p1, "msg.java.method.assign"

    :goto_6e
    invoke-static {p1, p2}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_73
    check-cast v1, Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p4, p1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :try_start_7d
    invoke-virtual {v1, p3, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_80
    .catch Ljava/lang/IllegalAccessException; {:try_start_7d .. :try_end_80} :catch_98
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7d .. :try_end_80} :catch_81

    :goto_80
    return-void

    :catch_81
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "msg.java.internal.field.type"

    invoke-static {p3, p1, v1, p2}, Lorg/mozilla/javascript/Context;->reportRuntimeError3(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :catch_98
    move-exception p1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p2

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_a2

    return-void

    :cond_a2
    invoke-static {p1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_a7
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/JavaMembers;->reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.java.member.not.found"

    invoke-static {v1, v0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    return-object p1
.end method
