.class public Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;
.super Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;
.source "BaseSearchResultItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceSearchItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem$FieldInitializationResult;
    }
.end annotation


# instance fields
.field private color:I

.field private entriesHighlightingApplied:Z

.field private highlightedEntries:[Ljava/lang/CharSequence;

.field lastQueryPattern:Ljava/util/regex/Pattern;

.field final originalEntries:[Ljava/lang/CharSequence;

.field final originalSummary:Ljava/lang/CharSequence;

.field final originalTitle:Ljava/lang/CharSequence;

.field public final preference:Landroid/preference/Preference;

.field final searchableText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/preference/Preference;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/Preference;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 140
    invoke-static {p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->determineType(Landroid/preference/Preference;)Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;)V

    .line 141
    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    .line 142
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    const-string p3, ""

    if-eqz p2, :cond_16

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_17

    :cond_16
    move-object p2, p3

    :goto_17
    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->originalTitle:Ljava/lang/CharSequence;

    .line 143
    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->originalSummary:Ljava/lang/CharSequence;

    .line 144
    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_24

    move-object p3, v0

    .line 145
    :cond_24
    iput-object p3, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedSummary:Ljava/lang/CharSequence;

    const/4 p2, 0x0

    .line 146
    iput p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->color:I

    const/4 p2, 0x0

    .line 147
    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->lastQueryPattern:Ljava/util/regex/Pattern;

    .line 150
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->initTypeSpecificFields(Landroid/preference/Preference;)Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem$FieldInitializationResult;

    move-result-object p2

    .line 151
    iget-object p2, p2, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem$FieldInitializationResult;->entries:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->originalEntries:[Ljava/lang/CharSequence;

    .line 154
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->buildSearchableText(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->searchableText:Ljava/lang/String;

    return-void
.end method

.method private appendText(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V
    .registers 3

    .line 225
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_18

    .line 226
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_11

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_11
    invoke-static {p2}, Lcom/gold/extension/shared/Utils;->normalizeTextToLowercase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    return-void
.end method

.method private buildSearchableText(Landroid/preference/Preference;)Ljava/lang/String;
    .registers 6

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 195
    const-string v2, "youtube_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x7

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 192
    :cond_19
    const-string v1, ""

    .line 199
    :cond_1b
    :goto_1b
    invoke-direct {p0, v0, v1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->appendText(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->originalTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->appendText(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->originalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->appendText(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 204
    instance-of v1, p1, Landroid/preference/ListPreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 205
    iget-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->originalEntries:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_49

    .line 206
    array-length v1, p1

    :goto_32
    if-ge v2, v1, :cond_49

    aget-object v3, p1, v2

    .line 207
    invoke-direct {p0, v0, v3}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->appendText(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 210
    :cond_3c
    instance-of p1, p1, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;

    if-eqz p1, :cond_49

    .line 211
    iget p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->color:I

    invoke-static {p1, v2}, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;->getColorString(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->appendText(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 215
    :cond_49
    iget-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->navigationPath:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->appendText(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static determineType(Landroid/preference/Preference;)Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;
    .registers 2

    .line 162
    instance-of v0, p0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_7

    sget-object p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->SWITCH:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    return-object p0

    .line 163
    :cond_7
    instance-of v0, p0, Landroid/preference/ListPreference;

    if-eqz v0, :cond_e

    sget-object p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->LIST:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    return-object p0

    .line 164
    :cond_e
    instance-of v0, p0, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;

    if-eqz v0, :cond_15

    sget-object p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->COLOR_PICKER:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    return-object p0

    .line 165
    :cond_15
    instance-of v0, p0, Lcom/gold/extension/shared/settings/preference/URLLinkPreference;

    if-eqz v0, :cond_1c

    sget-object p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->URL_LINK:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    return-object p0

    .line 166
    :cond_1c
    const-string v0, "no_results_placeholder"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    sget-object p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->NO_RESULTS:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    return-object p0

    .line 167
    :cond_2b
    sget-object p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;->REGULAR:Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$ViewType;

    return-object p0
.end method

.method private initTypeSpecificFields(Landroid/preference/Preference;)Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem$FieldInitializationResult;
    .registers 6

    .line 171
    new-instance v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem$FieldInitializationResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem$FieldInitializationResult;-><init>(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem-IA;)V

    .line 173
    instance-of v1, p1, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    check-cast p1, Lcom/gold/extension/shared/settings/preference/ColorPickerPreference;

    .line 174
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    move p1, v2

    goto :goto_1d

    :cond_19
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    :goto_1d
    iput p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->color:I

    goto :goto_37

    .line 176
    :cond_20
    instance-of v1, p1, Landroid/preference/ListPreference;

    if-eqz v1, :cond_37

    check-cast p1, Landroid/preference/ListPreference;

    .line 177
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem$FieldInitializationResult;->entries:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_37

    .line 179
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->highlightedEntries:[Ljava/lang/CharSequence;

    .line 180
    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    :cond_37
    :goto_37
    iput-boolean v2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->entriesHighlightingApplied:Z

    return-object v0
.end method


# virtual methods
.method public applyHighlighting(Ljava/util/regex/Pattern;)V
    .registers 7

    .line 287
    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->lastQueryPattern:Ljava/util/regex/Pattern;

    .line 289
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->originalTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightSearchQuery(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedTitle:Ljava/lang/CharSequence;

    .line 292
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->getCurrentEffectiveSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 293
    invoke-static {v0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightSearchQuery(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedSummary:Ljava/lang/CharSequence;

    .line 296
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    instance-of v0, v0, Landroid/preference/ListPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->originalEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_3f

    .line 297
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->highlightedEntries:[Ljava/lang/CharSequence;

    .line 298
    array-length v0, v0

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v0, :cond_3d

    .line 299
    iget-object v3, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->originalEntries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v2

    .line 302
    iget-object v4, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->highlightedEntries:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_37

    .line 300
    invoke-static {v3, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightSearchQuery(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v4, v2

    goto :goto_3a

    :cond_37
    const/4 v3, 0x0

    .line 302
    aput-object v3, v4, v2

    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 305
    :cond_3d
    iput-boolean v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->entriesHighlightingApplied:Z

    .line 308
    :cond_3f
    iput-boolean v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightingApplied:Z

    return-void
.end method

.method public clearHighlighting()V
    .registers 6

    .line 316
    iget-boolean v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightingApplied:Z

    if-nez v0, :cond_5

    return-void

    .line 319
    :cond_5
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->originalTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedTitle:Ljava/lang/CharSequence;

    .line 322
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->getCurrentEffectiveSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedSummary:Ljava/lang/CharSequence;

    .line 325
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->originalEntries:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    iget-object v2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->highlightedEntries:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_21

    .line 326
    array-length v3, v0

    array-length v4, v2

    .line 327
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 326
    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    :cond_21
    iput-boolean v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->entriesHighlightingApplied:Z

    .line 331
    iput-boolean v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightingApplied:Z

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->lastQueryPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public getColor()I
    .registers 1

    .line 352
    iget p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->color:I

    return p0
.end method

.method public getCurrentEffectiveSummary()Ljava/lang/CharSequence;
    .registers 7

    .line 235
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    instance-of v1, v0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;

    .line 236
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/preference/CustomDialogListPreference;->getStaticSummary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    .line 241
    :cond_f
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->preference:Landroid/preference/Preference;

    instance-of v1, v0, Landroid/preference/ListPreference;

    const-string v2, ""

    if-eqz v1, :cond_56

    check-cast v0, Landroid/preference/ListPreference;

    .line 242
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 244
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v1, :cond_50

    if-eqz v3, :cond_50

    if-eqz v0, :cond_50

    .line 246
    array-length v3, v3

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v3, :cond_50

    .line 247
    aget-object v5, v0, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 248
    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->originalEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_47

    array-length v1, v0

    if-ge v4, v1, :cond_47

    aget-object v0, v0, v4

    if-eqz v0, :cond_47

    return-object v0

    .line 250
    :cond_47
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->originalSummary:Ljava/lang/CharSequence;

    if-eqz p0, :cond_4c

    return-object p0

    :cond_4c
    return-object v2

    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 254
    :cond_50
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->originalSummary:Ljava/lang/CharSequence;

    if-eqz p0, :cond_55

    return-object p0

    :cond_55
    return-object v2

    .line 256
    :cond_56
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->originalSummary:Ljava/lang/CharSequence;

    if-eqz p0, :cond_5b

    return-object p0

    :cond_5b
    return-object v2
.end method

.method public getHighlightedEntries()[Ljava/lang/CharSequence;
    .registers 1

    .line 272
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->highlightedEntries:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isEntriesHighlightingApplied()Z
    .registers 1

    .line 279
    iget-boolean p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->entriesHighlightingApplied:Z

    return p0
.end method

.method public matchesQuery(Ljava/lang/String;)Z
    .registers 2

    .line 265
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->searchableText:Ljava/lang/String;

    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->normalizeTextToLowercase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public refreshHighlighting()V
    .registers 3

    .line 340
    iget-boolean v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightingApplied:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->lastQueryPattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_14

    .line 341
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->getCurrentEffectiveSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->lastQueryPattern:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightSearchQuery(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem;->highlightedSummary:Ljava/lang/CharSequence;

    :cond_14
    return-void
.end method

.method public setColor(I)V
    .registers 2

    .line 347
    iput p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;->color:I

    return-void
.end method
