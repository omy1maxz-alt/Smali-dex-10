.class final Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;
.super Ljava/lang/Object;
.source "EmbeddedSlotMap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private next:Lorg/mozilla/javascript/ScriptableObject$Slot;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/ScriptableObject$Slot;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;->next()Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/mozilla/javascript/ScriptableObject$Slot;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eqz v0, :cond_9

    iget-object v1, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    return-object v0

    :cond_9
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
