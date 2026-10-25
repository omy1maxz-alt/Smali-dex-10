.class public final enum Lcom/gold/extension/shared/ResourceType;
.super Ljava/lang/Enum;
.source "ResourceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/ResourceType;

.field public static final enum ANIM:Lcom/gold/extension/shared/ResourceType;

.field public static final enum ANIMATOR:Lcom/gold/extension/shared/ResourceType;

.field public static final enum ARRAY:Lcom/gold/extension/shared/ResourceType;

.field public static final enum ATTR:Lcom/gold/extension/shared/ResourceType;

.field public static final enum BOOL:Lcom/gold/extension/shared/ResourceType;

.field public static final enum COLOR:Lcom/gold/extension/shared/ResourceType;

.field public static final enum DIMEN:Lcom/gold/extension/shared/ResourceType;

.field public static final enum DRAWABLE:Lcom/gold/extension/shared/ResourceType;

.field public static final enum FONT:Lcom/gold/extension/shared/ResourceType;

.field public static final enum FRACTION:Lcom/gold/extension/shared/ResourceType;

.field public static final enum ID:Lcom/gold/extension/shared/ResourceType;

.field public static final enum INTEGER:Lcom/gold/extension/shared/ResourceType;

.field public static final enum INTERPOLATOR:Lcom/gold/extension/shared/ResourceType;

.field public static final enum LAYOUT:Lcom/gold/extension/shared/ResourceType;

.field public static final enum MENU:Lcom/gold/extension/shared/ResourceType;

.field public static final enum MIPMAP:Lcom/gold/extension/shared/ResourceType;

.field public static final enum NAVIGATION:Lcom/gold/extension/shared/ResourceType;

.field public static final enum PLURALS:Lcom/gold/extension/shared/ResourceType;

.field public static final enum RAW:Lcom/gold/extension/shared/ResourceType;

.field public static final enum STRING:Lcom/gold/extension/shared/ResourceType;

.field public static final enum STYLE:Lcom/gold/extension/shared/ResourceType;

.field public static final enum STYLEABLE:Lcom/gold/extension/shared/ResourceType;

.field public static final enum TRANSITION:Lcom/gold/extension/shared/ResourceType;

.field public static final enum VALUES:Lcom/gold/extension/shared/ResourceType;

.field private static final VALUE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/shared/ResourceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum XML:Lcom/gold/extension/shared/ResourceType;


# instance fields
.field public final type:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/ResourceType;
    .registers 26

    .line 6
    sget-object v1, Lcom/gold/extension/shared/ResourceType;->ANIM:Lcom/gold/extension/shared/ResourceType;

    sget-object v2, Lcom/gold/extension/shared/ResourceType;->ANIMATOR:Lcom/gold/extension/shared/ResourceType;

    sget-object v3, Lcom/gold/extension/shared/ResourceType;->ARRAY:Lcom/gold/extension/shared/ResourceType;

    sget-object v4, Lcom/gold/extension/shared/ResourceType;->ATTR:Lcom/gold/extension/shared/ResourceType;

    sget-object v5, Lcom/gold/extension/shared/ResourceType;->BOOL:Lcom/gold/extension/shared/ResourceType;

    sget-object v6, Lcom/gold/extension/shared/ResourceType;->COLOR:Lcom/gold/extension/shared/ResourceType;

    sget-object v7, Lcom/gold/extension/shared/ResourceType;->DIMEN:Lcom/gold/extension/shared/ResourceType;

    sget-object v8, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    sget-object v9, Lcom/gold/extension/shared/ResourceType;->FONT:Lcom/gold/extension/shared/ResourceType;

    sget-object v10, Lcom/gold/extension/shared/ResourceType;->FRACTION:Lcom/gold/extension/shared/ResourceType;

    sget-object v11, Lcom/gold/extension/shared/ResourceType;->ID:Lcom/gold/extension/shared/ResourceType;

    sget-object v12, Lcom/gold/extension/shared/ResourceType;->INTEGER:Lcom/gold/extension/shared/ResourceType;

    sget-object v13, Lcom/gold/extension/shared/ResourceType;->INTERPOLATOR:Lcom/gold/extension/shared/ResourceType;

    sget-object v14, Lcom/gold/extension/shared/ResourceType;->LAYOUT:Lcom/gold/extension/shared/ResourceType;

    sget-object v15, Lcom/gold/extension/shared/ResourceType;->MENU:Lcom/gold/extension/shared/ResourceType;

    sget-object v16, Lcom/gold/extension/shared/ResourceType;->MIPMAP:Lcom/gold/extension/shared/ResourceType;

    sget-object v17, Lcom/gold/extension/shared/ResourceType;->NAVIGATION:Lcom/gold/extension/shared/ResourceType;

    sget-object v18, Lcom/gold/extension/shared/ResourceType;->PLURALS:Lcom/gold/extension/shared/ResourceType;

    sget-object v19, Lcom/gold/extension/shared/ResourceType;->RAW:Lcom/gold/extension/shared/ResourceType;

    sget-object v20, Lcom/gold/extension/shared/ResourceType;->STRING:Lcom/gold/extension/shared/ResourceType;

    sget-object v21, Lcom/gold/extension/shared/ResourceType;->STYLE:Lcom/gold/extension/shared/ResourceType;

    sget-object v22, Lcom/gold/extension/shared/ResourceType;->STYLEABLE:Lcom/gold/extension/shared/ResourceType;

    sget-object v23, Lcom/gold/extension/shared/ResourceType;->TRANSITION:Lcom/gold/extension/shared/ResourceType;

    sget-object v24, Lcom/gold/extension/shared/ResourceType;->VALUES:Lcom/gold/extension/shared/ResourceType;

    sget-object v25, Lcom/gold/extension/shared/ResourceType;->XML:Lcom/gold/extension/shared/ResourceType;

    filled-new-array/range {v1 .. v25}, [Lcom/gold/extension/shared/ResourceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 7
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const-string v1, "anim"

    const-string v2, "ANIM"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->ANIM:Lcom/gold/extension/shared/ResourceType;

    .line 8
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/4 v1, 0x1

    const-string v2, "animator"

    const-string v4, "ANIMATOR"

    invoke-direct {v0, v4, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->ANIMATOR:Lcom/gold/extension/shared/ResourceType;

    .line 9
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const-string v1, "array"

    const-string v2, "ARRAY"

    const/4 v4, 0x2

    invoke-direct {v0, v2, v4, v1}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->ARRAY:Lcom/gold/extension/shared/ResourceType;

    .line 10
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/4 v1, 0x3

    const-string v2, "attr"

    const-string v5, "ATTR"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->ATTR:Lcom/gold/extension/shared/ResourceType;

    .line 11
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/4 v1, 0x4

    const-string v2, "bool"

    const-string v5, "BOOL"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->BOOL:Lcom/gold/extension/shared/ResourceType;

    .line 12
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/4 v1, 0x5

    const-string v2, "color"

    const-string v5, "COLOR"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->COLOR:Lcom/gold/extension/shared/ResourceType;

    .line 13
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/4 v1, 0x6

    const-string v2, "dimen"

    const-string v5, "DIMEN"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->DIMEN:Lcom/gold/extension/shared/ResourceType;

    .line 14
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/4 v1, 0x7

    const-string v2, "drawable"

    const-string v5, "DRAWABLE"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    .line 15
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0x8

    const-string v2, "font"

    const-string v5, "FONT"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->FONT:Lcom/gold/extension/shared/ResourceType;

    .line 16
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0x9

    const-string v2, "fraction"

    const-string v5, "FRACTION"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->FRACTION:Lcom/gold/extension/shared/ResourceType;

    .line 17
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0xa

    const-string v2, "id"

    const-string v5, "ID"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->ID:Lcom/gold/extension/shared/ResourceType;

    .line 18
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0xb

    const-string v2, "integer"

    const-string v5, "INTEGER"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->INTEGER:Lcom/gold/extension/shared/ResourceType;

    .line 19
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0xc

    const-string v2, "interpolator"

    const-string v5, "INTERPOLATOR"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->INTERPOLATOR:Lcom/gold/extension/shared/ResourceType;

    .line 20
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0xd

    const-string v2, "layout"

    const-string v5, "LAYOUT"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->LAYOUT:Lcom/gold/extension/shared/ResourceType;

    .line 21
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0xe

    const-string v2, "menu"

    const-string v5, "MENU"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->MENU:Lcom/gold/extension/shared/ResourceType;

    .line 22
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0xf

    const-string v2, "mipmap"

    const-string v5, "MIPMAP"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->MIPMAP:Lcom/gold/extension/shared/ResourceType;

    .line 23
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0x10

    const-string v2, "navigation"

    const-string v5, "NAVIGATION"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->NAVIGATION:Lcom/gold/extension/shared/ResourceType;

    .line 24
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0x11

    const-string v2, "plurals"

    const-string v5, "PLURALS"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->PLURALS:Lcom/gold/extension/shared/ResourceType;

    .line 25
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0x12

    const-string v2, "raw"

    const-string v5, "RAW"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->RAW:Lcom/gold/extension/shared/ResourceType;

    .line 26
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0x13

    const-string v2, "string"

    const-string v5, "STRING"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->STRING:Lcom/gold/extension/shared/ResourceType;

    .line 27
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0x14

    const-string v2, "style"

    const-string v5, "STYLE"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->STYLE:Lcom/gold/extension/shared/ResourceType;

    .line 28
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0x15

    const-string v2, "styleable"

    const-string v5, "STYLEABLE"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->STYLEABLE:Lcom/gold/extension/shared/ResourceType;

    .line 29
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0x16

    const-string v2, "transition"

    const-string v5, "TRANSITION"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->TRANSITION:Lcom/gold/extension/shared/ResourceType;

    .line 30
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0x17

    const-string v2, "values"

    const-string v5, "VALUES"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->VALUES:Lcom/gold/extension/shared/ResourceType;

    .line 31
    new-instance v0, Lcom/gold/extension/shared/ResourceType;

    const/16 v1, 0x18

    const-string v2, "xml"

    const-string v5, "XML"

    invoke-direct {v0, v5, v1, v2}, Lcom/gold/extension/shared/ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->XML:Lcom/gold/extension/shared/ResourceType;

    .line 6
    invoke-static {}, Lcom/gold/extension/shared/ResourceType;->$values()[Lcom/gold/extension/shared/ResourceType;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/ResourceType;->$VALUES:[Lcom/gold/extension/shared/ResourceType;

    .line 36
    invoke-static {}, Lcom/gold/extension/shared/ResourceType;->values()[Lcom/gold/extension/shared/ResourceType;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    mul-int/2addr v2, v4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/gold/extension/shared/ResourceType;->VALUE_MAP:Ljava/util/Map;

    .line 39
    array-length v1, v0

    :goto_151
    if-ge v3, v1, :cond_15f

    aget-object v2, v0, v3

    .line 40
    sget-object v4, Lcom/gold/extension/shared/ResourceType;->VALUE_MAP:Ljava/util/Map;

    iget-object v5, v2, Lcom/gold/extension/shared/ResourceType;->type:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_151

    :cond_15f
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

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/gold/extension/shared/ResourceType;->type:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/gold/extension/shared/ResourceType;
    .registers 4

    .line 47
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->VALUE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/ResourceType;

    if-eqz v0, :cond_b

    return-object v0

    .line 49
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown resource type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/ResourceType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 6
    const-class v0, Lcom/gold/extension/shared/ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/ResourceType;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/ResourceType;
    .registers 1

    .line 6
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->$VALUES:[Lcom/gold/extension/shared/ResourceType;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/ResourceType;

    return-object v0
.end method
