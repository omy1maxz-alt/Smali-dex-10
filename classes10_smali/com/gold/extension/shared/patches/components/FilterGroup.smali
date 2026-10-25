.class public abstract Lcom/gold/extension/shared/patches/components/FilterGroup;
.super Ljava/lang/Object;
.source "FilterGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final filters:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public final setting:Lcom/gold/extension/shared/settings/BooleanSetting;


# direct methods
.method public varargs constructor <init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gold/extension/shared/settings/BooleanSetting;",
            "[TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/gold/extension/shared/patches/components/FilterGroup;->setting:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 68
    iput-object p2, p0, Lcom/gold/extension/shared/patches/components/FilterGroup;->filters:[Ljava/lang/Object;

    .line 69
    array-length p0, p2

    if-eqz p0, :cond_b

    return-void

    .line 70
    :cond_b
    const-string p0, "Must use one or more filter patterns (zero specified)"

    invoke-static {p0}, Lcom/google/common/base/Utf8$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public abstract check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;"
        }
    .end annotation
.end method

.method public includeInSearch()Z
    .registers 2

    .line 84
    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/FilterGroup;->setting:Lcom/gold/extension/shared/settings/BooleanSetting;

    iget-boolean p0, p0, Lcom/gold/extension/shared/settings/Setting;->rebootApp:Z

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/FilterGroup;->setting:Lcom/gold/extension/shared/settings/BooleanSetting;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/FilterGroup;->setting:Lcom/gold/extension/shared/settings/BooleanSetting;

    if-nez p0, :cond_1b

    const-string p0, "(null setting)"

    :cond_1b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
