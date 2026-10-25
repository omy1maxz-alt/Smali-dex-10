.class public final synthetic Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/Setting;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/Setting;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda10;->f$0:Lcom/gold/extension/shared/settings/Setting;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment$$ExternalSyntheticLambda10;->f$0:Lcom/gold/extension/shared/settings/Setting;

    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/AbstractPreferenceFragment;->$r8$lambda$NjMQ9pVyZFGY3CUe3n-o0_7KlMA(Lcom/gold/extension/shared/settings/Setting;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
