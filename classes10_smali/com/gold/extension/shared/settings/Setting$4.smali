.class Lcom/gold/extension/shared/settings/Setting$4;
.super Ljava/lang/Object;
.source "Setting.java"

# interfaces
.implements Lcom/gold/extension/shared/settings/Setting$Availability;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/shared/settings/Setting;->parentsAny([Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$parents:[Lcom/gold/extension/shared/settings/BooleanSetting;


# direct methods
.method public constructor <init>([Lcom/gold/extension/shared/settings/BooleanSetting;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/gold/extension/shared/settings/Setting$4;->val$parents:[Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentSettings()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;>;"
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting$4;->val$parents:[Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .registers 5

    .line 117
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting$4;->val$parents:[Lcom/gold/extension/shared/settings/BooleanSetting;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_18

    aget-object v3, p0, v2

    .line 118
    invoke-virtual {v3}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_18
    return v1
.end method
