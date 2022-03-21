.class public Lcom/android/settings/accessibility/AccessibilityLayerDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "AccessibilityLayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/AccessibilityLayerDrawable$AccessibilityLayerDrawableState;
    }
.end annotation


# instance fields
.field private mState:Lcom/android/settings/accessibility/AccessibilityLayerDrawable$AccessibilityLayerDrawableState;


# direct methods
.method private constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static createLayerDrawable(Landroid/content/Context;II)Lcom/android/settings/accessibility/AccessibilityLayerDrawable;
    .locals 4

    const v0, 0x7f0200f0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilityLayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput-object v3, v2, v0

    invoke-direct {v1, v2}, Lcom/android/settings/accessibility/AccessibilityLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityLayerDrawable;->updateLayerDrawable(Landroid/content/Context;II)V

    return-object v1
.end method

.method private setConstantState(Landroid/content/Context;II)V
    .locals 1

    new-instance v0, Lcom/android/settings/accessibility/AccessibilityLayerDrawable$AccessibilityLayerDrawableState;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/accessibility/AccessibilityLayerDrawable$AccessibilityLayerDrawableState;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityLayerDrawable;->mState:Lcom/android/settings/accessibility/AccessibilityLayerDrawable$AccessibilityLayerDrawableState;

    return-void
.end method


# virtual methods
.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityLayerDrawable;->mState:Lcom/android/settings/accessibility/AccessibilityLayerDrawable$AccessibilityLayerDrawableState;

    return-object p0
.end method

.method public updateLayerDrawable(Landroid/content/Context;II)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/accessibility/AccessibilityLayerDrawable;->setConstantState(Landroid/content/Context;II)V

    return-void
.end method
