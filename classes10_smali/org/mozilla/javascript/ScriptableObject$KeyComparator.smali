.class public final Lorg/mozilla/javascript/ScriptableObject$KeyComparator;
.super Ljava/lang/Object;
.source "ScriptableObject.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x58f9a4064dffeab5L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    instance-of v0, p2, Ljava/lang/Integer;

    const/4 v3, -0x1

    if-eqz v0, :cond_1e

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p1, p2, :cond_1a

    return v3

    :cond_1a
    if-le p1, p2, :cond_1d

    return v1

    :cond_1d
    return v2

    :cond_1e
    return v3

    :cond_1f
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_24

    return v1

    :cond_24
    return v2
.end method
