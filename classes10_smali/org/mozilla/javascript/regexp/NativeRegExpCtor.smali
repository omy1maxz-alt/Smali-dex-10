.class Lorg/mozilla/javascript/regexp/NativeRegExpCtor;
.super Lorg/mozilla/javascript/BaseFunction;
.source "NativeRegExpCtor.java"


# static fields
.field private static final DOLLAR_ID_BASE:I = 0xc

.field private static final Id_AMPERSAND:I = 0x6

.field private static final Id_BACK_QUOTE:I = 0xa

.field private static final Id_DOLLAR_1:I = 0xd

.field private static final Id_DOLLAR_2:I = 0xe

.field private static final Id_DOLLAR_3:I = 0xf

.field private static final Id_DOLLAR_4:I = 0x10

.field private static final Id_DOLLAR_5:I = 0x11

.field private static final Id_DOLLAR_6:I = 0x12

.field private static final Id_DOLLAR_7:I = 0x13

.field private static final Id_DOLLAR_8:I = 0x14

.field private static final Id_DOLLAR_9:I = 0x15

.field private static final Id_PLUS:I = 0x8

.field private static final Id_QUOTE:I = 0xc

.field private static final Id_STAR:I = 0x2

.field private static final Id_UNDERSCORE:I = 0x4

.field private static final Id_input:I = 0x3

.field private static final Id_lastMatch:I = 0x5

.field private static final Id_lastParen:I = 0x7

.field private static final Id_leftContext:I = 0x9

.field private static final Id_multiline:I = 0x1

.field private static final Id_rightContext:I = 0xb

.field private static final MAX_INSTANCE_ID:I = 0x15

.field private static final serialVersionUID:J = -0x4f90e148c40815ceL


# instance fields
.field private inputAttr:I

.field private multilineAttr:I

.field private starAttr:I

.field private underscoreAttr:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->multilineAttr:I

    iput v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->starAttr:I

    iput v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->inputAttr:I

    iput v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->underscoreAttr:I

    return-void
.end method

.method private static getImpl()Lorg/mozilla/javascript/regexp/RegExpImpl;
    .registers 1

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/regexp/RegExpImpl;

    return-object v0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    array-length p3, p4

    if-lez p3, :cond_17

    const/4 p3, 0x0

    aget-object v0, p4, p3

    instance-of v0, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz v0, :cond_17

    array-length v0, p4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    aget-object v0, p4, v1

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, v1, :cond_17

    :cond_14
    aget-object p1, p4, p3

    return-object p1

    :cond_17
    invoke-virtual {p0, p1, p2, p4}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .registers 5

    new-instance v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    sget-object p1, Lorg/mozilla/javascript/TopLevel$Builtins;->RegExp:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {v0, p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    return-object v0
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .registers 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0xc

    const/16 v3, 0xb

    const/16 v4, 0x9

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eq v0, v8, :cond_4e

    if-eq v0, v7, :cond_49

    if-eq v0, v4, :cond_28

    if-eq v0, v3, :cond_22

    if-eq v0, v2, :cond_1c

    goto/16 :goto_f8

    :cond_1c
    const-string v0, "rightContext"

    const/16 v2, 0xb

    goto/16 :goto_fa

    :cond_22
    const-string v0, "leftContext"

    const/16 v2, 0x9

    goto/16 :goto_fa

    :cond_28
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x4d

    if-ne v0, v2, :cond_35

    const-string v0, "lastMatch"

    const/4 v2, 0x5

    goto/16 :goto_fa

    :cond_35
    const/16 v2, 0x50

    if-ne v0, v2, :cond_40

    const/4 v0, 0x7

    const-string v2, "lastParen"

    move-object v0, v2

    const/4 v2, 0x7

    goto/16 :goto_fa

    :cond_40
    const/16 v2, 0x69

    if-ne v0, v2, :cond_f8

    const-string v0, "multiline"

    const/4 v2, 0x1

    goto/16 :goto_fa

    :cond_49
    const-string v0, "input"

    const/4 v2, 0x3

    goto/16 :goto_fa

    :cond_4e
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x26

    const/16 v4, 0x24

    if-eq v0, v3, :cond_f0

    const/16 v3, 0x27

    if-eq v0, v3, :cond_e9

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_e1

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_d8

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_d0

    const/16 v2, 0x60

    if-eq v0, v2, :cond_c7

    packed-switch v0, :pswitch_data_12a

    goto/16 :goto_f8

    :pswitch_71  #0x39
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f8

    const/16 v2, 0x15

    goto/16 :goto_105

    :pswitch_7b  #0x38
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f8

    const/16 v2, 0x14

    goto/16 :goto_105

    :pswitch_85  #0x37
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f8

    const/16 v2, 0x13

    goto/16 :goto_105

    :pswitch_8f  #0x36
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f8

    const/16 v2, 0x12

    goto/16 :goto_105

    :pswitch_99  #0x35
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f8

    const/16 v2, 0x11

    goto/16 :goto_105

    :pswitch_a3  #0x34
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f8

    const/16 v2, 0x10

    goto :goto_105

    :pswitch_ac  #0x33
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f8

    const/16 v2, 0xf

    goto :goto_105

    :pswitch_b5  #0x32
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f8

    const/16 v2, 0xe

    goto :goto_105

    :pswitch_be  #0x31
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f8

    const/16 v2, 0xd

    goto :goto_105

    :cond_c7
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f8

    const/16 v2, 0xa

    goto :goto_105

    :cond_d0
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f8

    const/4 v2, 0x4

    goto :goto_105

    :cond_d8
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f8

    const/16 v2, 0x8

    goto :goto_105

    :cond_e1
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f8

    const/4 v2, 0x2

    goto :goto_105

    :cond_e9
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f8

    goto :goto_105

    :cond_f0
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_f8

    const/4 v2, 0x6

    goto :goto_105

    :cond_f8
    :goto_f8
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_fa
    if-eqz v0, :cond_105

    if-eq v0, p1, :cond_105

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_105

    const/4 v2, 0x0

    :cond_105
    :goto_105
    if-nez v2, :cond_10c

    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_10c
    if-eq v2, v6, :cond_11e

    if-eq v2, v8, :cond_11b

    if-eq v2, v1, :cond_118

    if-eq v2, v5, :cond_115

    goto :goto_120

    :cond_115
    iget v7, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->underscoreAttr:I

    goto :goto_120

    :cond_118
    iget v7, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->inputAttr:I

    goto :goto_120

    :cond_11b
    iget v7, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->starAttr:I

    goto :goto_120

    :cond_11e
    iget v7, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->multilineAttr:I

    :goto_120
    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result p1

    add-int/2addr p1, v2

    invoke-static {v7, p1}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p1

    return p1

    :pswitch_data_12a
    .packed-switch 0x31
        :pswitch_be  #00000031
        :pswitch_b5  #00000032
        :pswitch_ac  #00000033
        :pswitch_a3  #00000034
        :pswitch_99  #00000035
        :pswitch_8f  #00000036
        :pswitch_85  #00000037
        :pswitch_7b  #00000038
        :pswitch_71  #00000039
    .end packed-switch
.end method

.method public getArity()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .registers 2

    const-string v0, "RegExp"

    return-object v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .registers 6

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_4a

    const/16 v2, 0x15

    if-gt v0, v2, :cond_4a

    packed-switch v0, :pswitch_data_50

    add-int/lit8 v0, v0, -0xc

    sub-int/2addr v0, v1

    const/4 p1, 0x2

    new-array p1, p1, [C

    const/4 v2, 0x0

    const/16 v3, 0x24

    aput-char v3, p1, v2

    add-int/lit8 v0, v0, 0x31

    int-to-char v0, v0

    aput-char v0, p1, v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :pswitch_26  #0xc
    const-string p1, "$\'"

    return-object p1

    :pswitch_29  #0xb
    const-string p1, "rightContext"

    return-object p1

    :pswitch_2c  #0xa
    const-string p1, "$`"

    return-object p1

    :pswitch_2f  #0x9
    const-string p1, "leftContext"

    return-object p1

    :pswitch_32  #0x8
    const-string p1, "$+"

    return-object p1

    :pswitch_35  #0x7
    const-string p1, "lastParen"

    return-object p1

    :pswitch_38  #0x6
    const-string p1, "$&"

    return-object p1

    :pswitch_3b  #0x5
    const-string p1, "lastMatch"

    return-object p1

    :pswitch_3e  #0x4
    const-string p1, "$_"

    return-object p1

    :pswitch_41  #0x3
    const-string p1, "input"

    return-object p1

    :pswitch_44  #0x2
    const-string p1, "$*"

    return-object p1

    :pswitch_47  #0x1
    const-string p1, "multiline"

    return-object p1

    :cond_4a
    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_47  #00000001
        :pswitch_44  #00000002
        :pswitch_41  #00000003
        :pswitch_3e  #00000004
        :pswitch_3b  #00000005
        :pswitch_38  #00000006
        :pswitch_35  #00000007
        :pswitch_32  #00000008
        :pswitch_2f  #00000009
        :pswitch_2c  #0000000a
        :pswitch_29  #0000000b
        :pswitch_26  #0000000c
    .end packed-switch
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .registers 5

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_3c

    const/16 v2, 0x15

    if-gt v0, v2, :cond_3c

    invoke-static {}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->getImpl()Lorg/mozilla/javascript/regexp/RegExpImpl;

    move-result-object p1

    packed-switch v0, :pswitch_data_42

    add-int/lit8 v0, v0, -0xc

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/regexp/RegExpImpl;->getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object p1

    goto :goto_32

    :pswitch_1c  #0xb, 0xc
    iget-object p1, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    goto :goto_32

    :pswitch_1f  #0x9, 0xa
    iget-object p1, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    goto :goto_32

    :pswitch_22  #0x7, 0x8
    iget-object p1, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    goto :goto_32

    :pswitch_25  #0x5, 0x6
    iget-object p1, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    goto :goto_32

    :pswitch_28  #0x3, 0x4
    iget-object p1, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    goto :goto_32

    :pswitch_2b  #0x1, 0x2
    iget-boolean p1, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :goto_32
    if-nez p1, :cond_37

    const-string p1, ""

    goto :goto_3b

    :cond_37
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3b
    return-object p1

    :cond_3c
    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2b  #00000001
        :pswitch_2b  #00000002
        :pswitch_28  #00000003
        :pswitch_28  #00000004
        :pswitch_25  #00000005
        :pswitch_25  #00000006
        :pswitch_22  #00000007
        :pswitch_22  #00000008
        :pswitch_1f  #00000009
        :pswitch_1f  #0000000a
        :pswitch_1c  #0000000b
        :pswitch_1c  #0000000c
    .end packed-switch
.end method

.method public getLength()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method protected getMaxInstanceId()I
    .registers 2

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v0

    add-int/lit8 v0, v0, 0x15

    return v0
.end method

.method protected setInstanceIdAttributes(II)V
    .registers 5

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v0

    sub-int v0, p1, v0

    packed-switch v0, :pswitch_data_24

    add-int/lit8 v0, v0, -0xc

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_20

    const/16 v1, 0x8

    if-gt v0, v1, :cond_20

    :pswitch_13  #0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc
    return-void

    :pswitch_14  #0x4
    iput p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->underscoreAttr:I

    return-void

    :pswitch_17  #0x3
    iput p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->inputAttr:I

    return-void

    :pswitch_1a  #0x2
    iput p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->starAttr:I

    return-void

    :pswitch_1d  #0x1
    iput p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->multilineAttr:I

    return-void

    :cond_20
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->setInstanceIdAttributes(II)V

    return-void

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1d  #00000001
        :pswitch_1a  #00000002
        :pswitch_17  #00000003
        :pswitch_14  #00000004
        :pswitch_13  #00000005
        :pswitch_13  #00000006
        :pswitch_13  #00000007
        :pswitch_13  #00000008
        :pswitch_13  #00000009
        :pswitch_13  #0000000a
        :pswitch_13  #0000000b
        :pswitch_13  #0000000c
    .end packed-switch
.end method

.method protected setInstanceIdValue(ILjava/lang/Object;)V
    .registers 5

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v0

    sub-int v0, p1, v0

    packed-switch v0, :pswitch_data_2e

    add-int/lit8 v0, v0, -0xc

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2a

    const/16 v1, 0x8

    if-gt v0, v1, :cond_2a

    :pswitch_13  #0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc
    return-void

    :pswitch_14  #0x3, 0x4
    invoke-static {}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->getImpl()Lorg/mozilla/javascript/regexp/RegExpImpl;

    move-result-object p1

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    return-void

    :pswitch_1f  #0x1, 0x2
    invoke-static {}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->getImpl()Lorg/mozilla/javascript/regexp/RegExpImpl;

    move-result-object p1

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    return-void

    :cond_2a
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->setInstanceIdValue(ILjava/lang/Object;)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1f  #00000001
        :pswitch_1f  #00000002
        :pswitch_14  #00000003
        :pswitch_14  #00000004
        :pswitch_13  #00000005
        :pswitch_13  #00000006
        :pswitch_13  #00000007
        :pswitch_13  #00000008
        :pswitch_13  #00000009
        :pswitch_13  #0000000a
        :pswitch_13  #0000000b
        :pswitch_13  #0000000c
    .end packed-switch
.end method
