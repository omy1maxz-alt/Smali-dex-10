.class final Lorg/mozilla/classfile/ClassFileMethod;
.super Ljava/lang/Object;
.source "ClassFileMethod.java"


# instance fields
.field private itsCodeAttribute:[B

.field private itsFlags:S

.field private itsName:Ljava/lang/String;

.field private itsNameIndex:S

.field private itsType:Ljava/lang/String;

.field private itsTypeIndex:S


# direct methods
.method constructor <init>(Ljava/lang/String;SLjava/lang/String;SS)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsName:Ljava/lang/String;

    iput-short p2, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsNameIndex:S

    iput-object p3, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsType:Ljava/lang/String;

    iput-short p4, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsTypeIndex:S

    iput-short p5, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsFlags:S

    return-void
.end method


# virtual methods
.method getFlags()S
    .registers 2

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsFlags:S

    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsName:Ljava/lang/String;

    return-object v0
.end method

.method getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsType:Ljava/lang/String;

    return-object v0
.end method

.method getWriteSize()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsCodeAttribute:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method setCodeAttribute([B)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsCodeAttribute:[B

    return-void
.end method

.method write([BI)I
    .registers 6

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsFlags:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsNameIndex:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsTypeIndex:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsCodeAttribute:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/mozilla/classfile/ClassFileMethod;->itsCodeAttribute:[B

    array-length p1, p1

    add-int/2addr p2, p1

    return p2
.end method
