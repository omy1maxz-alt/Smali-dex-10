.class public Lorg/mozilla/javascript/EmbeddedSlotMap;
.super Ljava/lang/Object;
.source "EmbeddedSlotMap.java"

# interfaces
.implements Lorg/mozilla/javascript/SlotMap;


# static fields
.field private static final INITIAL_SLOT_SIZE:I = 0x4


# instance fields
.field private count:I

.field private firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

.field private lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

.field private slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addKnownAbsentSlot([Lorg/mozilla/javascript/ScriptableObject$Slot;Lorg/mozilla/javascript/ScriptableObject$Slot;)V
    .registers 4

    array-length v0, p0

    iget v1, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    invoke-static {v0, v1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    move-result v0

    aget-object v1, p0, v0

    aput-object p1, p0, v0

    iput-object v1, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    return-void
.end method

.method private static copyTable([Lorg/mozilla/javascript/ScriptableObject$Slot;[Lorg/mozilla/javascript/ScriptableObject$Slot;)V
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_15

    aget-object v2, p0, v1

    :goto_6
    if-eqz v2, :cond_12

    iget-object v3, v2, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    const/4 v4, 0x0

    iput-object v4, v2, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-static {p1, v2}, Lorg/mozilla/javascript/EmbeddedSlotMap;->addKnownAbsentSlot([Lorg/mozilla/javascript/ScriptableObject$Slot;Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    move-object v2, v3

    goto :goto_6

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return-void
.end method

.method private createSlot(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;Lorg/mozilla/javascript/ScriptableObject$Slot;)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .registers 10

    iget v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    const/4 v1, 0x4

    if-nez v0, :cond_b

    new-array p4, v1, [Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object p4, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto/16 :goto_8d

    :cond_b
    if-eqz p4, :cond_8d

    iget-object p4, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    array-length p4, p4

    invoke-static {p4, p2}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    move-result p4

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    aget-object v0, v0, p4

    move-object v2, v0

    :goto_19
    if-eqz v0, :cond_32

    iget v3, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    if-ne v3, p2, :cond_2c

    iget-object v3, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    if-eq v3, p1, :cond_32

    if-eqz p1, :cond_2c

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_32

    :cond_2c
    iget-object v2, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_19

    :cond_32
    :goto_32
    if-eqz v0, :cond_8d

    sget-object v1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_GETTER_SETTER:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p3, v1, :cond_46

    instance-of v1, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez v1, :cond_46

    new-instance p3, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v1

    invoke-direct {p3, p1, p2, v1}, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;-><init>(Ljava/lang/Object;II)V

    goto :goto_57

    :cond_46
    sget-object v1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->CONVERT_ACCESSOR_TO_DATA:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p3, v1, :cond_86

    instance-of v1, v0, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz v1, :cond_86

    new-instance p3, Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result v1

    invoke-direct {p3, p1, p2, v1}, Lorg/mozilla/javascript/ScriptableObject$Slot;-><init>(Ljava/lang/Object;II)V

    :goto_57
    iget-object p1, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    iput-object p1, p3, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    iget-object p1, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object p1, p3, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iget-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-ne v0, p1, :cond_66

    iput-object p3, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_72

    :cond_66
    :goto_66
    if-eqz p1, :cond_6e

    iget-object p2, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eq p2, v0, :cond_6e

    move-object p1, p2

    goto :goto_66

    :cond_6e
    if-eqz p1, :cond_72

    iput-object p3, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :cond_72
    :goto_72
    iget-object p1, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object p1, p3, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iget-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-ne v0, p1, :cond_7c

    iput-object p3, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :cond_7c
    if-ne v2, v0, :cond_83

    iget-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    aput-object p3, p1, p4

    goto :goto_85

    :cond_83
    iput-object p3, v2, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :goto_85
    return-object p3

    :cond_86
    sget-object p1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_CONST:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p3, p1, :cond_8c

    const/4 p1, 0x0

    return-object p1

    :cond_8c
    return-object v0

    :cond_8d
    :goto_8d
    iget p4, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    add-int/lit8 p4, p4, 0x1

    mul-int/lit8 p4, p4, 0x4

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    if-le p4, v1, :cond_a4

    array-length p4, v0

    mul-int/lit8 p4, p4, 0x2

    new-array p4, p4, [Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-static {v0, p4}, Lorg/mozilla/javascript/EmbeddedSlotMap;->copyTable([Lorg/mozilla/javascript/ScriptableObject$Slot;[Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    iput-object p4, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    :cond_a4
    sget-object p4, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_GETTER_SETTER:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    const/4 v0, 0x0

    if-ne p3, p4, :cond_af

    new-instance p4, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    invoke-direct {p4, p1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;-><init>(Ljava/lang/Object;II)V

    goto :goto_b4

    :cond_af
    new-instance p4, Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-direct {p4, p1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject$Slot;-><init>(Ljava/lang/Object;II)V

    :goto_b4
    sget-object p1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_CONST:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p3, p1, :cond_bd

    const/16 p1, 0xd

    invoke-virtual {p4, p1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->setAttributes(I)V

    :cond_bd
    invoke-direct {p0, p4}, Lorg/mozilla/javascript/EmbeddedSlotMap;->insertNewSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    return-object p4
.end method

.method private static getSlotIndex(II)I
    .registers 2

    add-int/lit8 p0, p0, -0x1

    and-int/2addr p0, p1

    return p0
.end method

.method private insertNewSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eqz v0, :cond_c

    iput-object p1, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :cond_c
    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-nez v0, :cond_12

    iput-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :cond_12
    iput-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->addKnownAbsentSlot([Lorg/mozilla/javascript/ScriptableObject$Slot;Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    return-void
.end method


# virtual methods
.method public addSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-nez v0, :cond_9

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    :cond_9
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->insertNewSlot(Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    return-void
.end method

.method public get(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .registers 7

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    sget-object v0, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->QUERY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    if-ne p3, v0, :cond_a

    return-object v1

    :cond_a
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :cond_10
    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eqz v0, :cond_59

    array-length v0, v0

    invoke-static {v0, p2}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    aget-object v0, v1, v0

    move-object v1, v0

    :goto_1e
    if-eqz v1, :cond_34

    iget-object v0, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    iget v2, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    if-ne p2, v2, :cond_31

    if-eq v0, p1, :cond_34

    if-eqz p1, :cond_31

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_34

    :cond_31
    iget-object v1, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_1e

    :cond_34
    :goto_34
    sget-object v0, Lorg/mozilla/javascript/EmbeddedSlotMap$1;->$SwitchMap$org$mozilla$javascript$ScriptableObject$SlotAccess:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_58

    const/4 v2, 0x2

    if-eq v0, v2, :cond_56

    const/4 v2, 0x3

    if-eq v0, v2, :cond_56

    const/4 v2, 0x4

    if-eq v0, v2, :cond_51

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4c

    goto :goto_59

    :cond_4c
    instance-of v0, v1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-nez v0, :cond_59

    return-object v1

    :cond_51
    instance-of v0, v1, Lorg/mozilla/javascript/ScriptableObject$GetterSlot;

    if-eqz v0, :cond_59

    return-object v1

    :cond_56
    if-eqz v1, :cond_59

    :cond_58
    return-object v1

    :cond_59
    :goto_59
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->createSlot(Ljava/lang/Object;ILorg/mozilla/javascript/ScriptableObject$SlotAccess;Lorg/mozilla/javascript/ScriptableObject$Slot;)Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;

    iget-object v1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;-><init>(Lorg/mozilla/javascript/ScriptableObject$Slot;)V

    return-object v0
.end method

.method public query(Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject$Slot;
    .registers 7

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :cond_c
    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    array-length v0, v0

    invoke-static {v0, p2}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    move-result v0

    iget-object v2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    aget-object v0, v2, v0

    :goto_17
    if-eqz v0, :cond_2d

    iget-object v2, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    iget v3, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    if-ne p2, v3, :cond_2a

    if-eq v2, p1, :cond_29

    if-eqz p1, :cond_2a

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_29
    return-object v0

    :cond_2a
    iget-object v0, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_17

    :cond_2d
    return-object v1
.end method

.method public remove(Ljava/lang/Object;I)V
    .registers 8

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :cond_6
    iget v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    if-eqz v0, :cond_78

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    array-length v0, v0

    invoke-static {v0, p2}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    aget-object v1, v1, v0

    move-object v2, v1

    :goto_16
    if-eqz v1, :cond_2f

    iget v3, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    if-ne v3, p2, :cond_29

    iget-object v3, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/Object;

    if-eq v3, p1, :cond_2f

    if-eqz p1, :cond_29

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_2f

    :cond_29
    iget-object v2, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_16

    :cond_2f
    :goto_2f
    if-eqz v1, :cond_78

    invoke-virtual {v1}, Lorg/mozilla/javascript/ScriptableObject$Slot;->getAttributes()I

    move-result p2

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_4b

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result p2

    if-nez p2, :cond_44

    return-void

    :cond_44
    const-string p2, "msg.delete.property.with.configurable.false"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_4b
    iget p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    if-ne v2, v1, :cond_5a

    iget-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/ScriptableObject$Slot;

    iget-object p2, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    aput-object p2, p1, v0

    goto :goto_5e

    :cond_5a
    iget-object p1, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object p1, v2, Lorg/mozilla/javascript/ScriptableObject$Slot;->next:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :goto_5e
    iget-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-ne v1, p1, :cond_68

    const/4 p1, 0x0

    iget-object p2, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object p2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    goto :goto_72

    :cond_68
    :goto_68
    iget-object p2, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eq p2, v1, :cond_6e

    move-object p1, p2

    goto :goto_68

    :cond_6e
    iget-object p2, v1, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object p2, p1, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :goto_72
    iget-object p2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-ne v1, p2, :cond_78

    iput-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/ScriptableObject$Slot;

    :cond_78
    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    return v0
.end method
