.class public Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;
.super Ljava/lang/Object;
.source "PipMenuIconsAlgorithm.java"


# instance fields
.field protected mDismissButton:Landroid/view/View;

.field protected mDragHandle:Landroid/view/View;

.field protected mEnterSplitButton:Landroid/view/View;

.field protected mSettingsButton:Landroid/view/View;

.field protected mTopEndContainer:Landroid/view/ViewGroup;

.field protected mViewRoot:Landroid/view/ViewGroup;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindViews(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mViewRoot:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mTopEndContainer:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mDragHandle:Landroid/view/View;

    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mEnterSplitButton:Landroid/view/View;

    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mSettingsButton:Landroid/view/View;

    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PipMenuIconsAlgorithm;->mDismissButton:Landroid/view/View;

    return-void
.end method

.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
