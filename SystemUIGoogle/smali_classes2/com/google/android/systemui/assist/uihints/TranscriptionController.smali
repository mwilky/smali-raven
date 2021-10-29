.class public Lcom/google/android/systemui/assist/uihints/TranscriptionController;
.super Ljava/lang/Object;
.source "TranscriptionController.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$CardInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$TranscriptionInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$GreetingInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ChipsInfoListener;
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ClearListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/google/android/systemui/assist/uihints/input/TouchActionRegion;
.implements Lcom/google/android/systemui/assist/uihints/input/TouchInsideRegion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;,
        Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceListener;,
        Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;
    }
.end annotation


# instance fields
.field private mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

.field private final mDefaultOnTap:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

.field private final mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

.field private mHasAccurateBackground:Z

.field private mHideFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceListener;

.field private mOnGreetingTap:Landroid/app/PendingIntent;

.field private mOnTranscriptionTap:Landroid/app/PendingIntent;

.field private final mParent:Landroid/view/ViewGroup;

.field private mQueuedCompletion:Ljava/lang/Runnable;

.field private mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

.field private mQueuedStateAnimates:Z

.field private mViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;",
            "Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2LoIOYuW6x8Yna-GYXNnTCz0gz4(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/lang/String;Ljava/util/Optional;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->lambda$onGreetingInfo$0(Ljava/lang/String;Ljava/util/Optional;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6LqI3DCRsXzfjlNVsqJ_cIk9Klo(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->lambda$maybeSetState$6(Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FlXQdUi1fjgT3zJVtmIZiyAC-zE(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->lambda$setUpViews$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G6g61XeTAblwq3oqw0loPUvBny4(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->lambda$onGreetingInfo$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HJJZX9jo2Y-RloqTCRtZ8ebMZME(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->lambda$setTranscription$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YSzeiekt5JI75CTVC2pY0x67VrI(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/util/List;Ljava/util/Optional;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->lambda$onChipsInfo$2(Ljava/util/List;Ljava/util/Optional;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZzAv6azWAWFSKJneuGeoHyDmKao(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->lambda$setUpViews$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a20iYR8m2pAyfin8jA2FEo6wUDk(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->lambda$onChipsInfo$3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gK2WayE8l5sgoJLECmkAvKy6rRs(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->lambda$onChipsInfo$4(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mHasAccurateBackground:Z

    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedStateAnimates:Z

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mParent:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mDefaultOnTap:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setUpViews()V

    invoke-interface {p4, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private getTouchRegion()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p0, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;->getHitRect(Landroid/graphics/Rect;)V

    new-instance p0, Landroid/graphics/Region;

    invoke-direct {p0, v0}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private hasTapAction()Z
    .locals 4

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$1;->$SwitchMap$com$google$android$systemui$assist$uihints$TranscriptionController$State:[I

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mOnGreetingTap:Landroid/app/PendingIntent;

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mOnTranscriptionTap:Landroid/app/PendingIntent;

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method private synthetic lambda$maybeSetState$6(Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedCompletion:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onChipsInfo$2(Ljava/util/List;Ljava/util/Optional;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->CHIPS:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/ChipsContainer;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/ChipsContainer;->setChipsAnimatedBounce(Ljava/util/List;F)V

    return-void
.end method

.method private synthetic lambda$onChipsInfo$3(Ljava/util/List;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->CHIPS:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/ChipsContainer;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/ChipsContainer;->setChipsAnimatedZoom(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onChipsInfo$4(Ljava/util/List;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->CHIPS:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/ChipsContainer;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/ChipsContainer;->setChips(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onGreetingInfo$0(Ljava/lang/String;Ljava/util/Optional;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->GREETING:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/GreetingView;

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/GreetingView;->setGreetingAnimated(Ljava/lang/String;F)V

    return-void
.end method

.method private synthetic lambda$onGreetingInfo$1(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->GREETING:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/GreetingView;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/GreetingView;->setGreeting(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setTranscription$5(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->TRANSCRIPTION:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->setTranscription(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setUpViews$7(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mOnTranscriptionTap:Landroid/app/PendingIntent;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mDefaultOnTap:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;->onTouchInside()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "TranscriptionController"

    const-string v0, "Transcription tap PendingIntent cancelled"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mDefaultOnTap:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;->onTouchInside()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setUpViews$8(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mOnGreetingTap:Landroid/app/PendingIntent;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mDefaultOnTap:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;->onTouchInside()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "TranscriptionController"

    const-string v0, "Greeting tap PendingIntent cancelled"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mDefaultOnTap:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;->onTouchInside()V

    :goto_0
    return-void
.end method

.method private maybeSetState()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedCompletion:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mHasAccurateBackground:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    if-eq v1, v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mHideFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-direct {p0, v0, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->updateListener(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;)V

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedCompletion:Ljava/lang/Runnable;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedStateAnimates:Z

    invoke-interface {v0, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;->hide(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mHideFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_5
    :goto_0
    return-void
.end method

.method private setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    iput-boolean p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedStateAnimates:Z

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mQueuedCompletion:Ljava/lang/Runnable;

    return-void
.end method

.method private setUpViews()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mParent:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->transcription:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mDefaultOnTap:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->TRANSCRIPTION:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mParent:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->greeting:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/GreetingView;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mDefaultOnTap:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->GREETING:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mParent:Landroid/view/ViewGroup;

    sget v1, Lcom/android/systemui/R$id;->chips:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/ChipsContainer;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->CHIPS:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateListener(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mListener:Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceListener;->onStateChanged(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getTouchActionRegion()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->hasTapAction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->getTouchRegion()Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTouchInsideRegion()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->hasTapAction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->getTouchRegion()Ljava/util/Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public onCardInfo(ZIZZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setCardVisible(Z)V

    return-void
.end method

.method public onChipsInfo(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

    invoke-virtual {v1}, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->consumeVelocity()Ljava/util/Optional;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    sget-object v3, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->CHIPS:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    new-instance v3, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/util/List;Ljava/util/Optional;)V

    invoke-direct {p0, v2, v0, v3}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    sget-object v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->GREETING:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->TRANSCRIPTION:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->CHIPS:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    new-instance v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/util/List;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->CHIPS:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    new-instance v2, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/util/List;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    :goto_1
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->maybeSetState()V

    return-void

    :cond_4
    :goto_2
    const-string p1, "TranscriptionController"

    const-string v1, "Null or empty chip list received; clearing transcription space"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->onClear(Z)V

    return-void
.end method

.method public onClear(Z)V
    .locals 2

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->maybeSetState()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;

    invoke-interface {v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;->onFontSizeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGreetingInfo(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mOnGreetingTap:Landroid/app/PendingIntent;

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

    invoke-virtual {p2}, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->consumeVelocity()Ljava/util/Optional;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    sget-object v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->NONE:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->GREETING:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/lang/String;Ljava/util/Optional;)V

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->GREETING:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/lang/String;)V

    invoke-direct {p0, p2, v2, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->maybeSetState()V

    :cond_1
    return-void
.end method

.method public onTranscriptionInfo(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setTranscription(Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, p3}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setTranscriptionColor(I)V

    return-void
.end method

.method public setCardVisible(Z)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;

    invoke-interface {v0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;->setCardVisible(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHasAccurateBackground(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mHasAccurateBackground:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mHasAccurateBackground:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->maybeSetState()V

    :cond_0
    return-void
.end method

.method public setHasDarkBackground(Z)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;

    invoke-interface {v0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;->setHasDarkBackground(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setListener(Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mListener:Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mCurrentState:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-interface {p1, v0, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceListener;->onStateChanged(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;)V

    :cond_0
    return-void
.end method

.method public setTranscription(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mOnTranscriptionTap:Landroid/app/PendingIntent;

    sget-object p2, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->TRANSCRIPTION:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionController;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setQueuedState(Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;ZLjava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->maybeSetState()V

    return-void
.end method

.method public setTranscriptionColor(I)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->mViewMap:Ljava/util/Map;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;->TRANSCRIPTION:Lcom/google/android/systemui/assist/uihints/TranscriptionController$State;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->setTranscriptionColor(I)V

    return-void
.end method
