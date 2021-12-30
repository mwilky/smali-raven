.class public Lcom/google/android/settings/gestures/assist/AssistGestureIndicatorView;
.super Landroid/widget/LinearLayout;
.source "AssistGestureIndicatorView.java"


# instance fields
.field private mLayout:Landroid/view/ViewGroup;

.field private mLeftDrawable:Lcom/google/android/settings/gestures/assist/IndicatorDrawable;

.field private mLeftIndicator:Landroid/widget/ImageView;

.field private mRightDrawable:Lcom/google/android/settings/gestures/assist/IndicatorDrawable;

.field private mRightIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f060055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureIndicatorView;->mLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/google/android/settings/gestures/assist/IndicatorDrawable;

    invoke-direct {v0, p1, v2}, Lcom/google/android/settings/gestures/assist/IndicatorDrawable;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureIndicatorView;->mLeftDrawable:Lcom/google/android/settings/gestures/assist/IndicatorDrawable;

    new-instance v0, Lcom/google/android/settings/gestures/assist/IndicatorDrawable;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/settings/gestures/assist/IndicatorDrawable;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureIndicatorView;->mRightDrawable:Lcom/google/android/settings/gestures/assist/IndicatorDrawable;

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureIndicatorView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0d02ce

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureIndicatorView;->mLeftIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureIndicatorView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0d02cf

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureIndicatorView;->mRightIndicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureIndicatorView;->mLeftIndicator:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/settings/gestures/assist/AssistGestureIndicatorView;->mLeftDrawable:Lcom/google/android/settings/gestures/assist/IndicatorDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureIndicatorView;->mRightIndicator:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/settings/gestures/assist/AssistGestureIndicatorView;->mRightDrawable:Lcom/google/android/settings/gestures/assist/IndicatorDrawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getSystemUiVisibility()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :array_0
    .array-data 4
        0x101056c
        0x10104e0
    .end array-data
.end method


# virtual methods
.method public getLayoutParams(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const v0, 0x1000018

    or-int v4, p1, v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string p1, "AssistGestureIndicatorView"

    invoke-virtual {v6, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v6
.end method

.method public onGestureDetected()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureIndicatorView;->mLeftDrawable:Lcom/google/android/settings/gestures/assist/IndicatorDrawable;

    invoke-virtual {v0}, Lcom/google/android/settings/gestures/assist/IndicatorDrawable;->onGestureDetected()V

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureIndicatorView;->mRightDrawable:Lcom/google/android/settings/gestures/assist/IndicatorDrawable;

    invoke-virtual {p0}, Lcom/google/android/settings/gestures/assist/IndicatorDrawable;->onGestureDetected()V

    return-void
.end method

.method public onGestureProgress(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureIndicatorView;->mLeftDrawable:Lcom/google/android/settings/gestures/assist/IndicatorDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/settings/gestures/assist/IndicatorDrawable;->onGestureProgress(F)V

    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureIndicatorView;->mRightDrawable:Lcom/google/android/settings/gestures/assist/IndicatorDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/gestures/assist/IndicatorDrawable;->onGestureProgress(F)V

    return-void
.end method
