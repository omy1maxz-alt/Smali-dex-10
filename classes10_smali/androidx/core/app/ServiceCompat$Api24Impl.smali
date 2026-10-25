.class Landroidx/core/app/ServiceCompat$Api24Impl;
.super Ljava/lang/Object;
.source "ServiceCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static stopForeground(Landroid/app/Service;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    return-void
.end method
