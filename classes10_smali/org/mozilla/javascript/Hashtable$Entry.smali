.class public final Lorg/mozilla/javascript/Hashtable$Entry;
.super Ljava/lang/Object;
.source "Hashtable.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x38b66bae0a157bffL


# instance fields
.field protected deleted:Z

.field private final hashCode:I

.field protected key:Ljava/lang/Object;

.field protected next:Lorg/mozilla/javascript/Hashtable$Entry;

.field protected prev:Lorg/mozilla/javascript/Hashtable$Entry;

.field protected value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->hashCode:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_19

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_19

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    goto :goto_26

    :cond_19
    instance-of v0, p1, Lorg/mozilla/javascript/ConsString;

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    goto :goto_26

    :cond_24
    iput-object p1, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    :goto_26
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    iput v1, p0, Lorg/mozilla/javascript/Hashtable$Entry;->hashCode:I

    goto :goto_41

    :cond_2e
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->negativeZeroObj:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    iput v1, p0, Lorg/mozilla/javascript/Hashtable$Entry;->hashCode:I

    goto :goto_41

    :cond_39
    iget-object p1, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/Hashtable$Entry;->hashCode:I

    :goto_41
    iput-object p2, p0, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method clear()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/javascript/Hashtable$Entry;->deleted:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    iget-object v1, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    check-cast p1, Lorg/mozilla/javascript/Hashtable$Entry;

    iget-object p1, p1, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->sameZero(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_e} :catch_f

    return p1

    :catch_f
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->hashCode:I

    return v0
.end method

.method public key()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method
