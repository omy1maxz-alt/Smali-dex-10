.class final Lorg/mozilla/classfile/ClassFileField;
.super Ljava/lang/Object;
.source "ClassFileField.java"


# instance fields
.field private itsAttr1:S

.field private itsAttr2:S

.field private itsAttr3:S

.field private itsFlags:S

.field private itsHasAttributes:Z

.field private itsIndex:I

.field private itsNameIndex:S

.field private itsTypeIndex:S


# direct methods
.method constructor <init>(SSS)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/mozilla/classfile/ClassFileField;->itsNameIndex:S

    iput-short p2, p0, Lorg/mozilla/classfile/ClassFileField;->itsTypeIndex:S

    iput-short p3, p0, Lorg/mozilla/classfile/ClassFileField;->itsFlags:S

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mozilla/classfile/ClassFileField;->itsHasAttributes:Z

    return-void
.end method


# virtual methods
.method getWriteSize()I
    .registers 2

    iget-boolean v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsHasAttributes:Z

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_9

    :cond_7
    const/16 v0, 0x10

    :goto_9
    return v0
.end method

.method write([BI)I
    .registers 4

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsFlags:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsNameIndex:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsTypeIndex:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-boolean v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsHasAttributes:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    goto :goto_39

    :cond_1c
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsAttr1:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsAttr2:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget-short v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsAttr3:S

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p2

    iget v0, p0, Lorg/mozilla/classfile/ClassFileField;->itsIndex:I

    invoke-static {v0, p1, p2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16(I[BI)I

    move-result p1

    :goto_39
    return p1
.end method
