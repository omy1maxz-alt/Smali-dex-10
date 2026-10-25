.class synthetic Lus/shandian/giga/util/Utility$1;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field static final synthetic $SwitchMap$us$shandian$giga$util$Utility$FileType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lus/shandian/giga/util/Utility$FileType;->values()[Lus/shandian/giga/util/Utility$FileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lus/shandian/giga/util/Utility$1;->$SwitchMap$us$shandian$giga$util$Utility$FileType:[I

    :try_start_9
    sget-object v1, Lus/shandian/giga/util/Utility$FileType;->MUSIC:Lus/shandian/giga/util/Utility$FileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lus/shandian/giga/util/Utility$1;->$SwitchMap$us$shandian$giga$util$Utility$FileType:[I

    sget-object v1, Lus/shandian/giga/util/Utility$FileType;->VIDEO:Lus/shandian/giga/util/Utility$FileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lus/shandian/giga/util/Utility$1;->$SwitchMap$us$shandian$giga$util$Utility$FileType:[I

    sget-object v1, Lus/shandian/giga/util/Utility$FileType;->SUBTITLE:Lus/shandian/giga/util/Utility$FileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
