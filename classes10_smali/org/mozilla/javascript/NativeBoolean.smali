.class final Lorg/mozilla/javascript/NativeBoolean;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeBoolean.java"


# static fields
.field private static final BOOLEAN_TAG:Ljava/lang/Object;

.field private static final Id_constructor:I = 0x1

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field private static final Id_valueOf:I = 0x4

.field private static final MAX_PROTOTYPE_ID:I = 0x4

.field private static final serialVersionUID:J = -0x33956cfcac6218e5L


# instance fields
.field private booleanValue:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Boolean"

    sput-object v0, Lorg/mozilla/javascript/NativeBoolean;->BOOLEAN_TAG:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    iput-boolean p1, p0, Lorg/mozilla/javascript/NativeBoolean;->booleanValue:Z

    return-void
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/NativeBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeBoolean;-><init>(Z)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lorg/mozilla/javascript/NativeBoolean;->BOOLEAN_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_3e

    array-length p1, p5

    const/4 p2, 0x0

    if-nez p1, :cond_19

    goto :goto_31

    :cond_19
    aget-object p1, p5, p2

    instance-of p1, p1, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz p1, :cond_2a

    aget-object p1, p5, p2

    check-cast p1, Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject;->avoidObjectDetection()Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_31

    :cond_2a
    aget-object p1, p5, p2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p1

    move p2, p1

    :goto_31
    if-nez p4, :cond_39

    new-instance p1, Lorg/mozilla/javascript/NativeBoolean;

    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeBoolean;-><init>(Z)V

    return-object p1

    :cond_39
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3e
    instance-of p3, p4, Lorg/mozilla/javascript/NativeBoolean;

    if-eqz p3, :cond_6f

    check-cast p4, Lorg/mozilla/javascript/NativeBoolean;

    iget-boolean p1, p4, Lorg/mozilla/javascript/NativeBoolean;->booleanValue:Z

    const/4 p3, 0x2

    if-eq p2, p3, :cond_66

    const/4 p3, 0x3

    if-eq p2, p3, :cond_5e

    const/4 p3, 0x4

    if-ne p2, p3, :cond_54

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5e
    if-eqz p1, :cond_63

    const-string p1, "(new Boolean(true))"

    goto :goto_65

    :cond_63
    const-string p1, "(new Boolean(false))"

    :goto_65
    return-object p1

    :cond_66
    if-eqz p1, :cond_6c

    const-string/jumbo p1, "true"

    goto :goto_6e

    :cond_6c
    const-string p1, "false"

    :goto_6e
    return-object p1

    :cond_6f
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_e

    const/4 v1, 0x4

    const-string/jumbo v0, "valueOf"

    goto :goto_31

    :cond_e
    const/16 v3, 0x8

    if-ne v0, v3, :cond_27

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x6f

    if-ne v0, v3, :cond_1e

    const-string/jumbo v0, "toSource"

    goto :goto_31

    :cond_1e
    const/16 v1, 0x74

    if-ne v0, v1, :cond_2f

    const/4 v1, 0x2

    const-string/jumbo v0, "toString"

    goto :goto_31

    :cond_27
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2f

    const/4 v1, 0x1

    const-string v0, "constructor"

    goto :goto_31

    :cond_2f
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_31
    if-eqz v0, :cond_3c

    if-eq v0, p1, :cond_3c

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v2, v1

    :goto_3d
    return v2
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Boolean"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_b

    iget-boolean p1, p0, Lorg/mozilla/javascript/NativeBoolean;->booleanValue:Z

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected initPrototypeId(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    const-string/jumbo v0, "valueOf"

    goto :goto_27

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    const-string/jumbo v0, "toSource"

    goto :goto_27

    :cond_1f
    const-string/jumbo v0, "toString"

    goto :goto_27

    :cond_23
    const-string v1, "constructor"

    move-object v0, v1

    const/4 v1, 0x1

    :goto_27
    sget-object v2, Lorg/mozilla/javascript/NativeBoolean;->BOOLEAN_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method
