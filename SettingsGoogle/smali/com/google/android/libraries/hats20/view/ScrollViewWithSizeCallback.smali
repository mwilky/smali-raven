.class public Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback;
.super Landroid/widget/ScrollView;
.source "ScrollViewWithSizeCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback$OnHeightChangedListener;
    }
.end annotation


# instance fields
.field private onHeightChangedListener:Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback$OnHeightChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback;->onHeightChangedListener:Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback$OnHeightChangedListener;

    if-eqz p0, :cond_0

    if-eq p4, p2, :cond_0

    invoke-interface {p0, p2}, Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback$OnHeightChangedListener;->onHeightChanged(I)V

    :cond_0
    return-void
.end method

.method public setOnHeightChangedListener(Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback$OnHeightChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback;->onHeightChangedListener:Lcom/google/android/libraries/hats20/view/ScrollViewWithSizeCallback$OnHeightChangedListener;

    return-void
.end method
