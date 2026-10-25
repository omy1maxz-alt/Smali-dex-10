.class public Lorg/mozilla/javascript/HashSlotMap;
.super Ljava/lang/Object;
.source "HashSlotMap.java"

# interfaces
.implements Lorg/mozilla/javascript/SlotMap;


# instance fields
.field private final map:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private createSlot(Ljava/lang/Object;ILjava/lang/Object;Lorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eqz v0, :cond_42

    sget-object p1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_GETTER_SETTER:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p4, p1, :cond_1e

    instance-of p1, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez p1, :cond_1e

    new-instance p1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    iget p2, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result p4

    invoke-direct {p1, p3, p2, p4}, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;-><init>(Ljava/lang/Object;II)V

    goto :goto_31

    :cond_1e
    sget-object p1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->CONVERT_ACCESSOR_TO_DATA:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p4, p1, :cond_3b

    instance-of p1, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz p1, :cond_3b

    new-instance p1, Lorg/mozilla/javascript/ScriptableObject$Slot;

    iget p2, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result p4

    invoke-direct {p1, p3, p2, p4}, Lorg/mozilla/javascript/ScriptableObject$Slot;-><init>(Ljava/lang/Object;II)V

    :goto_31
    iget-object p2, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    iput-object p2, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    iget-object p2, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_3b
    sget-object p1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_CONST:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p4, p1, :cond_41

    const/4 p1, 0x0

    return-object p1

    :cond_41
    return-object v0

    :cond_42
    sget-object p3, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_GETTER_SETTER:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    const/4 v0, 0x0

    if-ne p4, p3, :cond_4d

    new-instance p3, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    invoke-direct {p3, p1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;-><init>(Ljava/lang/Object;II)V

    goto :goto_52

    :cond_4d
    new-instance p3, Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-direct {p3, p1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;-><init>(Ljava/lang/Object;II)V

    :goto_52
    sget-object p1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_CONST:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p4, p1, :cond_5b

    const/16 p1, 0xd

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    :cond_5b
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/HashSlotMap;->addSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    return-object p3
.end method


# virtual methods
.method public addSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V
    .registers 4

    iget-object v0, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    if-nez v0, :cond_a

    iget v0, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_a
    iget-object v1, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .registers 8

    if-nez p1, :cond_7

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    iget-object v1, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/ScriptableObject$Slot;

    sget-object v2, Lorg/mozilla/javascript/HashSlotMap$1;->$SwitchMap$org$mozilla$javascript$ScriptableObject$SlotAccess:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_32

    const/4 v3, 0x3

    if-eq v2, v3, :cond_32

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2d

    const/4 v3, 0x5

    if-eq v2, v3, :cond_28

    goto :goto_35

    :cond_28
    instance-of v2, v1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez v2, :cond_35

    return-object v1

    :cond_2d
    instance-of v2, v1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz v2, :cond_35

    return-object v1

    :cond_32
    if-eqz v1, :cond_35

    return-object v1

    :cond_35
    :goto_35
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/mozilla/javascript/HashSlotMap;->createSlot(Ljava/lang/Object;ILjava/lang/Object;Lorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    return-object p1

    :cond_3a
    return-object v1
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .registers 3

    if-nez p1, :cond_6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_6
    iget-object p2, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ScriptableObject$Slot;

    return-object p1
.end method

.method public remove(Ljava/lang/Object;I)V
    .registers 4

    if-nez p1, :cond_7

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    :cond_7
    move-object p2, p1

    :goto_8
    iget-object v0, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2c

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result p2

    if-nez p2, :cond_25

    return-void

    :cond_25
    const-string p2, "msg.delete.property.with.configurable.false"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_2c
    iget-object p1, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/HashSlotMap;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method
