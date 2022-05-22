.class public Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
.source "NotificationHeaderViewWrapper.java"


# static fields
.field private static final LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;


# instance fields
.field private mAltExpandTarget:Landroid/view/View;

.field private mAppNameText:Landroid/widget/TextView;

.field private mAudiblyAlertedIcon:Landroid/view/View;

.field private mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

.field private mFeedbackIcon:Landroid/view/View;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIcon:Lcom/android/internal/widget/CachingIconView;

.field private mIconContainer:Landroid/view/View;

.field private mIsLowPriority:Z

.field protected mNotificationHeader:Landroid/view/NotificationHeaderView;

.field protected mNotificationTopLine:Landroid/view/NotificationTopLineView;

.field private mTransformLowPriorityTitle:Z

.field protected final mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

.field private mWorkProfileImage:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    new-instance p1, Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;I)V

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->resolveHeaderViews()V

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->addFeedbackOnClickListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$000()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->LOW_PRIORITY_HEADER_CLOSE:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    return p0
.end method

.method private addFeedbackOnClickListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getFeedbackOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationTopLine:Landroid/view/NotificationTopLineView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/NotificationTopLineView;->setFeedbackOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mFeedbackIcon:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private addRemainingTransformTypes()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addRemainingTransformTypes(Landroid/view/View;)V

    return-void
.end method

.method private updateCropToPaddingForImageViews()V
    .locals 3

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020264

    if-eq v1, v2, :cond_1

    check-cast p0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setCropToPadding(Z)V

    goto :goto_0

    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method protected varargs addTransformedViews([Landroid/view/View;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected varargs addViewsTransformingToSimilar([Landroid/view/View;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addViewTransformingToSimilar(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object p0

    return-object p0
.end method

.method public getExpandButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    return-object p0
.end method

.method public getIcon()Lcom/android/internal/widget/CachingIconView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIcon:Lcom/android/internal/widget/CachingIconView;

    return-object p0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    return-object p0
.end method

.method public getOriginalIconColor()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIcon:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p0}, Lcom/android/internal/widget/CachingIconView;->getOriginalIconColor()I

    move-result p0

    return p0
.end method

.method public getShelfTransformationTarget()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIcon:Lcom/android/internal/widget/CachingIconView;

    return-object p0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isAmbient()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getAllTransformingViews()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->resolveHeaderViews()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->addRemainingTransformTypes()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->updateCropToPaddingForImageViews()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIcon:Lcom/android/internal/widget/CachingIconView;

    sget v3, Lcom/android/systemui/statusbar/notification/ImageTransformState;->ICON_TAG:I

    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/widget/CachingIconView;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->getAllTransformingViews()Landroid/util/ArraySet;

    move-result-object p1

    :goto_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->resetTransformedView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected resolveHeaderViews()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIcon:Lcom/android/internal/widget/CachingIconView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10202f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10201de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mAppNameText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102029d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/NotificationExpandButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10201d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mAltExpandTarget:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020265

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIconContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020410

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10203b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/NotificationHeaderView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10203c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/NotificationTopLineView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationTopLine:Landroid/view/NotificationTopLineView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10201c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mAudiblyAlertedIcon:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10202aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mFeedbackIcon:Landroid/view/View;
    
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;
    
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->setNotificationColors(Landroid/view/View;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/NotificationExpandButton;->setExpanded(Z)V

    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setIsChildInGroup(Z)V

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformLowPriorityTitle:Z

    return-void
.end method

.method public setRecentlyAudiblyAlerted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mAudiblyAlertedIcon:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setVisible(Z)V

    return-void
.end method

.method public showFeedbackIcon(ZLandroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mFeedbackIcon:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mFeedbackIcon:Landroid/view/View;

    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/ImageButton;

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mFeedbackIcon:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NotificationExpandButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move-object v2, p2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/NotificationExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mAltExpandTarget:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move-object v2, p2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIconContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    move-object v2, p2

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move-object p2, v1

    :goto_4
    invoke-virtual {v0, p2}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    if-eqz p3, :cond_8

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationExpandButton;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->requestLayout()V

    :cond_8
    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->reset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIcon:Lcom/android/internal/widget/CachingIconView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mExpandButton:Lcom/android/internal/widget/NotificationExpandButton;

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mIsLowPriority:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v3, v1, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mWorkProfileImage:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mAudiblyAlertedIcon:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mFeedbackIcon:Landroid/view/View;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->addViewsTransformingToSimilar([Landroid/view/View;)V

    return-void
.end method

.method public static setNotificationColors(Landroid/view/View;)V
    .registers 6
    .param p0, "v"    # Landroid/view/View;

    .line 51
    sget-boolean v0, Lcom/android/mwilky/Renovate;->mUnlockNotificationColors:Z

    if-eqz v0, :cond_81

    .line 53
    :try_start_4
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    .line 54
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 55
    .local v0, "vg":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 58
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->setNotificationColors(Landroid/view/View;)V

    .line 55
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 61
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

    .line 62
    :try_start_23
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_27} :catch_7d

    .line 63
    .local v0, "id":I
    nop

    .line 66
    .local v1, "name":Ljava/lang/String;
    :try_start_28
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 68
    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/android/mwilky/Renovate;->mNotificationTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3d} :catch_7d

    .line 73
    goto :goto_7b

    .line 72
    :catch_3e
    move-exception v2

    goto :goto_7b

    .line 75
    .end local v0    # "id":I
    .end local v1    # "name":Ljava/lang/String;
    :cond_40
    :try_start_40
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_7b

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_48} :catch_7d

    .line 77
    .restart local v0    # "id":I
    nop

    .line 80
    .restart local v1    # "name":Ljava/lang/String;
    :try_start_49
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 81
    const-string v2, "android:id/alerted_icon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "android:id/expand_button_icon"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "android:id/snooze_button"

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 84
    :cond_6e
    move-object v2, p0

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/android/mwilky/Renovate;->mNotificationTextColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_78
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_49 .. :try_end_78} :catch_79
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_78} :catch_7d

    .line 89
    :cond_78
    goto :goto_7c

    .line 88
    :catch_79
    move-exception v2

    goto :goto_7c

    .line 75
    .end local v0    # "id":I
    .end local v1    # "name":Ljava/lang/String;
    :cond_7b
    :goto_7b
    nop

    .line 93
    :goto_7c
    goto :goto_81

    .line 91
    :catch_7d
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_81
    :goto_81
    return-void
.end method
