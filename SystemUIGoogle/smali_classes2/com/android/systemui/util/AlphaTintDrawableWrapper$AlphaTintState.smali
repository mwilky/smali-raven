.class Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AlphaTintDrawableWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/AlphaTintDrawableWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlphaTintState"
.end annotation


# instance fields
.field private mAlpha:I

.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mThemeAttrs:[I

.field private mWrappedState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;[IILandroid/content/res/ColorStateList;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mWrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object p2, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mThemeAttrs:[I

    iput p3, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mAlpha:I

    iput-object p4, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mColorStateList:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getChangingConfigurations()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mWrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mWrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/DrawableWrapper;

    new-instance p2, Lcom/android/systemui/util/AlphaTintDrawableWrapper;

    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mThemeAttrs:[I

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/util/AlphaTintDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;[I)V

    iget-object p1, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, p1}, Lcom/android/systemui/util/AlphaTintDrawableWrapper;->setTintList(Landroid/content/res/ColorStateList;)V

    iget p0, p0, Lcom/android/systemui/util/AlphaTintDrawableWrapper$AlphaTintState;->mAlpha:I

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/InsetDrawable;->setAlpha(I)V

    return-object p2
.end method
