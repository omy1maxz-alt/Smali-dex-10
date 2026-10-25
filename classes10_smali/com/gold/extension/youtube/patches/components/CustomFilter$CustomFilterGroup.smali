.class Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;
.super Lcom/gold/extension/shared/patches/components/StringFilterGroup;
.source "CustomFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/components/CustomFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomFilterGroup"
.end annotation


# static fields
.field static final SYNTAX_ACCESSIBILITY_SYMBOL:Ljava/lang/String; = "#"

.field static final SYNTAX_BUFFER_SYMBOL:Ljava/lang/String; = "$"

.field static final SYNTAX_PATH_AND_SYMBOL:Ljava/lang/String; = "&"

.field static final SYNTAX_STARTS_WITH:Ljava/lang/String; = "^"


# instance fields
.field accessibilitySearch:Lcom/gold/extension/shared/StringTrieSearch;

.field bufferSearch:Lcom/gold/extension/shared/ByteTrieSearch;

.field final extraPathComponents:[Ljava/lang/String;

.field final startsWith:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 214
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->CUSTOM_FILTER:Lcom/gold/extension/shared/settings/BooleanSetting;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V

    .line 215
    iput-boolean p1, p0, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->startsWith:Z

    .line 216
    iput-object p3, p0, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->extraPathComponents:[Ljava/lang/String;

    return-void
.end method

.method public static parseCustomFilterGroups()Ljava/util/Collection;
    .registers 17
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;",
            ">;"
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->CUSTOM_FILTER_STRINGS:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 120
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 126
    :cond_f
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "^((\\Q^\\E?)([^"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#$"

    .line 133
    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]*)(?:\\Q#\\E([^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$"

    .line 135
    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]*))?(\\Q$\\E?))(.*)$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 143
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_48
    if-ge v5, v3, :cond_fe

    aget-object v6, v0, v5

    .line 144
    invoke-static {v6}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_54

    goto/16 :goto_fa

    .line 146
    :cond_54
    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 147
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_63

    .line 148
    invoke-static {v6}, Lcom/gold/extension/youtube/patches/components/CustomFilter;->-$$Nest$smshowInvalidSyntaxToast(Ljava/lang/String;)V

    goto/16 :goto_fa

    :cond_63
    const/4 v8, 0x1

    .line 152
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    .line 153
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v8

    const/4 v11, 0x3

    .line 154
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    .line 155
    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x5

    .line 156
    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8d

    const/4 v14, 0x6

    .line 157
    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_8e

    :cond_8d
    const/4 v7, 0x0

    .line 159
    :goto_8e
    invoke-static {v11}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_f7

    const-string v14, "^"

    .line 160
    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_f7

    if-eqz v12, :cond_a4

    .line 161
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_f7

    :cond_a4
    if-nez v13, :cond_af

    if-eqz v7, :cond_f7

    .line 162
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_af

    goto :goto_f7

    .line 168
    :cond_af
    const-string v13, "&"

    invoke-static {v13}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 169
    aget-object v13, v11, v4

    .line 170
    array-length v14, v11

    if-le v14, v8, :cond_c7

    .line 171
    array-length v14, v11

    invoke-static {v11, v8, v14}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    goto :goto_c9

    .line 172
    :cond_c7
    new-array v8, v4, [Ljava/lang/String;

    .line 176
    :goto_c9
    array-length v14, v11

    move v15, v4

    :goto_cb
    if-ge v15, v14, :cond_dc

    aget-object v16, v11, v15

    .line 177
    invoke-static/range {v16 .. v16}, Lcom/gold/extension/youtube/patches/ReturnYouTubeDislikePatch$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_d9

    .line 183
    invoke-static {v6}, Lcom/gold/extension/youtube/patches/components/CustomFilter;->-$$Nest$smshowInvalidSyntaxToast(Ljava/lang/String;)V

    goto :goto_fa

    :cond_d9
    add-int/lit8 v15, v15, 0x1

    goto :goto_cb

    .line 190
    :cond_dc
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;

    if-nez v6, :cond_ec

    .line 192
    new-instance v6, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;

    invoke-direct {v6, v10, v13, v8}, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;-><init>(ZLjava/lang/String;[Ljava/lang/String;)V

    .line 193
    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ec
    if-eqz v12, :cond_f1

    .line 197
    invoke-virtual {v6, v12}, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->addAccessibilityString(Ljava/lang/String;)V

    :cond_f1
    if-eqz v7, :cond_fa

    .line 201
    invoke-virtual {v6, v7}, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->addBufferString(Ljava/lang/String;)V

    goto :goto_fa

    .line 163
    :cond_f7
    :goto_f7
    invoke-static {v6}, Lcom/gold/extension/youtube/patches/components/CustomFilter;->-$$Nest$smshowInvalidSyntaxToast(Ljava/lang/String;)V

    :cond_fa
    :goto_fa
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_48

    .line 205
    :cond_fe
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAccessibilityString(Ljava/lang/String;)V
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->accessibilitySearch:Lcom/gold/extension/shared/StringTrieSearch;

    if-nez v0, :cond_e

    .line 221
    new-instance v0, Lcom/gold/extension/shared/StringTrieSearch;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/gold/extension/shared/StringTrieSearch;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->accessibilitySearch:Lcom/gold/extension/shared/StringTrieSearch;

    .line 223
    :cond_e
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->accessibilitySearch:Lcom/gold/extension/shared/StringTrieSearch;

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/StringTrieSearch;->addPattern(Ljava/lang/Object;)V

    return-void
.end method

.method public addBufferString(Ljava/lang/String;)V
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->bufferSearch:Lcom/gold/extension/shared/ByteTrieSearch;

    if-nez v0, :cond_e

    .line 228
    new-instance v0, Lcom/gold/extension/shared/ByteTrieSearch;

    const/4 v1, 0x0

    new-array v1, v1, [[B

    invoke-direct {v0, v1}, Lcom/gold/extension/shared/ByteTrieSearch;-><init>([[B)V

    iput-object v0, p0, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->bufferSearch:Lcom/gold/extension/shared/ByteTrieSearch;

    .line 230
    :cond_e
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->bufferSearch:Lcom/gold/extension/shared/ByteTrieSearch;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/ByteTrieSearch;->addPattern(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CustomFilterGroup{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->accessibilitySearch:Lcom/gold/extension/shared/StringTrieSearch;

    if-eqz v1, :cond_19

    .line 239
    const-string v1, ", accessibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v1, p0, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->accessibilitySearch:Lcom/gold/extension/shared/StringTrieSearch;

    invoke-virtual {v1}, Lcom/gold/extension/shared/StringTrieSearch;->getPatterns()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    :cond_19
    const-string v1, "path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-boolean v1, p0, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->startsWith:Z

    if-eqz v1, :cond_27

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_27
    iget-object v1, p0, Lcom/gold/extension/shared/patches/components/StringFilterGroup;->filters:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v1, p0, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->extraPathComponents:[Ljava/lang/String;

    array-length v3, v1

    :goto_34
    if-ge v2, v3, :cond_43

    aget-object v4, v1, v2

    .line 247
    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 251
    :cond_43
    iget-object v1, p0, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->bufferSearch:Lcom/gold/extension/shared/ByteTrieSearch;

    if-eqz v1, :cond_70

    .line 253
    const-string v1, ", bufferStrings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/CustomFilter$CustomFilterGroup;->bufferSearch:Lcom/gold/extension/shared/ByteTrieSearch;

    invoke-virtual {p0}, Lcom/gold/extension/shared/ByteTrieSearch;->getPatterns()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_56
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 255
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, "❙"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 259
    :cond_70
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
