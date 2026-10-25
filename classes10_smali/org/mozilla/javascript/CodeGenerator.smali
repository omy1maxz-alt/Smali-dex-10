.class Lorg/mozilla/javascript/CodeGenerator;
.super Lorg/mozilla/javascript/Icode;
.source "CodeGenerator.java"


# static fields
.field private static final ECF_TAIL:I = 0x1

.field private static final MIN_FIXUP_TABLE_SIZE:I = 0x28

.field private static final MIN_LABEL_TABLE_SIZE:I = 0x20


# instance fields
.field private compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private doubleTableTop:I

.field private exceptionTableTop:I

.field private fixupTable:[J

.field private fixupTableTop:I

.field private iCodeTop:I

.field private itsData:Lorg/mozilla/javascript/InterpreterData;

.field private itsInFunctionFlag:Z

.field private itsInTryFlag:Z

.field private labelTable:[I

.field private labelTableTop:I

.field private lineNumber:I

.field private literalIds:Lorg/mozilla/javascript/ObjArray;

.field private localTop:I

.field private scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

.field private stackDepth:I

.field private strings:Lorg/mozilla/javascript/ObjToIntMap;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lorg/mozilla/javascript/Icode;-><init>()V

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    return-void
.end method

.method private addBackwardGoto(II)V
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    if-le v0, p2, :cond_b

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {p0, v0, p2}, Lorg/mozilla/javascript/CodeGenerator;->resolveGoto(II)V

    return-void

    :cond_b
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addExceptionHandler(IIIZII)V
    .registers 11

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    if-nez v1, :cond_16

    if-eqz v0, :cond_d

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_d
    const/16 v1, 0xc

    new-array v1, v1, [I

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, v2, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    goto :goto_27

    :cond_16
    array-length v2, v1

    if-ne v2, v0, :cond_27

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    move-object v1, v2

    :cond_27
    :goto_27
    add-int/lit8 v2, v0, 0x0

    aput p1, v1, v2

    add-int/lit8 p1, v0, 0x1

    aput p2, v1, p1

    add-int/lit8 p1, v0, 0x2

    aput p3, v1, p1

    add-int/lit8 p1, v0, 0x3

    aput p4, v1, p1

    add-int/lit8 p1, v0, 0x4

    aput p5, v1, p1

    add-int/lit8 p1, v0, 0x5

    aput p6, v1, p1

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    return-void
.end method

.method private addGoto(Lorg/mozilla/javascript/Node;I)V
    .registers 9

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTableTop:I

    if-lt p1, v0, :cond_b

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_b
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    invoke-direct {p0, p2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addBackwardGoto(II)V

    goto :goto_46

    :cond_16
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    iget p2, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    if-eqz v1, :cond_24

    array-length v2, v1

    if-ne p2, v2, :cond_38

    :cond_24
    if-nez v1, :cond_2d

    const/16 v1, 0x28

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    goto :goto_38

    :cond_2d
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    :cond_38
    :goto_38
    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    int-to-long v4, v0

    or-long/2addr v2, v4

    aput-wide v2, v1, p2

    :goto_46
    return-void
.end method

.method private addGotoOp(I)V
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v2, v1, 0x3

    array-length v3, v0

    if-le v2, v3, :cond_10

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    :cond_10
    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    return-void
.end method

.method private addIcode(I)V
    .registers 3

    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validIcode(I)Z

    move-result v0

    if-eqz v0, :cond_c

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_c
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addIndexOp(II)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexPrefix(I)V

    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validIcode(I)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_10

    :cond_d
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    :goto_10
    return-void
.end method

.method private addIndexPrefix(I)V
    .registers 3

    if-gez p1, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    const/4 v0, 0x6

    if-ge p1, v0, :cond_e

    rsub-int/lit8 p1, p1, -0x20

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_31

    :cond_e
    const/16 v0, 0xff

    if-gt p1, v0, :cond_1b

    const/16 v0, -0x26

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    goto :goto_31

    :cond_1b
    const v0, 0xffff

    if-gt p1, v0, :cond_29

    const/16 v0, -0x27

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_31

    :cond_29
    const/16 v0, -0x28

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    :goto_31
    return-void
.end method

.method private addInt(I)V
    .registers 7

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v2, v1, 0x4

    array-length v3, v0

    if-le v2, v3, :cond_10

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    :cond_10
    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x3

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    return-void
.end method

.method private addStringOp(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addStringPrefix(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validIcode(I)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_10

    :cond_d
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    :goto_10
    return-void
.end method

.method private addStringPrefix(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    :cond_14
    const/4 p1, 0x4

    if-ge v0, p1, :cond_1d

    rsub-int/lit8 p1, v0, -0x29

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_40

    :cond_1d
    const/16 p1, 0xff

    if-gt v0, p1, :cond_2a

    const/16 p1, -0x2d

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    goto :goto_40

    :cond_2a
    const p1, 0xffff

    if-gt v0, p1, :cond_38

    const/16 p1, -0x2e

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_40

    :cond_38
    const/16 p1, -0x2f

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    :goto_40
    return-void
.end method

.method private addToken(I)V
    .registers 3

    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validTokenCode(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_a
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addUint16(I)V
    .registers 6

    const/high16 v0, -0x10000

    and-int/2addr v0, p1

    if-nez v0, :cond_22

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v2, v1, 0x2

    array-length v3, v0

    if-le v2, v3, :cond_15

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    :cond_15
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    return-void

    :cond_22
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addUint8(I)V
    .registers 6

    and-int/lit16 v0, p1, -0x100

    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_12

    invoke-direct {p0, v3}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    :cond_12
    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/2addr v1, v3

    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    return-void

    :cond_19
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addVarOp(II)V
    .registers 6

    const/4 v0, -0x7

    if-eq p1, v0, :cond_38

    const/16 v0, 0x9d

    const/16 v1, 0x80

    if-eq p1, v0, :cond_27

    const/16 v0, 0x37

    if-eq p1, v0, :cond_17

    const/16 v2, 0x38

    if-ne p1, v2, :cond_12

    goto :goto_17

    :cond_12
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_17
    :goto_17
    if-ge p2, v1, :cond_38

    if-ne p1, v0, :cond_1e

    const/16 p1, -0x30

    goto :goto_20

    :cond_1e
    const/16 p1, -0x31

    :goto_20
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_27
    if-ge p2, v1, :cond_32

    const/16 p1, -0x3d

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    return-void

    :cond_32
    const/16 p1, -0x3c

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    return-void

    :cond_38
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    return-void
.end method

.method private allocLocal()I
    .registers 5

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    if-le v1, v3, :cond_e

    iput v1, v2, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    :cond_e
    return v0
.end method

.method private static badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;
    .registers 2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lorg/mozilla/javascript/Node;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fixLabelGotos()V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    if-ge v1, v2, :cond_22

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    aget-wide v3, v2, v1

    const/16 v2, 0x20

    shr-long v5, v3, v2

    long-to-int v2, v5

    long-to-int v4, v3

    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aget v2, v3, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    invoke-direct {p0, v4, v2}, Lorg/mozilla/javascript/CodeGenerator;->resolveGoto(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_22
    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    return-void
.end method

.method private generateCallFunAndThis(Lorg/mozilla/javascript/Node;)V
    .registers 7

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2c

    const/16 v4, 0x24

    if-eq v0, v4, :cond_2c

    const/16 v2, 0x27

    if-eq v0, v2, :cond_1e

    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0x12

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_4e

    :cond_1e
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0xf

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_4e

    :cond_2c
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    if-ne v0, v2, :cond_46

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x10

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_4e

    :cond_46
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0x11

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    :goto_4e
    return-void
.end method

.method private generateFunctionICode()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInFunctionFlag:Z

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v1, Lorg/mozilla/javascript/ast/FunctionNode;

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v3

    iput v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v3

    iput-boolean v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    :cond_25
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator()Z

    move-result v2

    if-eqz v2, :cond_3b

    const/16 v2, -0x3e

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getBaseLineno()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    :cond_3b
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-boolean v0, v2, Lorg/mozilla/javascript/InterpreterData;->isStrict:Z

    :cond_45
    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/FunctionNode;->isES6Generator()Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-boolean v0, v2, Lorg/mozilla/javascript/InterpreterData;->isES6Generator:Z

    :cond_4f
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v2

    instance-of v2, v2, Lorg/mozilla/javascript/ast/VariableInitializer;

    iput-boolean v2, v0, Lorg/mozilla/javascript/InterpreterData;->declaredAsVar:Z

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->generateICodeFromTree(Lorg/mozilla/javascript/Node;)V

    return-void
.end method

.method private generateICodeFromTree(Lorg/mozilla/javascript/Node;)V
    .registers 7

    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateNestedFunctions()V

    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateRegExpLiterals()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->fixLabelGotos()V

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-nez p1, :cond_18

    const/16 p1, 0x41

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    :cond_18
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    array-length v1, p1

    iget v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    if-eq v1, v2, :cond_2a

    new-array v1, v2, [B

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    :cond_2a
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_38

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    goto :goto_72

    :cond_38
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap;->newIterator()Lorg/mozilla/javascript/ObjToIntMap$Iterator;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->start()V

    :goto_4d
    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->done()Z

    move-result v2

    if-nez v2, :cond_72

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getValue()I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_68

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_68
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    aput-object v2, v4, v3

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->next()V

    goto :goto_4d

    :cond_72
    :goto_72
    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    if-nez p1, :cond_7b

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    goto :goto_8b

    :cond_7b
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    array-length v2, v1

    if-eq v2, p1, :cond_8b

    new-array v2, p1, [D

    invoke-static {v1, v0, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    :cond_8b
    :goto_8b
    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    if-eqz p1, :cond_9f

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    array-length v2, v1

    if-eq v2, p1, :cond_9f

    new-array v2, p1, [I

    invoke-static {v1, v0, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, p1, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    :cond_9f
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v0

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v0, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    iget v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    add-int/2addr v0, v1

    iget v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    add-int/2addr v0, v1

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxFrameArray:I

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    move-result-object v0

    iput-object v0, p1, Lorg/mozilla/javascript/InterpreterData;->argIsConst:[Z

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v0

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->argCount:I

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSourceStart()I

    move-result v0

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->encodedSourceStart:I

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSourceEnd()I

    move-result v0

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->encodedSourceEnd:I

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p1

    if-eqz p1, :cond_f7

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ObjArray;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    :cond_f7
    return-void
.end method

.method private generateNestedFunctions()V
    .registers 8

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-array v1, v0, [Lorg/mozilla/javascript/InterpreterData;

    const/4 v2, 0x0

    :goto_c
    if-eq v2, v0, :cond_47

    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v3

    new-instance v4, Lorg/mozilla/javascript/CodeGenerator;

    invoke-direct {v4}, Lorg/mozilla/javascript/CodeGenerator;-><init>()V

    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    iput-object v5, v4, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    iput-object v3, v4, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    new-instance v5, Lorg/mozilla/javascript/InterpreterData;

    iget-object v6, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-direct {v5, v6}, Lorg/mozilla/javascript/InterpreterData;-><init>(Lorg/mozilla/javascript/InterpreterData;)V

    iput-object v5, v4, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-direct {v4}, Lorg/mozilla/javascript/CodeGenerator;->generateFunctionICode()V

    iget-object v5, v4, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    aput-object v5, v1, v2

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/AstNode;->getParent()Lorg/mozilla/javascript/ast/AstNode;

    move-result-object v3

    instance-of v5, v3, Lorg/mozilla/javascript/ast/AstRoot;

    if-nez v5, :cond_44

    instance-of v5, v3, Lorg/mozilla/javascript/ast/Scope;

    if-nez v5, :cond_44

    instance-of v3, v3, Lorg/mozilla/javascript/ast/Block;

    if-nez v3, :cond_44

    iget-object v3, v4, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/mozilla/javascript/InterpreterData;->declaredAsFunctionExpression:Z

    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_47
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, v0, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    return-void
.end method

.method private generateRegExpLiterals()V
    .registers 8

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->checkRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_14
    if-eq v4, v0, :cond_2b

    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpFlags(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v1, v5, v6}, Lorg/mozilla/javascript/RegExpProxy;->compileRegExp(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2b
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v3, v0, Lorg/mozilla/javascript/InterpreterData;->itsRegExpLiterals:[Ljava/lang/Object;

    return-void
.end method

.method private getDoubleIndex(D)I
    .registers 7

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    if-nez v0, :cond_d

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    const/16 v2, 0x40

    new-array v2, v2, [D

    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    goto :goto_20

    :cond_d
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    array-length v2, v1

    if-ne v2, v0, :cond_20

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    :cond_20
    :goto_20
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    aput-wide p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    return v0
.end method

.method private static getLocalBlockRef(Lorg/mozilla/javascript/Node;)I
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/Node;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result p0

    return p0
.end method

.method private getTargetLabel(Lorg/mozilla/javascript/Node;)I
    .registers 7

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->labelId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    return v0

    :cond_8
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTableTop:I

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    if-eqz v2, :cond_11

    array-length v3, v2

    if-ne v0, v3, :cond_25

    :cond_11
    if-nez v2, :cond_1a

    const/16 v2, 0x20

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    goto :goto_25

    :cond_1a
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    :cond_25
    :goto_25
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTableTop:I

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aput v1, v2, v0

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->labelId(I)V

    return v0
.end method

.method private increaseICodeCapacity(I)[B
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    array-length v1, v0

    iget v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/2addr p1, v2

    if-le p1, v1, :cond_1b

    mul-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_f

    goto :goto_10

    :cond_f
    move p1, v1

    :goto_10
    new-array p1, p1, [B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object p1, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    return-object p1

    :cond_1b
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private markTargetLabel(Lorg/mozilla/javascript/Node;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_e
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    aput v1, v0, p1

    return-void
.end method

.method private releaseLocal(I)V
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    if-eq p1, v0, :cond_b

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_b
    return-void
.end method

.method private resolveForwardGoto(I)V
    .registers 4

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v1, p1, 0x3

    if-lt v0, v1, :cond_a

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->resolveGoto(II)V

    return-void

    :cond_a
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private resolveGoto(II)V
    .registers 5

    sub-int v0, p2, p1

    if-ltz v0, :cond_d

    const/4 v1, 0x2

    if-le v0, v1, :cond_8

    goto :goto_d

    :cond_8
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_d
    :goto_d
    add-int/lit8 p1, p1, 0x1

    int-to-short v1, v0

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    if-nez v1, :cond_1f

    new-instance v1, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v1}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v1, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    :cond_1f
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    const/4 v0, 0x0

    :cond_27
    iget-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object p2, p2, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    return-void
.end method

.method private stackChange(I)V
    .registers 4

    if-gtz p1, :cond_8

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    goto :goto_15

    :cond_8
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v1, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    if-le v0, v1, :cond_13

    iput v0, p1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    :cond_13
    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    :goto_15
    return-void
.end method

.method private updateLineNumber(Lorg/mozilla/javascript/Node;)V
    .registers 4

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result p1

    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    if-eq p1, v0, :cond_20

    if-ltz p1, :cond_20

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v1, v0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    if-gez v1, :cond_12

    iput p1, v0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    :cond_12
    iput p1, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    const/16 v0, -0x1a

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    :cond_20
    return-void
.end method

.method private visitArrayComprehension(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .registers 4

    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    return-void
.end method

.method private visitExpression(Lorg/mozilla/javascript/Node;I)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    iget v4, v1, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    const/16 v5, 0x5a

    const/4 v6, -0x4

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v2, v5, :cond_403

    const/16 v5, 0x67

    const/4 v10, 0x7

    if-eq v2, v5, :cond_3d9

    const/16 v5, 0x6e

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eq v2, v5, :cond_3b4

    const/16 v5, -0x32

    const/16 v13, 0x7f

    if-eq v2, v13, :cond_3a4

    const/16 v14, 0x8f

    if-eq v2, v14, :cond_380

    const/16 v15, 0x93

    if-eq v2, v15, :cond_362

    const/16 v15, 0xa0

    if-eq v2, v15, :cond_340

    const/16 v15, 0xa6

    const v16, 0xffff

    if-eq v2, v15, :cond_31c

    packed-switch v2, :pswitch_data_42a

    const/16 v11, 0x37

    packed-switch v2, :pswitch_data_482

    packed-switch v2, :pswitch_data_490

    packed-switch v2, :pswitch_data_49a

    packed-switch v2, :pswitch_data_4be

    packed-switch v2, :pswitch_data_4ca

    packed-switch v2, :pswitch_data_4d6

    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_56  #0x9e
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitArrayComprehension(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_41c

    :pswitch_5f  #0x9d
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v0, :cond_68

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_68
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v0

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, 0x9d

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    goto/16 :goto_41c

    :pswitch_7c  #0x9c
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, -0x3b

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :pswitch_94  #0x8b
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :pswitch_99  #0x8a
    iget-boolean v2, v1, Lorg/mozilla/javascript/CodeGenerator;->itsInFunctionFlag:Z

    if-eqz v2, :cond_aa

    iget-object v2, v1, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-nez v2, :cond_aa

    iget-object v2, v1, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v2

    goto :goto_ab

    :cond_aa
    const/4 v2, -0x1

    :goto_ab
    if-ne v2, v7, :cond_bb

    const/16 v2, -0xe

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :cond_bb
    invoke-direct {v1, v11, v2}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/16 v0, 0x20

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_41c

    :pswitch_c8  #0x6b, 0x6c
    invoke-direct {v1, v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitIncDec(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_41c

    :pswitch_cd  #0x69, 0x6a
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    const/16 v5, 0x6a

    if-ne v2, v5, :cond_dd

    goto :goto_de

    :cond_dd
    const/4 v10, 0x6

    :goto_de
    invoke-direct {v1, v10}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    and-int/lit8 v3, p2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_41c

    :pswitch_f8  #0x4e, 0x4f, 0x50, 0x51
    const/16 v5, 0x10

    invoke-virtual {v0, v5, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    const/4 v5, 0x0

    :cond_ff
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    add-int/2addr v5, v8

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-nez v3, :cond_ff

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    rsub-int/lit8 v0, v5, 0x1

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :pswitch_113  #0x4b, 0x4c, 0x4d
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_41c

    :pswitch_11b  #0x48
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    goto/16 :goto_41c

    :pswitch_12b  #0x44, 0x46
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_41c

    :pswitch_133  #0x42, 0x43
    invoke-direct {v1, v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_41c

    :pswitch_138  #0x3e, 0x3f
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :pswitch_144  #0x38
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v0, :cond_14d

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_14d
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v0

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, 0x38

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    goto/16 :goto_41c

    :pswitch_161  #0x37
    iget-object v2, v1, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v2, :cond_16a

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_16a
    iget-object v2, v1, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v0

    invoke-direct {v1, v11, v0}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :pswitch_178  #0x36
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v0

    const/16 v2, 0x36

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :pswitch_186  #0x30
    invoke-virtual {v0, v11}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v0

    const/16 v2, 0x30

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :pswitch_194  #0x2a, 0x2b, 0x2c, 0x2d, 0x40
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :pswitch_19c  #0x28
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v2

    double-to-int v0, v2

    int-to-double v5, v0

    cmpl-double v7, v5, v2

    if-nez v7, :cond_1db

    if-nez v0, :cond_1bc

    const/16 v0, -0x33

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    div-double/2addr v5, v2

    const-wide/16 v2, 0x0

    cmpg-double v0, v5, v2

    if-gez v0, :cond_1e4

    const/16 v0, 0x1d

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_1e4

    :cond_1bc
    if-ne v0, v8, :cond_1c4

    const/16 v0, -0x34

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_1e4

    :cond_1c4
    int-to-short v2, v0

    if-ne v2, v0, :cond_1d2

    const/16 v2, -0x1b

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    and-int v0, v0, v16

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_1e4

    :cond_1d2
    const/16 v2, -0x1c

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    goto :goto_1e4

    :cond_1db
    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/CodeGenerator;->getDoubleIndex(D)I

    move-result v0

    const/16 v2, 0x28

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    :cond_1e4
    :goto_1e4
    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :pswitch_1e9  #0x27, 0x29, 0x31
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :pswitch_1f5  #0x25, 0x8d
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/16 v3, 0x8d

    const/4 v5, -0x2

    if-ne v2, v3, :cond_219

    invoke-direct {v1, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v1, v12}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :cond_219
    invoke-direct {v1, v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, 0x25

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {v1, v5}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :pswitch_226  #0x23, 0x8c
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    const/16 v5, 0x8c

    if-ne v2, v5, :cond_247

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/16 v2, 0x21

    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :cond_247
    invoke-direct {v1, v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, 0x23

    invoke-direct {v1, v0, v3}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :pswitch_254  #0x21, 0x22
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    goto/16 :goto_41c

    :pswitch_264  #0x1f
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v2, 0x31

    if-ne v0, v2, :cond_26e

    const/4 v0, 0x1

    goto :goto_26f

    :cond_26e
    const/4 v0, 0x0

    :goto_26f
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    if-eqz v0, :cond_27f

    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_284

    :cond_27f
    const/16 v0, 0x1f

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    :goto_284
    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :pswitch_289  #0x1e, 0x26, 0x47
    const/16 v5, 0x1e

    if-ne v2, v5, :cond_291

    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    goto :goto_294

    :cond_291
    invoke-direct {v1, v3}, Lorg/mozilla/javascript/CodeGenerator;->generateCallFunAndThis(Lorg/mozilla/javascript/Node;)V

    :goto_294
    const/4 v6, 0x0

    :goto_295
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    if-eqz v3, :cond_2a1

    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_295

    :cond_2a1
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v0

    const/16 v3, 0x47

    if-eq v2, v3, :cond_2c3

    if-eqz v0, :cond_2c3

    const/16 v3, -0x15

    invoke-direct {v1, v3, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    if-ne v2, v5, :cond_2b8

    const/4 v9, 0x1

    :cond_2b8
    invoke-direct {v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    and-int v0, v0, v16

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_2de

    :cond_2c3
    const/16 v0, 0x26

    if-ne v2, v0, :cond_2db

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2db

    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateDebugInfo()Z

    move-result v0

    if-nez v0, :cond_2db

    iget-boolean v0, v1, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    if-nez v0, :cond_2db

    const/16 v0, -0x37

    const/16 v2, -0x37

    :cond_2db
    invoke-direct {v1, v2, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    :goto_2de
    if-ne v2, v5, :cond_2e5

    neg-int v0, v6

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_2ea

    :cond_2e5
    rsub-int/lit8 v0, v6, -0x1

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :goto_2ea
    iget-object v0, v1, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v2, v0, Lorg/mozilla/javascript/InterpreterData;->itsMaxCalleeArgs:I

    if-le v6, v2, :cond_41c

    iput v6, v0, Lorg/mozilla/javascript/InterpreterData;->itsMaxCalleeArgs:I

    goto/16 :goto_41c

    :pswitch_2f4  #0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x24, 0x2e, 0x2f, 0x34, 0x35
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :pswitch_306  #0x8, 0x4a
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :cond_31c
    :pswitch_31c  #0x49
    if-eqz v3, :cond_322

    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    goto :goto_328

    :cond_322
    invoke-direct {v1, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :goto_328
    const/16 v3, 0x49

    if-ne v2, v3, :cond_330

    invoke-direct {v1, v3}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_335

    :cond_330
    const/16 v2, -0x42

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    :goto_335
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v0

    and-int v0, v0, v16

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto/16 :goto_41c

    :cond_340
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v1, v12}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-virtual {v2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/4 v0, 0x3

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_41c

    :cond_362
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, -0x35

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v2, -0x36

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addBackwardGoto(II)V

    goto/16 :goto_41c

    :cond_380
    :pswitch_380  #0x45
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    if-ne v2, v14, :cond_397

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    const/16 v2, 0x44

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :cond_397
    invoke-direct {v1, v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, 0x45

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_41c

    :cond_3a4
    :pswitch_3a4  #0x1a, 0x1b, 0x1c, 0x1d, 0x20
    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    if-ne v2, v13, :cond_3b0

    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v1, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_41c

    :cond_3b0
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_41c

    :cond_3b4
    invoke-virtual {v0, v8}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v0

    iget-object v2, v1, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v3

    if-eq v3, v12, :cond_3d0

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v2

    if-ne v2, v11, :cond_3cb

    goto :goto_3d0

    :cond_3cb
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3d0
    :goto_3d0
    const/16 v2, -0x13

    invoke-direct {v1, v2, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {v1, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_41c

    :cond_3d9
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v2

    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    iget v3, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    invoke-direct {v1, v10}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    and-int/lit8 v5, p2, 0x1

    invoke-direct {v1, v0, v5}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    const/4 v6, 0x5

    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    invoke-direct {v1, v3}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    iput v4, v1, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    invoke-direct {v1, v2, v5}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v1, v0}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto :goto_41c

    :cond_403
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    :goto_407
    if-eq v3, v0, :cond_417

    invoke-direct {v1, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {v1, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {v1, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    goto :goto_407

    :cond_417
    and-int/lit8 v0, p2, 0x1

    :try_start_419
    invoke-direct {v1, v3, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V
    :try_end_41c
    .catchall {:try_start_419 .. :try_end_41c} :catchall_425

    :cond_41c
    :goto_41c
    add-int/2addr v4, v8

    iget v0, v1, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    if-eq v4, v0, :cond_424

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_424
    return-void

    :catchall_425
    move-exception v0

    move-object v2, v0

    goto :goto_429

    :goto_428
    throw v2

    :goto_429
    goto :goto_428

    :pswitch_data_42a
    .packed-switch 0x8
        :pswitch_306  #00000008
        :pswitch_2f4  #00000009
        :pswitch_2f4  #0000000a
        :pswitch_2f4  #0000000b
        :pswitch_2f4  #0000000c
        :pswitch_2f4  #0000000d
        :pswitch_2f4  #0000000e
        :pswitch_2f4  #0000000f
        :pswitch_2f4  #00000010
        :pswitch_2f4  #00000011
        :pswitch_2f4  #00000012
        :pswitch_2f4  #00000013
        :pswitch_2f4  #00000014
        :pswitch_2f4  #00000015
        :pswitch_2f4  #00000016
        :pswitch_2f4  #00000017
        :pswitch_2f4  #00000018
        :pswitch_2f4  #00000019
        :pswitch_3a4  #0000001a
        :pswitch_3a4  #0000001b
        :pswitch_3a4  #0000001c
        :pswitch_3a4  #0000001d
        :pswitch_289  #0000001e
        :pswitch_264  #0000001f
        :pswitch_3a4  #00000020
        :pswitch_254  #00000021
        :pswitch_254  #00000022
        :pswitch_226  #00000023
        :pswitch_2f4  #00000024
        :pswitch_1f5  #00000025
        :pswitch_289  #00000026
        :pswitch_1e9  #00000027
        :pswitch_19c  #00000028
        :pswitch_1e9  #00000029
        :pswitch_194  #0000002a
        :pswitch_194  #0000002b
        :pswitch_194  #0000002c
        :pswitch_194  #0000002d
        :pswitch_2f4  #0000002e
        :pswitch_2f4  #0000002f
        :pswitch_186  #00000030
        :pswitch_1e9  #00000031
    .end packed-switch

    :pswitch_data_482
    .packed-switch 0x34
        :pswitch_2f4  #00000034
        :pswitch_2f4  #00000035
        :pswitch_178  #00000036
        :pswitch_161  #00000037
        :pswitch_144  #00000038
    .end packed-switch

    :pswitch_data_490
    .packed-switch 0x3e
        :pswitch_138  #0000003e
        :pswitch_138  #0000003f
        :pswitch_194  #00000040
    .end packed-switch

    :pswitch_data_49a
    .packed-switch 0x42
        :pswitch_133  #00000042
        :pswitch_133  #00000043
        :pswitch_12b  #00000044
        :pswitch_380  #00000045
        :pswitch_12b  #00000046
        :pswitch_289  #00000047
        :pswitch_11b  #00000048
        :pswitch_31c  #00000049
        :pswitch_306  #0000004a
        :pswitch_113  #0000004b
        :pswitch_113  #0000004c
        :pswitch_113  #0000004d
        :pswitch_f8  #0000004e
        :pswitch_f8  #0000004f
        :pswitch_f8  #00000050
        :pswitch_f8  #00000051
    .end packed-switch

    :pswitch_data_4be
    .packed-switch 0x69
        :pswitch_cd  #00000069
        :pswitch_cd  #0000006a
        :pswitch_c8  #0000006b
        :pswitch_c8  #0000006c
    .end packed-switch

    :pswitch_data_4ca
    .packed-switch 0x8a
        :pswitch_99  #0000008a
        :pswitch_94  #0000008b
        :pswitch_226  #0000008c
        :pswitch_1f5  #0000008d
    .end packed-switch

    :pswitch_data_4d6
    .packed-switch 0x9c
        :pswitch_7c  #0000009c
        :pswitch_5f  #0000009d
        :pswitch_56  #0000009e
    .end packed-switch
.end method

.method private visitIncDec(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .registers 8

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v0

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-eq v1, v2, :cond_79

    const/16 v2, 0x24

    if-eq v1, v2, :cond_5e

    const/16 v2, 0x27

    const/4 v4, 0x1

    if-eq v1, v2, :cond_4f

    const/16 v2, 0x37

    if-eq v1, v2, :cond_35

    const/16 v2, 0x44

    if-ne v1, v2, :cond_30

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0xb

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    goto :goto_90

    :cond_30
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_35
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean p1, p1, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz p1, :cond_3e

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_3e
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result p1

    const/4 p2, -0x7

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_90

    :cond_4f
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x8

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_90

    :cond_5e
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0xa

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_90

    :cond_79
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x9

    invoke-direct {p0, p2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    :goto_90
    return-void
.end method

.method private visitLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .registers 12

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x43

    const/16 v2, 0x42

    const/4 v3, 0x0

    if-ne v0, v2, :cond_18

    move-object v4, p2

    const/4 v5, 0x0

    :goto_d
    if-eqz v4, :cond_16

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    goto :goto_d

    :cond_16
    const/4 v4, 0x0

    goto :goto_23

    :cond_18
    if-ne v0, v1, :cond_a7

    const/16 v4, 0xc

    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    :goto_23
    const/16 v6, -0x1d

    invoke-direct {p0, v6, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :goto_2c
    const/4 v5, -0x1

    if-eqz p2, :cond_74

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v6

    const/16 v7, 0x98

    if-ne v6, v7, :cond_44

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v6, -0x39

    invoke-direct {p0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_6c

    :cond_44
    const/16 v7, 0x99

    if-ne v6, v7, :cond_55

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v6, -0x3a

    invoke-direct {p0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_6c

    :cond_55
    const/16 v7, 0xa4

    const/16 v8, -0x1e

    if-ne v6, v7, :cond_66

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_6c

    :cond_66
    invoke-direct {p0, p2, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    :goto_6c
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    goto :goto_2c

    :cond_74
    if-ne v0, v2, :cond_95

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_84

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_a3

    :cond_84
    iget-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p2}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p2

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    const/16 p1, -0x1f

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto :goto_a3

    :cond_95
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result p1

    iget-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {p2, v4}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    :goto_a3
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    return-void

    :cond_a7
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p1

    goto :goto_ad

    :goto_ac
    throw p1

    :goto_ad
    goto :goto_ac
.end method

.method private visitStatement(Lorg/mozilla/javascript/Node;I)V
    .registers 16

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    const/16 v2, -0x3e

    if-eq v0, v2, :cond_263

    const/16 v2, 0x41

    if-eq v0, v2, :cond_25d

    const/16 v2, 0x52

    const/16 v3, -0x38

    const/4 v4, 0x1

    if-eq v0, v2, :cond_209

    const/16 v2, 0x6e

    const/4 v5, -0x5

    const/4 v6, 0x3

    const/4 v7, -0x1

    if-eq v0, v2, :cond_1d9

    const/16 v2, 0x73

    const/4 v8, -0x4

    const/4 v9, 0x0

    if-eq v0, v2, :cond_191

    const/16 v2, 0x7c

    if-eq v0, v2, :cond_184

    const/16 v2, 0x7e

    if-eq v0, v2, :cond_164

    const/16 v2, 0x8e

    const/4 v10, 0x2

    if-eq v0, v2, :cond_148

    const/16 v2, 0xa1

    if-eq v0, v2, :cond_141

    const/16 v2, 0x32

    const v3, 0xffff

    if-eq v0, v2, :cond_12d

    const/16 v2, 0x33

    if-eq v0, v2, :cond_121

    packed-switch v0, :pswitch_data_270

    packed-switch v0, :pswitch_data_280

    packed-switch v0, :pswitch_data_28e

    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_4e  #0x88
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    iget-object p1, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    const/16 v0, -0x17

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    goto/16 :goto_263

    :pswitch_59  #0x86, 0x87
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, 0x86

    if-ne v0, p1, :cond_64

    const/4 v5, -0x4

    :cond_64
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_263

    :pswitch_6c  #0x84
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->markTargetLabel(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_263

    :pswitch_71  #0x3a, 0x3b, 0x3c, 0x3d
    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_263

    :pswitch_80  #0x39
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v0

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result p1

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addStringPrefix(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexPrefix(I)V

    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    if-eqz p1, :cond_a3

    goto :goto_a4

    :cond_a3
    const/4 v4, 0x0

    :goto_a4
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_263

    :pswitch_ac  #0x6, 0x7
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    iget-object p1, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_263

    :pswitch_bb  #0x5
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    iget-object p1, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    goto/16 :goto_263

    :pswitch_c4  #0x4
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    const/16 v0, 0x14

    invoke-virtual {p1, v0, v9}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result p1

    if-eqz p1, :cond_fc

    if-eqz v1, :cond_ef

    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_dc

    goto :goto_ef

    :cond_dc
    invoke-direct {p0, v1, v4}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 p1, -0x41

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    and-int/2addr p1, v3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_263

    :cond_ef
    :goto_ef
    const/16 p1, -0x3f

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    and-int/2addr p1, v3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto/16 :goto_263

    :cond_fc
    if-nez v1, :cond_105

    const/16 p1, -0x16

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto/16 :goto_263

    :cond_105
    invoke-direct {p0, v1, v4}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_263

    :pswitch_111  #0x3
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_263

    :pswitch_116  #0x2
    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0, v10}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_263

    :cond_121
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result p1

    invoke-direct {p0, v2, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto/16 :goto_263

    :cond_12d
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    and-int/2addr p1, v3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_263

    :cond_141
    const/16 p1, -0x40

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto/16 :goto_263

    :cond_148
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->allocLocal()I

    move-result v0

    invoke-virtual {p1, v10, v0}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    :goto_152
    if-eqz v1, :cond_15c

    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_152

    :cond_15c
    invoke-direct {p0, v3, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->releaseLocal(I)V

    goto/16 :goto_263

    :cond_164
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result p1

    const/16 v0, -0x18

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    :goto_173
    if-eqz v1, :cond_17d

    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_173

    :cond_17d
    const/16 v0, -0x19

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto/16 :goto_263

    :cond_184
    :pswitch_184  #0x81, 0x82, 0x83, 0x85
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    :goto_187
    :pswitch_187  #0x89
    if-eqz v1, :cond_263

    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_187

    :cond_191
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, v1, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    :goto_19d
    if-eqz p1, :cond_1d1

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    const/16 v1, 0x74

    if-ne v0, v1, :cond_1cc

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v0

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-direct {p0, v0, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    iget-object v0, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    const/4 v1, -0x6

    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    goto :goto_19d

    :cond_1cc
    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1d1
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_263

    :cond_1d9
    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v0

    if-ne v0, v6, :cond_1ef

    const/16 v0, -0x14

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto :goto_1f1

    :cond_1ef
    if-ne v0, v4, :cond_204

    :goto_1f1
    iget-boolean v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInFunctionFlag:Z

    if-nez v0, :cond_263

    const/16 v0, -0x13

    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_263

    :cond_204
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_209
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    invoke-static {p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v0

    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->allocLocal()I

    move-result v2

    const/16 v5, -0xd

    invoke-direct {p0, v5, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    iget v12, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    iget-boolean v5, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    iput-boolean v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    :goto_21e
    if-eqz v1, :cond_228

    invoke-direct {p0, v1, p2}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    invoke-virtual {v1}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v1

    goto :goto_21e

    :cond_228
    iput-boolean v5, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    iget-object v1, p1, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    if-eqz v1, :cond_23f

    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result v1

    aget v8, v4, v1

    const/4 v9, 0x0

    move-object v5, p0

    move v6, v12

    move v7, v8

    move v10, v0

    move v11, v2

    invoke-direct/range {v5 .. v11}, Lorg/mozilla/javascript/CodeGenerator;->addExceptionHandler(IIIZII)V

    :cond_23f
    invoke-virtual {p1}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object p1

    if-eqz p1, :cond_256

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result p1

    aget v8, v1, p1

    const/4 v9, 0x1

    move-object v5, p0

    move v6, v12

    move v7, v8

    move v10, v0

    move v11, v2

    invoke-direct/range {v5 .. v11}, Lorg/mozilla/javascript/CodeGenerator;->addExceptionHandler(IIIZII)V

    :cond_256
    invoke-direct {p0, v3, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->releaseLocal(I)V

    goto :goto_263

    :cond_25d
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    :cond_263
    :goto_263
    iget p1, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    if-ne p1, p2, :cond_268

    return-void

    :cond_268
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p1

    goto :goto_26e

    :goto_26d
    throw p1

    :goto_26e
    goto :goto_26d

    nop

    :pswitch_data_270
    .packed-switch 0x2
        :pswitch_116  #00000002
        :pswitch_111  #00000003
        :pswitch_c4  #00000004
        :pswitch_bb  #00000005
        :pswitch_ac  #00000006
        :pswitch_ac  #00000007
    .end packed-switch

    :pswitch_data_280
    .packed-switch 0x39
        :pswitch_80  #00000039
        :pswitch_71  #0000003a
        :pswitch_71  #0000003b
        :pswitch_71  #0000003c
        :pswitch_71  #0000003d
    .end packed-switch

    :pswitch_data_28e
    .packed-switch 0x81
        :pswitch_184  #00000081
        :pswitch_184  #00000082
        :pswitch_184  #00000083
        :pswitch_6c  #00000084
        :pswitch_184  #00000085
        :pswitch_59  #00000086
        :pswitch_59  #00000087
        :pswitch_4e  #00000088
        :pswitch_187  #00000089
    .end packed-switch
.end method


# virtual methods
.method public compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Lorg/mozilla/javascript/InterpreterData;
    .registers 7

    iput-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    new-instance v0, Lorg/mozilla/javascript/NodeTransformer;

    invoke-direct {v0}, Lorg/mozilla/javascript/NodeTransformer;-><init>()V

    invoke-virtual {v0, p2, p1}, Lorg/mozilla/javascript/NodeTransformer;->transform(Lorg/mozilla/javascript/ast/ScriptNode;Lorg/mozilla/javascript/CompilerEnvirons;)V

    if-eqz p4, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    goto :goto_16

    :cond_14
    iput-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    :goto_16
    new-instance p2, Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ast/ScriptNode;->isInStrictMode()Z

    move-result v1

    invoke-direct {p2, p1, v0, p3, v1}, Lorg/mozilla/javascript/InterpreterData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    iput-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    const/4 p1, 0x1

    iput-boolean p1, p2, Lorg/mozilla/javascript/InterpreterData;->topLevel:Z

    if-eqz p4, :cond_36

    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateFunctionICode()V

    goto :goto_3b

    :cond_36
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->generateICodeFromTree(Lorg/mozilla/javascript/Node;)V

    :goto_3b
    iget-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    return-object p1
.end method
