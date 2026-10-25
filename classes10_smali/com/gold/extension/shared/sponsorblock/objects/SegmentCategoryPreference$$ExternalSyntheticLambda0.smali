.class public final synthetic Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda0;->f$0:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference$$ExternalSyntheticLambda0;->f$0:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;

    invoke-static {p0, p1, p2}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;->$r8$lambda$9Xb8gsh_DmAwg2MyO0DfO4btssA(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategoryPreference;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
