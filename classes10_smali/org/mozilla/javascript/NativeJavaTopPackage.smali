.class public Lorg/mozilla/javascript/NativeJavaTopPackage;
.super Lorg/mozilla/javascript/NativeJavaPackage;
.source "NativeJavaTopPackage.java"

# interfaces
.implements Lorg/mozilla/javascript/Function;
.implements Lorg/mozilla/javascript/IdFunctionCall;


# static fields
.field private static final FTAG:Ljava/lang/Object;

.field private static final Id_getClass:I = 0x1

.field private static final commonPackages:[[Ljava/lang/String;

.field private static final serialVersionUID:J = -0x1433fecca5b554afL


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "java"

    const-string v2, "lang"

    const-string v3, "reflect"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "io"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "math"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v2, "net"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-string/jumbo v2, "util"

    const-string/jumbo v3, "zip"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const-string/jumbo v2, "text"

    const-string v3, "resources"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string v2, "applet"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "javax"

    const-string/jumbo v2, "swing"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lorg/mozilla/javascript/NativeJavaTopPackage;->commonPackages:[[Ljava/lang/String;

    const-string v0, "JavaTopPackage"

    sput-object v0, Lorg/mozilla/javascript/NativeJavaTopPackage;->FTAG:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 4

    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 12

    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    new-instance v7, Lorg/mozilla/javascript/NativeJavaTopPackage;

    invoke-direct {v7, p0}, Lorg/mozilla/javascript/NativeJavaTopPackage;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-virtual {v7, p0}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v7, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    const/4 p0, 0x0

    const/4 v0, 0x0

    :goto_15
    sget-object v1, Lorg/mozilla/javascript/NativeJavaTopPackage;->commonPackages:[[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_31

    move-object v2, v7

    const/4 v1, 0x0

    :goto_1c
    sget-object v3, Lorg/mozilla/javascript/NativeJavaTopPackage;->commonPackages:[[Ljava/lang/String;

    aget-object v4, v3, v0

    array-length v4, v4

    if-eq v1, v4, :cond_2e

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, p1}, Lorg/mozilla/javascript/NativeJavaPackage;->forcePackage(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeJavaPackage;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_31
    new-instance v8, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v2, Lorg/mozilla/javascript/NativeJavaTopPackage;->FTAG:Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v5, 0x1

    const-string v4, "getClass"

    move-object v0, v8

    move-object v1, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    invoke-static {}, Lorg/mozilla/javascript/ScriptRuntime;->getTopPackageNames()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lorg/mozilla/javascript/NativeJavaPackage;

    const/4 v2, 0x0

    :goto_47
    array-length v3, v0

    if-ge v2, v3, :cond_57

    aget-object v3, v0, v2

    invoke-virtual {v7, v3, v7}, Lorg/mozilla/javascript/NativeJavaPackage;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/NativeJavaPackage;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_57
    check-cast p1, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz p2, :cond_5e

    invoke-virtual {v8}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_5e
    invoke-virtual {v8}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    const-string p2, "Packages"

    const/4 v2, 0x2

    invoke-virtual {p1, p2, v7, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    :goto_67
    array-length p2, v0

    if-ge p0, p2, :cond_74

    aget-object p2, v0, p0

    aget-object v3, v1, p0

    invoke-virtual {p1, p2, v3, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_67

    :cond_74
    return-void
.end method

.method private js_getClass(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 6

    array-length p1, p3

    if-lez p1, :cond_3e

    const/4 p1, 0x0

    aget-object p2, p3, p1

    instance-of p2, p2, Lorg/mozilla/javascript/Wrapper;

    if-eqz p2, :cond_3e

    aget-object p2, p3, p1

    check-cast p2, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p2}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    move-object p3, p0

    :goto_1b
    const/16 v0, 0x2e

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    :cond_29
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_2d
    invoke-interface {p3, p1, p3}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz p3, :cond_3e

    move-object p3, p1

    check-cast p3, Lorg/mozilla/javascript/Scriptable;

    if-ne v0, v1, :cond_3b

    return-object p3

    :cond_3b
    add-int/lit8 p1, v0, 0x1

    goto :goto_1b

    :cond_3e
    const-string p1, "msg.not.java.obj"

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    goto :goto_46

    :goto_45
    throw p1

    :goto_46
    goto :goto_45
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1, p2, p4}, Lorg/mozilla/javascript/NativeJavaTopPackage;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 6

    array-length p1, p3

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    const/4 p1, 0x0

    aget-object p1, p3, p1

    instance-of p3, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz p3, :cond_11

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    :cond_11
    instance-of p3, p1, Ljava/lang/ClassLoader;

    if-eqz p3, :cond_18

    check-cast p1, Ljava/lang/ClassLoader;

    goto :goto_19

    :cond_18
    move-object p1, v0

    :goto_19
    if-nez p1, :cond_21

    const-string p1, "msg.not.classloader"

    invoke-static {p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    return-object v0

    :cond_21
    new-instance p3, Lorg/mozilla/javascript/NativeJavaPackage;

    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p3, v0, v1, p1}, Lorg/mozilla/javascript/NativeJavaPackage;-><init>(ZLjava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {p3, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    return-object p3
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object p4, Lorg/mozilla/javascript/NativeJavaTopPackage;->FTAG:Ljava/lang/Object;

    invoke-virtual {p1, p4}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_14

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_14

    invoke-direct {p0, p2, p3, p5}, Lorg/mozilla/javascript/NativeJavaTopPackage;->js_getClass(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    :cond_14
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->unknown()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
