.class public Lorg/ocpsoft/prettytime/units/Millisecond;
.super Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;
.source "Millisecond.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/ocpsoft/prettytime/units/Millisecond;->setMillisPerUnit(J)V

    return-void
.end method


# virtual methods
.method protected getResourceKeyPrefix()Ljava/lang/String;
    .registers 2

    const-string v0, "Millisecond"

    return-object v0
.end method
