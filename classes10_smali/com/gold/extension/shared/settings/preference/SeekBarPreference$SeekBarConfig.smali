.class public final Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;
.super Lcom/android/tools/r8/RecordTag;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/preference/SeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeekBarConfig"
.end annotation


# instance fields
.field private final divisor:I

.field private final max:I

.field private final min:I

.field private final setting:Lcom/gold/extension/shared/settings/IntegerSetting;

.field private final step:I

.field private final unit:Ljava/lang/String;


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    if-eqz v0, :cond_34

    check-cast p1, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    iget v0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->min:I

    iget v1, p1, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->min:I

    if-ne v0, v1, :cond_34

    iget v0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->max:I

    iget v1, p1, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->max:I

    if-ne v0, v1, :cond_34

    iget v0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->step:I

    iget v1, p1, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->step:I

    if-ne v0, v1, :cond_34

    iget v0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->divisor:I

    iget v1, p1, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->divisor:I

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->setting:Lcom/gold/extension/shared/settings/IntegerSetting;

    iget-object v1, p1, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->setting:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->unit:Ljava/lang/String;

    iget-object p1, p1, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->unit:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    return p0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->setting:Lcom/gold/extension/shared/settings/IntegerSetting;

    iget v1, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->min:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->max:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->step:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->unit:Ljava/lang/String;

    iget p0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->divisor:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    const/4 v0, 0x5

    aput-object p0, v5, v0

    return-object v5
.end method

.method public static bridge synthetic -$$Nest$fgetdivisor(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->divisor:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmax(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->max:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmin(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->min:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetsetting(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)Lcom/gold/extension/shared/settings/IntegerSetting;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->setting:Lcom/gold/extension/shared/settings/IntegerSetting;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetstep(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->step:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetunit(Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->unit:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/gold/extension/shared/settings/IntegerSetting;IIILjava/lang/String;)V
    .registers 13

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 43
    invoke-direct/range {v0 .. v6}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;-><init>(Lcom/gold/extension/shared/settings/IntegerSetting;IIILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/gold/extension/shared/settings/IntegerSetting;IIILjava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "setting",
            "min",
            "max",
            "step",
            "unit",
            "divisor"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->setting:Lcom/gold/extension/shared/settings/IntegerSetting;

    iput p2, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->min:I

    iput p3, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->max:I

    iput p4, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->step:I

    iput-object p5, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->unit:Ljava/lang/String;

    iput p6, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->divisor:I

    return-void
.end method


# virtual methods
.method public divisor()I
    .registers 1

    .line 40
    iget p0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->divisor:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 7

    .line 40
    iget v0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->min:I

    iget v1, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->max:I

    iget v2, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->step:I

    iget v3, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->divisor:I

    iget-object v4, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->setting:Lcom/gold/extension/shared/settings/IntegerSetting;

    iget-object v5, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->unit:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig$$ExternalSyntheticRecord0;->m(IIIILjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public max()I
    .registers 1

    .line 40
    iget p0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->max:I

    return p0
.end method

.method public min()I
    .registers 1

    .line 40
    iget p0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->min:I

    return p0
.end method

.method public setting()Lcom/gold/extension/shared/settings/IntegerSetting;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->setting:Lcom/gold/extension/shared/settings/IntegerSetting;

    return-object p0
.end method

.method public step()I
    .registers 1

    .line 40
    iget p0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->step:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 40
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;

    const-string v1, "setting;min;max;step;unit;divisor"

    invoke-static {p0, v0, v1}, Lcom/gold/extension/shared/StringRef$StringKeyLookup$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unit()Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/SeekBarPreference$SeekBarConfig;->unit:Ljava/lang/String;

    return-object p0
.end method
