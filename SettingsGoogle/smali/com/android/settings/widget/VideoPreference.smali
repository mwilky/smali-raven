.class public Lcom/android/settings/widget/VideoPreference;
.super Landroidx/preference/Preference;
.source "VideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/VideoPreference$AnimationController;
    }
.end annotation


# instance fields
.field mAnimationAvailable:Z

.field mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

.field private mAnimationId:I

.field private mAspectRatio:F

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mPlayButton:Landroid/widget/ImageView;

.field private mPreviewId:I

.field private mPreviewImage:Landroid/widget/ImageView;

.field private mVectorAnimationId:I

.field private mVideo:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRatio:F

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mHeight:I

    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/VideoPreference;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRatio:F

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mHeight:I

    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/VideoPreference;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initAnimationController()V
    .locals 3

    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->mVectorAnimationId:I

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/widget/VectorAnimationController;

    iget-object v2, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/widget/VectorAnimationController;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/settings/widget/MediaAnimationController;

    iget-object v2, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/widget/MediaAnimationController;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideo:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewImage:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/settings/widget/VideoPreference;->mPlayButton:Landroid/widget/ImageView;

    invoke-interface {v1, v0, v2, p0}, Lcom/android/settings/widget/VideoPreference$AnimationController;->attachView(Landroid/view/TextureView;Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/settings/R$styleable;->VideoPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationAvailable:Z

    iget p2, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    if-nez p2, :cond_0

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    :cond_0
    iput p2, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    iget p2, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewId:I

    const/4 v0, 0x1

    if-nez p2, :cond_1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    :cond_1
    iput p2, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewId:I

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/VideoPreference;->mVectorAnimationId:I

    iget v2, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewId:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    if-nez v2, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->initAnimationController()V

    iget-object p2, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/android/settings/widget/VideoPreference$AnimationController;->getDuration()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    const p2, 0x7f0602ab

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationAvailable:Z

    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPreference;->updateAspectRatio()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p0, "VideoPreference"

    const-string p2, "Animation resource not found. Will not show animation."

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private releaseAnimationController()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/settings/widget/VideoPreference$AnimationController;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

    :cond_0
    return-void
.end method


# virtual methods
.method public isAnimationAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationAvailable:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationAvailable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0d0625

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideo:Landroid/view/TextureView;

    const v0, 0x7f0d0624

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewImage:Landroid/widget/ImageView;

    const v0, 0x7f0d0623

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mPlayButton:Landroid/widget/ImageView;

    const v0, 0x7f0d0622

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/AspectRatioFrameLayout;

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRatio:F

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->mHeight:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/settings/widget/VideoPreference;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mVideo:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewImage:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/settings/widget/VideoPreference;->mPlayButton:Landroid/widget/ImageView;

    invoke-interface {p1, v0, v1, p0}, Lcom/android/settings/widget/VideoPreference$AnimationController;->attachView(Landroid/view/TextureView;Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onDetached()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->releaseAnimationController()V

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public onViewInvisible()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->releaseAnimationController()V

    return-void
.end method

.method public onViewVisible()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->initAnimationController()V

    return-void
.end method

.method public setHeight(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/settings/widget/VideoPreference;->mHeight:I

    return-void
.end method

.method public setVideo(II)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationId:I

    iput p2, p0, Lcom/android/settings/widget/VideoPreference;->mPreviewId:I

    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->releaseAnimationController()V

    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/VideoPreference;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method updateAspectRatio()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

    invoke-interface {v0}, Lcom/android/settings/widget/VideoPreference$AnimationController;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/widget/VideoPreference;->mAnimationController:Lcom/android/settings/widget/VideoPreference$AnimationController;

    invoke-interface {v1}, Lcom/android/settings/widget/VideoPreference$AnimationController;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->mAspectRatio:F

    return-void
.end method
