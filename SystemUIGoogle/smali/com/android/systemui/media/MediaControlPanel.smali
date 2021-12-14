.class public Lcom/android/systemui/media/MediaControlPanel;
.super Ljava/lang/Object;
.source "MediaControlPanel.java"


# static fields
.field static final ACTION_IDS:[I

.field private static final SETTINGS_INTENT:Landroid/content/Intent;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAlbumArtSize:I

.field private mBackgroundColor:I

.field protected final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private mContext:Landroid/content/Context;

.field private mController:Landroid/media/session/MediaController;

.field private mDevicePadding:I

.field protected mInstanceId:I

.field private mKey:Ljava/lang/String;

.field private mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field private mMediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

.field private mMediaDataManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

.field private mMediaViewController:Lcom/android/systemui/media/MediaViewController;

.field private mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

.field private mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

.field private mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

.field private final mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

.field private mSmartspaceMediaItemsCount:I

.field private mToken:Landroid/media/session/MediaSession$Token;

.field protected mUid:I


# direct methods
.method public static synthetic $r8$lambda$-WwHYg297rRKMPv3sjM4DBUgk-M(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/SmartspaceMediaData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bindRecommendation$13(Lcom/android/systemui/media/SmartspaceMediaData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-i4VxRReCZOGumHfYBBLLwGhkRo(Lcom/android/systemui/media/MediaControlPanel;Ljava/lang/String;Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bindPlayer$11(Ljava/lang/String;Lcom/android/systemui/media/MediaData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8Cq6429SNK4zGraDCUqwoIXDVmw(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bindPlayer$8(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BXCzBCrgliDH-jP5EMSdbgCZ7Kw(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attachRecommendation$4(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$C8N8OeDspQV22WBBu6K8sAucg5Y(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attachRecommendation$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DTW8JXxh1q7gilJCVmntSLcgZPg(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attachPlayer$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G0AtQupWbRIG0VqBshSNqvJDkMc(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attachPlayer$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$L9UlTTj6ONSKOvkd3unXQI9klaE(Lcom/android/systemui/media/MediaControlPanel;ILandroid/app/smartspace/SmartspaceAction;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/MediaControlPanel;->lambda$setSmartspaceRecItemOnClickListener$14(ILandroid/app/smartspace/SmartspaceAction;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NBAeT2ePIYDK-Rh30u2D0oBtPdE(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attachPlayer$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RpCqgmkGfEX2RSoH9edutNc9Z2Q(Lcom/android/systemui/media/MediaControlPanel;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bindPlayer$9(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U_0NloneKS101zCTUMBFt3SAL1o(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bindRecommendation$12(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VW_BqApcWVtbVq-h6ONAO26doKg(Lcom/android/systemui/media/MediaControlPanel;Landroid/media/session/MediaController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bindPlayer$10(Landroid/media/session/MediaController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cw1qAogAyvPWHbSf_42RA9ZTSoQ(Lcom/android/systemui/media/MediaControlPanel;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->lambda$new$0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$og0HuRdFezSNHPTw5nJVagYlUtE(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaControlPanel;->lambda$attachRecommendation$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sHZi1EdIR4QKNop2rqiJ5EkeQ4I(Lcom/android/systemui/media/MediaControlPanel;Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaControlPanel;->lambda$bindPlayer$7(Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_MEDIA_CONTROLS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/MediaControlPanel;->SETTINGS_INTENT:Landroid/content/Intent;

    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lcom/android/systemui/R$id;->action0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->action1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->action2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->action3:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$id;->action4:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/media/MediaControlPanel;->ACTION_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/MediaViewController;Lcom/android/systemui/media/SeekBarViewModel;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/media/MediaViewController;",
            "Lcom/android/systemui/media/SeekBarViewModel;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            "Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;",
            "Lcom/android/systemui/media/MediaCarouselController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    iput v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    iput-object p4, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    iput-object p6, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaDataManagerLazy:Ldagger/Lazy;

    iput-object p7, p0, Lcom/android/systemui/media/MediaControlPanel;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    iput-object p8, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    iput-object p9, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->loadDimens()V

    new-instance p1, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p5, p1}, Lcom/android/systemui/media/SeekBarViewModel;->setLogSmartspaceClick(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private buildLaunchAnimatorController(Lcom/android/systemui/util/animation/TransitionLayout;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string p1, "MediaControlPanel"

    const-string v0, "Skipping player animation as it is not attached to a ViewGroup"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$1;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/android/systemui/media/MediaControlPanel$1;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/view/View;Ljava/lang/Integer;Lcom/android/systemui/util/animation/TransitionLayout;)V

    return-object v0
.end method

.method private closeGuts()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts(Z)V

    return-void
.end method

.method private getGrayscaleFilter()Landroid/graphics/ColorMatrixColorFilter;
    .locals 1

    new-instance p0, Landroid/graphics/ColorMatrix;

    invoke-direct {p0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v0
.end method

.method private getSmartspaceSubCardCardinality()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getQsExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSmartspaceMediaItemsCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSmartspaceMediaItemsCount:I

    return p0
.end method

.method private synthetic lambda$attachPlayer$1(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->openGuts()V

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts()V

    return v0
.end method

.method private synthetic lambda$attachPlayer$2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts()V

    return-void
.end method

.method private synthetic lambda$attachPlayer$3(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object p1, Lcom/android/systemui/media/MediaControlPanel;->SETTINGS_INTENT:Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private synthetic lambda$attachRecommendation$4(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->openGuts()V

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts()V

    return v0
.end method

.method private synthetic lambda$attachRecommendation$5(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts()V

    return-void
.end method

.method private synthetic lambda$attachRecommendation$6(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object p1, Lcom/android/systemui/media/MediaControlPanel;->SETTINGS_INTENT:Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private synthetic lambda$bindPlayer$10(Landroid/media/session/MediaController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SeekBarViewModel;->updateController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method private synthetic lambda$bindPlayer$11(Ljava/lang/String;Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 6

    const/16 p3, 0x2f9

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/systemui/media/MediaControlPanel;->logSmartspaceCardReported(IZ)V

    iget-object p3, p0, Lcom/android/systemui/media/MediaControlPanel;->mKey:Ljava/lang/String;

    const-string v1, "MediaControlPanel"

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts()V

    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaDataManagerLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/MediaDataManager;

    iget-object p3, p0, Lcom/android/systemui/media/MediaControlPanel;->mKey:Ljava/lang/String;

    sget-wide v2, Lcom/android/systemui/media/MediaViewController;->GUTS_ANIMATION_DURATION:J

    const-wide/16 v4, 0x64

    add-long/2addr v2, v4

    invoke-virtual {p2, p3, v2, v3}, Lcom/android/systemui/media/MediaDataManager;->dismissMediaData(Ljava/lang/String;J)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Manager failed to dismiss media "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/media/MediaControlPanel;->mKey:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Dismiss media with null notification. Token uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaSession$Token;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$bindPlayer$7(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p2}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x2f8

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/media/MediaControlPanel;->logSmartspaceCardReported(IZ)V

    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaControlPanel;->buildLaunchAnimatorController(Lcom/android/systemui/util/animation/TransitionLayout;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method

.method private synthetic lambda$bindPlayer$8(Lcom/android/systemui/media/MediaData;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->create(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$bindPlayer$9(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    const/16 p2, 0x2f8

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/media/MediaControlPanel;->logSmartspaceCardReported(IZ)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$bindRecommendation$12(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$bindRecommendation$13(Lcom/android/systemui/media/SmartspaceMediaData;Landroid/view/View;)V
    .locals 5

    const/16 p2, 0x2f9

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/media/MediaControlPanel;->logSmartspaceCardReported(IZ)V

    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts()V

    iget-object p2, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaDataManagerLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {p1}, Lcom/android/systemui/media/SmartspaceMediaData;->getTargetId()Ljava/lang/String;

    move-result-object v0

    sget-wide v1, Lcom/android/systemui/media/MediaViewController;->GUTS_ANIMATION_DURATION:J

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/systemui/media/MediaDataManager;->dismissSmartspaceRecommendation(Ljava/lang/String;J)V

    invoke-virtual {p1}, Lcom/android/systemui/media/SmartspaceMediaData;->getDismissIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "MediaControlPanel"

    const-string p1, "Cannot create dismiss action click action: extras missing dismiss_intent."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.google.android.apps.gsa.staticplugins.opa.smartspace.ExportedSmartspaceTrampolineActivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0()Lkotlin/Unit;
    .locals 2

    const/16 v0, 0x2f8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/media/MediaControlPanel;->logSmartspaceCardReported(IZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$setSmartspaceRecItemOnClickListener$14(ILandroid/app/smartspace/SmartspaceAction;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/media/MediaControlPanel;->getSmartspaceSubCardCardinality()I

    move-result p4

    const/16 v0, 0x2f8

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p4}, Lcom/android/systemui/media/MediaControlPanel;->logSmartspaceCardReported(IZII)V

    invoke-direct {p0, p2}, Lcom/android/systemui/media/MediaControlPanel;->shouldSmartspaceRecItemOpenInForeground(Landroid/app/smartspace/SmartspaceAction;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x0

    iget-object p4, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {p4}, Lcom/android/systemui/media/RecommendationViewHolder;->getRecommendations()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/systemui/media/MediaControlPanel;->buildLaunchAnimatorController(Lcom/android/systemui/util/animation/TransitionLayout;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object p4

    invoke-interface {p1, p2, p3, p4}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaCarouselController;->setShouldScrollToActivePlayer(Z)V

    return-void
.end method

.method private loadDimens()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_album_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_media_album_device_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mDevicePadding:I

    return-void
.end method

.method private logSmartspaceCardReported(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/media/MediaControlPanel;->logSmartspaceCardReported(IZII)V

    return-void
.end method

.method private logSmartspaceCardReported(IZII)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    iget v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result v5

    move v1, p1

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported(IIIZIII)V

    return-void
.end method

.method private openGuts()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaViewController;->getExpandedLayout()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaViewController;->getCollapsedLayout()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    sget-wide v4, Lcom/android/systemui/media/MediaViewController;->GUTS_ANIMATION_DURATION:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/media/PlayerViewHolder;->marquee(ZJ)V

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getSettingsText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    if-eqz v2, :cond_1

    sget-wide v4, Lcom/android/systemui/media/MediaViewController;->GUTS_ANIMATION_DURATION:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/media/RecommendationViewHolder;->marquee(ZJ)V

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/media/RecommendationViewHolder;->getSettingsText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/media/MediaViewController;->setShouldHideGutsSettings(Z)V

    if-eqz v3, :cond_3

    sget v2, Lcom/android/systemui/R$id;->settings:I

    invoke-virtual {v0, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainMaxWidth(II)V

    invoke-virtual {v1, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainMaxWidth(II)V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->openGuts()V

    return-void
.end method

.method private scaleDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    int-to-float v4, v3

    mul-float/2addr v4, v0

    float-to-int v0, v4

    invoke-direct {v1, v2, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    int-to-float v4, v3

    div-float/2addr v4, v0

    float-to-int v0, v4

    invoke-direct {v1, v2, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    if-gt v0, v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    if-le v0, v2, :cond_3

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mAlbumArtSize:I

    sub-int/2addr v3, p0

    int-to-float p0, v3

    div-float/2addr p0, v2

    neg-float v0, v0

    float-to-int v0, v0

    neg-float p0, p0

    float-to-int p0, p0

    invoke-virtual {v1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method private setSmartspaceRecItemOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceAction;I)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/media/MediaControlPanel;ILandroid/app/smartspace/SmartspaceAction;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "MediaControlPanel"

    const-string p1, "No tap action can be set up"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    if-eqz p3, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    return-void
.end method

.method private shouldSmartspaceRecItemOpenInForeground(Landroid/app/smartspace/SmartspaceAction;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.google.android.apps.gsa.smartspace.extra.SMARTSPACE_INTENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_OPEN_IN_FOREGROUND"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create intent from URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaControlPanel"

    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public attachPlayer(Lcom/android/systemui/media/PlayerViewHolder;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/SeekBarObserver;

    invoke-direct {v1, p1}, Lcom/android/systemui/media/SeekBarObserver;-><init>(Lcom/android/systemui/media/PlayerViewHolder;)V

    iput-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {v1}, Lcom/android/systemui/media/SeekBarViewModel;->getProgress()Landroidx/lifecycle/LiveData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/systemui/media/SeekBarViewModel;->attachTouchHandlers(Landroid/widget/SeekBar;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    sget-object v1, Lcom/android/systemui/media/MediaViewController$TYPE;->PLAYER:Lcom/android/systemui/media/MediaViewController$TYPE;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/media/MediaViewController;->attach(Lcom/android/systemui/util/animation/TransitionLayout;Lcom/android/systemui/media/MediaViewController$TYPE;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getCancel()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/PlayerViewHolder;->getSettings()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public attachRecommendation(Lcom/android/systemui/media/RecommendationViewHolder;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/RecommendationViewHolder;->getRecommendations()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    sget-object v1, Lcom/android/systemui/media/MediaViewController$TYPE;->RECOMMENDATION:Lcom/android/systemui/media/MediaViewController$TYPE;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/media/MediaViewController;->attach(Lcom/android/systemui/util/animation/TransitionLayout;Lcom/android/systemui/media/MediaViewController$TYPE;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/RecommendationViewHolder;->getRecommendations()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/RecommendationViewHolder;->getCancel()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/RecommendationViewHolder;->getSettings()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/media/MediaControlPanel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bindPlayer(Lcom/android/systemui/media/MediaData;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "MediaControlPanel"

    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object v3, v1, Lcom/android/systemui/media/MediaControlPanel;->mKey:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v5

    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v7, "Unable to look up package name"

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mUid:I

    invoke-static {v0}, Lcom/android/systemui/media/SmallHash;->hash(I)I

    move-result v0

    iput v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getBackgroundColor()I

    move-result v0

    iput v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object v5, v1, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    :cond_2
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/media/session/MediaController;

    iget-object v5, v1, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/systemui/media/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {v0, v5, v7}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    :goto_1
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaViewController;->getExpandedLayout()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v5

    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaViewController;->getCollapsedLayout()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getClickIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v8, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v8}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda5;

    invoke-direct {v9, v1, v0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/app/PendingIntent;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v0

    iget-object v8, v1, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/systemui/R$string;->controls_media_playing_item_description:I

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getSong()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getArtist()Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/4 v11, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getApp()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getAlbumView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getArtwork()Landroid/graphics/drawable/Icon;

    move-result-object v8

    if-eqz v8, :cond_5

    move v8, v12

    goto :goto_2

    :cond_5
    move v8, v6

    :goto_2
    if-eqz v8, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getArtwork()Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/systemui/media/MediaControlPanel;->scaleDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getDevice()Lcom/android/systemui/media/MediaDeviceData;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getDevice()Lcom/android/systemui/media/MediaDeviceData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/media/MediaDeviceData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getDevice()Lcom/android/systemui/media/MediaDeviceData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/media/MediaDeviceData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaControlPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/android/systemui/R$drawable;->ic_headphone:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :goto_3
    iget v9, v1, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget v9, v1, Lcom/android/systemui/media/MediaControlPanel;->mDevicePadding:I

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getAppIcon()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->clearColorFilter()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getResumption()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    const v9, 0x106004f

    invoke-virtual {v0, v9}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_5

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaControlPanel;->getGrayscaleFilter()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :try_start_1
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot find icon for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget v0, Lcom/android/systemui/R$drawable;->ic_music_note:I

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_5
    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getSong()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getArtistText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getArtist()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget v8, Lcom/android/systemui/R$id;->media_seamless:I

    invoke-direct {v1, v7, v8, v12}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    invoke-direct {v1, v5, v8, v12}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    new-instance v8, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda6;

    invoke-direct {v8, v1, v2}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/MediaData;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v8}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessIcon()Landroid/widget/ImageView;

    move-result-object v8

    iget-object v9, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v9}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamlessText()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getDevice()Lcom/android/systemui/media/MediaDeviceData;

    move-result-object v10

    iget-object v11, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v11}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getId()I

    move-result v11

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/android/systemui/media/MediaDeviceData;->getEnabled()Z

    move-result v13

    if-eqz v13, :cond_a

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getResumption()Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_a
    move v13, v12

    goto :goto_6

    :cond_b
    move v13, v6

    :goto_6
    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v13, :cond_c

    const v14, 0x3ec28f5c    # 0.38f

    goto :goto_7

    :cond_c
    move v14, v15

    :goto_7
    invoke-virtual {v5, v11, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    invoke-virtual {v7, v11, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    iget-object v11, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v11}, Lcom/android/systemui/media/PlayerViewHolder;->getSeamless()Landroid/view/ViewGroup;

    move-result-object v11

    xor-int/2addr v13, v12

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-eqz v10, :cond_e

    invoke-virtual {v10}, Lcom/android/systemui/media/MediaDeviceData;->getEnabled()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual {v10}, Lcom/android/systemui/media/MediaDeviceData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v11, v4, Lcom/android/settingslib/widget/AdaptiveIcon;

    if-eqz v11, :cond_d

    check-cast v4, Lcom/android/settingslib/widget/AdaptiveIcon;

    iget v11, v1, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    invoke-virtual {v4, v11}, Lcom/android/settingslib/widget/AdaptiveIcon;->setBackgroundColor(I)V

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_d
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_8
    invoke-virtual {v10}, Lcom/android/systemui/media/MediaDeviceData;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Device is null or not enabled: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", not binding output chip."

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/android/systemui/R$drawable;->ic_media_home_devices:I

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, v1, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/systemui/R$string;->media_seamless_other_device:I

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_9
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getActionsToShowInCompact()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getActions()Ljava/util/List;

    move-result-object v4

    move v8, v6

    :goto_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_10

    sget-object v9, Lcom/android/systemui/media/MediaControlPanel;->ACTION_IDS:[I

    array-length v10, v9

    if-ge v8, v10, :cond_10

    aget v9, v9, v8

    iget-object v10, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v10, v9}, Lcom/android/systemui/media/PlayerViewHolder;->getAction(I)Landroid/widget/ImageButton;

    move-result-object v10

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/media/MediaAction;

    invoke-virtual {v11}, Lcom/android/systemui/media/MediaAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/ImageButton;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    invoke-virtual {v11}, Lcom/android/systemui/media/MediaAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v11}, Lcom/android/systemui/media/MediaAction;->getAction()Ljava/lang/Runnable;

    move-result-object v11

    if-nez v11, :cond_f

    invoke-virtual {v10, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_b

    :cond_f
    invoke-virtual {v10, v12}, Landroid/widget/ImageButton;->setEnabled(Z)V

    new-instance v13, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda8;

    invoke-direct {v13, v1, v11}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/media/MediaControlPanel;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-direct {v1, v7, v9, v10}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    invoke-direct {v1, v5, v9, v12}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_10
    :goto_c
    sget-object v0, Lcom/android/systemui/media/MediaControlPanel;->ACTION_IDS:[I

    array-length v9, v0

    if-ge v8, v9, :cond_11

    aget v9, v0, v8

    invoke-direct {v1, v7, v9, v6}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    aget v0, v0, v8

    invoke-direct {v1, v5, v0, v6}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_12

    aget v0, v0, v6

    const/4 v4, 0x4

    invoke-virtual {v5, v0, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaControlPanel;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    iget-object v4, v1, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda13;

    invoke-direct {v5, v1, v0}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/media/MediaControlPanel;Landroid/media/session/MediaController;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->isClearable()Z

    move-result v0

    iget-object v4, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v4}, Lcom/android/systemui/media/PlayerViewHolder;->getLongPressText()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v0, :cond_13

    sget v5, Lcom/android/systemui/R$string;->controls_media_close_session:I

    goto :goto_d

    :cond_13
    sget v5, Lcom/android/systemui/R$string;->controls_media_active_session:I

    :goto_d
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v4}, Lcom/android/systemui/media/PlayerViewHolder;->getDismissLabel()Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_14

    move v14, v15

    goto :goto_e

    :cond_14
    const v14, 0x3ec28f5c    # 0.38f

    :goto_e
    invoke-virtual {v4, v14}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v4}, Lcom/android/systemui/media/PlayerViewHolder;->getDismiss()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder;->getDismiss()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda9;

    invoke-direct {v4, v1, v3, v2}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/media/MediaControlPanel;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaViewController;->refreshState()V

    return-void
.end method

.method public bindRecommendation(Lcom/android/systemui/media/SmartspaceMediaData;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/SmartspaceMediaData;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/media/SmallHash;->hash(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/SmartspaceMediaData;->getBackgroundColor()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    iget-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/RecommendationViewHolder;->getRecommendations()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/media/MediaControlPanel;->mBackgroundColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/SmartspaceMediaData;->getRecommendations()Ljava/util/List;

    move-result-object v2

    const-string v3, "MediaControlPanel"

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_4

    :cond_1
    :try_start_0
    iget-object v4, v0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/SmartspaceMediaData;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaControlPanel;->getGrayscaleFilter()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v8, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {v8}, Lcom/android/systemui/media/RecommendationViewHolder;->getCardIcon()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {v5}, Lcom/android/systemui/media/RecommendationViewHolder;->getCardText()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/SmartspaceMediaData;->getCardAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v5

    const/4 v7, -0x1

    invoke-direct {v0, v1, v5, v7}, Lcom/android/systemui/media/MediaControlPanel;->setSmartspaceRecItemOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceAction;I)V

    iget-object v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->controls_media_smartspace_rec_description:I

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v4, v9, v6

    invoke-virtual {v5, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/RecommendationViewHolder;->getMediaCoverItems()Ljava/util/List;

    move-result-object v1

    iget-object v5, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {v5}, Lcom/android/systemui/media/RecommendationViewHolder;->getMediaCoverContainers()Ljava/util/List;

    move-result-object v5

    iget-object v7, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {v7}, Lcom/android/systemui/media/RecommendationViewHolder;->getMediaCoverItemsResIds()Ljava/util/List;

    move-result-object v7

    iget-object v9, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {v9}, Lcom/android/systemui/media/RecommendationViewHolder;->getMediaCoverContainersResIds()Ljava/util/List;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v10}, Lcom/android/systemui/media/MediaViewController;->getExpandedLayout()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v11}, Lcom/android/systemui/media/MediaViewController;->getCollapsedLayout()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v11

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x6

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v13, v6

    move v14, v13

    :goto_0
    if-ge v13, v12, :cond_6

    if-ge v14, v12, :cond_6

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {v15}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v16

    if-nez v16, :cond_3

    const-string v15, "No media cover is provided. Skipping this item..."

    invoke-static {v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v20, v5

    move v2, v6

    move v5, v8

    move/from16 v19, v12

    goto/16 :goto_3

    :cond_3
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct {v0, v6, v15, v14}, Lcom/android/systemui/media/MediaControlPanel;->setSmartspaceRecItemOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceAction;I)V

    move-object/from16 v17, v1

    sget-object v1, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda12;->INSTANCE:Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda12;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v15}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "artist_name"

    move-object/from16 v18, v2

    const-string v2, ""

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->controls_media_smartspace_rec_item_no_artist_description:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v15}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v6, v16

    const/4 v15, 0x1

    aput-object v4, v6, v15

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v20, v5

    move/from16 v19, v12

    const/4 v5, 0x3

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    const/16 v16, 0x0

    iget-object v6, v0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->controls_media_smartspace_rec_item_description:I

    move-object/from16 v20, v5

    move/from16 v19, v12

    const/4 v5, 0x3

    new-array v12, v5, [Ljava/lang/Object;

    invoke-virtual {v15}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    aput-object v15, v12, v16

    const/4 v15, 0x1

    aput-object v1, v12, v15

    const/4 v1, 0x2

    aput-object v4, v12, v1

    invoke-virtual {v6, v2, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    if-ge v14, v5, :cond_5

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v11, v1, v15}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v11, v1, v15}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v11, v1, v2}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v11, v1, v2}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    :goto_2
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x1

    invoke-direct {v0, v10, v1, v5}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v10, v1, v5}, Lcom/android/systemui/media/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    add-int/lit8 v14, v14, 0x1

    :goto_3
    add-int/lit8 v13, v13, 0x1

    move v6, v2

    move v8, v5

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v12, v19

    move-object/from16 v5, v20

    goto/16 :goto_0

    :cond_6
    iput v14, v0, Lcom/android/systemui/media/MediaControlPanel;->mSmartspaceMediaItemsCount:I

    iget-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/RecommendationViewHolder;->getDismiss()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda7;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/media/MediaControlPanel$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/media/MediaControlPanel;Lcom/android/systemui/media/SmartspaceMediaData;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    iget-object v0, v0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaViewController;->refreshState()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Fail to get media recommendation\'s app info"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_7
    :goto_4
    const-string v0, "Empty media recommendations"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public closeGuts(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-wide v2, Lcom/android/systemui/media/MediaViewController;->GUTS_ANIMATION_DURATION:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/media/PlayerViewHolder;->marquee(ZJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    if-eqz v0, :cond_1

    sget-wide v2, Lcom/android/systemui/media/MediaViewController;->GUTS_ANIMATION_DURATION:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/media/RecommendationViewHolder;->marquee(ZJ)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaViewController;->closeGuts(Z)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getController()Landroid/media/session/MediaController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method public getMediaViewController()Lcom/android/systemui/media/MediaViewController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    return-object p0
.end method

.method public getPlayerViewHolder()Lcom/android/systemui/media/PlayerViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mPlayerViewHolder:Lcom/android/systemui/media/PlayerViewHolder;

    return-object p0
.end method

.method public getRecommendationViewHolder()Lcom/android/systemui/media/RecommendationViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/RecommendationViewHolder;

    return-object p0
.end method

.method protected getSurfaceForSmartspaceLogging()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->getCurrentEndLocation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x4

    return p0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/SeekBarViewModel;->getProgress()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/SeekBarObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/SeekBarViewModel;->onDestroy()V

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->onDestroy()V

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SeekBarViewModel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SeekBarViewModel;->setListening(Z)V

    return-void
.end method
