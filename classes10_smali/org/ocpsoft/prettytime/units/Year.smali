.class public Lorg/ocpsoft/prettytime/units/Year;
.super Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;
.source "Year.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    const-wide v0, 0x758f07a08L

    invoke-virtual {p0, v0, v1}, Lorg/ocpsoft/prettytime/units/Year;->setMillisPerUnit(J)V

    return-void
.end method


# virtual methods
.method protected getResourceKeyPrefix()Ljava/lang/String;
    .registers 2

    const-string v0, "Year"

    return-object v0
.end method
