.class public final synthetic Lcom/gold/youtube/om7753/util/Utils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private main:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->openDownloadList(Landroid/content/Context;)V

    return-void
.end method
