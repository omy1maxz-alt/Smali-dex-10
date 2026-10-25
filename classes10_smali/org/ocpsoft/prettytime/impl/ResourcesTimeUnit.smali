.class public abstract Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;
.super Ljava/lang/Object;
.source "ResourcesTimeUnit.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/TimeUnit;


# static fields
.field private static ID:J


# instance fields
.field private id:J

.field private maxQuantity:J

.field private millisPerUnit:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->ID:J

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->id:J

    iput-wide v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->maxQuantity:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    sget-wide v2, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->ID:J

    add-long/2addr v0, v2

    sput-wide v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->ID:J

    iput-wide v2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->id:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    move-object v2, p1

    check-cast v2, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    iget-wide v3, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->maxQuantity:J

    iget-wide v5, v2, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->maxQuantity:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1f

    return v1

    :cond_1f
    iget-wide v3, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    iget-wide v5, v2, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0
.end method

.method public getMaxQuantity()J
    .registers 3

    iget-wide v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->maxQuantity:J

    return-wide v0
.end method

.method public getMillisPerUnit()J
    .registers 3

    iget-wide v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    return-wide v0
.end method

.method protected final getResourceBundleName()Ljava/lang/String;
    .registers 2

    const-string v0, "org.ocpsoft.prettytime.i18n.Resources"

    return-object v0
.end method

.method protected abstract getResourceKeyPrefix()Ljava/lang/String;
.end method

.method public hashCode()I
    .registers 6

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public isPrecise()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public setMaxQuantity(J)V
    .registers 3

    iput-wide p1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->maxQuantity:J

    return-void
.end method

.method public setMillisPerUnit(J)V
    .registers 3

    iput-wide p1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
