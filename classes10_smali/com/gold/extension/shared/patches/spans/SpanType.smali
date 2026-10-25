.class public final enum Lcom/gold/extension/shared/patches/spans/SpanType;
.super Ljava/lang/Enum;
.source "SpanType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/patches/spans/SpanType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/patches/spans/SpanType;

.field public static final enum ABSOLUTE_SIZE:Lcom/gold/extension/shared/patches/spans/SpanType;

.field public static final enum CLICKABLE:Lcom/gold/extension/shared/patches/spans/SpanType;

.field public static final enum CUSTOM_CHARACTER_STYLE:Lcom/gold/extension/shared/patches/spans/SpanType;

.field public static final enum FOREGROUND_COLOR:Lcom/gold/extension/shared/patches/spans/SpanType;

.field public static final enum IMAGE:Lcom/gold/extension/shared/patches/spans/SpanType;

.field public static final enum LINE_HEIGHT:Lcom/gold/extension/shared/patches/spans/SpanType;

.field public static final enum TYPEFACE:Lcom/gold/extension/shared/patches/spans/SpanType;

.field public static final enum UNKNOWN:Lcom/gold/extension/shared/patches/spans/SpanType;


# instance fields
.field public final type:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/patches/spans/SpanType;
    .registers 8

    .line 12
    sget-object v0, Lcom/gold/extension/shared/patches/spans/SpanType;->ABSOLUTE_SIZE:Lcom/gold/extension/shared/patches/spans/SpanType;

    sget-object v1, Lcom/gold/extension/shared/patches/spans/SpanType;->CLICKABLE:Lcom/gold/extension/shared/patches/spans/SpanType;

    sget-object v2, Lcom/gold/extension/shared/patches/spans/SpanType;->CUSTOM_CHARACTER_STYLE:Lcom/gold/extension/shared/patches/spans/SpanType;

    sget-object v3, Lcom/gold/extension/shared/patches/spans/SpanType;->FOREGROUND_COLOR:Lcom/gold/extension/shared/patches/spans/SpanType;

    sget-object v4, Lcom/gold/extension/shared/patches/spans/SpanType;->IMAGE:Lcom/gold/extension/shared/patches/spans/SpanType;

    sget-object v5, Lcom/gold/extension/shared/patches/spans/SpanType;->LINE_HEIGHT:Lcom/gold/extension/shared/patches/spans/SpanType;

    sget-object v6, Lcom/gold/extension/shared/patches/spans/SpanType;->TYPEFACE:Lcom/gold/extension/shared/patches/spans/SpanType;

    sget-object v7, Lcom/gold/extension/shared/patches/spans/SpanType;->UNKNOWN:Lcom/gold/extension/shared/patches/spans/SpanType;

    filled-new-array/range {v0 .. v7}, [Lcom/gold/extension/shared/patches/spans/SpanType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 13
    new-instance v0, Lcom/gold/extension/shared/patches/spans/SpanType;

    const/4 v1, 0x0

    const-string v2, "AbsoluteSizeSpan"

    const-string v3, "ABSOLUTE_SIZE"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/patches/spans/SpanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/patches/spans/SpanType;->ABSOLUTE_SIZE:Lcom/gold/extension/shared/patches/spans/SpanType;

    .line 14
    new-instance v0, Lcom/gold/extension/shared/patches/spans/SpanType;

    const/4 v1, 0x1

    const-string v2, "ClickableSpan"

    const-string v3, "CLICKABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/patches/spans/SpanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/patches/spans/SpanType;->CLICKABLE:Lcom/gold/extension/shared/patches/spans/SpanType;

    .line 15
    new-instance v0, Lcom/gold/extension/shared/patches/spans/SpanType;

    const/4 v1, 0x2

    const-string v2, "CustomCharacterStyle"

    const-string v3, "CUSTOM_CHARACTER_STYLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/patches/spans/SpanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/patches/spans/SpanType;->CUSTOM_CHARACTER_STYLE:Lcom/gold/extension/shared/patches/spans/SpanType;

    .line 16
    new-instance v0, Lcom/gold/extension/shared/patches/spans/SpanType;

    const/4 v1, 0x3

    const-string v2, "ForegroundColorSpan"

    const-string v3, "FOREGROUND_COLOR"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/patches/spans/SpanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/patches/spans/SpanType;->FOREGROUND_COLOR:Lcom/gold/extension/shared/patches/spans/SpanType;

    .line 17
    new-instance v0, Lcom/gold/extension/shared/patches/spans/SpanType;

    const/4 v1, 0x4

    const-string v2, "ImageSpan"

    const-string v3, "IMAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/patches/spans/SpanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/patches/spans/SpanType;->IMAGE:Lcom/gold/extension/shared/patches/spans/SpanType;

    .line 18
    new-instance v0, Lcom/gold/extension/shared/patches/spans/SpanType;

    const/4 v1, 0x5

    const-string v2, "LineHeightSpan"

    const-string v3, "LINE_HEIGHT"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/patches/spans/SpanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/patches/spans/SpanType;->LINE_HEIGHT:Lcom/gold/extension/shared/patches/spans/SpanType;

    .line 19
    new-instance v0, Lcom/gold/extension/shared/patches/spans/SpanType;

    const/4 v1, 0x6

    const-string v2, "TypefaceSpan"

    const-string v3, "TYPEFACE"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/patches/spans/SpanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/patches/spans/SpanType;->TYPEFACE:Lcom/gold/extension/shared/patches/spans/SpanType;

    .line 20
    new-instance v0, Lcom/gold/extension/shared/patches/spans/SpanType;

    const/4 v1, 0x7

    const-string v2, "Unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/patches/spans/SpanType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/patches/spans/SpanType;->UNKNOWN:Lcom/gold/extension/shared/patches/spans/SpanType;

    .line 12
    invoke-static {}, Lcom/gold/extension/shared/patches/spans/SpanType;->$values()[Lcom/gold/extension/shared/patches/spans/SpanType;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/patches/spans/SpanType;->$VALUES:[Lcom/gold/extension/shared/patches/spans/SpanType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/gold/extension/shared/patches/spans/SpanType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/patches/spans/SpanType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 12
    const-class v0, Lcom/gold/extension/shared/patches/spans/SpanType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/patches/spans/SpanType;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/patches/spans/SpanType;
    .registers 1

    .line 12
    sget-object v0, Lcom/gold/extension/shared/patches/spans/SpanType;->$VALUES:[Lcom/gold/extension/shared/patches/spans/SpanType;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/patches/spans/SpanType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/patches/spans/SpanType;

    return-object v0
.end method
