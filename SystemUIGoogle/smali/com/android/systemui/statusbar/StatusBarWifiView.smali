.class public Lcom/android/systemui/statusbar/StatusBarWifiView;
.super Landroid/widget/FrameLayout;
.source "StatusBarWifiView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# instance fields
.field public mWifiIconColor:I

.field public mDarkIconColor:I

.field private mAirplaneSpacer:Landroid/view/View;

.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mIn:Landroid/widget/ImageView;

.field private mInoutContainer:Landroid/view/View;

.field private mOut:Landroid/widget/ImageView;

.field private mSignalSpacer:Landroid/view/View;

.field private mSlot:Ljava/lang/String;

.field private mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

.field private mVisibleState:I

.field private mWifiGroup:Landroid/widget/LinearLayout;

.field private mWifiIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    return-void
.end method

.method public static fromContext(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/statusbar/StatusBarWifiView;
    .locals 2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$layout;->status_bar_wifi_group:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarWifiView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->setSlot(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->init()V

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(I)V

    return-object p0
.end method

.method private init()V
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->wifi_group:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/systemui/R$id;->wifi_signal:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->wifi_in:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mIn:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->wifi_out:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mOut:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->wifi_signal_spacer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSignalSpacer:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->wifi_airplane_spacer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mAirplaneSpacer:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->inout_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mInoutContainer:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->initDotView()V
    
    const/4 v0, 0x0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->updateViews(F)V

    return-void
.end method

.method private initDotView()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v0, 0x800013

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initViewState()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mIn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mOut:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mInoutContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v4, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    if-nez v4, :cond_4

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mAirplaneSpacer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSignalSpacer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    move v2, v3

    :goto_6
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Z
    .locals 5

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    if-eq v0, v1, :cond_0

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mIn:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mOut:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mInoutContainer:Landroid/view/View;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    if-nez v1, :cond_4

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mAirplaneSpacer:Landroid/view/View;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSignalSpacer:Landroid/view/View;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    iget-boolean v4, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    if-ne v0, v4, :cond_8

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    iget-boolean v4, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    if-eq v0, v4, :cond_7

    goto :goto_6

    :cond_7
    move v0, v3

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v0, 0x1

    :goto_7
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eq v1, v4, :cond_a

    or-int/lit8 v0, v0, 0x1

    if-eqz v4, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_a
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return v0
.end method


# virtual methods
.method public applyWifiState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->initViewState()V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarWifiView;->updateState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)Z

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_4
    return-void
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, p0

    float-to-int p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    return-object p0
.end method

.method public getVisibleState()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    return p0
.end method

.method public isIconVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2

    float-to-int v0, p2
    
    iget p2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIconColor:I
    
    if-nez v0, :cond_dark
    
    iget p2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIconColor:I

    :cond_dark
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2
    
    iget-object p3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mIn:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mOut:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;
    
    iget p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIconColor:I
    
    if-nez v0, :cond_dark2
    
    iget p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIconColor:I
    
    :cond_dark2
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    return-void
.end method

.method public setDecorColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 2

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mIn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mOut:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setVisibleState(IZ)V
    .locals 2

    iget p2, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mVisibleState:I

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarWifiView(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mSlot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateViews(F)V
	.locals 1

	invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarWifiView;->readRenovateMods()V

	return-void
.end method

.method public readRenovateMods()V
    .locals 1

    sget v0, Lcom/android/mwilky/Renovate;->mWifiIconColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIconColor:I

    sget v0, Lcom/android/mwilky/Renovate;->mDarkIconColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mDarkIconColor:I

    return-void
.end method

.method public getIconColor(Ljava/lang/String;)I
    .locals 2

    .line 125
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 126
    sget v0, Lcom/android/mwilky/Renovate;->mWifiIconColor:I
    
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIconColor:I

    return v0

    .line 127
    :cond_a
    const-string v0, "qs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 128
    sget v0, Lcom/android/mwilky/Renovate;->mQsWifiIconColor:I
    
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIconColor:I

    return v0

    .line 130
    :cond_14
    sget v0, Lcom/android/mwilky/Renovate;->mLsWifiIconColor:I
    
    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarWifiView;->mWifiIconColor:I

    return v0
.end method
