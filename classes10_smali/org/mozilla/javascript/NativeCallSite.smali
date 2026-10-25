.class public Lorg/mozilla/javascript/NativeCallSite;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeCallSite.java"


# static fields
.field private static final CALLSITE_TAG:Ljava/lang/String; = "CallSite"

.field private static final Id_constructor:I = 0x1

.field private static final Id_getColumnNumber:I = 0x9

.field private static final Id_getEvalOrigin:I = 0xa

.field private static final Id_getFileName:I = 0x7

.field private static final Id_getFunction:I = 0x4

.field private static final Id_getFunctionName:I = 0x5

.field private static final Id_getLineNumber:I = 0x8

.field private static final Id_getMethodName:I = 0x6

.field private static final Id_getThis:I = 0x2

.field private static final Id_getTypeName:I = 0x3

.field private static final Id_isConstructor:I = 0xe

.field private static final Id_isEval:I = 0xc

.field private static final Id_isNative:I = 0xd

.field private static final Id_isToplevel:I = 0xb

.field private static final Id_toString:I = 0xf

.field private static final MAX_PROTOTYPE_ID:I = 0xf

.field private static final serialVersionUID:J = 0x254f04c65c92283aL


# instance fields
.field private element:Lorg/mozilla/javascript/ScriptStackElement;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method private static getFileName(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 2

    :goto_0
    if-eqz p0, :cond_b

    instance-of v0, p0, Lorg/mozilla/javascript/NativeCallSite;

    if-nez v0, :cond_b

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    goto :goto_0

    :cond_b
    if-nez p0, :cond_10

    sget-object p0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p0

    :cond_10
    check-cast p0, Lorg/mozilla/javascript/NativeCallSite;

    iget-object p0, p0, Lorg/mozilla/javascript/NativeCallSite;->element:Lorg/mozilla/javascript/ScriptStackElement;

    if-nez p0, :cond_18

    const/4 p0, 0x0

    goto :goto_1a

    :cond_18
    iget-object p0, p0, Lorg/mozilla/javascript/ScriptStackElement;->fileName:Ljava/lang/String;

    :goto_1a
    return-object p0
.end method

.method private static getFunctionName(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 2

    :goto_0
    if-eqz p0, :cond_b

    instance-of v0, p0, Lorg/mozilla/javascript/NativeCallSite;

    if-nez v0, :cond_b

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    goto :goto_0

    :cond_b
    if-nez p0, :cond_10

    sget-object p0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p0

    :cond_10
    check-cast p0, Lorg/mozilla/javascript/NativeCallSite;

    iget-object p0, p0, Lorg/mozilla/javascript/NativeCallSite;->element:Lorg/mozilla/javascript/ScriptStackElement;

    if-nez p0, :cond_18

    const/4 p0, 0x0

    goto :goto_1a

    :cond_18
    iget-object p0, p0, Lorg/mozilla/javascript/ScriptStackElement;->functionName:Ljava/lang/String;

    :goto_1a
    return-object p0
.end method

.method private static getLineNumber(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 2

    :goto_0
    if-eqz p0, :cond_b

    instance-of v0, p0, Lorg/mozilla/javascript/NativeCallSite;

    if-nez v0, :cond_b

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    goto :goto_0

    :cond_b
    if-nez p0, :cond_10

    sget-object p0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p0

    :cond_10
    check-cast p0, Lorg/mozilla/javascript/NativeCallSite;

    iget-object p0, p0, Lorg/mozilla/javascript/NativeCallSite;->element:Lorg/mozilla/javascript/ScriptStackElement;

    if-eqz p0, :cond_20

    iget p0, p0, Lorg/mozilla/javascript/ScriptStackElement;->lineNumber:I

    if-gez p0, :cond_1b

    goto :goto_20

    :cond_1b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_20
    :goto_20
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/NativeCallSite;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeCallSite;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private static js_toString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .registers 2

    :goto_0
    if-eqz p0, :cond_b

    instance-of v0, p0, Lorg/mozilla/javascript/NativeCallSite;

    if-nez v0, :cond_b

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    goto :goto_0

    :cond_b
    if-nez p0, :cond_10

    sget-object p0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p0

    :cond_10
    check-cast p0, Lorg/mozilla/javascript/NativeCallSite;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/mozilla/javascript/NativeCallSite;->element:Lorg/mozilla/javascript/ScriptStackElement;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ScriptStackElement;->renderJavaStyle(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static make(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeCallSite;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/NativeCallSite;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeCallSite;-><init>()V

    const-string v1, "prototype"

    invoke-interface {p1, v1, p1}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    return-object v0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const-string v0, "CallSite"

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p2

    packed-switch p2, :pswitch_data_40

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1e  #0xf
    invoke-static {p4}, Lorg/mozilla/javascript/NativeCallSite;->js_toString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_23  #0xa, 0xb, 0xc, 0xd, 0xe
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_26  #0x8
    invoke-static {p4}, Lorg/mozilla/javascript/NativeCallSite;->getLineNumber(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2b  #0x7
    invoke-static {p4}, Lorg/mozilla/javascript/NativeCallSite;->getFileName(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_30  #0x6
    const/4 p1, 0x0

    return-object p1

    :pswitch_32  #0x5
    invoke-static {p4}, Lorg/mozilla/javascript/NativeCallSite;->getFunctionName(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_37  #0x2, 0x3, 0x4, 0x9
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    :pswitch_3a  #0x1
    invoke-static {p3, p1}, Lorg/mozilla/javascript/NativeCallSite;->make(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeCallSite;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3a  #00000001
        :pswitch_37  #00000002
        :pswitch_37  #00000003
        :pswitch_37  #00000004
        :pswitch_32  #00000005
        :pswitch_30  #00000006
        :pswitch_2b  #00000007
        :pswitch_26  #00000008
        :pswitch_37  #00000009
        :pswitch_23  #0000000a
        :pswitch_23  #0000000b
        :pswitch_23  #0000000c
        :pswitch_23  #0000000d
        :pswitch_23  #0000000e
        :pswitch_1e  #0000000f
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x74

    const/4 v2, 0x4

    const/16 v3, 0x69

    const/4 v4, 0x3

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_a0

    :pswitch_e  #0x9, 0xc, 0xe
    goto/16 :goto_90

    :pswitch_10  #0xf
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1e

    const/16 v2, 0x9

    const-string v0, "getColumnNumber"

    goto/16 :goto_92

    :cond_1e
    const/16 v1, 0x46

    if-ne v0, v1, :cond_90

    const/4 v2, 0x5

    const-string v0, "getFunctionName"

    goto/16 :goto_92

    :pswitch_27  #0xd
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x45

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_45

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_40

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_3c

    goto :goto_90

    :cond_3c
    const/4 v2, 0x6

    const-string v0, "getMethodName"

    goto :goto_92

    :cond_40
    const/16 v2, 0x8

    const-string v0, "getLineNumber"

    goto :goto_92

    :cond_45
    const/16 v2, 0xe

    const-string v0, "isConstructor"

    goto :goto_92

    :cond_4a
    const/16 v2, 0xa

    const-string v0, "getEvalOrigin"

    goto :goto_92

    :pswitch_4f  #0xb
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_6b

    const/16 v3, 0x79

    if-eq v0, v3, :cond_67

    if-eq v0, v1, :cond_63

    const/16 v1, 0x75

    if-eq v0, v1, :cond_60

    goto :goto_90

    :cond_60
    const-string v0, "getFunction"

    goto :goto_92

    :cond_63
    const/4 v2, 0x1

    const-string v0, "constructor"

    goto :goto_92

    :cond_67
    const-string v0, "getTypeName"

    const/4 v2, 0x3

    goto :goto_92

    :cond_6b
    const/4 v2, 0x7

    const-string v0, "getFileName"

    goto :goto_92

    :pswitch_6f  #0xa
    const/16 v2, 0xb

    const-string v0, "isToplevel"

    goto :goto_92

    :pswitch_74  #0x8
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_7f

    const/16 v2, 0xd

    const-string v0, "isNative"

    goto :goto_92

    :cond_7f
    if-ne v0, v1, :cond_90

    const/16 v2, 0xf

    const-string/jumbo v0, "toString"

    goto :goto_92

    :pswitch_87  #0x7
    const/4 v2, 0x2

    const-string v0, "getThis"

    goto :goto_92

    :pswitch_8b  #0x6
    const/16 v2, 0xc

    const-string v0, "isEval"

    goto :goto_92

    :cond_90
    :goto_90
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_92
    if-eqz v0, :cond_9d

    if-eq v0, p1, :cond_9d

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9d

    goto :goto_9e

    :cond_9d
    move v5, v2

    :goto_9e
    return v5

    nop

    :pswitch_data_a0
    .packed-switch 0x6
        :pswitch_8b  #00000006
        :pswitch_87  #00000007
        :pswitch_74  #00000008
        :pswitch_e  #00000009
        :pswitch_6f  #0000000a
        :pswitch_4f  #0000000b
        :pswitch_e  #0000000c
        :pswitch_27  #0000000d
        :pswitch_e  #0000000e
        :pswitch_10  #0000000f
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "CallSite"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .registers 5

    packed-switch p1, :pswitch_data_42

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d  #0xf
    const-string/jumbo v0, "toString"

    goto :goto_3a

    :pswitch_11  #0xe
    const-string v0, "isConstructor"

    goto :goto_3a

    :pswitch_14  #0xd
    const-string v0, "isNative"

    goto :goto_3a

    :pswitch_17  #0xc
    const-string v0, "isEval"

    goto :goto_3a

    :pswitch_1a  #0xb
    const-string v0, "isToplevel"

    goto :goto_3a

    :pswitch_1d  #0xa
    const-string v0, "getEvalOrigin"

    goto :goto_3a

    :pswitch_20  #0x9
    const-string v0, "getColumnNumber"

    goto :goto_3a

    :pswitch_23  #0x8
    const-string v0, "getLineNumber"

    goto :goto_3a

    :pswitch_26  #0x7
    const-string v0, "getFileName"

    goto :goto_3a

    :pswitch_29  #0x6
    const-string v0, "getMethodName"

    goto :goto_3a

    :pswitch_2c  #0x5
    const-string v0, "getFunctionName"

    goto :goto_3a

    :pswitch_2f  #0x4
    const-string v0, "getFunction"

    goto :goto_3a

    :pswitch_32  #0x3
    const-string v0, "getTypeName"

    goto :goto_3a

    :pswitch_35  #0x2
    const-string v0, "getThis"

    goto :goto_3a

    :pswitch_38  #0x1
    const-string v0, "constructor"

    :goto_3a
    const/4 v1, 0x0

    const-string v2, "CallSite"

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_35  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_2c  #00000005
        :pswitch_29  #00000006
        :pswitch_26  #00000007
        :pswitch_23  #00000008
        :pswitch_20  #00000009
        :pswitch_1d  #0000000a
        :pswitch_1a  #0000000b
        :pswitch_17  #0000000c
        :pswitch_14  #0000000d
        :pswitch_11  #0000000e
        :pswitch_d  #0000000f
    .end packed-switch
.end method

.method setElement(Lorg/mozilla/javascript/ScriptStackElement;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/NativeCallSite;->element:Lorg/mozilla/javascript/ScriptStackElement;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeCallSite;->element:Lorg/mozilla/javascript/ScriptStackElement;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    :cond_7
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptStackElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
