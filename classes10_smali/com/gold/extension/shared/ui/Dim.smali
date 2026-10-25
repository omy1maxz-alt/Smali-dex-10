.class public final Lcom/gold/extension/shared/ui/Dim;
.super Ljava/lang/Object;
.source "Dim.java"


# static fields
.field public static final dp1:I

.field public static final dp10:I

.field public static final dp12:I

.field public static final dp16:I

.field public static final dp2:I

.field public static final dp20:I

.field public static final dp24:I

.field public static final dp28:I

.field public static final dp32:I

.field public static final dp36:I

.field public static final dp4:I

.field public static final dp40:I

.field public static final dp48:I

.field public static final dp6:I

.field public static final dp7:I

.field public static final dp8:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x3f800000  # 1.0f

    .line 15
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/Dim;->dp1:I

    const/high16 v0, 0x40000000  # 2.0f

    .line 16
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/Dim;->dp2:I

    const/high16 v0, 0x40800000  # 4.0f

    .line 17
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/Dim;->dp4:I

    const/high16 v0, 0x40c00000  # 6.0f

    .line 18
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/Dim;->dp6:I

    const/high16 v0, 0x40e00000  # 7.0f

    .line 19
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/Dim;->dp7:I

    const/high16 v0, 0x41000000  # 8.0f

    .line 20
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    const/high16 v0, 0x41200000  # 10.0f

    .line 21
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/Dim;->dp10:I

    const/high16 v0, 0x41400000  # 12.0f

    .line 22
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/Dim;->dp12:I

    const/high16 v0, 0x41800000  # 16.0f

    .line 23
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    const/high16 v0, 0x41a00000  # 20.0f

    .line 24
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/Dim;->dp20:I

    const/high16 v0, 0x41c00000  # 24.0f

    .line 25
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/Dim;->dp24:I

    const/high16 v0, 0x41e00000  # 28.0f

    .line 26
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/Dim;->dp28:I

    const/high16 v0, 0x42000000  # 32.0f

    .line 27
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/Dim;->dp32:I

    const/high16 v0, 0x42100000  # 36.0f

    .line 28
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/Dim;->dp36:I

    const/high16 v0, 0x42200000  # 40.0f

    .line 29
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/Dim;->dp40:I

    const/high16 v0, 0x42400000  # 48.0f

    .line 30
    invoke-static {v0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v0

    sput v0, Lcom/gold/extension/shared/ui/Dim;->dp48:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp(F)I
    .registers 3

    const/4 v0, 0x1

    .line 53
    invoke-static {}, Lcom/gold/extension/shared/ui/Dim;->getMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 52
    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getMetrics()Landroid/util/DisplayMetrics;
    .registers 1

    .line 33
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenHeight()I
    .registers 1

    .line 41
    invoke-static {}, Lcom/gold/extension/shared/ui/Dim;->getMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenWidth()I
    .registers 1

    .line 37
    invoke-static {}, Lcom/gold/extension/shared/ui/Dim;->getMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static pctHeight(I)I
    .registers 2

    .line 63
    invoke-static {}, Lcom/gold/extension/shared/ui/Dim;->getScreenHeight()I

    move-result v0

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static pctPortraitWidth(I)I
    .registers 3

    .line 83
    invoke-static {}, Lcom/gold/extension/shared/ui/Dim;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/gold/extension/shared/ui/Dim;->getScreenHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    int-to-float p0, p0

    const/high16 v1, 0x42c80000  # 100.0f

    div-float/2addr p0, v1

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static pctWidth(I)I
    .registers 2

    .line 73
    invoke-static {}, Lcom/gold/extension/shared/ui/Dim;->getScreenWidth()I

    move-result v0

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public static roundedCorners(F)[F
    .registers 3

    .line 95
    invoke-static {p0}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result p0

    int-to-float p0, p0

    const/16 v0, 0x8

    .line 96
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p0, v0, v1

    const/4 v1, 0x2

    aput p0, v0, v1

    const/4 v1, 0x3

    aput p0, v0, v1

    const/4 v1, 0x4

    aput p0, v0, v1

    const/4 v1, 0x5

    aput p0, v0, v1

    const/4 v1, 0x6

    aput p0, v0, v1

    const/4 v1, 0x7

    aput p0, v0, v1

    return-object v0
.end method
