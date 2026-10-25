.class public final synthetic Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;

.field public final synthetic f$1:Landroid/webkit/WebView;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;Landroid/webkit/WebView;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda10;->f$0:Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda10;->f$1:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda10;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda10;->f$0:Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;

    iget-object v1, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda10;->f$1:Landroid/webkit/WebView;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog$$ExternalSyntheticLambda10;->f$2:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;->$r8$lambda$UabVJGECzf1BIPpdWpRJdTXgZp8(Lcom/gold/extension/shared/settings/preference/about/LicensesDialog;Landroid/webkit/WebView;Ljava/util/List;)V

    return-void
.end method
