.class Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;
.super Ljava/lang/Object;
.source "Resources_kk.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/TimeFormat;


# instance fields
.field private final forms:[Ljava/lang/String;

.field private final tolerance:I


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;->tolerance:I

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;->forms:[Ljava/lang/String;

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Future and past forms must be provided for kazakh language!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performDecoration(ZZJLjava/lang/String;)Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;->forms:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_20

    const-string v2, "бұрын"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    if-eqz p2, :cond_27

    const-string v2, "кейін"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
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

    invoke-direct/range {v0 .. v5}, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;->performDecoration(ZZJLjava/lang/String;)Ljava/lang/String;

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

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/ocpsoft/prettytime/i18n/Resources_kk$KkTimeFormat;->performDecoration(ZZJLjava/lang/String;)Ljava/lang/String;

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

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
