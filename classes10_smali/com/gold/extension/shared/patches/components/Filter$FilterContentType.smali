.class public final enum Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;
.super Ljava/lang/Enum;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/patches/components/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

.field public static final enum ACCESSIBILITY:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

.field public static final enum IDENTIFIER:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

.field public static final enum PATH:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

.field public static final enum PROTOBUFFER:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;
    .registers 4

    .line 23
    sget-object v0, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->IDENTIFIER:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    sget-object v1, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->PATH:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    sget-object v2, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->ACCESSIBILITY:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    sget-object v3, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->PROTOBUFFER:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 24
    new-instance v0, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    const-string v1, "IDENTIFIER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->IDENTIFIER:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    .line 25
    new-instance v0, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    const-string v1, "PATH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->PATH:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    .line 26
    new-instance v0, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    const-string v1, "ACCESSIBILITY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->ACCESSIBILITY:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    .line 27
    new-instance v0, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    const-string v1, "PROTOBUFFER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->PROTOBUFFER:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    .line 23
    invoke-static {}, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->$values()[Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->$VALUES:[Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 23
    const-class v0, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;
    .registers 1

    .line 23
    sget-object v0, Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->$VALUES:[Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    return-object v0
.end method
