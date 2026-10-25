.class public final Lorg/mozilla/javascript/NativeArray$ElementComparator;
.super Ljava/lang/Object;
.source "NativeArray.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x10838b6adf8406faL


# instance fields
.field private final child:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/mozilla/javascript/NativeArray;->access$000()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeArray$ElementComparator;->child:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeArray$ElementComparator;->child:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p1, v0, :cond_10

    if-ne p2, v0, :cond_a

    return v2

    :cond_a
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p2, p1, :cond_f

    return v3

    :cond_f
    return v1

    :cond_10
    sget-object v4, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne p1, v4, :cond_18

    if-ne p2, v4, :cond_17

    const/4 v1, 0x0

    :cond_17
    return v1

    :cond_18
    if-ne p2, v4, :cond_1b

    return v3

    :cond_1b
    if-ne p2, v0, :cond_1e

    return v3

    :cond_1e
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray$ElementComparator;->child:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
