.class public Lcom/gold/extension/shared/settings/preference/NoTitlePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "NoTitlePreferenceCategory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 42
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 46
    :cond_10
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTitleRes()I
    .registers 2

    .line 51
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p0}, Landroid/preference/Preference;->getTitleRes()I

    move-result p0

    return p0

    .line 55
    :cond_10
    invoke-super {p0}, Landroid/preference/Preference;->getTitleRes()I

    move-result p0

    return p0
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 36
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
