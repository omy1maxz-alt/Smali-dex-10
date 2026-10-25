.class Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;
.super Ljava/lang/Object;
.source "Resources_ru.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/TimeFormat;


# instance fields
.field private final pluarls:[Ljava/lang/String;

.field final synthetic this$0:Lorg/ocpsoft/prettytime/i18n/Resources_ru;


# direct methods
.method public varargs constructor <init>(Lorg/ocpsoft/prettytime/i18n/Resources_ru;[Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->this$0:Lorg/ocpsoft/prettytime/i18n/Resources_ru;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p1, p2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    iput-object p2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->pluarls:[Ljava/lang/String;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Wrong plural forms number for russian language! Expected %s, got %s\nPlurals: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->requiresReformatting(Lorg/ocpsoft/prettytime/Duration;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x32

    invoke-interface {p1, v0}, Lorg/ocpsoft/prettytime/Duration;->getQuantityRounded(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performFormat(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performDecoration(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1b
    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performDecoration(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->requiresReformatting(Lorg/ocpsoft/prettytime/Duration;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getQuantity()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performFormat(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performDecoration(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performDecoration(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x32

    invoke-interface {p1, v0}, Lorg/ocpsoft/prettytime/Duration;->getQuantityRounded(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performFormat(JZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .registers 5

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getQuantity()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performFormat(JZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public performDecoration(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInFuture()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "через "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " назад"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34
    return-object p2
.end method

.method public performFormat(JZ)Ljava/lang/String;
    .registers 13

    const-wide/16 v0, 0xa

    rem-long v2, p1, v0

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    const-wide/16 v3, 0x64

    if-nez v2, :cond_16

    rem-long v5, p1, v3

    const-wide/16 v7, 0xb

    cmp-long v2, v5, v7

    if-eqz v2, :cond_16

    const/4 v0, 0x0

    goto :goto_37

    :cond_16
    rem-long v5, p1, v0

    const-wide/16 v7, 0x2

    cmp-long v2, v5, v7

    if-ltz v2, :cond_36

    rem-long v5, p1, v0

    const-wide/16 v7, 0x4

    cmp-long v2, v5, v7

    if-gtz v2, :cond_36

    rem-long v5, p1, v3

    cmp-long v0, v5, v0

    if-ltz v0, :cond_34

    rem-long v0, p1, v3

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

    const/4 v1, 0x4

    if-gt v0, v1, :cond_63

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->pluarls:[Ljava/lang/String;

    if-eqz p3, :cond_56

    if-nez v0, :cond_56

    move v3, v0

    goto :goto_58

    :cond_56
    add-int/lit8 v3, v0, 0x1

    :goto_58
    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_63
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Wrong plural index was calculated somehow for russian language"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requiresReformatting(Lorg/ocpsoft/prettytime/Duration;Z)Z
    .registers 7

    if-eqz p2, :cond_9

    const/16 v0, 0x32

    invoke-interface {p1, v0}, Lorg/ocpsoft/prettytime/Duration;->getQuantityRounded(I)J

    move-result-wide v0

    goto :goto_d

    :cond_9
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getQuantity()J

    move-result-wide v0

    :goto_d
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    return v2
.end method
