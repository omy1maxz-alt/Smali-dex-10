.class final Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# instance fields
.field final code:[B


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    check-cast p1, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;

    iget-object p1, p1, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method
