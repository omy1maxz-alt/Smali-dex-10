.class public final Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;
.super Ljava/lang/Object;
.source "VoiceCatalog.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Voice"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXPRESSIVE_SUFFIX:Ljava/lang/String; = "Expressive"

.field private static final MULTILINGUAL_NEURAL_SUFFIX:Ljava/lang/String; = "MultilingualNeural"

.field private static final NEURAL_SUFFIX:Ljava/lang/String; = "Neural"


# instance fields
.field public final countryTag:Ljava/lang/String;

.field public final dialogDisplayName:Ljava/lang/String;

.field public final flag:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final isMale:Z

.field public final isMultilingual:Z

.field public final languageTag:Ljava/lang/String;

.field public final shortName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 8

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2d

    .line 47
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 48
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 49
    iput-object p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->id:Ljava/lang/String;

    .line 50
    iput-boolean p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->isMale:Z

    const/4 p1, 0x0

    .line 51
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->languageTag:Ljava/lang/String;

    .line 53
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3a

    add-int/lit8 v1, v3, 0x1

    .line 55
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3a

    .line 57
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v2, :cond_3a

    move v3, v0

    move-object p1, v1

    .line 64
    :cond_3a
    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->countryTag:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->countryToFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->flag:Ljava/lang/String;

    .line 67
    const-string v0, "MultilingualNeural"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->isMultilingual:Z

    add-int/lit8 v3, v3, 0x1

    .line 68
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 69
    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Expressive"

    .line 70
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Neural"

    .line 71
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->shortName:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->dialogDisplayName:Ljava/lang/String;

    return-void
.end method

.method private static countryToFlag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_34

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_34

    .line 77
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, -0x1f1a5

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    .line 79
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    sub-int/2addr p0, v1

    .line 80
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 76
    :cond_34
    :goto_34
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;)I
    .registers 8
    .param p1  # Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    iget-boolean v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->isMale:Z

    iget-boolean v1, p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->isMale:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_c

    if-eqz v0, :cond_b

    return v3

    :cond_b
    return v2

    .line 87
    :cond_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v4, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->languageTag:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 92
    iget-object v5, p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->languageTag:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eq v4, v1, :cond_2a

    if-eqz v4, :cond_29

    return v3

    :cond_29
    return v2

    .line 95
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    .line 96
    iget-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->countryTag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 97
    iget-object v4, p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->countryTag:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eq v1, v0, :cond_42

    if-eqz v1, :cond_41

    return v3

    :cond_41
    return v2

    .line 101
    :cond_42
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->countryTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->countryTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4d

    return v0

    .line 103
    :cond_4d
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->shortName:Ljava/lang/String;

    iget-object p1, p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->shortName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 29
    check-cast p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->compareTo(Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Voice{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', languageTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->languageTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', countryTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->countryTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', flag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->flag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isMale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->isMale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shortName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', dialogDisplayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->dialogDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isMultilingual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->isMultilingual:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
