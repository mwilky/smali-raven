.class public abstract Lcom/android/systemui/decor/DecorProvider;
.super Ljava/lang/Object;
.source "DecorProvider.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAlignedBounds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getViewId()I
.end method

.method public abstract inflateView(Landroid/content/Context;Lcom/android/systemui/RegionInterceptingFrameLayout;I)Landroid/view/View;
.end method

.method public abstract onReloadResAndMeasure(Landroid/view/View;IILjava/lang/String;)V
.end method
