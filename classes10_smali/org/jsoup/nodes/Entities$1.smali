.class abstract synthetic Lorg/jsoup/nodes/Entities$1;
.super Ljava/lang/Object;
.source "Entities.java"


# static fields
.field static final synthetic $SwitchMap$org$jsoup$nodes$Entities$CoreCharset:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lorg/jsoup/nodes/Entities$CoreCharset;->values()[Lorg/jsoup/nodes/Entities$CoreCharset;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jsoup/nodes/Entities$1;->$SwitchMap$org$jsoup$nodes$Entities$CoreCharset:[I

    :try_start_9
    sget-object v1, Lorg/jsoup/nodes/Entities$CoreCharset;->ascii:Lorg/jsoup/nodes/Entities$CoreCharset;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/jsoup/nodes/Entities$1;->$SwitchMap$org$jsoup$nodes$Entities$CoreCharset:[I

    sget-object v1, Lorg/jsoup/nodes/Entities$CoreCharset;->utf:Lorg/jsoup/nodes/Entities$CoreCharset;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
