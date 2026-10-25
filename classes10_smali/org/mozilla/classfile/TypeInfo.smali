.class final Lorg/mozilla/classfile/TypeInfo;
.super Ljava/lang/Object;
.source "TypeInfo.java"


# direct methods
.method static final OBJECT(I)I
    .registers 2

    const v0, 0xffff

    and-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0x8

    or-int/lit8 p0, p0, 0x7

    return p0
.end method

.method static final OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I
    .registers 2

    invoke-virtual {p1, p0}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    move-result p0

    invoke-static {p0}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(I)I

    move-result p0

    return p0
.end method

.method static final UNINITIALIZED_VARIABLE(I)I
    .registers 2

    const v0, 0xffff

    and-int/2addr p0, v0

    shl-int/lit8 p0, p0, 0x8

    or-int/lit8 p0, p0, 0x8

    return p0
.end method

.method static final fromType(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x46

    if-eq p0, p1, :cond_30

    const/16 p1, 0x53

    if-eq p0, p1, :cond_2f

    const/16 p1, 0x5a

    if-eq p0, p1, :cond_2f

    const/16 p1, 0x49

    if-eq p0, p1, :cond_2f

    const/16 p1, 0x4a

    if-eq p0, p1, :cond_2d

    packed-switch p0, :pswitch_data_38

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2b  #0x44
    const/4 p0, 0x3

    return p0

    :cond_2d
    const/4 p0, 0x4

    return p0

    :cond_2f
    :pswitch_2f  #0x42, 0x43
    return v1

    :cond_30
    const/4 p0, 0x2

    return p0

    :cond_32
    invoke-static {p0, p1}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result p0

    return p0

    nop

    :pswitch_data_38
    .packed-switch 0x42
        :pswitch_2f  #00000042
        :pswitch_2f  #00000043
        :pswitch_2b  #00000044
    .end packed-switch
.end method

.method private static getClassFromInternalName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    :try_start_4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static final getPayload(I)I
    .registers 1

    ushr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method static final getPayloadAsType(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lorg/mozilla/classfile/TypeInfo;->getTag(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_12

    invoke-static {p0}, Lorg/mozilla/classfile/TypeInfo;->getPayload(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "expecting object type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final getTag(I)I
    .registers 1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static isTwoWords(I)Z
    .registers 2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method static merge(IILorg/mozilla/classfile/ConstantPool;)I
    .registers 9

    invoke-static {p0}, Lorg/mozilla/classfile/TypeInfo;->getTag(I)I

    move-result v0

    invoke-static {p1}, Lorg/mozilla/classfile/TypeInfo;->getTag(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x7

    const/4 v4, 0x0

    if-ne v0, v3, :cond_f

    const/4 v5, 0x1

    goto :goto_10

    :cond_f
    const/4 v5, 0x0

    :goto_10
    if-ne v1, v3, :cond_13

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    if-eq p0, p1, :cond_c0

    const/4 v3, 0x5

    if-eqz v5, :cond_1d

    if-ne p1, v3, :cond_1d

    goto/16 :goto_c0

    :cond_1d
    if-eqz v0, :cond_bf

    if-nez v1, :cond_23

    goto/16 :goto_bf

    :cond_23
    if-ne p0, v3, :cond_28

    if-eqz v2, :cond_28

    return p1

    :cond_28
    if-eqz v5, :cond_98

    if-eqz v2, :cond_98

    invoke-static {p0, p2}, Lorg/mozilla/classfile/TypeInfo;->getPayloadAsType(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lorg/mozilla/classfile/TypeInfo;->getPayloadAsType(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    move-object v0, v3

    :cond_49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    move-object v1, v3

    :cond_50
    invoke-static {v0}, Lorg/mozilla/classfile/TypeInfo;->getClassFromInternalName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v1}, Lorg/mozilla/classfile/TypeInfo;->getClassFromInternalName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5f

    return p0

    :cond_5f
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_66

    return p1

    :cond_66
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_91

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_73

    goto :goto_91

    :cond_73
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    :goto_77
    if-eqz v1, :cond_98

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/classfile/ClassFileWriter;->getSlashedForm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result p0

    return p0

    :cond_8c
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_77

    :cond_91
    :goto_91
    const-string p0, "java/lang/Object"

    invoke-static {p0, p2}, Lorg/mozilla/classfile/TypeInfo;->OBJECT(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    move-result p0

    return p0

    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad merge attempt between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p2}, Lorg/mozilla/classfile/TypeInfo;->toString(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lorg/mozilla/classfile/TypeInfo;->toString(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bf
    :goto_bf
    return v4

    :cond_c0
    :goto_c0
    return p0
.end method

.method static toString(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lorg/mozilla/classfile/TypeInfo;->getTag(I)I

    move-result v0

    packed-switch v0, :pswitch_data_36

    const/4 v1, 0x7

    if-ne v0, v1, :cond_26

    invoke-static {p0, p1}, Lorg/mozilla/classfile/TypeInfo;->getPayloadAsType(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f  #0x6
    const-string/jumbo p0, "uninitialized_this"

    return-object p0

    :pswitch_13  #0x5
    const-string p0, "null"

    return-object p0

    :pswitch_16  #0x4
    const-string p0, "long"

    return-object p0

    :pswitch_19  #0x3
    const-string p0, "double"

    return-object p0

    :pswitch_1c  #0x2
    const-string p0, "float"

    return-object p0

    :pswitch_1f  #0x1
    const-string p0, "int"

    return-object p0

    :pswitch_22  #0x0
    const-string/jumbo p0, "top"

    return-object p0

    :cond_26
    const/16 p0, 0x8

    if-ne v0, p0, :cond_2e

    const-string/jumbo p0, "uninitialized"

    return-object p0

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_1f  #00000001
        :pswitch_1c  #00000002
        :pswitch_19  #00000003
        :pswitch_16  #00000004
        :pswitch_13  #00000005
        :pswitch_f  #00000006
    .end packed-switch
.end method
