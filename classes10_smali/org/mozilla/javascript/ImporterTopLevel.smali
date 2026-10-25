.class public Lorg/mozilla/javascript/ImporterTopLevel;
.super Lorg/mozilla/javascript/TopLevel;
.source "ImporterTopLevel.java"


# static fields
.field private static final IMPORTER_TAG:Ljava/lang/Object;

.field private static final Id_constructor:I = 0x1

.field private static final Id_importClass:I = 0x2

.field private static final Id_importPackage:I = 0x3

.field private static final MAX_PROTOTYPE_ID:I = 0x3

.field private static final serialVersionUID:J = -0x7e3948b0fe0fbc54L


# instance fields
.field private importedPackages:Lorg/mozilla/javascript/ObjArray;

.field private topScopeFlag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Importer"

    sput-object v0, Lorg/mozilla/javascript/ImporterTopLevel;->IMPORTER_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/TopLevel;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ImporterTopLevel;->importedPackages:Lorg/mozilla/javascript/ObjArray;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ImporterTopLevel;-><init>(Lorg/mozilla/javascript/Context;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Context;Z)V
    .registers 4

    invoke-direct {p0}, Lorg/mozilla/javascript/TopLevel;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/ImporterTopLevel;->importedPackages:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/ImporterTopLevel;->initStandardObjects(Lorg/mozilla/javascript/Context;Z)V

    return-void
.end method

.method private getPackageProperty(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 9

    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/ImporterTopLevel;->importedPackages:Lorg/mozilla/javascript/ObjArray;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lorg/mozilla/javascript/ImporterTopLevel;->importedPackages:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjArray;->toArray()[Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_38

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_e
    array-length v4, v2

    if-ge v3, v4, :cond_37

    aget-object v4, v2, v3

    check-cast v4, Lorg/mozilla/javascript/NativeJavaPackage;

    invoke-virtual {v4, p1, p2, v1}, Lorg/mozilla/javascript/NativeJavaPackage;->getPkgProperty(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_34

    instance-of v5, v4, Lorg/mozilla/javascript/NativeJavaPackage;

    if-nez v5, :cond_34

    sget-object v5, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v5, :cond_25

    move-object v0, v4

    goto :goto_34

    :cond_25
    const-string p1, "msg.ambig.import"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_37
    return-object v0

    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    goto :goto_3c

    :goto_3b
    throw p1

    :goto_3c
    goto :goto_3b
.end method

.method private importClass(Lorg/mozilla/javascript/NativeJavaClass;)V
    .registers 5

    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeJavaClass;->getClassObject()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lorg/mozilla/javascript/ImporterTopLevel;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v1, v2, :cond_26

    if-ne v1, p1, :cond_1f

    goto :goto_26

    :cond_1f
    const-string p1, "msg.prop.defined"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_26
    :goto_26
    invoke-virtual {p0, v0, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method private importPackage(Lorg/mozilla/javascript/NativeJavaPackage;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lorg/mozilla/javascript/ImporterTopLevel;->importedPackages:Lorg/mozilla/javascript/ObjArray;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_7
    :try_start_7
    iget-object v2, p0, Lorg/mozilla/javascript/ImporterTopLevel;->importedPackages:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_20

    iget-object v2, p0, Lorg/mozilla/javascript/ImporterTopLevel;->importedPackages:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/NativeJavaPackage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    monitor-exit v0

    return-void

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    iget-object v1, p0, Lorg/mozilla/javascript/ImporterTopLevel;->importedPackages:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    goto :goto_2b

    :goto_2a
    throw p1

    :goto_2b
    goto :goto_2a
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 4

    new-instance p0, Lorg/mozilla/javascript/ImporterTopLevel;

    invoke-direct {p0}, Lorg/mozilla/javascript/ImporterTopLevel;-><init>()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private js_construct(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    new-instance v0, Lorg/mozilla/javascript/ImporterTopLevel;

    invoke-direct {v0}, Lorg/mozilla/javascript/ImporterTopLevel;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p2

    if-eq v1, v2, :cond_2c

    aget-object v2, p2, v1

    instance-of v3, v2, Lorg/mozilla/javascript/NativeJavaClass;

    if-eqz v3, :cond_15

    check-cast v2, Lorg/mozilla/javascript/NativeJavaClass;

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/ImporterTopLevel;->importClass(Lorg/mozilla/javascript/NativeJavaClass;)V

    goto :goto_1e

    :cond_15
    instance-of v3, v2, Lorg/mozilla/javascript/NativeJavaPackage;

    if-eqz v3, :cond_21

    check-cast v2, Lorg/mozilla/javascript/NativeJavaPackage;

    invoke-direct {v0, v2}, Lorg/mozilla/javascript/ImporterTopLevel;->importPackage(Lorg/mozilla/javascript/NativeJavaPackage;)V

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_21
    invoke-static {v2}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.not.class.not.pkg"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_2c
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-object v0
.end method

.method private js_importClass([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-eq v0, v1, :cond_1d

    aget-object v1, p1, v0

    instance-of v2, v1, Lorg/mozilla/javascript/NativeJavaClass;

    if-eqz v2, :cond_12

    check-cast v1, Lorg/mozilla/javascript/NativeJavaClass;

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/ImporterTopLevel;->importClass(Lorg/mozilla/javascript/NativeJavaClass;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    invoke-static {v1}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg.not.class"

    invoke-static {v0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_1d
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1
.end method

.method private js_importPackage([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-eq v0, v1, :cond_1d

    aget-object v1, p1, v0

    instance-of v2, v1, Lorg/mozilla/javascript/NativeJavaPackage;

    if-eqz v2, :cond_12

    check-cast v1, Lorg/mozilla/javascript/NativeJavaPackage;

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/ImporterTopLevel;->importPackage(Lorg/mozilla/javascript/NativeJavaPackage;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    invoke-static {v1}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "msg.not.pkg"

    invoke-static {v0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    :cond_1d
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1
.end method

.method private realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/ImporterTopLevel;
    .registers 4

    iget-boolean v0, p0, Lorg/mozilla/javascript/ImporterTopLevel;->topScopeFlag:Z

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    instance-of v0, p1, Lorg/mozilla/javascript/ImporterTopLevel;

    if-eqz v0, :cond_c

    check-cast p1, Lorg/mozilla/javascript/ImporterTopLevel;

    return-object p1

    :cond_c
    invoke-static {p2}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lorg/mozilla/javascript/ImporterTopLevel;->IMPORTER_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_36

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2d

    const/4 p3, 0x3

    if-ne p2, p3, :cond_23

    invoke-direct {p0, p4, p1}, Lorg/mozilla/javascript/ImporterTopLevel;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/ImporterTopLevel;

    move-result-object p1

    invoke-direct {p1, p5}, Lorg/mozilla/javascript/ImporterTopLevel;->js_importPackage([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    invoke-direct {p0, p4, p1}, Lorg/mozilla/javascript/ImporterTopLevel;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/ImporterTopLevel;

    move-result-object p1

    invoke-direct {p1, p5}, Lorg/mozilla/javascript/ImporterTopLevel;->js_importClass([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_36
    invoke-direct {p0, p3, p5}, Lorg/mozilla/javascript/ImporterTopLevel;->js_construct(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1d

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_15

    const/4 v0, 0x1

    const-string v2, "constructor"

    goto :goto_27

    :cond_15
    const/16 v2, 0x69

    if-ne v0, v2, :cond_25

    const/4 v0, 0x2

    const-string v2, "importClass"

    goto :goto_27

    :cond_1d
    const/16 v2, 0xd

    if-ne v0, v2, :cond_25

    const/4 v0, 0x3

    const-string v2, "importPackage"

    goto :goto_27

    :cond_25
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_27
    if-eqz v2, :cond_32

    if-eq v2, p1, :cond_32

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_33

    :cond_32
    move v1, v0

    :goto_33
    return v1
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 5

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_9

    return-object v0

    :cond_9
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ImporterTopLevel;->getPackageProperty(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/javascript/ImporterTopLevel;->topScopeFlag:Z

    if-eqz v0, :cond_7

    const-string v0, "global"

    goto :goto_9

    :cond_7
    const-string v0, "JavaImporter"

    :goto_9
    return-object v0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ImporterTopLevel;->getPackageProperty(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p1, p2, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method public importPackage(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Function;)V
    .registers 5

    invoke-direct {p0, p3}, Lorg/mozilla/javascript/ImporterTopLevel;->js_importPackage([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected initPrototypeId(I)V
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v1, 0x2

    if-eq p1, v1, :cond_16

    const/4 v1, 0x3

    if-ne p1, v1, :cond_c

    const-string v1, "importPackage"

    goto :goto_1c

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    const-string v1, "importClass"

    goto :goto_1c

    :cond_19
    const/4 v0, 0x0

    const-string v1, "constructor"

    :goto_1c
    sget-object v2, Lorg/mozilla/javascript/ImporterTopLevel;->IMPORTER_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method public initStandardObjects(Lorg/mozilla/javascript/Context;Z)V
    .registers 4

    invoke-virtual {p1, p0, p2}, Lorg/mozilla/javascript/Context;->initStandardObjects(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/ScriptableObject;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/javascript/ImporterTopLevel;->topScopeFlag:Z

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p0, v0}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    move-result-object p1

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_11
    const-string p1, "constructor"

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->delete(Ljava/lang/String;)V

    return-void
.end method
