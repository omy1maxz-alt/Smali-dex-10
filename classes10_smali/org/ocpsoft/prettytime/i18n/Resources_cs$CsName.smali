.class Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsName;
.super Ljava/lang/Object;
.source "Resources_cs.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final isFuture:Z

.field private final threshold:Ljava/lang/Long;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Long;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsName;->isFuture:Z

    iput-object p2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsName;->value:Ljava/lang/String;

    iput-object p3, p0, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsName;->threshold:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsName;

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsName;->compareTo(Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsName;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsName;)I
    .registers 5

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsName;->threshold:Ljava/lang/Long;

    invoke-virtual {p1}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsName;->getThreshold()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsName;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getThreshold()J
    .registers 3

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsName;->threshold:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public isFuture()Z
    .registers 2

    iget-boolean v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsName;->isFuture:Z

    return v0
.end method
