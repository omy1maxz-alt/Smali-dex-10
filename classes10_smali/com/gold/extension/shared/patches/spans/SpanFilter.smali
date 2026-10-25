.class public abstract Lcom/gold/extension/shared/patches/spans/SpanFilter;
.super Ljava/lang/Object;
.source "SpanFilter.java"


# static fields
.field private static final imageSpanDummy:Landroid/text/style/ImageSpan;

.field private static final relativeSizeSpanDummy:Landroid/text/style/RelativeSizeSpan;

.field private static final transparentDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field public final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    sput-object v0, Lcom/gold/extension/shared/patches/spans/SpanFilter;->relativeSizeSpanDummy:Landroid/text/style/RelativeSizeSpan;

    .line 28
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/gold/extension/shared/patches/spans/SpanFilter;->transparentDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    sput-object v1, Lcom/gold/extension/shared/patches/spans/SpanFilter;->imageSpanDummy:Landroid/text/style/ImageSpan;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gold/extension/shared/patches/spans/SpanFilter;->callbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final varargs addCallbacks([Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;)V
    .registers 2

    .line 42
    iget-object p0, p0, Lcom/gold/extension/shared/patches/spans/SpanFilter;->callbacks:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final hideImageSpan(Landroid/text/SpannableString;III)V
    .registers 5

    .line 50
    sget-object p0, Lcom/gold/extension/shared/patches/spans/SpanFilter;->imageSpanDummy:Landroid/text/style/ImageSpan;

    invoke-virtual {p1, p0, p2, p3, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public final hideSpan(Landroid/text/SpannableString;III)V
    .registers 5

    .line 46
    sget-object p0, Lcom/gold/extension/shared/patches/spans/SpanFilter;->relativeSizeSpanDummy:Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p1, p0, p2, p3, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public skip(Ljava/lang/String;Landroid/text/SpannableString;Ljava/lang/Object;IIIZLcom/gold/extension/shared/patches/spans/SpanType;Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;)Z
    .registers 10

    .line 0
    const/4 p0, 0x1

    return p0
.end method
