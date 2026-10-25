.class public final synthetic Lcom/gold/extension/shared/settings/EnumSetting$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/settings/Setting$Availability;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/EnumSetting;

.field public final synthetic f$1:[Ljava/lang/Enum;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/EnumSetting;[Ljava/lang/Enum;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/EnumSetting$$ExternalSyntheticLambda1;->f$0:Lcom/gold/extension/shared/settings/EnumSetting;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/EnumSetting$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/EnumSetting$$ExternalSyntheticLambda1;->f$0:Lcom/gold/extension/shared/settings/EnumSetting;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/EnumSetting$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/Enum;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/settings/EnumSetting;->$r8$lambda$p0cv6S3jdKpz2UGpilM9Uygw27o(Lcom/gold/extension/shared/settings/EnumSetting;[Ljava/lang/Enum;)Z

    move-result p0

    return p0
.end method
