.class public final synthetic Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda1;->f$0:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/IconListPreference$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/settings/preference/IconListPreference;->$r8$lambda$ObwHcnUNlv3AfAB9i2eUKbLv9qo(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
