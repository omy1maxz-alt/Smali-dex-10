.class public final synthetic Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Utils$MatchFilter;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final matches(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/ToolbarPreferenceFragment$$ExternalSyntheticLambda11;->f$0:Ljava/lang/Class;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
