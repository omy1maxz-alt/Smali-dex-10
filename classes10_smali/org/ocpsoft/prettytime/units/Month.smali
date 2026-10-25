.class public Lorg/ocpsoft/prettytime/units/Month;
.super Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;
.source "Month.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    const-wide v0, 0x9cbeb4d6L

    invoke-virtual {p0, v0, v1}, Lorg/ocpsoft/prettytime/units/Month;->setMillisPerUnit(J)V

    return-void
.end method


# virtual methods
.method protected getResourceKeyPrefix()Ljava/lang/String;
    .registers 2

    const-string v0, "Month"

    return-object v0
.end method
