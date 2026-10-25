.class Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem$FieldInitializationResult;
.super Ljava/lang/Object;
.source "BaseSearchResultItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldInitializationResult"
.end annotation


# instance fields
.field entries:[Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem$FieldInitializationResult;->entries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/search/BaseSearchResultItem-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchResultItem$PreferenceSearchItem$FieldInitializationResult;-><init>()V

    return-void
.end method
