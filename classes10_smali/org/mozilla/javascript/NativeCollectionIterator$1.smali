.class synthetic Lorg/mozilla/javascript/NativeCollectionIterator$1;
.super Ljava/lang/Object;
.source "NativeCollectionIterator.java"


# static fields
.field static final synthetic $SwitchMap$org$mozilla$javascript$NativeCollectionIterator$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->values()[Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/javascript/NativeCollectionIterator$1;->$SwitchMap$org$mozilla$javascript$NativeCollectionIterator$Type:[I

    :try_start_9
    sget-object v1, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->KEYS:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/mozilla/javascript/NativeCollectionIterator$1;->$SwitchMap$org$mozilla$javascript$NativeCollectionIterator$Type:[I

    sget-object v1, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->VALUES:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lorg/mozilla/javascript/NativeCollectionIterator$1;->$SwitchMap$org$mozilla$javascript$NativeCollectionIterator$Type:[I

    sget-object v1, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->BOTH:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
