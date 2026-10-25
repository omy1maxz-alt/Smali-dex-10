.class public final synthetic Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;Ljava/lang/String;Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda7;->f$0:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    iput-object p2, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda7;->f$2:Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda7;->f$0:Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;

    iget-object v1, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda7;->f$2:Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->$r8$lambda$RZ8ARNlig7NIhfENyMftvdDiJss(Lcom/gold/extension/shared/patches/components/Filter$FilterContentType;Ljava/lang/String;Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
