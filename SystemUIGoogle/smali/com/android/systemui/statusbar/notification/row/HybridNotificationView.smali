.class public Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "HybridNotificationView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/TransformableView;
.implements Lcom/android/systemui/statusbar/notification/NotificationFadeAware;


# instance fields
.field protected mTextView:Landroid/widget/TextView;

.field protected mTitleView:Landroid/widget/TextView;

.field protected final mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 2

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTitleView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTextView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTextView:Landroid/widget/TextView;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p0

    return-object p0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/R$id;->notification_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTitleView:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$id;->notification_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView$1;-><init>(Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTitleView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->setNotificationColors(Landroid/view/View;)V

    return-void
.end method

.method public setNotificationFaded(Z)V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setVisible(Z)V

    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setNotificationColors(Landroid/view/View;)V
    .registers 6
    .param p0, "v"    # Landroid/view/View;

    .line 18
    sget-boolean v0, Lcom/android/mwilky/Renovate;->mUnlockNotificationColors:Z

    if-eqz v0, :cond_81

    .line 20
    :try_start_4
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    .line 21
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 22
    .local v0, "vg":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 25
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->setNotificationColors(Landroid/view/View;)V

    .line 22
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 28
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_1c
    goto :goto_7c

    :cond_1d
    instance-of v0, p0, Landroid/widget/TextView;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_7d

    const-string v1, ""

    if-eqz v0, :cond_40

    .line 29
    :try_start_23
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_27} :catch_7d

    .line 30
    .local v0, "id":I
    nop

    .line 33
    .local v1, "name":Ljava/lang/String;
    :try_start_28
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 35
    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/android/mwilky/Renovate;->mNotificationTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3d} :catch_7d

    .line 40
    goto :goto_7b

    .line 39
    :catch_3e
    move-exception v2

    goto :goto_7b

    .line 42
    .end local v0    # "id":I
    .end local v1    # "name":Ljava/lang/String;
    :cond_40
    :try_start_40
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_7b

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_48} :catch_7d

    .line 44
    .restart local v0    # "id":I
    nop

    .line 47
    .restart local v1    # "name":Ljava/lang/String;
    :try_start_49
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 48
    const-string v2, "android:id/alerted_icon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "android:id/expand_button_icon"

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "android:id/snooze_button"

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 51
    :cond_6e
    move-object v2, p0

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/android/mwilky/Renovate;->mNotificationTextColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_78
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_49 .. :try_end_78} :catch_79
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_78} :catch_7d

    .line 56
    :cond_78
    goto :goto_7c

    .line 55
    :catch_79
    move-exception v2

    goto :goto_7c

    .line 42
    .end local v0    # "id":I
    .end local v1    # "name":Ljava/lang/String;
    :cond_7b
    :goto_7b
    nop

    .line 60
    :goto_7c
    goto :goto_81

    .line 58
    :catch_7d
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_81
    :goto_81
    return-void
.end method
