.class Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;
.super Ljava/lang/Object;
.source "Resources_uk.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/TimeFormat;


# instance fields
.field private final pluarls:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;->pluarls:[Ljava/lang/String;

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong plural forms number for slavic language!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performDecoration(ZZJLjava/lang/String;)Ljava/lang/String;
    .registers 15

    const-wide/16 v0, 0xa

    rem-long v2, p3, v0

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    const-wide/16 v3, 0x64

    if-nez v2, :cond_16

    rem-long v5, p3, v3

    const-wide/16 v7, 0xb

    cmp-long v2, v5, v7

    if-eqz v2, :cond_16

    const/4 v0, 0x0

    goto :goto_37

    :cond_16
    rem-long v5, p3, v0

    const-wide/16 v7, 0x2

    cmp-long v2, v5, v7

    if-ltz v2, :cond_36

    rem-long v5, p3, v0

    const-wide/16 v7, 0x4

    cmp-long v2, v5, v7

    if-gtz v2, :cond_36

    rem-long v5, p3, v3

    cmp-long v0, v5, v0

    if-ltz v0, :cond_34

    rem-long v0, p3, v3

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-ltz v0, :cond_36

    :cond_34
    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x2

    :goto_37
    nop

    const/4 v1, 0x3

    if-gt v0, v1, :cond_62

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_47

    const-string v2, "через "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;->pluarls:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5d

    const-string v2, " тому"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_62
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Wrong plural index was calculated somehow for slavic language"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    nop

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result v1

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInFuture()Z

    move-result v2

    const/16 v0, 0x32

    invoke-interface {p1, v0}, Lorg/ocpsoft/prettytime/Duration;->getQuantityRounded(I)J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;->performDecoration(ZZJLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    return-object p2
.end method

.method public decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    nop

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result v1

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInFuture()Z

    move-result v2

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getQuantity()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/ocpsoft/prettytime/i18n/Resources_uk$TimeFormatAided;->performDecoration(ZZJLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    return-object p2
.end method

.method public format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 6

    const/16 v0, 0x32

    invoke-interface {p1, v0}, Lorg/ocpsoft/prettytime/Duration;->getQuantityRounded(I)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 6

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getQuantity()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
