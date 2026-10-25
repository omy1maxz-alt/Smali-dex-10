.class abstract synthetic Lorg/jsoup/parser/Tokeniser$1;
.super Ljava/lang/Object;
.source "Tokeniser.java"


# static fields
.field static final synthetic $SwitchMap$org$jsoup$parser$TokeniserState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lorg/jsoup/parser/TokeniserState;->values()[Lorg/jsoup/parser/TokeniserState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jsoup/parser/Tokeniser$1;->$SwitchMap$org$jsoup$parser$TokeniserState:[I

    :try_start_9
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->TagOpen:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/jsoup/parser/Tokeniser$1;->$SwitchMap$org$jsoup$parser$TokeniserState:[I

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
