.class public Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;
.super Landroid/widget/FrameLayout;
.source "AssistGestureTrainingProgressBar.java"


# instance fields
.field private mDoneView:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mState:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f130021

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;->mState:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f060059

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f0d0308

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0d045d

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f0d01da

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;->mDoneView:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;->refreshViews()V

    sget-object v1, Lcom/android/settings/R$styleable;->AssistGestureTrainingProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private refreshViews()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;->mState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;->mState:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;->mDoneView:Landroid/view/View;

    iget p0, p0, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;->mState:I

    if-ne p0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;->mState:I

    invoke-direct {p0}, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;->refreshViews()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/widget/AssistGestureTrainingProgressBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
