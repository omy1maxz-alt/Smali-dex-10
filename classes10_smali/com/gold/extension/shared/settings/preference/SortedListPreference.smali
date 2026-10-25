.class public Lcom/gold/extension/shared/settings/preference/SortedListPreference;
.super Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;
.source "SortedListPreference.java"


# direct methods
.method public static synthetic $r8$lambda$pjSFM2rfrqMnNg10NuX9tSBBjPo(Landroid/util/Pair;Landroid/util/Pair;)I
    .registers 2

    .line 73
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 115
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/SortedListPreference;->getFirstEntriesToPreserve()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/preference/SortedListPreference;->sortEntryAndValues(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/SortedListPreference;->getFirstEntriesToPreserve()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/preference/SortedListPreference;->sortEntryAndValues(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/SortedListPreference;->getFirstEntriesToPreserve()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/preference/SortedListPreference;->sortEntryAndValues(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 99
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/preference/SortedListPreference;->getFirstEntriesToPreserve()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/preference/SortedListPreference;->sortEntryAndValues(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gold/extension/shared/settings/Setting;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/preference/SortedListPreference;-><init>(Landroid/content/Context;)V

    .line 123
    iget-object p1, p2, Lcom/gold/extension/shared/settings/Setting;->key:Ljava/lang/String;

    .line 124
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_title"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_entries"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gold/extension/shared/ResourceUtils;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_entry_values"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gold/extension/shared/ResourceUtils;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getFirstEntriesToPreserve()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public sortEntryAndValues(I)V
    .registers 12

    .line 39
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v0, :cond_9f

    if-nez v1, :cond_e

    goto/16 :goto_9f

    .line 45
    :cond_e
    array-length v2, v0

    .line 46
    array-length v3, v1

    if-ne v2, v3, :cond_99

    if-gez p1, :cond_16

    goto/16 :goto_9f

    .line 55
    :cond_16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_22
    if-ge v6, v2, :cond_46

    .line 63
    new-instance v7, Landroid/util/Pair;

    aget-object v8, v0, v6

    aget-object v9, v1, v6

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-ge v6, p1, :cond_33

    .line 65
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 67
    :cond_33
    new-instance v8, Landroid/util/Pair;

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lcom/gold/extension/shared/Utils;->removePunctuationToLowercase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 72
    :cond_46
    new-instance p1, Lcom/gold/extension/shared/settings/preference/SortedListPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/preference/SortedListPreference$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 75
    new-array p1, v2, [Ljava/lang/CharSequence;

    .line 76
    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 79
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v5

    move v6, v2

    :goto_58
    if-ge v6, v1, :cond_71

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/util/Pair;

    .line 80
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/CharSequence;

    aput-object v8, p1, v2

    .line 81
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    aput-object v7, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 85
    :cond_71
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_75
    if-ge v5, v1, :cond_92

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    check-cast v3, Landroid/util/Pair;

    .line 86
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    .line 87
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    aput-object v6, p1, v2

    .line 88
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    .line 92
    :cond_92
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 93
    invoke-super {p0, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void

    .line 48
    :cond_99
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_9f
    :goto_9f
    return-void
.end method
