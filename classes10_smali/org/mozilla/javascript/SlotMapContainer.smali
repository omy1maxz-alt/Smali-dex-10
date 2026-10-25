.class Lorg/mozilla/javascript/SlotMapContainer;
.super Ljava/lang/Object;
.source "SlotMapContainer.java"

# interfaces
.implements Lorg/mozilla/javascript/SlotMap;


# static fields
.field private static final LARGE_HASH_SIZE:I = 0x7d0


# instance fields
.field protected map:Lorg/mozilla/javascript/SlotMap;


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    if-le p1, v0, :cond_f

    new-instance p1, Lorg/mozilla/javascript/HashSlotMap;

    invoke-direct {p1}, Lorg/mozilla/javascript/HashSlotMap;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    goto :goto_16

    :cond_f
    new-instance p1, Lorg/mozilla/javascript/EmbeddedSlotMap;

    invoke-direct {p1}, Lorg/mozilla/javascript/EmbeddedSlotMap;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    :goto_16
    return-void
.end method


# virtual methods
.method public addSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V
    .registers 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/SlotMapContainer;->checkMapSize()V

    iget-object v0, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/SlotMap;->addSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    return-void
.end method

.method protected checkMapSize()V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    instance-of v1, v0, Lorg/mozilla/javascript/EmbeddedSlotMap;

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Lorg/mozilla/javascript/SlotMap;->size()I

    move-result v0

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_2b

    new-instance v0, Lorg/mozilla/javascript/HashSlotMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/HashSlotMap;-><init>()V

    iget-object v1, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-interface {v0, v2}, Lorg/mozilla/javascript/SlotMap;->addSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    goto :goto_19

    :cond_29
    iput-object v0, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    :cond_2b
    return-void
.end method

.method public dirtySize()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v0}, Lorg/mozilla/javascript/SlotMap;->size()I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .registers 5

    sget-object v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->QUERY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-eq p3, v0, :cond_7

    invoke-virtual {p0}, Lorg/mozilla/javascript/SlotMapContainer;->checkMapSize()V

    :cond_7
    iget-object v0, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/SlotMap;->get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v0}, Lorg/mozilla/javascript/SlotMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/SlotMap;->query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    return-object p1
.end method

.method public readLock()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public remove(Ljava/lang/Object;I)V
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/SlotMap;->remove(Ljava/lang/Object;I)V

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/SlotMapContainer;->map:Lorg/mozilla/javascript/SlotMap;

    invoke-interface {v0}, Lorg/mozilla/javascript/SlotMap;->size()I

    move-result v0

    return v0
.end method

.method public unlockRead(J)V
    .registers 3

    return-void
.end method
