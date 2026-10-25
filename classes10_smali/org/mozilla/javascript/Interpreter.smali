.class public final Lorg/mozilla/javascript/Interpreter;
.super Lorg/mozilla/javascript/Icode;
.source "Interpreter.java"

# interfaces
.implements Lorg/mozilla/javascript/Evaluator;


# static fields
.field static final EXCEPTION_HANDLER_SLOT:I = 0x2

.field static final EXCEPTION_LOCAL_SLOT:I = 0x4

.field static final EXCEPTION_SCOPE_SLOT:I = 0x5

.field static final EXCEPTION_SLOT_SIZE:I = 0x6

.field static final EXCEPTION_TRY_END_SLOT:I = 0x1

.field static final EXCEPTION_TRY_START_SLOT:I = 0x0

.field static final EXCEPTION_TYPE_SLOT:I = 0x3


# instance fields
.field itsData:Lorg/mozilla/javascript/InterpreterData;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/Icode;-><init>()V

    return-void
.end method

.method static synthetic access$000([Ljava/lang/Object;[DII)[Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/Interpreter;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V

    return-void
.end method

.method static synthetic access$200(Lorg/mozilla/javascript/InterpreterData;Lorg/mozilla/javascript/InterpreterData;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/Interpreter;->compareIdata(Lorg/mozilla/javascript/InterpreterData;Lorg/mozilla/javascript/InterpreterData;)Z

    move-result p0

    return p0
.end method

.method private static addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V
    .registers 5

    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iget p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    sub-int/2addr v1, p1

    add-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    iget p1, p0, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    if-le v0, p1, :cond_15

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->observeInstructionCount(I)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    :cond_15
    return-void
.end method

.method private static bytecodeSpan(I)I
    .registers 5

    const/16 v0, -0x42

    const/4 v1, 0x3

    if-eq p0, v0, :cond_52

    const/16 v0, -0x41

    if-eq p0, v0, :cond_52

    const/16 v0, -0x36

    if-eq p0, v0, :cond_52

    const/16 v0, -0x17

    if-eq p0, v0, :cond_52

    const/16 v0, -0x15

    const/4 v2, 0x5

    if-eq p0, v0, :cond_51

    const/16 v0, 0x32

    if-eq p0, v0, :cond_52

    const/16 v0, 0x39

    const/4 v3, 0x2

    if-eq p0, v0, :cond_50

    const/16 v0, 0x49

    if-eq p0, v0, :cond_52

    if-eq p0, v2, :cond_52

    const/4 v0, 0x6

    if-eq p0, v0, :cond_52

    const/4 v0, 0x7

    if-eq p0, v0, :cond_52

    packed-switch p0, :pswitch_data_54

    packed-switch p0, :pswitch_data_5e

    packed-switch p0, :pswitch_data_6c

    packed-switch p0, :pswitch_data_76

    packed-switch p0, :pswitch_data_80

    invoke-static {p0}, Lorg/mozilla/javascript/Icode;->validBytecode(I)Z

    move-result p0

    if-eqz p0, :cond_42

    const/4 p0, 0x1

    return p0

    :cond_42
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_47  #0xfffffff5, 0xfffffff6, 0xfffffff7, 0xfffffff8, 0xfffffff9
    return v3

    :pswitch_48  #0xffffffe5, 0xffffffe6
    return v1

    :pswitch_49  #0xffffffe4
    return v2

    :pswitch_4a  #0xffffffda
    return v3

    :pswitch_4b  #0xffffffd9
    return v1

    :pswitch_4c  #0xffffffd8
    return v2

    :pswitch_4d  #0xffffffd3
    return v3

    :pswitch_4e  #0xffffffd2
    return v1

    :pswitch_4f  #0xffffffd1
    return v2

    :cond_50
    :pswitch_50  #0xffffffc3, 0xffffffcf, 0xffffffd0
    return v3

    :cond_51
    return v2

    :cond_52
    :pswitch_52  #0xffffffc1, 0xffffffc2, 0xfffffffa
    return v1

    nop

    :pswitch_data_54
    .packed-switch -0x3f
        :pswitch_52  #ffffffc1
        :pswitch_52  #ffffffc2
        :pswitch_50  #ffffffc3
    .end packed-switch

    :pswitch_data_5e
    .packed-switch -0x31
        :pswitch_50  #ffffffcf
        :pswitch_50  #ffffffd0
        :pswitch_4f  #ffffffd1
        :pswitch_4e  #ffffffd2
        :pswitch_4d  #ffffffd3
    .end packed-switch

    :pswitch_data_6c
    .packed-switch -0x28
        :pswitch_4c  #ffffffd8
        :pswitch_4b  #ffffffd9
        :pswitch_4a  #ffffffda
    .end packed-switch

    :pswitch_data_76
    .packed-switch -0x1c
        :pswitch_49  #ffffffe4
        :pswitch_48  #ffffffe5
        :pswitch_48  #ffffffe6
    .end packed-switch

    :pswitch_data_80
    .packed-switch -0xb
        :pswitch_47  #fffffff5
        :pswitch_47  #fffffff6
        :pswitch_47  #fffffff7
        :pswitch_47  #fffffff8
        :pswitch_47  #fffffff9
        :pswitch_52  #fffffffa
    .end packed-switch
.end method

.method public static captureContinuation(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/NativeContinuation;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-eqz v0, :cond_10

    instance-of v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v1, :cond_10

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Interpreter frames not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;
    .registers 9

    new-instance v0, Lorg/mozilla/javascript/NativeContinuation;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeContinuation;-><init>()V

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    move-object p0, p1

    move-object v1, p0

    :goto_e
    if-eqz p0, :cond_42

    iget-boolean v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v2, :cond_42

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    iget v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    add-int/2addr v2, v1

    :goto_1a
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    array-length v3, v1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2a

    aput-object v4, v1, v2

    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    const/4 v3, 0x0

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2a
    iget v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/16 v3, 0x26

    if-ne v2, v3, :cond_35

    iget v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object v4, v1, v2

    goto :goto_3c

    :cond_35
    const/16 v1, 0x1e

    if-eq v2, v1, :cond_3c

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_3c
    :goto_3c
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_e

    :cond_42
    if-eqz p2, :cond_57

    :goto_44
    iget-object p0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz p0, :cond_4a

    move-object v1, p0

    goto :goto_44

    :cond_4a
    iget-boolean p0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->isContinuationsTopFrame:Z

    if-eqz p0, :cond_4f

    goto :goto_57

    :cond_4f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot capture continuation from JavaScript code not called directly by executeScriptWithContinuations or callFunctionWithContinuations"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    :goto_57
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/NativeContinuation;->initImplementation(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static captureFrameForGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    invoke-virtual {p0}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    const/4 p0, 0x0

    iput-object p0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iput v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    return-object v0
.end method

.method private static compareIdata(Lorg/mozilla/javascript/InterpreterData;Lorg/mozilla/javascript/InterpreterData;)Z
    .registers 2

    if-eq p0, p1, :cond_13

    invoke-static {p0}, Lorg/mozilla/javascript/Interpreter;->getEncodedSource(Lorg/mozilla/javascript/InterpreterData;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/Interpreter;->getEncodedSource(Lorg/mozilla/javascript/InterpreterData;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private static doAdd([Ljava/lang/Object;[DILorg/mozilla/javascript/Context;)V
    .registers 11

    add-int/lit8 v0, p2, 0x1

    aget-object v1, p0, v0

    aget-object v2, p0, p2

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v3, :cond_16

    aget-wide v0, p1, v0

    if-ne v2, v3, :cond_14

    aget-wide v2, p1, p2

    add-double/2addr v2, v0

    aput-wide v2, p1, p2

    return-void

    :cond_14
    const/4 v4, 0x1

    goto :goto_1e

    :cond_16
    if-ne v2, v3, :cond_67

    aget-wide v4, p1, p2

    const/4 v0, 0x0

    move-object v2, v1

    move-wide v0, v4

    const/4 v4, 0x0

    :goto_1e
    instance-of v5, v2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v5, :cond_32

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    if-nez v4, :cond_2b

    move-object v6, v2

    move-object v2, p1

    move-object p1, v6

    :cond_2b
    invoke-static {v2, p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, p2

    goto :goto_66

    :cond_32
    instance-of p3, v2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_52

    const/16 p1, 0xa

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object p1

    if-eqz v4, :cond_48

    new-instance p3, Lorg/mozilla/javascript/ConsString;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {p3, v2, p1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p3, p0, p2

    goto :goto_66

    :cond_48
    new-instance p3, Lorg/mozilla/javascript/ConsString;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {p3, p1, v2}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p3, p0, p2

    goto :goto_66

    :cond_52
    instance-of p3, v2, Ljava/lang/Number;

    if-eqz p3, :cond_5d

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    goto :goto_61

    :cond_5d
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    :goto_61
    aput-object v3, p0, p2

    add-double/2addr v4, v0

    aput-wide v4, p1, p2

    :goto_66
    return-void

    :cond_67
    instance-of v0, v2, Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_c8

    instance-of v0, v1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_70

    goto :goto_c8

    :cond_70
    instance-of p3, v2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_92

    instance-of p1, v1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_84

    new-instance p1, Lorg/mozilla/javascript/ConsString;

    check-cast v2, Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p1, v2, v1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p1, p0, p2

    goto :goto_ce

    :cond_84
    new-instance p1, Lorg/mozilla/javascript/ConsString;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {p1, v2, p3}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p1, p0, p2

    goto :goto_ce

    :cond_92
    instance-of p3, v1, Ljava/lang/CharSequence;

    if-eqz p3, :cond_a4

    new-instance p1, Lorg/mozilla/javascript/ConsString;

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toCharSequence(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p3

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p1, p3, v1}, Lorg/mozilla/javascript/ConsString;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    aput-object p1, p0, p2

    goto :goto_ce

    :cond_a4
    instance-of p3, v2, Ljava/lang/Number;

    if-eqz p3, :cond_af

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    goto :goto_b3

    :cond_af
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    :goto_b3
    instance-of p3, v1, Ljava/lang/Number;

    if-eqz p3, :cond_be

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_c2

    :cond_be
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    :goto_c2
    aput-object v3, p0, p2

    add-double/2addr v4, v0

    aput-wide v4, p1, p2

    goto :goto_ce

    :cond_c8
    :goto_c8
    invoke-static {v2, v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, p2

    :goto_ce
    return-void
.end method

.method private static doArithmetic(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .registers 9

    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v0

    add-int/lit8 p4, p4, -0x1

    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v2

    sget-object p0, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object p0, p2, p4

    packed-switch p1, :pswitch_data_1e

    goto :goto_1a

    :pswitch_12  #0x19
    rem-double/2addr v2, v0

    goto :goto_1a

    :pswitch_14  #0x18
    div-double/2addr v2, v0

    goto :goto_1a

    :pswitch_16  #0x17
    mul-double v2, v2, v0

    goto :goto_1a

    :pswitch_19  #0x16
    sub-double/2addr v2, v0

    :goto_1a
    aput-wide v2, p3, p4

    return p4

    nop

    :pswitch_data_1e
    .packed-switch 0x16
        :pswitch_19  #00000016
        :pswitch_16  #00000017
        :pswitch_14  #00000018
        :pswitch_12  #00000019
    .end packed-switch
.end method

.method private static doBitOp(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .registers 7

    add-int/lit8 v0, p4, -0x1

    invoke-static {p0, v0}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result v0

    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result p0

    add-int/lit8 p4, p4, -0x1

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object v1, p2, p4

    const/16 p2, 0x12

    if-eq p1, p2, :cond_24

    const/16 p2, 0x13

    if-eq p1, p2, :cond_22

    packed-switch p1, :pswitch_data_2a

    goto :goto_25

    :pswitch_1c  #0xb
    and-int/2addr v0, p0

    goto :goto_25

    :pswitch_1e  #0xa
    xor-int/2addr v0, p0

    goto :goto_25

    :pswitch_20  #0x9
    or-int/2addr v0, p0

    goto :goto_25

    :cond_22
    shr-int/2addr v0, p0

    goto :goto_25

    :cond_24
    shl-int/2addr v0, p0

    :goto_25
    int-to-double p0, v0

    aput-wide p0, p3, p4

    return p4

    nop

    :pswitch_data_2a
    .packed-switch 0x9
        :pswitch_20  #00000009
        :pswitch_1e  #0000000a
        :pswitch_1c  #0000000b
    .end packed-switch
.end method

.method private static doCallSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[BI)I
    .registers 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v4, p6

    iget v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v6, v3, v5

    and-int/lit16 v13, v6, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v3, v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    goto :goto_19

    :cond_18
    const/4 v6, 0x0

    :goto_19
    add-int/lit8 v5, v5, 0x2

    invoke-static {v3, v5}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v15

    if-eqz v6, :cond_40

    sub-int v3, p4, v4

    aget-object v5, v1, v3

    sget-object v6, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v5, v6, :cond_2f

    aget-wide v5, v2, v3

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v5

    :cond_2f
    add-int/lit8 v6, v3, 0x1

    invoke-static {v1, v2, v6, v4}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v2

    iget-object v4, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v6, p0

    invoke-static {v6, v5, v2, v4, v13}, Lorg/mozilla/javascript/ScriptRuntime;->newSpecial(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_68

    :cond_40
    move-object/from16 v6, p0

    add-int/lit8 v3, v4, 0x1

    sub-int v3, p4, v3

    add-int/lit8 v5, v3, 0x1

    aget-object v5, v1, v5

    move-object v9, v5

    check-cast v9, Lorg/mozilla/javascript/Scriptable;

    aget-object v5, v1, v3

    move-object v8, v5

    check-cast v8, Lorg/mozilla/javascript/Callable;

    add-int/lit8 v5, v3, 0x2

    invoke-static {v1, v2, v5, v4}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v12, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v14, v2, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v15}, Lorg/mozilla/javascript/ScriptRuntime;->callSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    :goto_68
    iget v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    return v3
.end method

.method private static doCompare(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .registers 9

    add-int/lit8 p4, p4, -0x1

    add-int/lit8 v0, p4, 0x1

    aget-object v1, p2, v0

    aget-object v2, p2, p4

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v3, :cond_13

    aget-wide v0, p3, v0

    invoke-static {p0, p4}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v2

    goto :goto_1b

    :cond_13
    if-ne v2, v3, :cond_3a

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    aget-wide v2, p3, p4

    :goto_1b
    const/4 p0, 0x0

    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_5c

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_25  #0x11
    cmpl-double p1, v2, v0

    if-ltz p1, :cond_55

    :goto_29
    const/4 p0, 0x1

    goto :goto_55

    :pswitch_2b  #0x10
    cmpl-double p1, v2, v0

    if-lez p1, :cond_55

    goto :goto_29

    :pswitch_30  #0xf
    cmpg-double p1, v2, v0

    if-gtz p1, :cond_55

    goto :goto_29

    :pswitch_35  #0xe
    cmpg-double p1, v2, v0

    if-gez p1, :cond_55

    goto :goto_29

    :cond_3a
    packed-switch p1, :pswitch_data_68

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :pswitch_42  #0x11
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_55

    :pswitch_47  #0x10
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_55

    :pswitch_4c  #0xf
    invoke-static {v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_55

    :pswitch_51  #0xe
    invoke-static {v2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :cond_55
    :goto_55
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p2, p4

    return p4

    :pswitch_data_5c
    .packed-switch 0xe
        :pswitch_35  #0000000e
        :pswitch_30  #0000000f
        :pswitch_2b  #00000010
        :pswitch_25  #00000011
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0xe
        :pswitch_51  #0000000e
        :pswitch_4c  #0000000f
        :pswitch_47  #00000010
        :pswitch_42  #00000011
    .end packed-switch
.end method

.method private static doDelName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I
    .registers 10

    aget-object v0, p3, p5

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_c

    aget-wide v2, p4, p5

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_c
    add-int/lit8 p5, p5, -0x1

    aget-object v2, p3, p5

    if-ne v2, v1, :cond_18

    aget-wide v1, p4, p5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_18
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    if-nez p2, :cond_1e

    const/4 p2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p2, 0x0

    :goto_1f
    invoke-static {v2, v0, p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->delete(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p3, p5

    return p5
.end method

.method private static doElemIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[B[Ljava/lang/Object;[DI)I
    .registers 10

    aget-object v0, p3, p5

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_c

    aget-wide v2, p4, p5

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_c
    add-int/lit8 p5, p5, -0x1

    aget-object v2, p3, p5

    if-ne v2, v1, :cond_18

    aget-wide v1, p4, p5

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_18
    iget-object p4, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte p2, p2, v1

    invoke-static {v2, v0, p0, p4, p2}, Lorg/mozilla/javascript/ScriptRuntime;->elemIncrDecr(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p3, p5

    iget p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    return p5
.end method

.method private static doEquals([Ljava/lang/Object;[DI)Z
    .registers 6

    add-int/lit8 v0, p2, 0x1

    aget-object v1, p0, v0

    aget-object p0, p0, p2

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_1f

    if-ne p0, v2, :cond_18

    aget-wide v1, p1, p2

    aget-wide p0, p1, v0

    cmpl-double p2, v1, p0

    if-nez p2, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0

    :cond_18
    aget-wide v0, p1, v0

    invoke-static {v0, v1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1f
    if-ne p0, v2, :cond_28

    aget-wide p0, p1, p2

    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_28
    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static doGetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .registers 9

    add-int/lit8 p4, p4, -0x1

    aget-object v0, p2, p4

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_e

    aget-wide v2, p3, p4

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_e
    add-int/lit8 v2, p4, 0x1

    aget-object v3, p2, v2

    if-eq v3, v1, :cond_1b

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_23

    :cond_1b
    aget-wide v1, p3, v2

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, v1, v2, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectIndex(Ljava/lang/Object;DLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    :goto_23
    aput-object p0, p2, p4

    return p4
.end method

.method private static doGetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[DI)I
    .registers 8

    add-int/lit8 p3, p3, 0x1

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v0, :cond_f

    aget-object p0, p4, p6

    aput-object p0, p1, p3

    aget-wide p0, p5, p6

    aput-wide p0, p2, p3

    goto :goto_1d

    :cond_f
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p2, p2, p6

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p2, p0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p1, p3

    :goto_1d
    return p3
.end method

.method private static doInOrInstanceof(Lorg/mozilla/javascript/Context;I[Ljava/lang/Object;[DI)I
    .registers 9

    aget-object v0, p2, p4

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_c

    aget-wide v2, p3, p4

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_c
    add-int/lit8 p4, p4, -0x1

    aget-object v2, p2, p4

    if-ne v2, v1, :cond_18

    aget-wide v1, p3, p4

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_18
    const/16 p3, 0x34

    if-ne p1, p3, :cond_21

    invoke-static {v2, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->in(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p0

    goto :goto_25

    :cond_21
    invoke-static {v2, v0, p0}, Lorg/mozilla/javascript/ScriptRuntime;->instanceOf(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p0

    :goto_25
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p2, p4

    return p4
.end method

.method private static doRefMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I
    .registers 9

    aget-object v0, p1, p3

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_c

    aget-wide v2, p2, p3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_c
    add-int/lit8 p3, p3, -0x1

    aget-object v2, p1, p3

    if-ne v2, v1, :cond_18

    aget-wide v1, p2, p3

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_18
    invoke-static {v2, v0, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->memberRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    aput-object p0, p1, p3

    return p3
.end method

.method private static doRefNsMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I
    .registers 10

    aget-object v0, p1, p3

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_c

    aget-wide v2, p2, p3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_c
    add-int/lit8 p3, p3, -0x1

    aget-object v2, p1, p3

    if-ne v2, v1, :cond_18

    aget-wide v2, p2, p3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_18
    add-int/lit8 p3, p3, -0x1

    aget-object v3, p1, p3

    if-ne v3, v1, :cond_24

    aget-wide v3, p2, p3

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_24
    invoke-static {v3, v2, v0, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->memberRef(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    aput-object p0, p1, p3

    return p3
.end method

.method private static doRefNsName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DII)I
    .registers 10

    aget-object v0, p2, p4

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_c

    aget-wide v2, p3, p4

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_c
    add-int/lit8 p4, p4, -0x1

    aget-object v2, p2, p4

    if-ne v2, v1, :cond_18

    aget-wide v1, p3, p4

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_18
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v0, p0, p1, p5}, Lorg/mozilla/javascript/ScriptRuntime;->nameRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object p0

    aput-object p0, p2, p4

    return p4
.end method

.method private static doSetConstVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .registers 9

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v0, :cond_2c

    aget v0, p6, p7

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    aget p0, p6, p7

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_4a

    aget-object p0, p1, p3

    aput-object p0, p4, p7

    aget p0, p6, p7

    and-int/lit8 p0, p0, -0x9

    aput p0, p6, p7

    aget-wide p0, p2, p3

    aput-wide p0, p5, p7

    goto :goto_4a

    :cond_1f
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p0, p0, p7

    const-string p1, "msg.var.redecl"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    :cond_2c
    aget-object p1, p1, p3

    sget-object p4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne p1, p4, :cond_38

    aget-wide p1, p2, p3

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    :cond_38
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p2, p2, p7

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    instance-of p4, p0, Lorg/mozilla/javascript/ConstProperties;

    if-eqz p4, :cond_4b

    move-object p4, p0

    check-cast p4, Lorg/mozilla/javascript/ConstProperties;

    invoke-interface {p4, p2, p0, p1}, Lorg/mozilla/javascript/ConstProperties;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_4a
    :goto_4a
    return p3

    :cond_4b
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static doSetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I
    .registers 14

    add-int/lit8 p4, p4, -0x2

    add-int/lit8 v0, p4, 0x2

    aget-object v1, p2, v0

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_10

    aget-wide v0, p3, v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_10
    move-object v6, v1

    aget-object v0, p2, p4

    if-ne v0, v2, :cond_1b

    aget-wide v0, p3, p4

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_1b
    move-object v3, v0

    add-int/lit8 v0, p4, 0x1

    aget-object v1, p2, v0

    if-eq v1, v2, :cond_29

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v3, v1, v6, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectElem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_32

    :cond_29
    aget-wide v4, p3, v0

    iget-object v8, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v7, p0

    invoke-static/range {v3 .. v8}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectIndex(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    :goto_32
    aput-object p0, p2, p4

    return p4
.end method

.method private static doSetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .registers 9

    iget-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v0, :cond_13

    aget p0, p6, p7

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_2a

    aget-object p0, p1, p3

    aput-object p0, p4, p7

    aget-wide p0, p2, p3

    aput-wide p0, p5, p7

    goto :goto_2a

    :cond_13
    aget-object p1, p1, p3

    sget-object p4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne p1, p4, :cond_1f

    aget-wide p1, p2, p3

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    :cond_1f
    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object p2, p2, p7

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p0, p2, p0, p1}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_2a
    :goto_2a
    return p3
.end method

.method private static doShallowEquals([Ljava/lang/Object;[DI)Z
    .registers 7

    add-int/lit8 v0, p2, 0x1

    aget-object v1, p0, v0

    aget-object p0, p0, p2

    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1e

    aget-wide v0, p1, v0

    if-ne p0, v2, :cond_12

    aget-wide p0, p1, p2

    goto :goto_2c

    :cond_12
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1d

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    goto :goto_2c

    :cond_1d
    return v3

    :cond_1e
    if-ne p0, v2, :cond_32

    aget-wide p0, p1, p2

    instance-of p2, v1, Ljava/lang/Number;

    if-eqz p2, :cond_31

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_2c
    cmpl-double p2, p0, v0

    if-nez p2, :cond_31

    const/4 v3, 0x1

    :cond_31
    return v3

    :cond_32
    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static doVarIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I
    .registers 20

    move-object v0, p1

    const/4 v1, 0x1

    add-int/lit8 v2, p4, 0x1

    iget-object v3, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v3, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v4, v4, v5

    iget-boolean v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-nez v5, :cond_52

    aget-object v3, p5, p8

    sget-object v5, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v3, v5, :cond_19

    aget-wide v6, p6, p8

    goto :goto_1d

    :cond_19
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v6

    :goto_1d
    and-int/lit8 v8, v4, 0x1

    const-wide/high16 v9, 0x3ff0000000000000L  # 1.0

    if-nez v8, :cond_25

    add-double/2addr v9, v6

    goto :goto_27

    :cond_25
    sub-double v9, v6, v9

    :goto_27
    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    aget v8, p7, p8

    and-int/2addr v8, v1

    if-nez v8, :cond_42

    if-eq v3, v5, :cond_37

    aput-object v5, p5, p8

    :cond_37
    aput-wide v9, p6, p8

    aput-object v5, p2, v2

    if-eqz v4, :cond_3e

    goto :goto_3f

    :cond_3e
    move-wide v6, v9

    :goto_3f
    aput-wide v6, p3, v2

    goto :goto_5f

    :cond_42
    if-eqz v4, :cond_49

    if-eq v3, v5, :cond_49

    aput-object v3, p2, v2

    goto :goto_5f

    :cond_49
    aput-object v5, p2, v2

    if-eqz v4, :cond_4e

    goto :goto_4f

    :cond_4e
    move-wide v6, v9

    :goto_4f
    aput-wide v6, p3, v2

    goto :goto_5f

    :cond_52
    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object v3, v3, p8

    iget-object v5, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v6, p0

    invoke-static {v5, v3, p0, v4}, Lorg/mozilla/javascript/ScriptRuntime;->nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v2

    :goto_5f
    iget v3, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v3, v1

    iput v3, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    return v2
.end method

.method static dumpICode(Lorg/mozilla/javascript/InterpreterData;)V
    .registers 1

    return-void
.end method

.method private static enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V
    .registers 7

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-nez v0, :cond_f

    if-eqz v1, :cond_3c

    :cond_f
    iget-object v2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    if-nez v2, :cond_17

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_2e

    :cond_17
    if-eqz p3, :cond_2e

    :cond_19
    instance-of p3, v2, Lorg/mozilla/javascript/NativeWith;

    if-eqz p3, :cond_2e

    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    if-eqz v2, :cond_2b

    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz p3, :cond_19

    iget-object p3, p3, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    if-ne p3, v2, :cond_19

    :cond_2b
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2e
    :goto_2e
    if-eqz v1, :cond_37

    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p3, p0, v2, p1, p2}, Lorg/mozilla/javascript/debug/DebugFrame;->onEnter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    :cond_37
    if-eqz v0, :cond_3c

    invoke-static {p0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    :cond_3c
    return-void
.end method

.method private static exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v0, :cond_9

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    :cond_9
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v0, :cond_42

    :try_start_d
    instance-of v1, p2, Ljava/lang/Throwable;

    if-eqz v1, :cond_16

    const/4 p1, 0x1

    invoke-interface {v0, p0, p1, p2}, Lorg/mozilla/javascript/debug/DebugFrame;->onExit(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)V

    goto :goto_42

    :cond_16
    check-cast p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-nez p2, :cond_1d

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    goto :goto_1f

    :cond_1d
    iget-object v0, p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    :goto_1f
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_2e

    if-nez p2, :cond_28

    iget-wide v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    goto :goto_2a

    :cond_28
    iget-wide v0, p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    :goto_2a
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    :cond_2e
    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2, v0}, Lorg/mozilla/javascript/debug/DebugFrame;->onExit(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_35

    goto :goto_42

    :catchall_35
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "RHINO USAGE WARNING: onExit terminated with exception"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_42
    :goto_42
    return-void
.end method

.method private static freezeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;Z)Ljava/lang/Object;
    .registers 8

    iget p3, p3, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_34

    const/4 p3, 0x1

    iput-boolean p3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p2

    iput-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v1, v0, p2

    iput-wide v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    iput p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iget p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    sub-int/2addr p2, p3

    iput p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    iget-object p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    sget-object p2, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq p0, p2, :cond_25

    goto :goto_2b

    :cond_25
    iget-wide p0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    :goto_2b
    if-eqz p4, :cond_33

    new-instance p1, Lorg/mozilla/javascript/ES6Generator$YieldStarResult;

    invoke-direct {p1, p0}, Lorg/mozilla/javascript/ES6Generator$YieldStarResult;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_33
    return-object p0

    :cond_34
    const-string p0, "msg.yield.closing"

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private static getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;
    .registers 8

    if-nez p3, :cond_5

    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    return-object p0

    :cond_5
    new-array v0, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_8
    if-eq v1, p3, :cond_1d

    aget-object v2, p0, p2

    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v2, v3, :cond_16

    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_16
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_1d
    return-object v0
.end method

.method static getEncodedSource(Lorg/mozilla/javascript/InterpreterData;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSource:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget v1, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSourceStart:I

    iget p0, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSourceEnd:I

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getExceptionHandler(Lorg/mozilla/javascript/Interpreter$CallFrame;Z)I
    .registers 11

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_f
    array-length v6, v0

    if-eq v3, v6, :cond_3d

    add-int/lit8 v6, v3, 0x0

    aget v6, v0, v6

    add-int/lit8 v7, v3, 0x1

    aget v7, v0, v7

    if-gt v6, p0, :cond_3a

    if-lt p0, v7, :cond_1f

    goto :goto_3a

    :cond_1f
    if-eqz p1, :cond_28

    add-int/lit8 v8, v3, 0x3

    aget v8, v0, v8

    if-eq v8, v2, :cond_28

    goto :goto_3a

    :cond_28
    if-ltz v1, :cond_37

    if-ge v4, v7, :cond_2d

    goto :goto_3a

    :cond_2d
    if-le v5, v6, :cond_32

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_32
    if-ne v4, v7, :cond_37

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_37
    move v1, v3

    move v5, v6

    move v4, v7

    :cond_3a
    :goto_3a
    add-int/lit8 v3, v3, 0x6

    goto :goto_f

    :cond_3d
    return v1
.end method

.method private static getIndex([BI)I
    .registers 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static getInt([BI)I
    .registers 4

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method static getLineNumbers(Lorg/mozilla/javascript/InterpreterData;)[I
    .registers 8

    new-instance v0, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-eq v3, v1, :cond_27

    aget-byte v4, p0, v3

    invoke-static {v4}, Lorg/mozilla/javascript/Interpreter;->bytecodeSpan(I)I

    move-result v5

    const/16 v6, -0x1a

    if-ne v4, v6, :cond_25

    const/4 v4, 0x3

    if-eq v5, v4, :cond_1c

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1c
    add-int/lit8 v4, v3, 0x1

    invoke-static {p0, v4}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v4

    invoke-virtual {v0, v4, v2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    :cond_25
    add-int/2addr v3, v5

    goto :goto_a

    :cond_27
    invoke-virtual {v0}, Lorg/mozilla/javascript/UintMap;->getKeys()[I

    move-result-object p0

    return-object p0
.end method

.method private static getShort([BI)I
    .registers 3

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .registers 18

    move-object v7, p0

    new-instance v8, Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v0, p2

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-direct {v8, p0, p2, v1, v2}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/Interpreter$CallFrame;->initializeArgs(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DII)V

    const/4 v0, 0x0

    move-object v1, p3

    invoke-static {p0, v8, p3, v0}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    return-object v8
.end method

.method private static initFrameForApplyOrCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .registers 21

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    const/4 v5, 0x0

    if-eqz v2, :cond_1f

    add-int/lit8 v6, v3, 0x2

    aget-object v7, p3, v6

    sget-object v8, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v7, v8, :cond_18

    aget-wide v6, p4, v6

    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    :cond_18
    iget-object v6, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0, v7, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    goto :goto_20

    :cond_1f
    move-object v6, v5

    :goto_20
    if-nez v6, :cond_26

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    :cond_26
    const/16 v7, -0x37

    if-ne v4, v7, :cond_30

    invoke-static {p0, p1, v5}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    iget-object v1, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_34

    :cond_30
    iput v3, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iput v4, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    :goto_34
    move-object v8, v1

    invoke-static/range {p8 .. p8}, Lorg/mozilla/javascript/BaseFunction;->isApply(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_59

    if-ge v2, v4, :cond_41

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    goto :goto_49

    :cond_41
    add-int/lit8 v1, v3, 0x3

    aget-object v1, p3, v1

    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getApplyArguments(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    :goto_49
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v7, v3

    move-object v0, p0

    move-object/from16 v1, p7

    move-object v2, v6

    move v6, v7

    move-object/from16 v7, p9

    invoke-static/range {v0 .. v8}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    goto :goto_85

    :cond_59
    const/4 v1, 0x1

    const/4 v5, 0x1

    :goto_5b
    if-ge v5, v2, :cond_6e

    add-int/lit8 v7, v3, 0x1

    add-int/2addr v7, v5

    add-int/lit8 v9, v3, 0x2

    add-int/2addr v9, v5

    aget-object v10, p3, v9

    aput-object v10, p3, v7

    aget-wide v9, p4, v9

    aput-wide v9, p4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_5b

    :cond_6e
    if-ge v2, v4, :cond_73

    const/4 v1, 0x0

    const/4 v7, 0x0

    goto :goto_76

    :cond_73
    add-int/lit8 v1, v2, -0x1

    move v7, v1

    :goto_76
    add-int/lit8 v5, v3, 0x2

    move-object v0, p0

    move-object/from16 v1, p7

    move-object v2, v6

    move-object v3, p3

    move-object v4, p4

    move v6, v7

    move-object/from16 v7, p9

    invoke-static/range {v0 .. v8}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    :goto_85
    return-object v0
.end method

.method private static initFrameForNoSuchMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .registers 24

    move-object v0, p0

    move-object v9, p1

    move v1, p2

    move/from16 v10, p5

    move/from16 v11, p6

    add-int/lit8 v2, v10, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v1, :cond_22

    aget-object v6, p3, v2

    sget-object v7, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v6, v7, :cond_1b

    aget-wide v6, p4, v2

    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v6

    :cond_1b
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_22
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    move-object/from16 v1, p9

    iget-object v1, v1, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->methodName:Ljava/lang/String;

    aput-object v1, v5, v4

    move-object/from16 v1, p8

    invoke-virtual {p0, v1, v3}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/16 v12, -0x37

    if-ne v11, v12, :cond_40

    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    move-object v8, v2

    goto :goto_41

    :cond_40
    move-object v8, v9

    :goto_41
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move-object v3, v5

    move v5, v6

    move v6, v7

    move-object/from16 v7, p10

    invoke-static/range {v0 .. v8}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    if-eq v11, v12, :cond_58

    iput v10, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iput v11, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    :cond_58
    return-object v0
.end method

.method private static initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object p3

    iget-object v0, p3, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    iget-object p2, p2, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean p2, p2, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    invoke-static {p0, p1, p3, v0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;IZ)V

    return-void
.end method

.method static interpret(Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_9
    iget-object v0, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    if-eq v0, v2, :cond_23

    iput-object v2, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    :try_start_11
    iget-object v1, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityController:Lorg/mozilla/javascript/SecurityController;

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/mozilla/javascript/SecurityController;->callWithDomain(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1f

    iput-object v0, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    return-object p0

    :catchall_1f
    move-exception p0

    iput-object v0, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    throw p0

    :cond_23
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, p4

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v8, p0

    invoke-static/range {v1 .. v9}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p0

    iget-boolean p2, p1, Lorg/mozilla/javascript/Context;->isContinuationsTopCall:Z

    iput-boolean p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->isContinuationsTopFrame:Z

    const/4 p2, 0x0

    iput-boolean p2, p1, Lorg/mozilla/javascript/Context;->isContinuationsTopCall:Z

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 51

    move-object/from16 v12, p0

    move-object/from16 v1, p2

    sget-object v13, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    sget-object v14, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iget v2, v12, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    const/4 v11, 0x1

    if-eqz v2, :cond_f

    const/4 v10, 0x1

    goto :goto_10

    :cond_f
    const/4 v10, 0x0

    :goto_10
    iget-object v2, v12, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-eqz v2, :cond_26

    iget-object v2, v12, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    if-nez v2, :cond_1f

    new-instance v2, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v2}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v2, v12, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    :cond_1f
    iget-object v2, v12, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    iget-object v3, v12, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    :cond_26
    const/4 v9, 0x0

    if-eqz v1, :cond_43

    instance-of v2, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    if-eqz v2, :cond_39

    check-cast v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    move-object/from16 v3, p1

    invoke-static {v12, v3, v2, v11}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    move-object v8, v1

    move-object v1, v9

    goto :goto_46

    :cond_39
    move-object/from16 v3, p1

    instance-of v2, v1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-nez v2, :cond_45

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_45

    :cond_43
    move-object/from16 v3, p1

    :cond_45
    :goto_45
    move-object v8, v9

    :goto_46
    const-wide/16 v16, 0x0

    const/16 v18, -0x1

    move-object v4, v9

    move-object/from16 v19, v4

    move-wide/from16 v20, v16

    const/4 v2, -0x1

    :goto_50
    if-eqz v1, :cond_6d

    :try_start_52
    invoke-static {v12, v1, v3, v2, v10}, Lorg/mozilla/javascript/Interpreter;->processThrowable(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Interpreter$CallFrame;IZ)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3

    iget-object v1, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    iput-object v9, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    goto :goto_76

    :catchall_5b
    move-exception v0

    move-object/from16 v22, v1

    move-object v1, v8

    move/from16 v36, v10

    move-object v5, v13

    move-object/from16 v34, v14

    const/4 v2, 0x1

    const/16 v31, 0x0

    move-object v14, v3

    move-object v3, v9

    :goto_69
    move-object v9, v4

    :goto_6a
    move-object v4, v0

    goto/16 :goto_190c

    :cond_6d
    if-nez v8, :cond_76

    iget-boolean v5, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz v5, :cond_76

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;
    :try_end_76
    .catchall {:try_start_52 .. :try_end_76} :catchall_5b

    :cond_76
    :goto_76
    move-object/from16 v22, v1

    move-object v5, v3

    :try_start_79
    iget-object v3, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v1, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    iget-object v6, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v15, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;
    :try_end_81
    .catchall {:try_start_79 .. :try_end_81} :catchall_18fe

    :try_start_81
    iget-object v9, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    iget-object v6, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    iget-object v7, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v11, v7, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget-object v7, v7, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    move-object/from16 v25, v1

    iget v1, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iput-object v5, v12, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;
    :try_end_91
    .catchall {:try_start_81 .. :try_end_91} :catchall_18f5

    const/16 v33, 0x3

    move-object/from16 v34, v14

    move-object/from16 v47, v4

    move v4, v2

    move-object/from16 v2, v47

    :goto_9a
    :try_start_9a
    iget v14, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 v26, v1

    add-int/lit8 v1, v14, 0x1

    iput v1, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v14, v11, v14
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_18e8

    move-object/from16 v27, v2

    const/16 v2, 0x9d

    if-eq v14, v2, :cond_18ab

    packed-switch v14, :pswitch_data_1a14

    packed-switch v14, :pswitch_data_1a24

    packed-switch v14, :pswitch_data_1aa0

    :try_start_b3
    iget-object v1, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {v1}, Lorg/mozilla/javascript/Interpreter;->dumpICode(Lorg/mozilla/javascript/InterpreterData;)V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown icode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " @ pc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_db
    .catchall {:try_start_b3 .. :try_end_db} :catchall_db

    :catchall_db
    move-exception v0

    move-object v4, v0

    move-object v14, v5

    move-object v1, v8

    move/from16 v36, v10

    move-object v5, v13

    move-object/from16 v9, v27

    goto/16 :goto_12b9

    :pswitch_e6  #0x51
    move-object/from16 v2, v25

    move/from16 v14, v26

    move-object/from16 v1, p0

    move-object/from16 v36, v2

    move-object/from16 v35, v15

    move-object/from16 v15, v27

    move-object v2, v5

    move-object/from16 v37, v3

    move/from16 v25, v4

    move-object/from16 v4, v36

    move-object/from16 v26, v9

    move-object v9, v5

    move v5, v14

    move-object/from16 v39, v6

    const/16 v14, 0x64

    move/from16 v6, v25

    :try_start_103
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doRefNsName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DII)I

    move-result v1

    move-object v5, v9

    move-object v2, v15

    move/from16 v4, v25

    move-object/from16 v9, v26

    move-object/from16 v15, v35

    move-object/from16 v25, v36

    move-object/from16 v3, v37

    goto/16 :goto_5b5

    :pswitch_115  #0x50
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move-object/from16 v36, v25

    move/from16 v14, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move/from16 v25, v4

    move-object/from16 v26, v9

    move-object v9, v5

    const/16 v5, 0x64

    aget-object v1, v6, v14

    if-ne v1, v13, :cond_134

    move-object/from16 v4, v36

    aget-wide v1, v4, v14

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    goto :goto_136

    :cond_134
    move-object/from16 v4, v36

    :goto_136
    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move/from16 v3, v25

    invoke-static {v1, v12, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->nameRef(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object v1

    aput-object v1, v6, v14

    goto/16 :goto_1a7

    :pswitch_142  #0x4f
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v14, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    const/16 v5, 0x64

    invoke-static {v12, v6, v4, v14, v3}, Lorg/mozilla/javascript/Interpreter;->doRefNsMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I

    move-result v1

    goto/16 :goto_5ab

    :pswitch_159  #0x4e
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v14, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    const/16 v5, 0x64

    invoke-static {v12, v6, v4, v14, v3}, Lorg/mozilla/javascript/Interpreter;->doRefMember(Lorg/mozilla/javascript/Context;[Ljava/lang/Object;[DII)I

    move-result v1

    goto/16 :goto_5ab

    :pswitch_170  #0x4d
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v14, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    const/16 v5, 0x64

    aget-object v1, v6, v14

    if-eq v1, v13, :cond_1a7

    invoke-static {v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->escapeTextValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v14

    goto :goto_1a7

    :pswitch_18c  #0x4c
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v14, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    const/16 v5, 0x64

    aget-object v1, v6, v14

    if-eq v1, v13, :cond_1a7

    invoke-static {v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->escapeAttributeValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v14

    :cond_1a7
    :goto_1a7
    move-object/from16 v37, v7

    move-object v1, v8

    move/from16 v36, v10

    move-object v5, v13

    move-object/from16 v41, v26

    const/4 v2, 0x1

    const/16 v31, 0x0

    move v13, v3

    move-object v10, v4

    const/4 v3, 0x0

    move-object/from16 v47, v15

    move-object v15, v6

    move v6, v14

    move-object v14, v9

    move-object/from16 v9, v47

    goto/16 :goto_1893

    :pswitch_1be  #0x4b
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v14, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    const/16 v5, 0x64

    aget-object v1, v6, v14

    if-ne v1, v13, :cond_1d9

    aget-wide v1, v4, v14

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_1d9
    invoke-static {v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->setDefaultNamespace(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v14

    goto :goto_1a7

    :pswitch_1e0  #0x49
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move-object v6, v3

    move-object v15, v6

    move-object/from16 v37, v7

    move-object v1, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move v7, v14

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v31, 0x0

    move-object v14, v5

    move-object v5, v13

    :goto_1fa
    move v13, v4

    goto/16 :goto_1879

    :pswitch_1fd  #0x48
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    const/16 v5, 0x64

    aget-object v1, v6, v2

    if-ne v1, v13, :cond_218

    aget-wide v27, v4, v2

    invoke-static/range {v27 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_218
    iget-object v14, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v15, v12, v14}, Lorg/mozilla/javascript/ScriptRuntime;->specialRef(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Ref;

    move-result-object v1

    aput-object v1, v6, v2

    goto/16 :goto_282

    :pswitch_222  #0x46
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    const/16 v5, 0x64

    aget-object v1, v6, v2

    check-cast v1, Lorg/mozilla/javascript/Ref;

    invoke-static {v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->refDel(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v2

    goto :goto_282

    :pswitch_23e  #0x45
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    const/16 v5, 0x64

    aget-object v1, v6, v2

    if-ne v1, v13, :cond_259

    aget-wide v27, v4, v2

    invoke-static/range {v27 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_259
    add-int/lit8 v2, v2, -0x1

    aget-object v14, v6, v2

    check-cast v14, Lorg/mozilla/javascript/Ref;

    iget-object v5, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v14, v1, v12, v5}, Lorg/mozilla/javascript/ScriptRuntime;->refSet(Lorg/mozilla/javascript/Ref;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v2

    goto/16 :goto_478

    :pswitch_269  #0x44
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    aget-object v1, v6, v2

    check-cast v1, Lorg/mozilla/javascript/Ref;

    invoke-static {v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->refGet(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v2

    :goto_282
    move-object/from16 v37, v7

    move-object v1, v8

    move-object v14, v9

    move/from16 v36, v10

    move-object v5, v13

    move-object v9, v15

    move-object/from16 v41, v26

    const/16 v31, 0x0

    move v13, v3

    move-object v10, v4

    move-object v15, v6

    const/4 v3, 0x0

    goto/16 :goto_9f2

    :pswitch_294  #0x42, 0x43
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move-object v6, v3

    move-object v15, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    :goto_2ac
    move v8, v4

    const/4 v4, 0x2

    move/from16 v47, v14

    move-object v14, v5

    move/from16 v5, v47

    goto/16 :goto_1020

    :pswitch_2b5  #0x41
    move-object v14, v5

    move-object v1, v8

    move/from16 v36, v10

    move-object v5, v13

    move-object/from16 v9, v27

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v31, 0x0

    move v13, v4

    goto/16 :goto_181c

    :pswitch_2c3  #0x40
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    add-int/lit8 v1, v2, 0x1

    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    aput-object v2, v6, v1

    goto/16 :goto_5ab

    :pswitch_2da  #0x3e, 0x3f
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    iget v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v1, v3

    aget-object v3, v6, v1

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x3e

    if-ne v14, v5, :cond_2f9

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->enumNext(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2fd

    :cond_2f9
    invoke-static {v3, v12}, Lorg/mozilla/javascript/ScriptRuntime;->enumId(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    :goto_2fd
    aput-object v3, v6, v2

    move-object/from16 v25, v4

    move-object v3, v6

    move-object v5, v9

    move-object/from16 v9, v26

    move-object/from16 v6, v39

    move v4, v1

    move v1, v2

    goto/16 :goto_3ea

    :pswitch_30b  #0x3a, 0x3b, 0x3c, 0x3d
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    aget-object v1, v6, v2

    if-ne v1, v13, :cond_324

    aget-wide v27, v4, v2

    invoke-static/range {v27 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_324
    add-int/lit8 v2, v2, -0x1

    iget v5, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v3, v5

    const/16 v5, 0x3a

    if-ne v14, v5, :cond_32f

    const/4 v5, 0x0

    goto :goto_33c

    :cond_32f
    const/16 v5, 0x3b

    if-ne v14, v5, :cond_335

    const/4 v5, 0x1

    goto :goto_33c

    :cond_335
    const/16 v5, 0x3d

    if-ne v14, v5, :cond_33b

    const/4 v5, 0x6

    goto :goto_33c

    :cond_33b
    const/4 v5, 0x2

    :goto_33c
    iget-object v14, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v12, v14, v5}, Lorg/mozilla/javascript/ScriptRuntime;->enumInit(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v3

    goto/16 :goto_478

    :pswitch_346  #0x39
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    add-int/lit8 v2, v2, -0x1

    iget v5, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v3, v5

    iget-object v5, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v5, v5, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    aget-byte v1, v5, v1

    if-eqz v1, :cond_364

    const/4 v1, 0x1

    goto :goto_365

    :cond_364
    const/4 v1, 0x0

    :goto_365
    add-int/lit8 v5, v2, 0x1

    aget-object v5, v6, v5

    check-cast v5, Ljava/lang/Throwable;

    if-nez v1, :cond_36f

    const/4 v1, 0x0

    goto :goto_373

    :cond_36f
    aget-object v1, v6, v3

    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    :goto_373
    iget-object v14, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v5, v1, v15, v12, v14}, Lorg/mozilla/javascript/ScriptRuntime;->newCatchScope(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v6, v3

    iget v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v5, 0x1

    add-int/2addr v1, v5

    iput v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_478

    :pswitch_383  #0x38
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move-object v6, v3

    move v3, v4

    move v1, v3

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    goto/16 :goto_12e1

    :pswitch_3a4  #0x37
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move-object v6, v3

    move v3, v4

    move v1, v3

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    goto/16 :goto_1286

    :pswitch_3c5  #0x36
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    add-int/lit8 v1, v2, 0x1

    iget v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/2addr v2, v3

    aget-object v3, v6, v2

    aput-object v3, v6, v1

    aget-wide v27, v4, v2

    aput-wide v27, v4, v1

    move-object/from16 v25, v4

    move-object v3, v6

    move-object v5, v9

    move-object/from16 v9, v26

    move-object/from16 v6, v39

    move v4, v2

    :goto_3ea
    move-object v2, v15

    move-object/from16 v15, v35

    goto/16 :goto_9a

    :pswitch_3ef  #0x34, 0x35
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    invoke-static {v12, v14, v6, v4, v2}, Lorg/mozilla/javascript/Interpreter;->doInOrInstanceof(Lorg/mozilla/javascript/Context;I[Ljava/lang/Object;[DI)I

    move-result v1

    goto/16 :goto_5ab

    :pswitch_404  #0x33
    move-object v6, v3

    move v3, v4

    move-object v9, v5

    move-object/from16 v15, v27

    iget v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int v4, v3, v1

    aget-object v1, v6, v4

    move-object v4, v1

    :goto_410
    move-object v1, v8

    move-object v14, v9

    move/from16 v36, v10

    move-object v5, v13

    :goto_415
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v31, 0x0

    goto/16 :goto_190f

    :pswitch_41b  #0x32
    move-object v6, v3

    move-object v9, v5

    move-object/from16 v4, v25

    move/from16 v2, v26

    move-object/from16 v15, v27

    aget-object v1, v6, v2

    if-ne v1, v13, :cond_42d

    aget-wide v1, v4, v2

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_42d
    iget v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v11, v2}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v2

    new-instance v3, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v4, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v2}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    move-object v4, v3

    goto :goto_410

    :pswitch_43e  #0x31
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    add-int/lit8 v1, v2, 0x1

    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v12, v2, v15}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    aput-object v2, v6, v1

    goto/16 :goto_5ab

    :pswitch_459  #0x30
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    iget-object v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsRegExpLiterals:[Ljava/lang/Object;

    aget-object v1, v1, v3

    add-int/lit8 v2, v2, 0x1

    iget-object v5, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v12, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v6, v2

    :goto_478
    move v1, v2

    goto/16 :goto_5ab

    :pswitch_47b  #0x2e, 0x2f
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    add-int/lit8 v1, v2, -0x1

    invoke-static {v6, v4, v1}, Lorg/mozilla/javascript/Interpreter;->doShallowEquals([Ljava/lang/Object;[DI)Z

    move-result v2

    const/16 v5, 0x2f

    if-ne v14, v5, :cond_496

    const/4 v5, 0x1

    goto :goto_497

    :cond_496
    const/4 v5, 0x0

    :goto_497
    xor-int/2addr v2, v5

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v1

    goto/16 :goto_5ab

    :pswitch_4a0  #0x2d
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    add-int/lit8 v1, v2, 0x1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v6, v1

    goto/16 :goto_5ab

    :pswitch_4b7  #0x2c
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    add-int/lit8 v1, v2, 0x1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v6, v1

    goto/16 :goto_5ab

    :pswitch_4ce  #0x2b
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    add-int/lit8 v1, v2, 0x1

    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    aput-object v2, v6, v1
    :try_end_4e3
    .catchall {:try_start_103 .. :try_end_4e3} :catchall_4e5

    goto/16 :goto_5ab

    :catchall_4e5
    move-exception v0

    move-object v4, v0

    move-object v1, v8

    move-object v14, v9

    move/from16 v36, v10

    move-object v5, v13

    move-object v9, v15

    goto/16 :goto_12b9

    :pswitch_4ef  #0x2a
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    add-int/lit8 v1, v2, 0x1

    const/16 v23, 0x0

    :try_start_502
    aput-object v23, v6, v1

    goto/16 :goto_5ab

    :pswitch_506  #0x29
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    add-int/lit8 v1, v2, 0x1

    aput-object v15, v6, v1

    goto/16 :goto_5ab

    :pswitch_51d  #0x28
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    add-int/lit8 v1, v2, 0x1

    aput-object v13, v6, v1

    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    aget-wide v27, v2, v3

    aput-wide v27, v4, v1

    goto/16 :goto_5ab

    :pswitch_53c  #0x27
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    add-int/lit8 v1, v2, 0x1

    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v12, v2, v15}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v6, v1

    goto/16 :goto_5ab

    :pswitch_559  #0x26, 0x47
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    const/16 v23, 0x0

    move-object v6, v3

    move v3, v4

    move-object v15, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/4 v4, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    move v8, v3

    const/4 v3, 0x4

    :goto_579
    move/from16 v47, v14

    move-object v14, v5

    move/from16 v5, v47

    goto/16 :goto_1430

    :pswitch_580  #0x25
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    invoke-static {v12, v9, v6, v4, v2}, Lorg/mozilla/javascript/Interpreter;->doSetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v1

    goto :goto_5ab

    :pswitch_596  #0x24
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    invoke-static {v12, v9, v6, v4, v2}, Lorg/mozilla/javascript/Interpreter;->doGetElem(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI)I

    move-result v1

    :goto_5ab
    move-object/from16 v25, v4

    move-object v5, v9

    move-object v2, v15

    move-object/from16 v9, v26

    move-object/from16 v15, v35

    move v4, v3

    move-object v3, v6

    :goto_5b5
    move-object/from16 v6, v39

    goto/16 :goto_9a

    :pswitch_5b9  #0x23
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    aget-object v1, v6, v2

    if-ne v1, v13, :cond_5d4

    aget-wide v27, v4, v2

    invoke-static/range {v27 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_5d4
    add-int/lit8 v2, v2, -0x1

    aget-object v5, v6, v2

    if-ne v5, v13, :cond_5e0

    aget-wide v27, v4, v2

    invoke-static/range {v27 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v5

    :cond_5e0
    iget-object v14, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v5, v15, v1, v12, v14}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v2

    goto/16 :goto_478

    :pswitch_5ea  #0x22
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    aget-object v1, v6, v2

    if-ne v1, v13, :cond_605

    aget-wide v27, v4, v2

    invoke-static/range {v27 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_605
    iget-object v5, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v15, v12, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v2

    goto :goto_653

    :pswitch_60e  #0x21
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    aget-object v1, v6, v2

    if-ne v1, v13, :cond_629

    aget-wide v27, v4, v2

    invoke-static/range {v27 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_629
    iget-object v5, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v15, v12, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v2

    goto :goto_653

    :pswitch_632  #0x20
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    aget-object v1, v6, v2

    if-ne v1, v13, :cond_64d

    aget-wide v27, v4, v2

    invoke-static/range {v27 .. v28}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_64d
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    :goto_653
    move-object/from16 v37, v7

    move-object v1, v8

    move-object v14, v9

    move/from16 v36, v10

    move-object v5, v13

    move-object v9, v15

    move-object/from16 v41, v26

    const/16 v31, 0x0

    move v13, v3

    move-object v10, v4

    move-object v15, v6

    move-object/from16 v3, v23

    goto/16 :goto_9f2

    :catchall_666
    move-exception v0

    move-object v4, v0

    move-object v1, v8

    move-object v14, v9

    move/from16 v36, v10

    move-object v5, v13

    move-object v9, v15

    move-object/from16 v3, v23

    goto/16 :goto_b86

    :pswitch_672  #0x1f
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    const/16 v23, 0x0

    move-object v6, v3

    move-object/from16 v26, v9

    move-object v9, v5

    move-object v15, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v8, v25

    move-object/from16 v5, v27

    const/16 v10, 0xd

    move v6, v4

    const/4 v4, 0x2

    goto/16 :goto_a46

    :pswitch_68d  #0x1e
    move-object/from16 v39, v6

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object/from16 v15, v27

    const/16 v23, 0x0

    move-object v6, v3

    move v3, v4

    move-object/from16 v26, v9

    move-object/from16 v4, v25

    move-object v9, v5

    if-eqz v10, :cond_6a8

    iget v1, v12, Lorg/mozilla/javascript/Context;->instructionCount:I

    const/16 v5, 0x64

    add-int/2addr v1, v5

    iput v1, v12, Lorg/mozilla/javascript/Context;->instructionCount:I
    :try_end_6a7
    .catchall {:try_start_502 .. :try_end_6a7} :catchall_666

    goto :goto_6aa

    :cond_6a8
    const/16 v5, 0x64

    :goto_6aa
    sub-int/2addr v2, v3

    :try_start_6ab
    aget-object v1, v6, v2

    instance-of v5, v1, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v5, :cond_714

    move-object v5, v1

    check-cast v5, Lorg/mozilla/javascript/InterpretedFunction;

    move/from16 v25, v3

    iget-object v3, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object/from16 v36, v4

    iget-object v4, v5, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    if-ne v3, v4, :cond_707

    iget-object v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v5, v12, v1}, Lorg/mozilla/javascript/BaseFunction;->createObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v11

    iget-object v3, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;
    :try_end_6c8
    .catchall {:try_start_6ab .. :try_end_6c8} :catchall_76b

    add-int/lit8 v7, v2, 0x1

    move-object/from16 v1, p0

    move v4, v2

    move-object v2, v3

    move/from16 p1, v25

    move-object v3, v11

    move-object/from16 v37, v36

    move/from16 v36, v10

    move v10, v4

    move-object v4, v6

    move-object/from16 v25, v5

    move-object/from16 v5, v37

    move-object/from16 p2, v15

    move-object v15, v6

    move v6, v7

    move/from16 v7, p1

    move-object/from16 v40, v8

    move-object/from16 v8, v25

    move-object/from16 v42, v9

    :try_start_6e7
    invoke-static/range {v1 .. v9}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3

    aput-object v11, v15, v10
    :try_end_6ed
    .catchall {:try_start_6e7 .. :try_end_6ed} :catchall_702

    move-object/from16 v9, v42

    :try_start_6ef
    iput v10, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iput v14, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    move/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v1, v22

    move-object/from16 v14, v34

    move/from16 v10, v36

    move-object/from16 v8, v40

    :goto_6ff
    const/4 v9, 0x0

    goto/16 :goto_1a03

    :catchall_702
    move-exception v0

    move-object/from16 v9, v42

    goto/16 :goto_8c6

    :cond_707
    move-object/from16 v40, v8

    move-object/from16 p2, v15

    move/from16 p1, v25

    move-object/from16 v37, v36

    move-object v15, v6

    move/from16 v36, v10

    move v10, v2

    goto :goto_720

    :cond_714
    move/from16 p1, v3

    move-object/from16 v37, v4

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 p2, v15

    move v10, v2

    move-object v15, v6

    :goto_720
    instance-of v2, v1, Lorg/mozilla/javascript/Function;

    if-nez v2, :cond_733

    if-ne v1, v13, :cond_72e

    move-object/from16 v8, v37

    aget-wide v1, v8, v10

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_72e
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_733
    move-object/from16 v8, v37

    check-cast v1, Lorg/mozilla/javascript/Function;

    instance-of v2, v1, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v2, :cond_752

    move-object v2, v1

    check-cast v2, Lorg/mozilla/javascript/IdFunctionObject;

    invoke-static {v2}, Lorg/mozilla/javascript/NativeContinuation;->isContinuationConstructor(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v2

    if-eqz v2, :cond_752

    iget-object v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v3, 0x0

    invoke-static {v12, v2, v3}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v2

    aput-object v2, v1, v10

    move/from16 v6, p1

    goto :goto_762

    :cond_752
    add-int/lit8 v2, v10, 0x1

    move/from16 v6, p1

    invoke-static {v15, v8, v2, v6}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1, v12, v3, v2}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v15, v10

    :goto_762
    move-object/from16 v2, p2

    move v4, v6

    move-object/from16 v25, v8

    move-object v5, v9

    move v1, v10

    goto/16 :goto_8ba

    :catchall_76b
    move-exception v0

    move-object/from16 p2, v15

    move-object v4, v0

    move-object v1, v8

    move-object v14, v9

    move/from16 v36, v10

    move-object v5, v13

    move-object/from16 v3, v23

    :goto_776
    const/4 v2, 0x1

    goto/16 :goto_8cd

    :pswitch_779  #0x1c, 0x1d
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v2, v26

    move-object/from16 p2, v27

    move-object v15, v3

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    invoke-static {v9, v2}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v3

    aput-object v13, v15, v2

    const/16 v1, 0x1d

    if-ne v14, v1, :cond_797

    neg-double v3, v3

    :cond_797
    aput-wide v3, v8, v2

    goto :goto_7b8

    :pswitch_79a  #0x1b
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v2, v26

    move-object/from16 p2, v27

    move-object v15, v3

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    invoke-static {v9, v2}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result v1

    aput-object v13, v15, v2

    xor-int/lit8 v1, v1, -0x1

    int-to-double v3, v1

    aput-wide v3, v8, v2

    :goto_7b8
    move-object/from16 v37, v7

    move-object v10, v8

    move-object v14, v9

    move-object v5, v13

    move-object/from16 v41, v26

    move-object/from16 v1, v40

    const/4 v3, 0x0

    const/16 v31, 0x0

    move-object/from16 v9, p2

    goto/16 :goto_9f1

    :pswitch_7c8  #0x1a
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v2, v26

    move-object/from16 p2, v27

    move-object v15, v3

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    invoke-static {v9, v2}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v1

    if-nez v1, :cond_7e3

    const/4 v1, 0x1

    goto :goto_7e4

    :cond_7e3
    const/4 v1, 0x0

    :goto_7e4
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v15, v2

    goto :goto_7b8

    :pswitch_7eb  #0x16, 0x17, 0x18, 0x19
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v2, v26

    move-object/from16 p2, v27

    move-object v15, v3

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    invoke-static {v9, v14, v15, v8, v2}, Lorg/mozilla/javascript/Interpreter;->doArithmetic(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v1

    goto/16 :goto_8b4

    :pswitch_804  #0x15
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v2, v26

    move-object/from16 p2, v27

    move-object v15, v3

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    add-int/lit8 v1, v2, -0x1

    invoke-static {v15, v8, v1, v12}, Lorg/mozilla/javascript/Interpreter;->doAdd([Ljava/lang/Object;[DILorg/mozilla/javascript/Context;)V

    goto/16 :goto_8b4

    :pswitch_81e  #0x14
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v2, v26

    move-object/from16 p2, v27

    move-object v15, v3

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    add-int/lit8 v1, v2, -0x1

    invoke-static {v9, v1}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v3

    invoke-static {v9, v2}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v2, v2, -0x1

    aput-object v13, v15, v2

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v3

    ushr-long/2addr v3, v1

    long-to-double v3, v3

    aput-wide v3, v8, v2

    move v1, v2

    move v4, v6

    move-object/from16 v25, v8

    move-object v5, v9

    move-object v3, v15

    move-object/from16 v9, v26

    move-object/from16 v15, v35

    move/from16 v10, v36

    move-object/from16 v6, v39

    move-object/from16 v8, v40

    goto/16 :goto_12ac

    :pswitch_85b  #0xe, 0xf, 0x10, 0x11
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v2, v26

    move-object/from16 p2, v27

    move-object v15, v3

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    invoke-static {v9, v14, v15, v8, v2}, Lorg/mozilla/javascript/Interpreter;->doCompare(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v1

    goto :goto_8b4

    :pswitch_873  #0xc, 0xd
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v2, v26

    move-object/from16 p2, v27

    move-object v15, v3

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    add-int/lit8 v1, v2, -0x1

    invoke-static {v15, v8, v1}, Lorg/mozilla/javascript/Interpreter;->doEquals([Ljava/lang/Object;[DI)Z

    move-result v2

    const/16 v10, 0xd

    if-ne v14, v10, :cond_892

    const/4 v3, 0x1

    goto :goto_893

    :cond_892
    const/4 v3, 0x0

    :goto_893
    xor-int/2addr v2, v3

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v15, v1

    goto :goto_8b4

    :pswitch_89b  #0x9, 0xa, 0xb, 0x12, 0x13
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v2, v26

    move-object/from16 p2, v27

    const/16 v10, 0xd

    move-object v15, v3

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    invoke-static {v9, v14, v15, v8, v2}, Lorg/mozilla/javascript/Interpreter;->doBitOp(Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v1
    :try_end_8b4
    .catchall {:try_start_6ef .. :try_end_8b4} :catchall_8c5

    :goto_8b4
    move-object/from16 v2, p2

    :goto_8b6
    move v4, v6

    move-object/from16 v25, v8

    move-object v5, v9

    :goto_8ba
    move-object v3, v15

    move-object/from16 v9, v26

    move-object/from16 v15, v35

    move/from16 v10, v36

    move-object/from16 v6, v39

    goto/16 :goto_b1d

    :catchall_8c5
    move-exception v0

    :goto_8c6
    move-object v4, v0

    move-object v14, v9

    move-object v5, v13

    move-object/from16 v1, v40

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_8cd
    const/16 v31, 0x0

    move-object/from16 v9, p2

    goto/16 :goto_190c

    :pswitch_8d3  #0x8, 0x4a
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v2, v26

    move-object/from16 p2, v27

    const/16 v10, 0xd

    move-object v15, v3

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    :try_start_8e8
    aget-object v1, v15, v2
    :try_end_8ea
    .catchall {:try_start_8e8 .. :try_end_8ea} :catchall_911

    if-ne v1, v13, :cond_8f2

    :try_start_8ec
    aget-wide v3, v8, v2

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1
    :try_end_8f2
    .catchall {:try_start_8ec .. :try_end_8f2} :catchall_8c5

    :cond_8f2
    add-int/lit8 v2, v2, -0x1

    :try_start_8f4
    aget-object v3, v15, v2

    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    const/16 v4, 0x8

    if-ne v14, v4, :cond_905

    iget-object v4, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;
    :try_end_8fe
    .catchall {:try_start_8f4 .. :try_end_8fe} :catchall_911

    move-object/from16 v5, p2

    :try_start_900
    invoke-static {v3, v1, v12, v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_90d

    :cond_905
    move-object/from16 v5, p2

    iget-object v4, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v3, v1, v12, v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->strictSetName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_90d
    aput-object v1, v15, v2

    goto/16 :goto_a20

    :catchall_911
    move-exception v0

    move-object/from16 v5, p2

    goto/16 :goto_a24

    :pswitch_916  #0x7
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v2, v26

    const/16 v10, 0xd

    move-object v15, v3

    move v6, v4

    move-object/from16 v26, v9

    move-object v9, v5

    move-object/from16 v5, v27

    add-int/lit8 v1, v2, -0x1

    invoke-static {v9, v2}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v2

    if-eqz v2, :cond_93a

    iget v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v4, 0x2

    add-int/2addr v2, v4

    iput v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_96a

    :cond_93a
    move-object/from16 p2, v5

    move-object/from16 v37, v7

    move-object v10, v8

    move-object v14, v9

    move-object/from16 v41, v26

    move-object/from16 v7, v34

    const/4 v3, 0x4

    const/4 v4, 0x2

    goto :goto_978

    :pswitch_947  #0x6
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v2, v26

    const/16 v10, 0xd

    move-object v15, v3

    move v6, v4

    move-object/from16 v26, v9

    const/4 v4, 0x2

    move-object v9, v5

    move-object/from16 v5, v27

    add-int/lit8 v1, v2, -0x1

    invoke-static {v9, v2}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v2

    if-nez v2, :cond_96d

    iget v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v2, v4

    iput v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_96a
    move-object v2, v5

    goto/16 :goto_8b6

    :cond_96d
    move-object/from16 p2, v5

    move-object/from16 v37, v7

    move-object v10, v8

    move-object v14, v9

    move-object/from16 v41, v26

    move-object/from16 v7, v34

    const/4 v3, 0x4

    :goto_978
    const/16 v9, 0x64

    const/16 v32, 0x1

    move v8, v6

    goto/16 :goto_13e9

    :pswitch_97f  #0x5
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move/from16 v2, v26

    move-object v15, v3

    move-object/from16 v26, v9

    move-object v9, v5

    move v1, v2

    move v8, v4

    move-object/from16 v37, v7

    move-object v14, v9

    move-object/from16 v10, v25

    move-object/from16 v41, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    :goto_99a
    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v9, 0x64

    :goto_99e
    const/16 v32, 0x1

    goto/16 :goto_13e9

    :pswitch_9a2  #0x4
    move-object v15, v3

    move v6, v4

    move-object v9, v5

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v8, v25

    move/from16 v2, v26

    move-object/from16 v5, v27

    const/4 v4, 0x2

    const/16 v10, 0xd

    aget-object v1, v15, v2

    iput-object v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    aget-wide v1, v8, v2

    iput-wide v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    move-object v14, v9

    move-object/from16 v1, v40

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v31, 0x0

    move-object v9, v5

    move-object v5, v13

    move v13, v6

    goto/16 :goto_181c

    :pswitch_9c6  #0x3
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v2, v26

    const/16 v10, 0xd

    move-object v15, v3

    move v6, v4

    move-object/from16 v26, v9

    const/4 v4, 0x2

    move-object v9, v5

    move-object/from16 v5, v27

    iget-object v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->leaveWith(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    iput-object v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v37, v7

    move-object v10, v8

    move-object v14, v9

    move-object/from16 v41, v26

    move-object/from16 v1, v40

    const/4 v3, 0x0

    const/16 v31, 0x0

    move-object v9, v5

    move-object v5, v13

    :goto_9f1
    move v13, v6

    :goto_9f2
    move v6, v2

    const/4 v2, 0x1

    goto/16 :goto_1893

    :pswitch_9f6  #0x2
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v2, v26

    const/16 v10, 0xd

    move-object v15, v3

    move v6, v4

    move-object/from16 v26, v9

    const/4 v4, 0x2

    move-object v9, v5

    move-object/from16 v5, v27

    aget-object v1, v15, v2

    if-ne v1, v13, :cond_a16

    aget-wide v23, v8, v2

    invoke-static/range {v23 .. v24}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_a16
    add-int/lit8 v2, v2, -0x1

    iget-object v3, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v12, v3}, Lorg/mozilla/javascript/ScriptRuntime;->enterWith(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    iput-object v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;
    :try_end_a20
    .catchall {:try_start_900 .. :try_end_a20} :catchall_a23

    :goto_a20
    move v1, v2

    goto/16 :goto_96a

    :catchall_a23
    move-exception v0

    :goto_a24
    move-object v4, v0

    move-object v14, v9

    move-object/from16 v1, v40

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v31, 0x0

    move-object v9, v5

    move-object v5, v13

    goto/16 :goto_190c

    :pswitch_a30  #0x0
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v2, v26

    const/16 v10, 0xd

    move-object v15, v3

    move v6, v4

    move-object/from16 v26, v9

    const/4 v4, 0x2

    move-object v9, v5

    move-object/from16 v5, v27

    :goto_a46
    move-object/from16 v1, p0

    move v3, v2

    move-object v2, v9

    move/from16 p1, v3

    move v3, v14

    const/4 v14, 0x2

    move-object v4, v15

    move-object/from16 v43, v5

    move-object v5, v8

    move/from16 v25, v6

    move/from16 v6, p1

    :try_start_a56
    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doDelName(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DI)I

    move-result v1

    goto/16 :goto_b0d

    :pswitch_a5c  #0xffffffff
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 p1, v26

    move-object/from16 v43, v27

    const/16 v10, 0xd

    const/4 v14, 0x2

    move-object v15, v3

    move/from16 v25, v4

    move-object/from16 v26, v9

    move-object v9, v5

    move/from16 v6, p1

    add-int/lit8 v1, v6, 0x1

    aget-object v2, v15, v6

    aput-object v2, v15, v1

    aget-wide v2, v8, v6

    aput-wide v2, v8, v1

    goto/16 :goto_b0d

    :pswitch_a81  #0xfffffffe
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v6, v26

    move-object/from16 v43, v27

    const/16 v10, 0xd

    const/4 v14, 0x2

    move-object v15, v3

    move/from16 v25, v4

    move-object/from16 v26, v9

    move-object v9, v5

    add-int/lit8 v1, v6, 0x1

    add-int/lit8 v2, v6, -0x1

    aget-object v3, v15, v2

    aput-object v3, v15, v1

    aget-wide v2, v8, v2

    aput-wide v2, v8, v1

    add-int/lit8 v1, v6, 0x2

    aget-object v2, v15, v6

    aput-object v2, v15, v1

    aget-wide v2, v8, v6

    aput-wide v2, v8, v1

    goto/16 :goto_b0d

    :pswitch_ab0  #0xfffffffd
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v6, v26

    move-object/from16 v43, v27

    const/16 v10, 0xd

    const/4 v14, 0x2

    move-object v15, v3

    move/from16 v25, v4

    move-object/from16 v26, v9

    move-object v9, v5

    aget-object v1, v15, v6

    add-int/lit8 v2, v6, -0x1

    aget-object v3, v15, v2

    aput-object v3, v15, v6

    aput-object v1, v15, v2

    aget-wide v3, v8, v6

    aget-wide v23, v8, v2

    aput-wide v23, v8, v6

    aput-wide v3, v8, v2
    :try_end_ad9
    .catchall {:try_start_a56 .. :try_end_ad9} :catchall_aec

    move-object/from16 v37, v7

    move-object v10, v8

    move-object v14, v9

    move-object v5, v13

    move/from16 v13, v25

    move-object/from16 v41, v26

    move-object/from16 v1, v40

    move-object/from16 v9, v43

    :goto_ae6
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v31, 0x0

    goto/16 :goto_1893

    :catchall_aec
    move-exception v0

    move-object v4, v0

    move-object v14, v9

    goto/16 :goto_bcc

    :pswitch_af1  #0xfffffffc
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v6, v26

    move-object/from16 v43, v27

    const/16 v10, 0xd

    const/4 v14, 0x2

    move-object v15, v3

    move/from16 v25, v4

    move-object/from16 v26, v9

    move-object v9, v5

    const/4 v5, 0x0

    :try_start_b09
    aput-object v5, v15, v6

    :goto_b0b
    add-int/lit8 v1, v6, -0x1

    :goto_b0d
    move-object v5, v9

    move-object v3, v15

    move/from16 v4, v25

    move-object/from16 v9, v26

    move-object/from16 v15, v35

    move/from16 v10, v36

    move-object/from16 v6, v39

    move-object/from16 v2, v43

    move-object/from16 v25, v8

    :goto_b1d
    move-object/from16 v8, v40

    goto/16 :goto_9a

    :pswitch_b21  #0xfffffffb
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v6, v26

    move-object/from16 v43, v27

    const/16 v10, 0xd

    const/4 v14, 0x2

    move-object v15, v3

    move/from16 v25, v4

    move-object/from16 v26, v9

    move-object v9, v5

    const/4 v5, 0x0

    aget-object v1, v15, v6

    iput-object v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    aget-wide v1, v8, v6

    iput-wide v1, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    aput-object v5, v15, v6

    goto :goto_b0b

    :pswitch_b44  #0xfffffffa
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v6, v26

    move-object/from16 v43, v27

    const/16 v10, 0xd

    const/4 v14, 0x2

    move-object v15, v3

    move/from16 v25, v4

    move-object/from16 v26, v9

    move-object v9, v5

    const/4 v5, 0x0

    add-int/lit8 v1, v6, -0x1

    invoke-static {v9, v6}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v2

    if-nez v2, :cond_b6a

    iget v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v2, v14

    iput v2, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_b0d

    :cond_b6a
    add-int/lit8 v2, v1, -0x1

    aput-object v5, v15, v1
    :try_end_b6e
    .catchall {:try_start_b09 .. :try_end_b6e} :catchall_b7d

    move v1, v2

    move-object/from16 v37, v7

    move-object v10, v8

    move-object v14, v9

    move/from16 v8, v25

    move-object/from16 v41, v26

    move-object/from16 v7, v34

    move-object/from16 p2, v43

    goto/16 :goto_99a

    :catchall_b7d
    move-exception v0

    move-object v4, v0

    move-object v3, v5

    move-object v14, v9

    move-object v5, v13

    move-object/from16 v1, v40

    move-object/from16 v9, v43

    :goto_b86
    const/4 v2, 0x1

    goto/16 :goto_12bb

    :pswitch_b89  #0xfffffff9
    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v8, v25

    move/from16 v6, v26

    move-object/from16 v43, v27

    const/16 v10, 0xd

    const/4 v14, 0x2

    move-object v15, v3

    move/from16 v25, v4

    move-object/from16 v26, v9

    move-object v9, v5

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v4, v8

    move v5, v6

    move-object/from16 v6, v35

    move-object/from16 v37, v7

    move-object/from16 v7, v26

    move-object v10, v8

    move-object/from16 v8, v39

    move-object v14, v9

    move-object/from16 v41, v26

    move/from16 v9, v25

    :try_start_bb4
    invoke-static/range {v1 .. v9}, Lorg/mozilla/javascript/Interpreter;->doVarIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I

    move-result v1
    :try_end_bb8
    .catchall {:try_start_bb4 .. :try_end_bb8} :catchall_bca

    move-object v5, v14

    move-object v3, v15

    move/from16 v4, v25

    move-object/from16 v15, v35

    move-object/from16 v7, v37

    move-object/from16 v6, v39

    move-object/from16 v8, v40

    move-object/from16 v9, v41

    move-object/from16 v2, v43

    goto/16 :goto_c68

    :catchall_bca
    move-exception v0

    move-object v4, v0

    :goto_bcc
    move-object v5, v13

    move-object/from16 v1, v40

    move-object/from16 v9, v43

    goto/16 :goto_12b9

    :pswitch_bd3  #0xfffffff8
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v43, v27

    move-object v15, v3

    move/from16 v25, v4

    add-int/lit8 v2, v6, 0x1

    :try_start_beb
    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aget-byte v1, v11, v1
    :try_end_bef
    .catchall {:try_start_beb .. :try_end_bef} :catchall_c00

    move-object/from16 v9, v43

    :try_start_bf1
    invoke-static {v3, v9, v12, v1}, Lorg/mozilla/javascript/ScriptRuntime;->nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v2

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v1, v2

    goto/16 :goto_c59

    :catchall_c00
    move-exception v0

    move-object/from16 v9, v43

    goto/16 :goto_e1e

    :pswitch_c05  #0xfffffff7
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object v15, v3

    move/from16 v25, v4

    aget-object v1, v15, v6

    if-ne v1, v13, :cond_c25

    aget-wide v1, v10, v6

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_c25
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v3, v11, v3

    invoke-static {v1, v9, v12, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->propIncrDecr(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v6

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_c98

    :pswitch_c39  #0xfffffff6
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object v15, v3

    move/from16 v25, v4

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v11

    move-object v4, v15

    move-object v5, v10

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/Interpreter;->doElemIncDec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[B[Ljava/lang/Object;[DI)I

    move-result v1

    :goto_c59
    move-object v2, v9

    move-object v5, v14

    move-object v3, v15

    move/from16 v4, v25

    move-object/from16 v15, v35

    move-object/from16 v7, v37

    move-object/from16 v6, v39

    move-object/from16 v8, v40

    move-object/from16 v9, v41

    :goto_c68
    move-object/from16 v25, v10

    move/from16 v10, v36

    goto/16 :goto_9a

    :pswitch_c6e  #0xfffffff5
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object v15, v3

    move/from16 v25, v4

    aget-object v2, v15, v6

    check-cast v2, Lorg/mozilla/javascript/Ref;

    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aget-byte v1, v11, v1

    invoke-static {v2, v12, v3, v1}, Lorg/mozilla/javascript/ScriptRuntime;->refIncrDecr(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v6

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_c98
    move-object v5, v13

    move/from16 v13, v25

    move-object/from16 v1, v40

    goto/16 :goto_ae6

    :pswitch_c9f  #0xfffffff4
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object v15, v3

    move/from16 v25, v4

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    move/from16 v8, v25

    add-int v4, v8, v1

    aget-object v1, v15, v4

    check-cast v1, Lorg/mozilla/javascript/Scriptable;

    iput-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto :goto_cdf

    :pswitch_cc2  #0xfffffff3
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object v15, v3

    move v8, v4

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int v4, v8, v1

    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aput-object v1, v15, v4

    :goto_cdf
    move v1, v6

    goto :goto_d01

    :pswitch_ce1  #0xfffffff2
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object v15, v3

    move v8, v4

    add-int/lit8 v1, v6, 0x1

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v9}, Lorg/mozilla/javascript/ScriptRuntime;->typeofName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v1

    :goto_d00
    move v4, v8

    :goto_d01
    move-object v2, v9

    goto/16 :goto_131c

    :pswitch_d04  #0xfffffff1
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object v15, v3

    move v8, v4

    add-int/lit8 v1, v6, 0x1

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v9, v12, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getNameFunctionAndThis(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    aput-object v2, v15, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    aput-object v2, v15, v1

    goto :goto_d00

    :pswitch_d2c  #0xfffffff0
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object v15, v3

    move v8, v4

    aget-object v1, v15, v6

    if-ne v1, v13, :cond_d4b

    aget-wide v1, v10, v6

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_d4b
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v9, v12, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v15, v6

    add-int/lit8 v1, v6, 0x1

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    aput-object v2, v15, v1

    goto :goto_d00

    :pswitch_d5c  #0xffffffef
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object v15, v3

    move v8, v4

    add-int/lit8 v1, v6, -0x1

    aget-object v2, v15, v1

    if-ne v2, v13, :cond_d7d

    aget-wide v2, v10, v1

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    :cond_d7d
    aget-object v3, v15, v6

    if-ne v3, v13, :cond_d87

    aget-wide v3, v10, v6

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    :cond_d87
    iget-object v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v2, v3, v12, v4}, Lorg/mozilla/javascript/ScriptRuntime;->getElemFunctionAndThis(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    aput-object v2, v15, v1

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    aput-object v1, v15, v6

    goto/16 :goto_ed7

    :pswitch_d97  #0xffffffee
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object v15, v3

    move v8, v4

    aget-object v1, v15, v6

    if-ne v1, v13, :cond_db6

    aget-wide v1, v10, v6

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_db6
    invoke-static {v1, v12}, Lorg/mozilla/javascript/ScriptRuntime;->getValueFunctionAndThis(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    aput-object v1, v15, v6

    add-int/lit8 v1, v6, 0x1

    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    aput-object v2, v15, v1

    goto/16 :goto_d00

    :pswitch_dc6  #0xffffffed
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object v15, v3

    move v8, v4

    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-static {v12, v1, v2, v8}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object v1

    iget-object v2, v1, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_df8

    add-int/lit8 v2, v6, 0x1

    new-instance v3, Lorg/mozilla/javascript/ArrowFunction;

    iget-object v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v5, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    invoke-direct {v3, v12, v4, v1, v5}, Lorg/mozilla/javascript/ArrowFunction;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;)V

    aput-object v3, v15, v2

    goto :goto_dfc

    :cond_df8
    add-int/lit8 v2, v6, 0x1

    aput-object v1, v15, v2

    :goto_dfc
    move v1, v2

    goto/16 :goto_d00

    :pswitch_dff  #0xffffffec
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object v15, v3

    move v8, v4

    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-static {v12, v1, v2, v8}, Lorg/mozilla/javascript/Interpreter;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V

    goto/16 :goto_ed7

    :catchall_e1d
    move-exception v0

    :goto_e1e
    move-object v4, v0

    goto/16 :goto_12b6

    :pswitch_e21  #0xffffffeb
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    move-object v15, v3

    move v8, v4

    if-eqz v36, :cond_e40

    iget v1, v12, Lorg/mozilla/javascript/Context;->instructionCount:I

    const/16 v7, 0x64

    add-int/2addr v1, v7

    iput v1, v12, Lorg/mozilla/javascript/Context;->instructionCount:I
    :try_end_e3f
    .catchall {:try_start_bf1 .. :try_end_e3f} :catchall_e1d

    goto :goto_e42

    :cond_e40
    const/16 v7, 0x64

    :goto_e42
    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object v4, v10

    move v5, v6

    move-object v6, v11

    move-object/from16 p2, v9

    const/16 v9, 0x64

    move v7, v8

    :try_start_e4e
    invoke-static/range {v1 .. v7}, Lorg/mozilla/javascript/Interpreter;->doCallSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[BI)I

    move-result v1
    :try_end_e52
    .catchall {:try_start_e4e .. :try_end_e52} :catchall_e56

    move-object/from16 v2, p2

    goto/16 :goto_131b

    :catchall_e56
    move-exception v0

    move-object/from16 v9, p2

    goto :goto_e1e

    :pswitch_e5a  #0xffffffea
    move-object v14, v5

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    move v8, v4

    :try_start_e66
    iput-object v7, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    move-object/from16 v9, p2

    move-object/from16 v34, v7

    move-object v5, v13

    move-object/from16 v1, v40

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v31, 0x0

    move v13, v8

    goto/16 :goto_181c

    :pswitch_e76  #0xffffffe9
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    move-object v15, v3

    move v8, v4

    add-int/lit8 v2, v6, 0x1

    aput-object v13, v15, v2

    add-int/lit8 v1, v1, 0x2

    int-to-double v3, v1

    aput-wide v3, v10, v2

    move v1, v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    goto/16 :goto_99e

    :pswitch_e9d  #0xffffffe8
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    move-object v15, v3

    move v8, v4

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    add-int/lit8 v2, v1, 0x1

    if-ne v6, v2, :cond_ece

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int v4, v8, v1

    aget-object v1, v15, v6

    aput-object v1, v15, v4

    aget-wide v1, v10, v6

    aput-wide v1, v10, v4

    add-int/lit8 v1, v6, -0x1

    move-object/from16 v2, p2

    goto/16 :goto_1166

    :cond_ece
    if-eq v6, v1, :cond_ed3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_ed3
    :goto_ed3
    move-object/from16 v9, p2

    move-object/from16 v34, v7

    :goto_ed7
    move-object v5, v13

    move-object/from16 v1, v40

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v31, 0x0

    move v13, v8

    goto/16 :goto_1893

    :pswitch_ee1  #0xffffffe7
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    move-object v15, v3

    move v8, v4

    if-eqz v36, :cond_f00

    const/4 v1, 0x0

    invoke-static {v12, v14, v1}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V

    :cond_f00
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int v4, v8, v1

    aget-object v1, v15, v4

    if-eq v1, v13, :cond_f12

    move-object/from16 v15, p2

    move-object v4, v1

    move-object/from16 v34, v7

    move-object v5, v13

    move-object/from16 v1, v40

    goto/16 :goto_415

    :cond_f12
    aget-wide v1, v10, v4

    double-to-int v1, v1

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    if-eqz v36, :cond_f1b

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    :cond_f1b
    move-object/from16 v2, p2

    goto/16 :goto_1165

    :pswitch_f1f  #0xffffffe6
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    move-object v15, v3

    move v8, v4

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v2, :cond_f47

    invoke-static {v11, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v1

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    invoke-interface {v2, v12, v1}, Lorg/mozilla/javascript/debug/DebugFrame;->onLineChange(Lorg/mozilla/javascript/Context;I)V

    :cond_f47
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_ed3

    :pswitch_f4e  #0xffffffe5
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    move-object v15, v3

    move v8, v4

    add-int/lit8 v2, v6, 0x1

    aput-object v13, v15, v2

    invoke-static {v11, v1}, Lorg/mozilla/javascript/Interpreter;->getShort([BI)I

    move-result v1

    int-to-double v3, v1

    aput-wide v3, v10, v2

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v3, 0x2

    add-int/2addr v1, v3

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_13a7

    :pswitch_f7a  #0xffffffe4
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    move-object v15, v3

    move v8, v4

    const/4 v3, 0x2

    add-int/lit8 v2, v6, 0x1

    aput-object v13, v15, v2

    invoke-static {v11, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v1

    int-to-double v4, v1

    aput-wide v4, v10, v2

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v4, 0x4

    add-int/2addr v1, v4

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_13a7

    :pswitch_fa7  #0xffffffe3
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    move-object v15, v3

    move v8, v4

    const/4 v3, 0x2

    add-int/lit8 v1, v6, 0x1

    new-array v2, v8, [I

    aput-object v2, v15, v1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v2, v15, v1

    aput-wide v16, v10, v1

    goto/16 :goto_1317

    :pswitch_fd1  #0xffffffe2
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    move-object v15, v3

    move v8, v4

    const/4 v3, 0x2

    aget-object v1, v15, v6

    if-ne v1, v13, :cond_ff5

    aget-wide v1, v10, v6

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_ff5
    add-int/lit8 v2, v6, -0x1

    aget-wide v4, v10, v2

    double-to-int v4, v4

    aget-object v5, v15, v2

    check-cast v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    aput-wide v4, v10, v2

    goto/16 :goto_13a7

    :pswitch_1007  #0xffffffe1
    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    move-object v15, v3

    goto/16 :goto_2ac

    :goto_1020
    aget-object v1, v15, v6

    check-cast v1, [Ljava/lang/Object;

    add-int/lit8 v2, v6, -0x1

    aget-object v3, v15, v2

    check-cast v3, [I

    const/16 v6, 0x43

    if-ne v5, v6, :cond_103d

    iget-object v5, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v5, v5, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    aget-object v5, v5, v8

    check-cast v5, [Ljava/lang/Object;

    iget-object v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v5, v1, v3, v12, v6}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    goto :goto_1051

    :cond_103d
    const/16 v3, -0x1f

    if-ne v5, v3, :cond_104a

    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    aget-object v3, v3, v8

    check-cast v3, [I

    goto :goto_104b

    :cond_104a
    const/4 v3, 0x0

    :goto_104b
    iget-object v5, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v3, v12, v5}, Lorg/mozilla/javascript/ScriptRuntime;->newArrayLiteral([Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    :goto_1051
    aput-object v1, v15, v2

    goto/16 :goto_13a7

    :pswitch_1055  #0xffffffe0
    move-object/from16 v39, v6

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move/from16 v6, v26

    move-object/from16 p2, v27

    const/16 v9, 0x64

    move-object/from16 v2, p2

    move v1, v6

    move-object/from16 v6, v39

    move-object/from16 v9, v41

    const/4 v4, 0x0

    goto/16 :goto_9a

    :pswitch_106d  #0xffffffdf
    move-object/from16 v39, v6

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move/from16 v6, v26

    move-object/from16 p2, v27

    const/16 v9, 0x64

    move-object/from16 v2, p2

    move v1, v6

    move-object/from16 v6, v39

    move-object/from16 v9, v41

    const/4 v4, 0x1

    goto/16 :goto_9a

    :pswitch_1085  #0xffffffde
    move-object/from16 v39, v6

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move/from16 v6, v26

    move-object/from16 p2, v27

    const/4 v4, 0x2

    const/16 v9, 0x64

    move-object/from16 v2, p2

    move v1, v6

    :goto_1097
    move-object/from16 v6, v39

    :goto_1099
    move-object/from16 v9, v41

    goto/16 :goto_9a

    :pswitch_109d  #0xffffffdd
    move-object/from16 v39, v6

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move/from16 v6, v26

    move-object/from16 p2, v27

    const/16 v9, 0x64

    move-object/from16 v2, p2

    move v1, v6

    move-object/from16 v6, v39

    move-object/from16 v9, v41

    const/4 v4, 0x3

    goto/16 :goto_9a

    :pswitch_10b5  #0xffffffdc
    move-object/from16 v39, v6

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move/from16 v6, v26

    move-object/from16 p2, v27

    const/16 v9, 0x64

    move-object/from16 v2, p2

    move v1, v6

    move-object/from16 v6, v39

    move-object/from16 v9, v41

    const/4 v4, 0x4

    goto/16 :goto_9a

    :pswitch_10cd  #0xffffffdb
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/4 v4, 0x2

    const/16 v9, 0x64

    move-object v15, v3

    const/4 v1, 0x5

    move-object/from16 v2, p2

    move v1, v6

    move-object/from16 v15, v35

    move/from16 v10, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v39

    move-object/from16 v9, v41

    const/4 v4, 0x5

    goto/16 :goto_9a

    :pswitch_10f7  #0xffffffda
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/4 v4, 0x2

    const/16 v9, 0x64

    move-object v15, v3

    aget-byte v2, v11, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v1, 0x1

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v4, v2

    move v1, v6

    goto/16 :goto_129a

    :pswitch_111c  #0xffffffd9
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/4 v4, 0x2

    const/16 v9, 0x64

    move-object v15, v3

    invoke-static {v11, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v1

    iget v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v2, v4

    iput v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_1162

    :pswitch_113f  #0xffffffd8
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/4 v4, 0x2

    const/16 v9, 0x64

    move-object v15, v3

    invoke-static {v11, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v1

    iget v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v3, 0x4

    add-int/2addr v2, v3

    iput v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_1162
    move-object/from16 v2, p2

    move v4, v1

    :goto_1165
    move v1, v6

    :goto_1166
    move-object/from16 v34, v7

    goto/16 :goto_131c

    :pswitch_116a  #0xffffffd7
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/4 v1, 0x0

    const/16 v9, 0x64

    move-object v15, v3

    move v8, v4

    const/4 v4, 0x2

    aget-object v2, v37, v1

    goto/16 :goto_11e5

    :pswitch_1189  #0xffffffd6
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    const/16 v32, 0x1

    move-object v15, v3

    move v8, v4

    const/4 v4, 0x2

    aget-object v2, v37, v32

    goto :goto_11e5

    :pswitch_11a8  #0xffffffd5
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    const/16 v32, 0x1

    move-object v15, v3

    move v8, v4

    const/4 v4, 0x2

    aget-object v2, v37, v4

    goto :goto_11e5

    :pswitch_11c7  #0xffffffd4
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    const/16 v32, 0x1

    move-object v15, v3

    move v8, v4

    const/4 v4, 0x2

    aget-object v2, v37, v33

    :goto_11e5
    move v1, v6

    goto/16 :goto_1319

    :pswitch_11e8  #0xffffffd3
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    const/16 v32, 0x1

    move-object v15, v3

    move v8, v4

    const/4 v4, 0x2

    aget-byte v2, v11, v1

    and-int/lit16 v2, v2, 0xff

    aget-object v2, v37, v2
    :try_end_120a
    .catchall {:try_start_e66 .. :try_end_120a} :catchall_12b0

    add-int/lit8 v1, v1, 0x1

    :try_start_120c
    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_120e
    .catchall {:try_start_120c .. :try_end_120e} :catchall_1260

    goto :goto_11e5

    :pswitch_120f  #0xffffffd2
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    const/16 v32, 0x1

    move-object v15, v3

    move v8, v4

    const/4 v4, 0x2

    :try_start_122b
    invoke-static {v11, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v1

    aget-object v2, v37, v1
    :try_end_1231
    .catchall {:try_start_122b .. :try_end_1231} :catchall_12b0

    :try_start_1231
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v1, v4

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_1236
    .catchall {:try_start_1231 .. :try_end_1236} :catchall_1260

    goto :goto_11e5

    :pswitch_1237  #0xffffffd1
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    const/16 v32, 0x1

    move-object v15, v3

    move v8, v4

    const/4 v4, 0x2

    :try_start_1253
    invoke-static {v11, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v1

    aget-object v2, v37, v1
    :try_end_1259
    .catchall {:try_start_1253 .. :try_end_1259} :catchall_12b0

    :try_start_1259
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v3, 0x4

    add-int/2addr v1, v3

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_125f
    .catchall {:try_start_1259 .. :try_end_125f} :catchall_1260

    goto :goto_11e5

    :catchall_1260
    move-exception v0

    move-object v4, v0

    move-object v9, v2

    goto :goto_12b4

    :pswitch_1264  #0xffffffd0
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/4 v4, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    move-object v15, v3

    const/4 v3, 0x4

    add-int/lit8 v2, v1, 0x1

    :try_start_1282
    iput v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v1, v11, v1

    :goto_1286
    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v25, v10

    move/from16 v26, v6

    move-object/from16 v27, v35

    move-object/from16 v28, v41

    move/from16 v29, v1

    invoke-static/range {v23 .. v29}, Lorg/mozilla/javascript/Interpreter;->doGetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[DI)I

    move-result v2

    :goto_1298
    move v4, v1

    move v1, v2

    :goto_129a
    move-object/from16 v34, v7

    :goto_129c
    move-object/from16 v25, v10

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v15, v35

    move/from16 v10, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v39

    move-object/from16 v8, v40

    move-object/from16 v9, v41

    :goto_12ac
    move-object/from16 v2, p2

    goto/16 :goto_9a

    :catchall_12b0
    move-exception v0

    move-object/from16 v9, p2

    move-object v4, v0

    :goto_12b4
    move-object/from16 v34, v7

    :goto_12b6
    move-object v5, v13

    move-object/from16 v1, v40

    :goto_12b9
    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_12bb
    const/16 v31, 0x0

    goto/16 :goto_190c

    :pswitch_12bf  #0xffffffcf
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/4 v4, 0x2

    const/16 v9, 0x64

    const/16 v32, 0x1

    move-object v15, v3

    const/4 v3, 0x4

    add-int/lit8 v2, v1, 0x1

    iput v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v1, v11, v1

    :goto_12e1
    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v25, v10

    move/from16 v26, v6

    move-object/from16 v27, v35

    move-object/from16 v28, v41

    move-object/from16 v29, v39

    move/from16 v30, v1

    invoke-static/range {v23 .. v30}, Lorg/mozilla/javascript/Interpreter;->doSetVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I

    move-result v2

    goto :goto_1298

    :pswitch_12f6  #0xffffffce
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    const/16 v32, 0x1

    move-object v15, v3

    move v8, v4

    const/4 v3, 0x4

    const/4 v4, 0x2

    add-int/lit8 v1, v6, 0x1

    aput-object v7, v15, v1

    :cond_1317
    :goto_1317
    move-object/from16 v2, p2

    :goto_1319
    move-object/from16 v34, v7

    :goto_131b
    move v4, v8

    :goto_131c
    move-object/from16 v25, v10

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v15, v35

    move/from16 v10, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v39

    move-object/from16 v8, v40

    goto/16 :goto_1099

    :pswitch_132c  #0xffffffcd
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    const/16 v32, 0x1

    move-object v15, v3

    move v8, v4

    const/4 v3, 0x4

    const/4 v4, 0x2

    add-int/lit8 v1, v6, 0x1

    aput-object v13, v15, v1

    aput-wide v16, v10, v1

    goto :goto_1317

    :pswitch_1350  #0xffffffcc
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    const/16 v32, 0x1

    move-object v15, v3

    move v8, v4

    const/4 v3, 0x4

    const/4 v4, 0x2

    add-int/lit8 v1, v6, 0x1

    aput-object v13, v15, v1

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    aput-wide v5, v10, v1

    goto :goto_1317

    :pswitch_1376  #0xffffffcb
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    const/16 v32, 0x1

    move-object v15, v3

    move v8, v4

    const/4 v3, 0x4

    const/4 v4, 0x2

    aget-object v1, v15, v6

    if-ne v1, v13, :cond_139d

    aget-wide v1, v10, v6

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1

    :cond_139d
    add-int/lit8 v2, v6, -0x1

    iget-object v5, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->enterDotQuery(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    iput-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    :goto_13a7
    move v1, v2

    move-object/from16 v34, v7

    move v4, v8

    goto/16 :goto_129c

    :pswitch_13ad  #0xffffffca
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    const/16 v32, 0x1

    move-object v15, v3

    move v8, v4

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-static {v14, v6}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result v1

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->updateDotQuery(ZLorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13e7

    aput-object v1, v15, v6

    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->leaveDotQuery(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    iput-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/2addr v1, v4

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_ed3

    :cond_13e7
    add-int/lit8 v1, v6, -0x1

    :goto_13e9
    if-eqz v36, :cond_13ee

    invoke-static {v12, v14, v4}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V

    :cond_13ee
    iget v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v11, v2}, Lorg/mozilla/javascript/Interpreter;->getShort([BI)I

    move-result v2

    if-eqz v2, :cond_13fe

    iget v5, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v5, v2

    iput v5, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto :goto_140a

    :cond_13fe
    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    iget v5, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-virtual {v2, v5}, Lorg/mozilla/javascript/UintMap;->getExistingInt(I)I

    move-result v2

    iput v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    :goto_140a
    if-eqz v36, :cond_1317

    iget v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iput v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    goto/16 :goto_1317

    :pswitch_1412  #0xffffffc9
    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 p2, v27

    move-object/from16 v7, v34

    const/16 v9, 0x64

    const/16 v32, 0x1

    move-object v15, v3

    move v8, v4

    const/4 v3, 0x4

    const/4 v4, 0x2

    goto/16 :goto_579

    :goto_1430
    if-eqz v36, :cond_1437

    iget v1, v12, Lorg/mozilla/javascript/Context;->instructionCount:I

    add-int/2addr v1, v9

    iput v1, v12, Lorg/mozilla/javascript/Context;->instructionCount:I
    :try_end_1437
    .catchall {:try_start_1282 .. :try_end_1437} :catchall_12b0

    :cond_1437
    add-int/lit8 v1, v8, 0x1

    sub-int/2addr v6, v1

    :try_start_143a
    aget-object v1, v15, v6

    check-cast v1, Lorg/mozilla/javascript/Callable;

    add-int/lit8 v2, v6, 0x1

    aget-object v2, v15, v2

    check-cast v2, Lorg/mozilla/javascript/Scriptable;
    :try_end_1444
    .catchall {:try_start_143a .. :try_end_1444} :catchall_15fd

    const/16 v3, 0x47

    if-ne v5, v3, :cond_1460

    add-int/lit8 v3, v6, 0x2

    :try_start_144a
    invoke-static {v15, v10, v3, v8}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3, v12}, Lorg/mozilla/javascript/ScriptRuntime;->callRef(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;

    move-result-object v1

    aput-object v1, v15, v6
    :try_end_1454
    .catchall {:try_start_144a .. :try_end_1454} :catchall_12b0

    move-object/from16 v46, p2

    move-object/from16 v34, v7

    move-object/from16 v38, v13

    const/4 v2, 0x1

    const/16 v31, 0x0

    move v13, v8

    goto/16 :goto_15e8

    :cond_1460
    :try_start_1460
    iget-object v3, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-boolean v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z
    :try_end_1464
    .catchall {:try_start_1460 .. :try_end_1464} :catchall_15fd

    if-eqz v4, :cond_146a

    :try_start_1466
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3
    :try_end_146a
    .catchall {:try_start_1466 .. :try_end_146a} :catchall_12b0

    :cond_146a
    move-object v4, v3

    :try_start_146b
    instance-of v3, v1, Lorg/mozilla/javascript/InterpretedFunction;
    :try_end_146d
    .catchall {:try_start_146b .. :try_end_146d} :catchall_15fd

    if-eqz v3, :cond_14dc

    :try_start_146f
    move-object v3, v1

    check-cast v3, Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v9, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v9, v9, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object/from16 p1, v2

    iget-object v2, v3, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;
    :try_end_147a
    .catchall {:try_start_146f .. :try_end_147a} :catchall_14cf

    if-ne v9, v2, :cond_14ca

    const/16 v11, -0x37

    if-ne v5, v11, :cond_1493

    :try_start_1480
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :try_end_1482
    .catchall {:try_start_1480 .. :try_end_1482} :catchall_12b0

    const/4 v9, 0x0

    :try_start_1483
    invoke-static {v12, v14, v9}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V
    :try_end_1486
    .catchall {:try_start_1483 .. :try_end_1486} :catchall_1489

    move-object/from16 v23, v1

    goto :goto_1496

    :catchall_1489
    move-exception v0

    move-object v4, v0

    move-object/from16 v34, v7

    move-object v3, v9

    move-object v5, v13

    move-object/from16 v1, v40

    goto/16 :goto_776

    :cond_1493
    const/4 v9, 0x0

    move-object/from16 v23, v14

    :goto_1496
    add-int/lit8 v24, v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v25, p1

    move-object v2, v4

    move-object/from16 v26, v3

    move-object/from16 v3, v25

    move-object v4, v15

    move v15, v5

    move-object v5, v10

    move v10, v6

    move/from16 v6, v24

    move-object/from16 v44, v7

    move v7, v8

    move/from16 v45, v8

    move-object/from16 v8, v26

    move-object/from16 v46, p2

    move-object/from16 v9, v23

    :try_start_14b2
    invoke-static/range {v1 .. v9}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3

    if-eq v15, v11, :cond_14bc

    iput v10, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iput v15, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I
    :try_end_14bc
    .catchall {:try_start_14b2 .. :try_end_14bc} :catchall_1514

    :cond_14bc
    move-object/from16 v1, v22

    move/from16 v10, v36

    move-object/from16 v8, v40

    move-object/from16 v14, v44

    move/from16 v2, v45

    :goto_14c6
    move-object/from16 v4, v46

    goto/16 :goto_6ff

    :cond_14ca
    move-object/from16 v25, p1

    move-object/from16 v46, p2

    goto :goto_14e0

    :catchall_14cf
    move-exception v0

    move-object/from16 v46, p2

    move-object v4, v0

    move-object/from16 v34, v7

    :goto_14d5
    move-object v5, v13

    move-object/from16 v1, v40

    :goto_14d8
    move-object/from16 v9, v46

    goto/16 :goto_12b9

    :cond_14dc
    move-object/from16 v46, p2

    move-object/from16 v25, v2

    :goto_14e0
    move-object/from16 v44, v7

    move/from16 v45, v8

    move v7, v5

    :try_start_14e5
    instance-of v2, v1, Lorg/mozilla/javascript/NativeContinuation;
    :try_end_14e7
    .catchall {:try_start_14e5 .. :try_end_14e7} :catchall_15f9

    if-eqz v2, :cond_151c

    :try_start_14e9
    new-instance v2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    check-cast v1, Lorg/mozilla/javascript/NativeContinuation;

    invoke-direct {v2, v1, v14}, Lorg/mozilla/javascript/Interpreter$ContinuationJump;-><init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V
    :try_end_14f0
    .catchall {:try_start_14e9 .. :try_end_14f0} :catchall_1514

    move/from16 v9, v45

    if-nez v9, :cond_14f9

    move-object/from16 v8, v44

    :try_start_14f6
    iput-object v8, v2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    goto :goto_1505

    :cond_14f9
    move-object/from16 v8, v44

    add-int/lit8 v6, v6, 0x2

    aget-object v1, v15, v6

    iput-object v1, v2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    aget-wide v3, v10, v6

    iput-wide v3, v2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D
    :try_end_1505
    .catchall {:try_start_14f6 .. :try_end_1505} :catchall_150f

    :goto_1505
    move-object v4, v2

    move-object/from16 v34, v8

    move-object v5, v13

    move-object/from16 v1, v40

    move-object/from16 v15, v46

    goto/16 :goto_415

    :catchall_150f
    move-exception v0

    move-object v4, v0

    move-object/from16 v34, v8

    goto :goto_14d5

    :catchall_1514
    move-exception v0

    move-object v4, v0

    move-object v5, v13

    move-object/from16 v1, v40

    move-object/from16 v34, v44

    goto :goto_14d8

    :cond_151c
    move-object/from16 v8, v44

    move/from16 v9, v45

    :try_start_1520
    instance-of v2, v1, Lorg/mozilla/javascript/IdFunctionObject;
    :try_end_1522
    .catchall {:try_start_1520 .. :try_end_1522} :catchall_15f5

    if-eqz v2, :cond_158b

    :try_start_1524
    move-object/from16 v23, v1

    check-cast v23, Lorg/mozilla/javascript/IdFunctionObject;

    invoke-static/range {v23 .. v23}, Lorg/mozilla/javascript/NativeContinuation;->isContinuationConstructor(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v2
    :try_end_152c
    .catchall {:try_start_1524 .. :try_end_152c} :catchall_157d

    if-eqz v2, :cond_1543

    :try_start_152e
    iget-object v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v5, 0x0

    invoke-static {v12, v2, v5}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v2

    aput-object v2, v1, v6
    :try_end_1539
    .catchall {:try_start_152e .. :try_end_1539} :catchall_150f

    move-object/from16 v34, v8

    move-object/from16 v38, v13

    const/4 v2, 0x1

    const/16 v31, 0x0

    move v13, v9

    goto/16 :goto_15e8

    :cond_1543
    const/4 v5, 0x0

    :try_start_1544
    invoke-static/range {v23 .. v23}, Lorg/mozilla/javascript/BaseFunction;->isApplyOrCall(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v2

    if-eqz v2, :cond_158b

    invoke-static/range {v25 .. v25}, Lorg/mozilla/javascript/ScriptRuntime;->getCallable(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    instance-of v3, v2, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v3, :cond_158b

    move-object v3, v2

    check-cast v3, Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    iget-object v5, v3, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;
    :try_end_155b
    .catchall {:try_start_1544 .. :try_end_155b} :catchall_157d

    if-ne v2, v5, :cond_158b

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v11, v3

    move v3, v9

    move-object v5, v4

    move-object v4, v15

    move-object v15, v5

    const/16 v31, 0x0

    move-object v5, v10

    move-object/from16 v34, v8

    move-object v8, v15

    move v15, v9

    move-object/from16 v9, v23

    move-object v10, v11

    :try_start_156f
    invoke-static/range {v1 .. v10}, Lorg/mozilla/javascript/Interpreter;->initFrameForApplyOrCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3
    :try_end_1573
    .catchall {:try_start_156f .. :try_end_1573} :catchall_157b

    move v2, v15

    move-object/from16 v1, v22

    move-object/from16 v14, v34

    move/from16 v10, v36

    goto :goto_15c6

    :catchall_157b
    move-exception v0

    goto :goto_1582

    :catchall_157d
    move-exception v0

    move-object/from16 v34, v8

    const/16 v31, 0x0

    :goto_1582
    move-object v4, v0

    move-object v5, v13

    :goto_1584
    move-object/from16 v1, v40

    move-object/from16 v9, v46

    const/4 v2, 0x1

    goto/16 :goto_160b

    :cond_158b
    move-object/from16 v34, v8

    const/16 v31, 0x0

    move-object v8, v4

    :try_start_1590
    instance-of v2, v1, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;

    if-eqz v2, :cond_15cf

    move-object v5, v1

    check-cast v5, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;

    iget-object v2, v5, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->noSuchMethodMethod:Lorg/mozilla/javascript/Callable;

    instance-of v3, v2, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v3, :cond_15cf

    move-object v4, v2

    check-cast v4, Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    iget-object v3, v4, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;
    :try_end_15a6
    .catchall {:try_start_1590 .. :try_end_15a6} :catchall_15f2

    if-ne v2, v3, :cond_15cf

    move-object/from16 v1, p0

    move-object v2, v14

    move v3, v9

    move-object v11, v4

    move-object v4, v15

    move-object v15, v5

    move-object v5, v10

    move-object v10, v8

    move-object/from16 v8, v25

    move-object/from16 v38, v13

    move v13, v9

    move-object v9, v10

    move-object v10, v15

    const/4 v15, 0x1

    :try_start_15b9
    invoke-static/range {v1 .. v11}, Lorg/mozilla/javascript/Interpreter;->initFrameForNoSuchMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v3
    :try_end_15bd
    .catchall {:try_start_15b9 .. :try_end_15bd} :catchall_15ca

    move v2, v13

    move-object/from16 v1, v22

    move-object/from16 v14, v34

    move/from16 v10, v36

    move-object/from16 v13, v38

    :goto_15c6
    move-object/from16 v8, v40

    goto/16 :goto_14c6

    :catchall_15ca
    move-exception v0

    move-object v4, v0

    move-object/from16 v5, v38

    goto :goto_1584

    :cond_15cf
    move-object v3, v8

    move-object/from16 v38, v13

    const/4 v2, 0x1

    move v13, v9

    :try_start_15d4
    iput-object v14, v12, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    iput v7, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    iput v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    add-int/lit8 v4, v6, 0x2

    invoke-static {v15, v10, v4, v13}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v5, v25

    invoke-interface {v1, v12, v3, v5, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v6
    :try_end_15e8
    .catchall {:try_start_15d4 .. :try_end_15e8} :catchall_15ed

    :goto_15e8
    move v1, v6

    :goto_15e9
    move-object/from16 v25, v10

    move v4, v13

    goto :goto_1632

    :catchall_15ed
    move-exception v0

    move-object v4, v0

    move-object/from16 v5, v38

    goto :goto_1607

    :catchall_15f2
    move-exception v0

    const/4 v2, 0x1

    goto :goto_1605

    :catchall_15f5
    move-exception v0

    move-object/from16 v34, v8

    goto :goto_1602

    :catchall_15f9
    move-exception v0

    move-object/from16 v34, v44

    goto :goto_1602

    :catchall_15fd
    move-exception v0

    move-object/from16 v46, p2

    move-object/from16 v34, v7

    :goto_1602
    const/4 v2, 0x1

    const/16 v31, 0x0

    :goto_1605
    move-object v4, v0

    move-object v5, v13

    :goto_1607
    move-object/from16 v1, v40

    move-object/from16 v9, v46

    :goto_160b
    const/4 v3, 0x0

    goto/16 :goto_190c

    :pswitch_160e  #0xffffffc8
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v38, v13

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v46, v27

    const/4 v2, 0x1

    const/16 v31, 0x0

    move-object v15, v3

    move v13, v4

    :try_start_1628
    iget v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I
    :try_end_162a
    .catchall {:try_start_1628 .. :try_end_162a} :catchall_1646

    add-int v4, v13, v1

    const/4 v3, 0x0

    :try_start_162d
    aput-object v3, v15, v4

    move v1, v6

    move-object/from16 v25, v10

    :goto_1632
    move-object v5, v14

    move-object v3, v15

    move-object/from16 v15, v35

    move/from16 v10, v36

    move-object/from16 v7, v37

    move-object/from16 v13, v38

    move-object/from16 v6, v39

    move-object/from16 v8, v40

    move-object/from16 v9, v41

    move-object/from16 v2, v46

    goto/16 :goto_9a

    :catchall_1646
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_16b9

    :pswitch_164a  #0xffffffc7
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v38, v13

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v46, v27

    const/4 v2, 0x1

    const/16 v31, 0x0

    move-object v15, v3

    move v13, v4

    const/4 v3, 0x0

    aget-object v1, v15, v6

    add-int/lit8 v4, v6, -0x1

    aget-wide v5, v10, v4

    double-to-int v5, v5

    aget-object v6, v15, v4

    check-cast v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    add-int/lit8 v1, v4, -0x1

    aget-object v1, v15, v1

    check-cast v1, [I

    aput v18, v1, v5

    add-int/lit8 v5, v5, 0x1

    int-to-double v5, v5

    aput-wide v5, v10, v4

    goto :goto_16b5

    :pswitch_1680  #0xffffffc6
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v38, v13

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v46, v27

    const/4 v2, 0x1

    const/16 v31, 0x0

    move-object v15, v3

    move v13, v4

    const/4 v3, 0x0

    aget-object v1, v15, v6

    add-int/lit8 v4, v6, -0x1

    aget-wide v5, v10, v4

    double-to-int v5, v5

    aget-object v6, v15, v4

    check-cast v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    add-int/lit8 v1, v4, -0x1

    aget-object v1, v15, v1

    check-cast v1, [I

    aput v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    int-to-double v5, v5

    aput-wide v5, v10, v4
    :try_end_16b5
    .catchall {:try_start_162d .. :try_end_16b5} :catchall_16b8

    :goto_16b5
    move v1, v4

    goto/16 :goto_15e9

    :catchall_16b8
    move-exception v0

    :goto_16b9
    move-object v4, v0

    move-object/from16 v5, v38

    :goto_16bc
    move-object/from16 v1, v40

    move-object/from16 v9, v46

    goto/16 :goto_190c

    :pswitch_16c2  #0xffffffc5
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object/from16 v38, v13

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v46, v27

    const/4 v2, 0x1

    const/16 v31, 0x0

    move-object v15, v3

    move v13, v4

    const/4 v3, 0x0

    :try_start_16dd
    aget-object v1, v15, v6
    :try_end_16df
    .catchall {:try_start_16dd .. :try_end_16df} :catchall_170f

    move-object/from16 v5, v38

    if-ne v1, v5, :cond_16ed

    :try_start_16e3
    aget-wide v7, v10, v6

    invoke-static {v7, v8}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v1
    :try_end_16e9
    .catchall {:try_start_16e3 .. :try_end_16e9} :catchall_16ea

    goto :goto_16ed

    :catchall_16ea
    move-exception v0

    move-object v4, v0

    goto :goto_16bc

    :cond_16ed
    :goto_16ed
    add-int/lit8 v4, v6, -0x1

    :try_start_16ef
    aget-object v6, v15, v4

    check-cast v6, Lorg/mozilla/javascript/Scriptable;
    :try_end_16f3
    .catchall {:try_start_16ef .. :try_end_16f3} :catchall_170d

    move-object/from16 v9, v46

    :try_start_16f5
    invoke-static {v6, v1, v12, v9}, Lorg/mozilla/javascript/ScriptRuntime;->setConst(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v15, v4

    move v1, v4

    move-object v2, v9

    move-object/from16 v25, v10

    move v4, v13

    move-object v3, v15

    move-object/from16 v15, v35

    move/from16 v10, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v39

    move-object/from16 v8, v40

    goto/16 :goto_18a2

    :catchall_170d
    move-exception v0

    goto :goto_1712

    :catchall_170f
    move-exception v0

    move-object/from16 v5, v38

    :goto_1712
    move-object/from16 v9, v46

    goto/16 :goto_178b

    :pswitch_1716  #0xffffffc3
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object v5, v13

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    const/4 v2, 0x1

    const/16 v31, 0x0

    move-object v15, v3

    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    iput v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v1, v11, v1

    move v4, v1

    move-object/from16 v1, v40

    goto/16 :goto_18c4

    :pswitch_173a  #0xffffffc2
    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move v7, v14

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    const/4 v2, 0x1

    const/16 v31, 0x0

    move-object v15, v3

    move-object v14, v5

    move-object v5, v13

    const/4 v3, 0x0

    move v13, v4

    iget-boolean v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v4, :cond_1786

    add-int/lit8 v1, v1, -0x1

    iput v1, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v14}, Lorg/mozilla/javascript/Interpreter;->captureFrameForGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v1

    iput-boolean v2, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v4

    const/16 v6, 0xc8

    if-lt v4, v6, :cond_1777

    new-instance v4, Lorg/mozilla/javascript/ES6Generator;

    iget-object v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v7, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-direct {v4, v6, v7, v1}, Lorg/mozilla/javascript/ES6Generator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;Ljava/lang/Object;)V

    iput-object v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    goto :goto_1782

    :cond_1777
    new-instance v4, Lorg/mozilla/javascript/NativeGenerator;

    iget-object v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v7, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    invoke-direct {v4, v6, v7, v1}, Lorg/mozilla/javascript/NativeGenerator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;Ljava/lang/Object;)V

    iput-object v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;
    :try_end_1782
    .catchall {:try_start_16f5 .. :try_end_1782} :catchall_178a

    :goto_1782
    move-object/from16 v1, v40

    goto/16 :goto_181c

    :cond_1786
    move-object/from16 v1, v40

    goto/16 :goto_1879

    :catchall_178a
    move-exception v0

    :goto_178b
    move-object v4, v0

    move-object/from16 v1, v40

    goto/16 :goto_190c

    :pswitch_1790  #0xffffffc1
    move-object v14, v5

    move-object/from16 v40, v8

    move/from16 v36, v10

    move-object v5, v13

    move-object/from16 v9, v27

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v31, 0x0

    move v13, v4

    :try_start_179d
    iput-boolean v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    invoke-static {v11, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v1

    new-instance v4, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-static {v6}, Lorg/mozilla/javascript/NativeIterator;->getStopIterationObject(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v7, v7, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v4, v6, v7, v1}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_17b2
    .catchall {:try_start_179d .. :try_end_17b2} :catchall_17b8

    move-object/from16 v1, v40

    :try_start_17b4
    iput-object v4, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    goto/16 :goto_181c

    :catchall_17b8
    move-exception v0

    move-object/from16 v1, v40

    goto/16 :goto_6a

    :pswitch_17bd  #0xffffffc0
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object v1, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object v5, v13

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    const/4 v2, 0x1

    const/16 v31, 0x0

    move-object v15, v3

    move v13, v4

    const/4 v3, 0x0

    iget-object v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v4, :cond_1893

    invoke-interface {v4, v12}, Lorg/mozilla/javascript/debug/DebugFrame;->onDebuggerStatement(Lorg/mozilla/javascript/Context;)V

    goto/16 :goto_1893

    :pswitch_17df  #0xffffffbf
    move-object v15, v3

    move-object v14, v5

    move-object v1, v8

    move/from16 v36, v10

    move-object v5, v13

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v31, 0x0

    move v13, v4

    iput-boolean v2, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    aget-object v4, v15, v6

    iput-object v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    aget-wide v6, v10, v6

    iput-wide v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    new-instance v4, Lorg/mozilla/javascript/NativeIterator$StopIteration;

    iget-object v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    sget-object v7, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v6, v7, :cond_1808

    iget-wide v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    :cond_1808
    invoke-direct {v4, v6}, Lorg/mozilla/javascript/NativeIterator$StopIteration;-><init>(Ljava/lang/Object;)V

    iget v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v11, v6}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v6

    new-instance v7, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v8, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v8, v8, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v7, v4, v8, v6}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v7, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    :goto_181c
    invoke-static {v12, v14, v3}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    iget-object v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;
    :try_end_1821
    .catchall {:try_start_17b4 .. :try_end_1821} :catchall_18a8

    :try_start_1821
    iget-wide v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D
    :try_end_1823
    .catchall {:try_start_1821 .. :try_end_1823} :catchall_1859

    :try_start_1823
    iget-object v8, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :try_end_1825
    .catchall {:try_start_1823 .. :try_end_1825} :catchall_1852

    if-eqz v8, :cond_184e

    :try_start_1827
    iget-boolean v10, v8, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz v10, :cond_182f

    invoke-virtual {v8}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v8

    :cond_182f
    invoke-static {v8, v4, v6, v7}, Lorg/mozilla/javascript/Interpreter;->setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V
    :try_end_1832
    .catchall {:try_start_1827 .. :try_end_1832} :catchall_1846

    move-object/from16 v19, v3

    move-wide/from16 v20, v6

    move-object v4, v9

    move v2, v13

    move-object/from16 v14, v34

    move/from16 v10, v36

    const/4 v11, 0x1

    move-object/from16 v9, v19

    move-object v13, v5

    move-object v3, v8

    move-object v8, v1

    move-object/from16 v1, v22

    goto/16 :goto_50

    :catchall_1846
    move-exception v0

    move-object/from16 v19, v4

    move-wide/from16 v20, v6

    move-object v14, v8

    goto/16 :goto_6a

    :cond_184e
    move-object/from16 v9, v22

    goto/16 :goto_19c7

    :catchall_1852
    move-exception v0

    move-object/from16 v19, v4

    move-wide/from16 v20, v6

    goto/16 :goto_6a

    :catchall_1859
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_6a

    :pswitch_185e  #0xffffffbe
    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object v1, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move v7, v14

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    const/4 v2, 0x1

    const/16 v31, 0x0

    move-object v15, v3

    move-object v14, v5

    move-object v5, v13

    const/4 v3, 0x0

    goto/16 :goto_1fa

    :goto_1879
    :try_start_1879
    iget-boolean v4, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v4, :cond_1889

    const/16 v4, -0x42

    if-ne v7, v4, :cond_1883

    const/4 v11, 0x1

    goto :goto_1884

    :cond_1883
    const/4 v11, 0x0

    :goto_1884
    invoke-static {v12, v14, v6, v1, v11}, Lorg/mozilla/javascript/Interpreter;->freezeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1889
    invoke-static {v14, v6, v1, v7}, Lorg/mozilla/javascript/Interpreter;->thawGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;I)Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq v4, v7, :cond_1893

    goto/16 :goto_190e

    :cond_1893
    :goto_1893
    move-object v8, v1

    move v1, v6

    move-object v2, v9

    move-object/from16 v25, v10

    move v4, v13

    move-object v3, v15

    move-object/from16 v15, v35

    move/from16 v10, v36

    move-object/from16 v7, v37

    move-object/from16 v6, v39

    :goto_18a2
    move-object/from16 v9, v41

    move-object v13, v5

    move-object v5, v14

    goto/16 :goto_9a

    :catchall_18a8
    move-exception v0

    goto/16 :goto_6a

    :cond_18ab
    move-object v14, v5

    move-object/from16 v39, v6

    move-object/from16 v37, v7

    move-object v1, v8

    move-object/from16 v41, v9

    move/from16 v36, v10

    move-object v5, v13

    move-object/from16 v35, v15

    move-object/from16 v10, v25

    move/from16 v6, v26

    move-object/from16 v9, v27

    const/4 v2, 0x1

    const/16 v31, 0x0

    move-object v15, v3

    move v13, v4

    const/4 v3, 0x0

    :goto_18c4
    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v25, v10

    move/from16 v26, v6

    move-object/from16 v27, v35

    move-object/from16 v28, v41

    move-object/from16 v29, v39

    move/from16 v30, v4

    invoke-static/range {v23 .. v30}, Lorg/mozilla/javascript/Interpreter;->doSetConstVar(Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;[DI[Ljava/lang/Object;[D[II)I

    move-result v6
    :try_end_18d8
    .catchall {:try_start_1879 .. :try_end_18d8} :catchall_18a8

    move-object v8, v1

    move-object v13, v5

    move v1, v6

    move-object v2, v9

    move-object/from16 v25, v10

    move-object v5, v14

    move-object v3, v15

    move-object/from16 v15, v35

    move/from16 v10, v36

    move-object/from16 v7, v37

    goto/16 :goto_1097

    :catchall_18e8
    move-exception v0

    move-object v9, v2

    move-object v14, v5

    move-object v1, v8

    move/from16 v36, v10

    move-object v5, v13

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v31, 0x0

    goto/16 :goto_6a

    :catchall_18f5
    move-exception v0

    move-object v1, v8

    move/from16 v36, v10

    move-object/from16 v34, v14

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_1906

    :catchall_18fe
    move-exception v0

    move-object v1, v8

    move-object v3, v9

    move/from16 v36, v10

    move-object/from16 v34, v14

    const/4 v2, 0x1

    :goto_1906
    const/16 v31, 0x0

    move-object v14, v5

    move-object v5, v13

    goto/16 :goto_69

    :goto_190c
    if-nez v22, :cond_1a06

    :goto_190e
    move-object v15, v9

    :goto_190f
    if-nez v4, :cond_1914

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1914
    if-eqz v1, :cond_1922

    iget v6, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1923

    iget-object v6, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    if-ne v4, v6, :cond_1923

    move-object v9, v3

    :goto_1920
    const/4 v11, 0x1

    goto :goto_196a

    :cond_1922
    const/4 v7, 0x2

    :cond_1923
    instance-of v6, v4, Lorg/mozilla/javascript/JavaScriptException;

    if-eqz v6, :cond_192a

    :goto_1927
    move-object v9, v3

    const/4 v11, 0x2

    goto :goto_196a

    :cond_192a
    instance-of v6, v4, Lorg/mozilla/javascript/EcmaError;

    if-eqz v6, :cond_192f

    goto :goto_1927

    :cond_192f
    instance-of v6, v4, Lorg/mozilla/javascript/EvaluatorException;

    if-eqz v6, :cond_1934

    goto :goto_1927

    :cond_1934
    instance-of v6, v4, Lorg/mozilla/javascript/ContinuationPending;

    if-eqz v6, :cond_193b

    move-object v9, v3

    const/4 v11, 0x0

    goto :goto_196a

    :cond_193b
    instance-of v6, v4, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_194c

    const/16 v6, 0xd

    invoke-virtual {v12, v6}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v6

    if-eqz v6, :cond_1949

    :goto_1947
    const/4 v11, 0x2

    goto :goto_194a

    :cond_1949
    const/4 v11, 0x1

    :goto_194a
    move-object v9, v3

    goto :goto_196a

    :cond_194c
    const/16 v6, 0xd

    instance-of v8, v4, Ljava/lang/Error;

    if-eqz v8, :cond_195b

    invoke-virtual {v12, v6}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v6

    if-eqz v6, :cond_1959

    goto :goto_1947

    :cond_1959
    const/4 v11, 0x0

    goto :goto_194a

    :cond_195b
    instance-of v8, v4, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    if-eqz v8, :cond_1963

    move-object v9, v4

    check-cast v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    goto :goto_1920

    :cond_1963
    invoke-virtual {v12, v6}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v6

    if-eqz v6, :cond_1949

    goto :goto_1947

    :goto_196a
    if-eqz v36, :cond_197a

    const/16 v6, 0x64

    :try_start_196e
    invoke-static {v12, v14, v6}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V
    :try_end_1971
    .catch Ljava/lang/RuntimeException; {:try_start_196e .. :try_end_1971} :catch_1977
    .catch Ljava/lang/Error; {:try_start_196e .. :try_end_1971} :catch_1972

    goto :goto_197a

    :catch_1972
    move-exception v0

    move-object v4, v0

    move-object v9, v3

    const/4 v11, 0x0

    goto :goto_197a

    :catch_1977
    move-exception v0

    move-object v4, v0

    const/4 v11, 0x1

    :cond_197a
    :goto_197a
    iget-object v6, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v6, :cond_198d

    instance-of v8, v4, Ljava/lang/RuntimeException;

    if-eqz v8, :cond_198d

    move-object v8, v4

    check-cast v8, Ljava/lang/RuntimeException;

    :try_start_1985
    invoke-interface {v6, v12, v8}, Lorg/mozilla/javascript/debug/DebugFrame;->onExceptionThrown(Lorg/mozilla/javascript/Context;Ljava/lang/Throwable;)V
    :try_end_1988
    .catchall {:try_start_1985 .. :try_end_1988} :catchall_1989

    goto :goto_198d

    :catchall_1989
    move-exception v0

    move-object v4, v0

    move-object v9, v3

    const/4 v11, 0x0

    :cond_198d
    :goto_198d
    if-eqz v11, :cond_19a7

    if-eq v11, v7, :cond_1993

    const/4 v6, 0x1

    goto :goto_1994

    :cond_1993
    const/4 v6, 0x0

    :goto_1994
    invoke-static {v14, v6}, Lorg/mozilla/javascript/Interpreter;->getExceptionHandler(Lorg/mozilla/javascript/Interpreter$CallFrame;Z)I

    move-result v6

    if-ltz v6, :cond_19a7

    move-object v8, v1

    move-object v9, v3

    move-object v1, v4

    move-object v13, v5

    move v2, v6

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v14, v34

    move/from16 v10, v36

    goto/16 :goto_1a03

    :cond_19a7
    invoke-static {v12, v14, v4}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    iget-object v14, v14, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez v14, :cond_19f2

    if-eqz v9, :cond_19c2

    iget-object v6, v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v6, :cond_19b7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_19b7
    iget-object v6, v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v6, :cond_19bc

    goto :goto_19f8

    :cond_19bc
    iget-object v4, v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    iget-wide v6, v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    move-object v9, v3

    goto :goto_19c7

    :cond_19c2
    move-object v9, v4

    move-object/from16 v4, v19

    move-wide/from16 v6, v20

    :goto_19c7
    iget-object v1, v12, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    if-eqz v1, :cond_19da

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v1

    if-eqz v1, :cond_19da

    iget-object v1, v12, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->pop()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v12, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    goto :goto_19de

    :cond_19da
    iput-object v3, v12, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    iput-object v3, v12, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    :goto_19de
    if-eqz v9, :cond_19ea

    instance-of v1, v9, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_19e7

    check-cast v9, Ljava/lang/RuntimeException;

    throw v9

    :cond_19e7
    check-cast v9, Ljava/lang/Error;

    throw v9

    :cond_19ea
    if-eq v4, v5, :cond_19ed

    goto :goto_19f1

    :cond_19ed
    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v4

    :goto_19f1
    return-object v4

    :cond_19f2
    if-eqz v9, :cond_198d

    iget-object v6, v9, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-ne v6, v14, :cond_198d

    :goto_19f8
    move-object v8, v1

    move-object v9, v3

    move-object v1, v4

    move-object v13, v5

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v14, v34

    move/from16 v10, v36

    const/4 v2, -0x1

    :goto_1a03
    const/4 v11, 0x1

    goto/16 :goto_50

    :cond_1a06
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_1a12

    :goto_1a11
    throw v1

    :goto_1a12
    goto :goto_1a11

    nop

    :pswitch_data_1a14
    .packed-switch -0x42
        :pswitch_185e  #ffffffbe
        :pswitch_17df  #ffffffbf
        :pswitch_17bd  #ffffffc0
        :pswitch_1790  #ffffffc1
        :pswitch_173a  #ffffffc2
        :pswitch_1716  #ffffffc3
    .end packed-switch

    :pswitch_data_1a24
    .packed-switch -0x3b
        :pswitch_16c2  #ffffffc5
        :pswitch_1680  #ffffffc6
        :pswitch_164a  #ffffffc7
        :pswitch_160e  #ffffffc8
        :pswitch_1412  #ffffffc9
        :pswitch_13ad  #ffffffca
        :pswitch_1376  #ffffffcb
        :pswitch_1350  #ffffffcc
        :pswitch_132c  #ffffffcd
        :pswitch_12f6  #ffffffce
        :pswitch_12bf  #ffffffcf
        :pswitch_1264  #ffffffd0
        :pswitch_1237  #ffffffd1
        :pswitch_120f  #ffffffd2
        :pswitch_11e8  #ffffffd3
        :pswitch_11c7  #ffffffd4
        :pswitch_11a8  #ffffffd5
        :pswitch_1189  #ffffffd6
        :pswitch_116a  #ffffffd7
        :pswitch_113f  #ffffffd8
        :pswitch_111c  #ffffffd9
        :pswitch_10f7  #ffffffda
        :pswitch_10cd  #ffffffdb
        :pswitch_10b5  #ffffffdc
        :pswitch_109d  #ffffffdd
        :pswitch_1085  #ffffffde
        :pswitch_106d  #ffffffdf
        :pswitch_1055  #ffffffe0
        :pswitch_1007  #ffffffe1
        :pswitch_fd1  #ffffffe2
        :pswitch_fa7  #ffffffe3
        :pswitch_f7a  #ffffffe4
        :pswitch_f4e  #ffffffe5
        :pswitch_f1f  #ffffffe6
        :pswitch_ee1  #ffffffe7
        :pswitch_e9d  #ffffffe8
        :pswitch_e76  #ffffffe9
        :pswitch_e5a  #ffffffea
        :pswitch_e21  #ffffffeb
        :pswitch_dff  #ffffffec
        :pswitch_dc6  #ffffffed
        :pswitch_d97  #ffffffee
        :pswitch_d5c  #ffffffef
        :pswitch_d2c  #fffffff0
        :pswitch_d04  #fffffff1
        :pswitch_ce1  #fffffff2
        :pswitch_cc2  #fffffff3
        :pswitch_c9f  #fffffff4
        :pswitch_c6e  #fffffff5
        :pswitch_c39  #fffffff6
        :pswitch_c05  #fffffff7
        :pswitch_bd3  #fffffff8
        :pswitch_b89  #fffffff9
        :pswitch_b44  #fffffffa
        :pswitch_b21  #fffffffb
        :pswitch_af1  #fffffffc
        :pswitch_ab0  #fffffffd
        :pswitch_a81  #fffffffe
        :pswitch_a5c  #ffffffff
        :pswitch_a30  #00000000
    .end packed-switch

    :pswitch_data_1aa0
    .packed-switch 0x2
        :pswitch_9f6  #00000002
        :pswitch_9c6  #00000003
        :pswitch_9a2  #00000004
        :pswitch_97f  #00000005
        :pswitch_947  #00000006
        :pswitch_916  #00000007
        :pswitch_8d3  #00000008
        :pswitch_89b  #00000009
        :pswitch_89b  #0000000a
        :pswitch_89b  #0000000b
        :pswitch_873  #0000000c
        :pswitch_873  #0000000d
        :pswitch_85b  #0000000e
        :pswitch_85b  #0000000f
        :pswitch_85b  #00000010
        :pswitch_85b  #00000011
        :pswitch_89b  #00000012
        :pswitch_89b  #00000013
        :pswitch_81e  #00000014
        :pswitch_804  #00000015
        :pswitch_7eb  #00000016
        :pswitch_7eb  #00000017
        :pswitch_7eb  #00000018
        :pswitch_7eb  #00000019
        :pswitch_7c8  #0000001a
        :pswitch_79a  #0000001b
        :pswitch_779  #0000001c
        :pswitch_779  #0000001d
        :pswitch_68d  #0000001e
        :pswitch_672  #0000001f
        :pswitch_632  #00000020
        :pswitch_60e  #00000021
        :pswitch_5ea  #00000022
        :pswitch_5b9  #00000023
        :pswitch_596  #00000024
        :pswitch_580  #00000025
        :pswitch_559  #00000026
        :pswitch_53c  #00000027
        :pswitch_51d  #00000028
        :pswitch_506  #00000029
        :pswitch_4ef  #0000002a
        :pswitch_4ce  #0000002b
        :pswitch_4b7  #0000002c
        :pswitch_4a0  #0000002d
        :pswitch_47b  #0000002e
        :pswitch_47b  #0000002f
        :pswitch_459  #00000030
        :pswitch_43e  #00000031
        :pswitch_41b  #00000032
        :pswitch_404  #00000033
        :pswitch_3ef  #00000034
        :pswitch_3ef  #00000035
        :pswitch_3c5  #00000036
        :pswitch_3a4  #00000037
        :pswitch_383  #00000038
        :pswitch_346  #00000039
        :pswitch_30b  #0000003a
        :pswitch_30b  #0000003b
        :pswitch_30b  #0000003c
        :pswitch_30b  #0000003d
        :pswitch_2da  #0000003e
        :pswitch_2da  #0000003f
        :pswitch_2c3  #00000040
        :pswitch_2b5  #00000041
        :pswitch_294  #00000042
        :pswitch_294  #00000043
        :pswitch_269  #00000044
        :pswitch_23e  #00000045
        :pswitch_222  #00000046
        :pswitch_559  #00000047
        :pswitch_1fd  #00000048
        :pswitch_1e0  #00000049
        :pswitch_8d3  #0000004a
        :pswitch_1be  #0000004b
        :pswitch_18c  #0000004c
        :pswitch_170  #0000004d
        :pswitch_159  #0000004e
        :pswitch_142  #0000004f
        :pswitch_115  #00000050
        :pswitch_e6  #00000051
    .end packed-switch
.end method

.method private static processThrowable(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Interpreter$CallFrame;IZ)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .registers 10

    const/4 v0, 0x0

    if-ltz p3, :cond_34

    iget-boolean p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-eqz p0, :cond_b

    invoke-virtual {p2}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p2

    :cond_b
    iget-object p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    add-int/lit8 v1, p3, 0x2

    aget v1, p0, v1

    iput v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    if-eqz p4, :cond_19

    iput v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    :cond_19
    iget p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    iput p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    iget p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/lit8 v1, p3, 0x5

    aget v1, p0, v1

    add-int/2addr v1, p4

    add-int/lit8 p3, p3, 0x4

    aget p0, p0, p3

    add-int/2addr p4, p0

    iget-object p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object p3, p0, v1

    check-cast p3, Lorg/mozilla/javascript/Scriptable;

    iput-object p3, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    aput-object p1, p0, p4

    goto :goto_89

    :cond_34
    check-cast p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    iget-object p3, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eq p3, p2, :cond_3d

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_3d
    iget-object p2, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez p2, :cond_44

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_44
    iget-object p2, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget p3, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    const/4 p4, 0x1

    add-int/2addr p3, p4

    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v1, :cond_51

    iget v1, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    sub-int/2addr p3, v1

    :cond_51
    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    :goto_54
    if-eq v1, p3, :cond_70

    iget-boolean v4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v4, :cond_5d

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5d
    iget-boolean v4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    if-eqz v4, :cond_6b

    if-nez v3, :cond_67

    sub-int v3, p3, v1

    new-array v3, v3, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    :cond_67
    aput-object p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_6b
    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_70
    :goto_70
    if-eqz v2, :cond_7c

    add-int/lit8 v2, v2, -0x1

    aget-object p2, v3, v2

    sget-object p3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-static {p0, p2, p3, p4}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    goto :goto_70

    :cond_7c
    iget-object p0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p2

    iget-object p0, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    iget-wide p3, p1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    invoke-static {p2, p0, p3, p4}, Lorg/mozilla/javascript/Interpreter;->setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V

    :goto_89
    iput-object v0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    return-object p2
.end method

.method public static restartContinuation(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v4, 0x0

    iget-boolean v6, p1, Lorg/mozilla/javascript/Context;->isTopLevelStrict:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/ScriptRuntime;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_12
    array-length p2, p3

    if-nez p2, :cond_18

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_1b

    :cond_18
    const/4 p2, 0x0

    aget-object p2, p3, p2

    :goto_1b
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeContinuation;->getImplementation()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez p3, :cond_24

    return-object p2

    :cond_24
    new-instance p3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lorg/mozilla/javascript/Interpreter$ContinuationJump;-><init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    iput-object p2, p3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    invoke-static {p1, v0, p3}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static resumeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p3, Lorg/mozilla/javascript/Interpreter$CallFrame;

    new-instance p1, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    invoke-direct {p1, p2, p4}, Lorg/mozilla/javascript/Interpreter$GeneratorState;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_16

    :try_start_a
    invoke-static {p0, p3, p1}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    if-ne p0, p4, :cond_15

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :cond_15
    throw p0

    :cond_16
    invoke-static {p0, p3, p1}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_1f

    return-object p0

    :cond_1f
    throw p1
.end method

.method private static setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V
    .registers 6

    iget v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aput-wide p2, p1, v1

    goto :goto_23

    :cond_11
    const/16 p2, 0x1e

    if-ne v0, p2, :cond_20

    instance-of p2, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz p2, :cond_23

    iget-object p2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget p3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object p1, p2, p3

    goto :goto_23

    :cond_20
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_23
    :goto_23
    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    return-void
.end method

.method private static stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z
    .registers 8

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    return v2

    :cond_e
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    return v3

    :cond_18
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    const-wide/16 v4, 0x0

    if-ne v0, v1, :cond_2f

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_2d

    cmpl-double p0, v0, v4

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    return v2

    :cond_2f
    if-eqz v0, :cond_52

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, p0, :cond_36

    goto :goto_52

    :cond_36
    instance-of p0, v0, Ljava/lang/Number;

    if-eqz p0, :cond_4d

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4b

    cmpl-double v0, p0, v4

    if-eqz v0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    return v2

    :cond_4d
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_52
    :goto_52
    return v3
.end method

.method private static stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq v0, v1, :cond_d

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0

    :cond_d
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, p0, p1

    return-wide v0
.end method

.method private static stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_11

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result p0

    return p0

    :cond_11
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static thawGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;I)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v0

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iget v1, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_24

    new-instance p1, Lorg/mozilla/javascript/JavaScriptException;

    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {p1, p2, p0, v0}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-object p1

    :cond_24
    if-ne v1, v2, :cond_29

    iget-object p0, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    return-object p0

    :cond_29
    if-nez v1, :cond_3c

    const/16 v0, 0x49

    if-eq p3, v0, :cond_33

    const/16 v0, -0x42

    if-ne p3, v0, :cond_39

    :cond_33
    iget-object p0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object p2, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    aput-object p2, p0, p1

    :cond_39
    sget-object p0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p0

    :cond_3c
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public captureStackInfo(Lorg/mozilla/javascript/RhinoException;)V
    .registers 8

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v1, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-nez v1, :cond_b

    goto :goto_68

    :cond_b
    iget-object v1, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    const/4 v2, 0x1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_32

    :cond_17
    iget-object v1, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v1

    iget-object v3, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v3}, Lorg/mozilla/javascript/ObjArray;->peek()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-ne v3, v4, :cond_29

    add-int/lit8 v1, v1, -0x1

    :cond_29
    add-int/2addr v1, v2

    new-array v1, v1, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v3, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/ObjArray;->toArray([Ljava/lang/Object;)V

    goto :goto_34

    :cond_32
    :goto_32
    new-array v1, v2, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    :goto_34
    array-length v3, v1

    sub-int/2addr v3, v2

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    aput-object v0, v1, v3

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_3e
    array-length v4, v1

    if-eq v0, v4, :cond_4a

    aget-object v4, v1, v0

    iget v4, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    add-int/2addr v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_4a
    new-array v0, v3, [I

    array-length v2, v1

    :cond_4d
    if-eqz v2, :cond_5e

    add-int/lit8 v2, v2, -0x1

    aget-object v4, v1, v2

    :goto_53
    if-eqz v4, :cond_4d

    add-int/lit8 v3, v3, -0x1

    iget v5, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    aput v5, v0, v3

    iget-object v4, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_53

    :cond_5e
    if-eqz v3, :cond_63

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_63
    iput-object v1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    iput-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    return-void

    :cond_68
    :goto_68
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    iput-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    return-void
.end method

.method public compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Ljava/lang/Object;
    .registers 6

    new-instance v0, Lorg/mozilla/javascript/CodeGenerator;

    invoke-direct {v0}, Lorg/mozilla/javascript/CodeGenerator;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/CodeGenerator;->compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Lorg/mozilla/javascript/InterpreterData;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    return-object p1
.end method

.method public createFunctionObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    if-eq p3, v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_7
    iget-object p3, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {p1, p2, p3, p4}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object p1

    return-object p1
.end method

.method public createScriptObject(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Script;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    if-eq p1, v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_7
    iget-object p1, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/InterpretedFunction;->createScript(Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object p1

    return-object p1
.end method

.method public getPatchedStack(Lorg/mozilla/javascript/RhinoException;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "line.separator"

    invoke-static {v1}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    check-cast v2, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object p1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    array-length v3, v2

    array-length v4, p1

    const/4 v5, 0x0

    :goto_1a
    if-eqz v3, :cond_96

    add-int/lit8 v3, v3, -0x1

    const-string v6, "org.mozilla.javascript.Interpreter.interpretLoop"

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-gez v6, :cond_28

    goto/16 :goto_96

    :cond_28
    add-int/lit8 v6, v6, 0x30

    :goto_2a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_40

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_40

    const/16 v8, 0xd

    if-ne v7, v8, :cond_3d

    goto :goto_40

    :cond_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_40
    :goto_40
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v3

    :goto_49
    if-eqz v5, :cond_94

    if-nez v4, :cond_50

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_50
    add-int/lit8 v4, v4, -0x1

    iget-object v7, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\tat script"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    if-eqz v8, :cond_70

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_70

    const/16 v8, 0x2e

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_70
    const/16 v8, 0x28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, p1, v4

    if-ltz v8, :cond_8c

    const/16 v9, 0x3a

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    invoke-static {v7, v8}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8c
    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_49

    :cond_94
    move v5, v6

    goto :goto_1a

    :cond_96
    :goto_96
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getScriptStack(Lorg/mozilla/javascript/RhinoException;)Ljava/util/List;
    .registers 12

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Interpreter;->getScriptStackElements(Lorg/mozilla/javascript/RhinoException;)[[Lorg/mozilla/javascript/ScriptStackElement;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "line.separator"

    invoke-static {v1}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v2, :cond_35

    aget-object v5, p1, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v5

    const/4 v8, 0x0

    :goto_1e
    if-ge v8, v7, :cond_2b

    aget-object v9, v5, v8

    invoke-virtual {v9, v6}, Lorg/mozilla/javascript/ScriptStackElement;->renderJavaStyle(Ljava/lang/StringBuilder;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_2b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_35
    return-object v0
.end method

.method public getScriptStackElements(Lorg/mozilla/javascript/RhinoException;)[[Lorg/mozilla/javascript/ScriptStackElement;
    .registers 13

    iget-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    check-cast v2, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object p1, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    array-length v3, v2

    array-length v4, p1

    :goto_13
    if-eqz v3, :cond_5e

    add-int/lit8 v3, v3, -0x1

    aget-object v5, v2, v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1e
    if-eqz v5, :cond_50

    if-nez v4, :cond_25

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_25
    add-int/lit8 v4, v4, -0x1

    iget-object v7, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    aget v9, p1, v4

    if-ltz v9, :cond_36

    iget-object v10, v7, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    invoke-static {v10, v9}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v9

    goto :goto_37

    :cond_36
    const/4 v9, -0x1

    :goto_37
    iget-object v10, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    if-eqz v10, :cond_44

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_44

    iget-object v7, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    goto :goto_45

    :cond_44
    move-object v7, v1

    :goto_45
    iget-object v5, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    new-instance v10, Lorg/mozilla/javascript/ScriptStackElement;

    invoke-direct {v10, v8, v7, v9}, Lorg/mozilla/javascript/ScriptStackElement;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_50
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/mozilla/javascript/ScriptStackElement;

    invoke-interface {v6, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_5e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [[Lorg/mozilla/javascript/ScriptStackElement;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lorg/mozilla/javascript/ScriptStackElement;

    return-object p1
.end method

.method public getSourcePositionFromStack(Lorg/mozilla/javascript/Context;[I)Ljava/lang/String;
    .registers 6

    iget-object p1, p1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    check-cast p1, Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget p1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    const/4 v1, 0x0

    if-ltz p1, :cond_14

    iget-object v2, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    invoke-static {v2, p1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result p1

    aput p1, p2, v1

    goto :goto_16

    :cond_14
    aput v1, p2, v1

    :goto_16
    iget-object p1, v0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    return-object p1
.end method

.method public setEvalScriptFlag(Lorg/mozilla/javascript/Script;)V
    .registers 3

    check-cast p1, Lorg/mozilla/javascript/InterpretedFunction;

    iget-object p1, p1, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    return-void
.end method
