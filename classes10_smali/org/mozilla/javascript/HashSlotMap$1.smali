.class synthetic Lorg/mozilla/javascript/HashSlotMap$1;
.super Ljava/lang/Object;
.source "HashSlotMap.java"


# static fields
.field static final synthetic $SwitchMap$org$mozilla$javascript$ScriptableObject$SlotAccess:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->values()[Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/javascript/HashSlotMap$1;->$SwitchMap$org$mozilla$javascript$ScriptableObject$SlotAccess:[I

    :try_start_9
    sget-object v1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->QUERY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/mozilla/javascript/HashSlotMap$1;->$SwitchMap$org$mozilla$javascript$ScriptableObject$SlotAccess:[I

    sget-object v1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lorg/mozilla/javascript/HashSlotMap$1;->$SwitchMap$org$mozilla$javascript$ScriptableObject$SlotAccess:[I

    sget-object v1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_CONST:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lorg/mozilla/javascript/HashSlotMap$1;->$SwitchMap$org$mozilla$javascript$ScriptableObject$SlotAccess:[I

    sget-object v1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->MODIFY_GETTER_SETTER:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lorg/mozilla/javascript/HashSlotMap$1;->$SwitchMap$org$mozilla$javascript$ScriptableObject$SlotAccess:[I

    sget-object v1, Lorg/mozilla/javascript/ScriptableObject$SlotAccess;->CONVERT_ACCESSOR_TO_DATA:Lorg/mozilla/javascript/ScriptableObject$SlotAccess;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method
