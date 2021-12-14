.class public Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;
.super Lcom/android/systemui/AutoReinflateContainer;
.source "AmbientIndicationContainer.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeReceiver;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;


# instance fields
.field private mAmbientIconOverride:Landroid/graphics/drawable/Drawable;

.field private mAmbientIndicationIconSize:I

.field private mAmbientMusicAnimation:Landroid/graphics/drawable/Drawable;

.field private mAmbientMusicNoteIcon:Landroid/graphics/drawable/Drawable;

.field private mAmbientMusicNoteIconIconSize:I

.field private mAmbientMusicText:Ljava/lang/CharSequence;

.field private mAmbientSkipUnlock:Z

.field private mBurnInPreventionOffset:I

.field private mDozeAmount:F

.field private mDozing:Z

.field private mFavoritingIntent:Landroid/app/PendingIntent;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconBounds:Landroid/graphics/Rect;

.field private mIconOverride:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIndicationTextMode:I

.field private mMediaPlaybackState:I

.field private mNotificationsHidden:Z

.field private mOpenIntent:Landroid/app/PendingIntent;

.field private mReverseChargingAnimation:Landroid/graphics/drawable/Drawable;

.field private mReverseChargingMessage:Ljava/lang/CharSequence;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarState:I

.field private mTextColor:I

.field private mTextColorAnimator:Landroid/animation/ValueAnimator;

.field private mTextView:Landroid/widget/TextView;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

.field private mWirelessChargingMessage:Ljava/lang/CharSequence;


# direct methods
.method public static synthetic $r8$lambda$-bcPq_N_Csx24DoJye7MuyjV3sU(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->onTextClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4wspJduuXRC5_KURJ0gcwMF_k8Q()V
    .locals 0

    invoke-static {}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->lambda$updatePill$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$9vdiZSQZXJA1QkqiZWlGskvZVsI(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->onIconClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QqHLQARCmQkg8W30_l3RTBGGgC8()V
    .locals 0

    invoke-static {}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->lambda$updatePill$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$RS2LyJfsB7EBKgXGxegrO8uwkJA(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->lambda$initializeView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ArXKS3h4iu-GlwiBOxbGBlL2MY(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->lambda$initializeView$1(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$xJmLuOuFA76o9N4yDpi-GX1RJYE(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->lambda$updateColors$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/AutoReinflateContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconBounds:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconOverride:I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->createWakeLock(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-object p0
.end method

.method static synthetic access$202(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextColorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private getAmbientIconOverride(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_1
    sget p0, Lcom/android/systemui/R$drawable;->ic_favorite_note:I

    invoke-virtual {p2, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    sget p0, Lcom/android/systemui/R$drawable;->ic_error:I

    invoke-virtual {p2, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :pswitch_3
    sget p0, Lcom/android/systemui/R$drawable;->ic_favorite_border:I

    invoke-virtual {p2, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :pswitch_4
    sget p0, Lcom/android/systemui/R$drawable;->ic_favorite:I

    invoke-virtual {p2, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :pswitch_5
    sget p0, Lcom/android/systemui/R$drawable;->ic_cloud_off:I

    invoke-virtual {p2, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :pswitch_6
    sget p0, Lcom/android/systemui/R$drawable;->ic_music_not_found:I

    invoke-virtual {p2, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :pswitch_7
    sget p0, Lcom/android/systemui/R$drawable;->ic_music_search:I

    invoke-virtual {p2, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic lambda$initializeView$0(Landroid/view/View;)V
    .locals 1

    sget p1, Lcom/android/systemui/R$id;->ambient_indication_text:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    sget p1, Lcom/android/systemui/R$id;->ambient_indication_icon:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconView:Landroid/widget/ImageView;

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$anim;->audioanim_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientMusicAnimation:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$drawable;->ic_music_note:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientMusicNoteIcon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$anim;->reverse_charging_animation:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mReverseChargingAnimation:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextColor:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->ambient_indication_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientIndicationIconSize:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->ambient_indication_note_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientMusicNoteIconIconSize:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->default_burn_in_prevention_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mBurnInPreventionOffset:I

    invoke-direct {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updateColors()V

    invoke-direct {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updatePill()V

    iget-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconView:Landroid/widget/ImageView;

    new-instance v0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$initializeView$1(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updateBottomPadding()V

    return-void
.end method

.method private synthetic lambda$updateColors$4(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconView:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private static synthetic lambda$updatePill$2()V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$updatePill$3()V
    .locals 0

    return-void
.end method

.method private onIconClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mFavoritingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "AMBIENT_MUSIC_CLICK"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mFavoritingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, p1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->sendBroadcastWithoutDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->onTextClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private onTextClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mOpenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "AMBIENT_MUSIC_CLICK"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientSkipUnlock:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mOpenIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, p1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->sendBroadcastWithoutDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mOpenIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendBroadcastWithoutDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sending intent failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AmbientIndication"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateBottomPadding()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationScrollLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result p0

    sub-int/2addr v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setAmbientIndicationBottomPadding(I)V

    return-void
.end method

.method private updateBurnInOffsets()V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mBurnInPreventionOffset:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v0

    iget v1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mBurnInPreventionOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v1

    iget v2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mBurnInPreventionOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mDozeAmount:F

    mul-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mDozeAmount:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateColors()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mDozing:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextColor:I

    :goto_0
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconView:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$3;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$3;-><init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updatePill()V
    .locals 11

    iget v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIndicationTextMode:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIndicationTextMode:I

    iget-object v2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientMusicText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientMusicNoteIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientMusicAnimation:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-object v6, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientIconOverride:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    move-object v5, v6

    :cond_2
    iget-object v6, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientMusicText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v1

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_2
    iget-object v7, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mOpenIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_4

    move v8, v1

    goto :goto_3

    :cond_4
    move v8, v4

    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v7, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mFavoritingIntent:Landroid/app/PendingIntent;

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mOpenIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    move v8, v4

    goto :goto_5

    :cond_6
    :goto_4
    move v8, v1

    :goto_5
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v7, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mReverseChargingMessage:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x2

    if-nez v7, :cond_7

    iput v8, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIndicationTextMode:I

    iget-object v2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mReverseChargingMessage:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mReverseChargingAnimation:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v6, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    :goto_6
    move v6, v4

    goto :goto_7

    :cond_7
    iget-object v7, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWirelessChargingMessage:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIndicationTextMode:I

    iget-object v2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWirelessChargingMessage:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v6, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_6

    :cond_8
    :goto_7
    iget-object v7, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_a

    iget-object v7, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v7, v4, v4, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconBounds:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientMusicNoteIcon:Landroid/graphics/drawable/Drawable;

    if-ne v5, v9, :cond_9

    iget v9, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientMusicNoteIconIconSize:I

    goto :goto_8

    :cond_9
    iget v9, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientIndicationIconSize:I

    :goto_8
    invoke-static {v7, v9}, Landroid/util/MathUtils;->fitRect(Landroid/graphics/Rect;I)V

    new-instance v7, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$1;

    invoke-direct {v7, p0, v5}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$1;-><init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_a
    move-object v7, v5

    :goto_9
    iget-object v9, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v6, :cond_c

    :cond_b
    iget-boolean v2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mNotificationsHidden:Z

    if-nez v2, :cond_c

    goto :goto_a

    :cond_c
    move v1, v4

    :goto_a
    if-eqz v1, :cond_d

    goto :goto_b

    :cond_d
    const/16 v4, 0x8

    :goto_b
    iget-object v2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_11

    const-string v1, "AmbientIndication"

    if-nez v3, :cond_f

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    if-eqz v5, :cond_e

    instance-of v0, v5, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_e

    check-cast v5, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_e
    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    div-int/2addr v1, v8

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$2;-><init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_c

    :cond_f
    iget v2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIndicationTextMode:I

    if-eq v0, v2, :cond_10

    if-eqz v5, :cond_13

    instance-of v0, v5, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    check-cast v5, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-interface {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    goto :goto_c

    :cond_10
    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    sget-object v2, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda6;->INSTANCE:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda6;

    invoke-interface {v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    :cond_11
    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz v5, :cond_12

    instance-of v0, v5, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_12

    check-cast v5, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    :cond_12
    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    sget-object v2, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda5;->INSTANCE:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda5;

    invoke-interface {v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    :goto_c
    invoke-direct {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updateBottomPadding()V

    return-void
.end method

.method private updateVisibility()V
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method createWakeLock(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance p0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    const-string v0, "AmbientIndication"

    invoke-static {p1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock;-><init>(Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;)V

    return-object p0
.end method

.method public dozeTimeTick()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updatePill()V

    invoke-direct {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updateBurnInOffsets()V

    return-void
.end method

.method public hideAmbientMusic()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->setAmbientMusic(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZ)V

    return-void
.end method

.method public initializeView(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance p1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/AutoReinflateContainer;->addInflateListener(Lcom/android/systemui/AutoReinflateContainer$InflateListener;)V

    new-instance p1, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method protected isMediaPlaying()Z
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mMediaPlaybackState:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/AutoReinflateContainer;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->addCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/AutoReinflateContainer;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->removeCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mMediaPlaybackState:I

    return-void
.end method

.method public onDozeAmountChanged(FF)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mDozeAmount:F

    invoke-direct {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updateBurnInOffsets()V

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mDozing:Z

    invoke-direct {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updateVisibility()V

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mTextView:Landroid/widget/TextView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updateColors()V

    invoke-direct {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updateBurnInOffsets()V

    return-void
.end method

.method public onPrimaryMetadataOrStateChanged(Landroid/media/MediaMetadata;I)V
    .locals 0

    iget p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mMediaPlaybackState:I

    if-eq p1, p2, :cond_0

    iput p2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mMediaPlaybackState:I

    invoke-virtual {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->isMediaPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->hideAmbientMusic()V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mStatusBarState:I

    invoke-direct {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updateVisibility()V

    return-void
.end method

.method public setAmbientMusic(Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientMusicText:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mOpenIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mFavoritingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconOverride:I

    if-ne v0, p4, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientSkipUnlock:Z

    if-ne v0, p5, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientMusicText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mOpenIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mFavoritingIntent:Landroid/app/PendingIntent;

    iput-boolean p5, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientSkipUnlock:Z

    iput p4, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mIconOverride:I

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p0, p4, p1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->getAmbientIconOverride(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mAmbientIconOverride:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updatePill()V

    return-void
.end method

.method public setReverseChargingMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mReverseChargingMessage:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWirelessChargingMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWirelessChargingMessage:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mReverseChargingMessage:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updatePill()V

    return-void
.end method

.method public setWirelessChargingMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWirelessChargingMessage:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mReverseChargingMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mWirelessChargingMessage:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->mReverseChargingMessage:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updatePill()V

    return-void
.end method
