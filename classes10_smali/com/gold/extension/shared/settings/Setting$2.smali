.class Lcom/gold/extension/shared/settings/Setting$2;
.super Ljava/lang/Object;
.source "Setting.java"

# interfaces
.implements Lcom/gold/extension/shared/settings/Setting$Availability;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/shared/settings/Setting;->parentNot(Lcom/gold/extension/shared/settings/BooleanSetting;)Lcom/gold/extension/shared/settings/Setting$Availability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$parent:Lcom/gold/extension/shared/settings/BooleanSetting;


# direct methods
.method public constructor <init>(Lcom/gold/extension/shared/settings/BooleanSetting;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/gold/extension/shared/settings/Setting$2;->val$parent:Lcom/gold/extension/shared/settings/BooleanSetting;

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

    .line 85
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting$2;->val$parent:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting$2;->val$parent:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
