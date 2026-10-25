.class abstract synthetic Lorg/jsoup/parser/XmlTreeBuilder$1;
.super Ljava/lang/Object;
.source "XmlTreeBuilder.java"


# static fields
.field static final synthetic $SwitchMap$org$jsoup$parser$Token$TokenType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lorg/jsoup/parser/Token$TokenType;->values()[Lorg/jsoup/parser/Token$TokenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jsoup/parser/XmlTreeBuilder$1;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    :try_start_9
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/jsoup/parser/XmlTreeBuilder$1;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lorg/jsoup/parser/XmlTreeBuilder$1;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lorg/jsoup/parser/XmlTreeBuilder$1;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lorg/jsoup/parser/XmlTreeBuilder$1;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lorg/jsoup/parser/XmlTreeBuilder$1;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    return-void
.end method
