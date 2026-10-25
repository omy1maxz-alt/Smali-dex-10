.class final enum Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;
.super Ljava/lang/Enum;
.source "AnnouncementsPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

.field public static final enum INFO:Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

.field public static final enum SEVERE:Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

.field public static final enum WARNING:Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;


# instance fields
.field public final icon:I


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;
    .registers 3

    .line 170
    sget-object v0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;->INFO:Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    sget-object v1, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;->WARNING:Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    sget-object v2, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;->SEVERE:Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    filled-new-array {v0, v1, v2}, [Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 171
    new-instance v0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    const/4 v1, 0x0

    const v2, 0x108009b

    const-string v3, "INFO"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;->INFO:Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    .line 172
    new-instance v0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    const-string v1, "WARNING"

    const/4 v2, 0x1

    const v3, 0x1080027

    invoke-direct {v0, v1, v2, v3}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;->WARNING:Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    .line 173
    new-instance v0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    const-string v1, "SEVERE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;->SEVERE:Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    .line 170
    invoke-static {}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;->$values()[Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;->$VALUES:[Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
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
            "(I)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 178
    iput p3, p0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;->icon:I

    return-void
.end method

.method public static fromInt(I)Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;
    .registers 3

    .line 182
    invoke-static {}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;->values()[Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    move-result-object v0

    invoke-static {}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;->values()[Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 170
    const-class v0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;
    .registers 1

    .line 170
    sget-object v0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;->$VALUES:[Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    invoke-virtual {v0}, [Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    return-object v0
.end method
