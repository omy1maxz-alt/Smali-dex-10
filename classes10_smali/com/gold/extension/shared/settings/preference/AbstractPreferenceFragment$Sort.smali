.class final enum Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;
.super Ljava/lang/Enum;
.source "AbstractPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

.field public static final enum BY_KEY:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

.field public static final enum BY_TITLE:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

.field public static final enum UNSORTED:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;


# instance fields
.field final keySuffix:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;
    .registers 3

    .line 835
    sget-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;->BY_TITLE:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    sget-object v1, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;->BY_KEY:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    sget-object v2, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;->UNSORTED:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    filled-new-array {v0, v1, v2}, [Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 839
    new-instance v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    const/4 v1, 0x0

    const-string v2, "_sort_by_title"

    const-string v3, "BY_TITLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;->BY_TITLE:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    .line 844
    new-instance v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    const/4 v1, 0x1

    const-string v2, "_sort_by_key"

    const-string v3, "BY_KEY"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;->BY_KEY:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    .line 849
    new-instance v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    const/4 v1, 0x2

    const-string v2, "_sort_by_unsorted"

    const-string v3, "UNSORTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;->UNSORTED:Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    .line 835
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;->$values()[Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;->$VALUES:[Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

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

    .line 853
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 854
    iput-object p3, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;->keySuffix:Ljava/lang/String;

    return-void
.end method

.method public static fromKey(Ljava/lang/String;Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;)Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;
    .registers 7
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_18

    .line 859
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;->values()[Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 860
    iget-object v4, v3, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;->keySuffix:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 835
    const-class v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;
    .registers 1

    .line 835
    sget-object v0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;->$VALUES:[Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$Sort;

    return-object v0
.end method
