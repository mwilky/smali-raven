.class Lcom/android/systemui/recents/OverviewProxyService$1;
.super Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
.source "OverviewProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/OverviewProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public static synthetic $r8$lambda$3MyHYUESwjq1QhDV1UOje-Aug2o(Lcom/android/systemui/recents/OverviewProxyService$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onOverviewShown$11(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$3lv73vs9_Lc97TpotBciTuDPbbQ(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onStatusBarMotionEvent$4(Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$42gDl7SQJ0x6lC_qRR0IuFSJ43g(Lcom/android/systemui/recents/OverviewProxyService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$expandNotificationPanel$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$4jFp4JwEtAwnpqQGpgOJ6jEKebM()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$stopScreenPinning$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$8GVPnlGuOV62tQe9f7hc_Yu5Dic(Lcom/android/systemui/recents/OverviewProxyService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onBackPressed$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$ATqwkGbEQbYo1fYOQBGWqZYsv54(Lcom/android/systemui/recents/OverviewProxyService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$notifySwipeUpGestureStarted$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$DVWHCzjWn79g53a5jp_2_bIDLJY(Lcom/android/systemui/recents/OverviewProxyService$1;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onAssistantProgress$15(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$EMvirdpVoHPM1x7HVkZLs51QSeo(Lcom/android/systemui/recents/OverviewProxyService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$notifyAccessibilityButtonLongClicked$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$EQ-hNM_s_ou6d4_sJNOFi1uQueA(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$verifyCallerAndClearCallingIdentity$26(Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GLLx13oEkmjlYUhZJinfa6GzPQ8(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)Landroid/graphics/Rect;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$getNonMinimizedSplitScreenSecondaryBounds$12(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IBg28_vaDNWW4pKydu0trn4zupI(Lcom/android/systemui/recents/OverviewProxyService$1;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$setNavBarButtonAlpha$14(FZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$JWUG7pIBDd2p0lGrjRQm6OJpXpk(Lcom/android/systemui/recents/OverviewProxyService$1;Ljava/lang/Runnable;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$verifyCallerAndClearCallingIdentityPostMain$27(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LH-44PafQiAaDgNB3OGPlnJdAqw(Lcom/android/systemui/recents/OverviewProxyService$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$setHomeRotationEnabled$7(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$MYtnpxfI0IaHwV2wCHDJcLlCmWg(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onStatusBarMotionEvent$5(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mp4ATWfDSrLRRGibyhrKW2v8LoU(ZLcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$setSplitScreenMinimized$20(ZLcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NF-sUoYS8d441zcPOYeHPtGl0LE(Lcom/android/systemui/recents/OverviewProxyService$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$notifyAccessibilityButtonClicked$18(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$W8h7K19fVKEq-PX5-84STDoQP1g(Lcom/android/systemui/recents/OverviewProxyService$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$setHomeRotationEnabled$8(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$X0frDxCPAme-_ER7CrwgWTRLVOM(Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$notifySwipeToHomeFinished$21(Lcom/android/wm/shell/pip/Pip;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Jk1G8y_Opyq2CHxsvobqunYwn8(Lcom/android/systemui/recents/OverviewProxyService$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$startScreenPinning$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bOzLsFvG2gA8I9D6wTUlNU1MNPA(ILcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$startScreenPinning$0(ILcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g_jS4Lb1_cKNpyhnCRJEeQ1zg-Q(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$startAssistant$17(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hXJmiadNDhGI284b2mK6rSGbZ-k(Lcom/android/systemui/recents/OverviewProxyService$1;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onAssistantGestureCompletion$16(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$jyO22PJy3nXPe_7obXY8M-hYsdc(Lcom/android/systemui/recents/OverviewProxyService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$notifySwipeToHomeFinished$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$l0Grgg8HqM_Cz46z6uFeGkW7SsE(Lcom/android/systemui/recents/OverviewProxyService$1;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$notifyTaskbarStatus$9(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$l55HvUFfq_RqJq3lQ8pfTJjimI8(Lcom/android/systemui/recents/OverviewProxyService$1;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$getNonMinimizedSplitScreenSecondaryBounds$13()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sT3ZsYhx5pIH37WOnUN3PNAJShE(Lcom/android/systemui/recents/OverviewProxyService$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$notifyPrioritizedRotation$24(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tAJ1cIROgAYzbS4RqeO9XeCpY-E(Lcom/android/systemui/recents/OverviewProxyService$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$notifyTaskbarAutohideSuspend$10(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$yzPUmCmV5ie1pLz_z1FzQQ2nIQU(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onStatusBarMotionEvent$3(Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-direct {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$expandNotificationPanel$25()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$600(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/CommandQueue;

    move-result-object p0

    const/16 v0, 0x119

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->handleSystemKey(I)V

    return-void
.end method

.method private static synthetic lambda$getNonMinimizedSplitScreenSecondaryBounds$12(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)Landroid/graphics/Rect;
    .locals 0

    invoke-interface {p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->getDividerView()Lcom/android/wm/shell/legacysplitscreen/DividerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getNonMinimizedSplitScreenSecondaryBounds$13()Landroid/graphics/Rect;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$200(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda24;->INSTANCE:Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda24;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method private synthetic lambda$notifyAccessibilityButtonClicked$18(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V

    return-void
.end method

.method private synthetic lambda$notifyAccessibilityButtonLongClicked$19()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$notifyPrioritizedRotation$24(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$700(Lcom/android/systemui/recents/OverviewProxyService;I)V

    return-void
.end method

.method private static synthetic lambda$notifySwipeToHomeFinished$21(Lcom/android/wm/shell/pip/Pip;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/wm/shell/pip/Pip;->setPinnedStackAnimationType(I)V

    return-void
.end method

.method private synthetic lambda$notifySwipeToHomeFinished$22()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$900(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda23;->INSTANCE:Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda23;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$notifySwipeUpGestureStarted$23()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$800(Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void
.end method

.method private synthetic lambda$notifyTaskbarAutohideSuspend$10(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1500(Lcom/android/systemui/recents/OverviewProxyService;Z)V

    return-void
.end method

.method private synthetic lambda$notifyTaskbarStatus$9(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->access$1600(Lcom/android/systemui/recents/OverviewProxyService;ZZ)V

    return-void
.end method

.method private synthetic lambda$onAssistantGestureCompletion$16(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1100(Lcom/android/systemui/recents/OverviewProxyService;F)V

    return-void
.end method

.method private synthetic lambda$onAssistantProgress$15(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1200(Lcom/android/systemui/recents/OverviewProxyService;F)V

    return-void
.end method

.method private synthetic lambda$onBackPressed$6()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/OverviewProxyService$1;->sendEvent(II)Z

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/OverviewProxyService$1;->sendEvent(II)Z

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    return-void
.end method

.method private synthetic lambda$onOverviewShown$11(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1400(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1400(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;->onOverviewShown(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onStatusBarMotionEvent$3(Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v3, v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$1902(Lcom/android/systemui/recents/OverviewProxyService;Z)Z

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/recents/OverviewProxyService;->access$2002(Lcom/android/systemui/recents/OverviewProxyService;F)F

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/systemui/recents/OverviewProxyService;->access$2102(Lcom/android/systemui/recents/OverviewProxyService;J)J

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v3}, Lcom/android/systemui/recents/OverviewProxyService;->access$1900(Lcom/android/systemui/recents/OverviewProxyService;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->onInputFocusTransfer(ZZF)V

    :cond_0
    const/4 v3, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v3, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v4, v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1902(Lcom/android/systemui/recents/OverviewProxyService;Z)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v5}, Lcom/android/systemui/recents/OverviewProxyService;->access$2000(Lcom/android/systemui/recents/OverviewProxyService;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v7}, Lcom/android/systemui/recents/OverviewProxyService;->access$2100(Lcom/android/systemui/recents/OverviewProxyService;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-float v5, v5

    div-float/2addr v4, v5

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1900(Lcom/android/systemui/recents/OverviewProxyService;)Z

    move-result p0

    if-ne v0, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p2, p0, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->onInputFocusTransfer(ZZF)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private synthetic lambda$onStatusBarMotionEvent$4(Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startExpandLatencyTracking()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$300(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onStatusBarMotionEvent$5(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1800(Lcom/android/systemui/recents/OverviewProxyService;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$setHomeRotationEnabled$7(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1700(Lcom/android/systemui/recents/OverviewProxyService;Z)V

    return-void
.end method

.method private synthetic lambda$setHomeRotationEnabled$8(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$300(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$setNavBarButtonAlpha$14(FZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->access$1300(Lcom/android/systemui/recents/OverviewProxyService;FZ)V

    return-void
.end method

.method private static synthetic lambda$setSplitScreenMinimized$20(ZLcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->setMinimized(Z)V

    return-void
.end method

.method private synthetic lambda$startAssistant$17(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$1000(Lcom/android/systemui/recents/OverviewProxyService;Landroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic lambda$startScreenPinning$0(ILcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->showScreenPinningRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$startScreenPinning$1(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$1800(Lcom/android/systemui/recents/OverviewProxyService;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda20;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$stopScreenPinning$2()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "OverviewProxyService"

    const-string v1, "Failed to stop screen pinning"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$verifyCallerAndClearCallingIdentity$26(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$verifyCallerAndClearCallingIdentityPostMain$27(Ljava/lang/Runnable;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$300(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private sendEvent(II)Z
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v13, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v13

    move-wide v1, v3

    move v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method private verifyCaller(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$500(Lcom/android/systemui/recents/OverviewProxyService;)I

    move-result p0

    if-eq v0, p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launcher called sysui with invalid user: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", reason: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverviewProxyService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCaller(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    :try_start_0
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p2
.end method

.method private verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda27;

    invoke-direct {v0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda27;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    return-void
.end method

.method private verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda26;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Ljava/lang/Runnable;)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public expandNotificationPanel()V
    .locals 2

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;)V

    const-string v1, "expandNotificationPanel"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda25;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;)V

    const-string v1, "getNonMinimizedSplitScreenSecondaryBounds"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public handleImageAsScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;I)V
    .locals 0

    return-void
.end method

.method public handleImageBundleAsScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$400(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/internal/util/ScreenshotHelper;

    move-result-object v1

    iget v5, p4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v6, p4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v7, p4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$300(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v8, 0x3

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/util/ScreenshotHelper;->provideScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;ILandroid/os/Handler;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyAccessibilityButtonClicked(I)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    const-string p1, "notifyAccessibilityButtonClicked"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyAccessibilityButtonLongClicked()V
    .locals 2

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;)V

    const-string v1, "notifyAccessibilityButtonLongClicked"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyPrioritizedRotation(I)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    const-string p1, "notifyPrioritizedRotation"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifySwipeToHomeFinished()V
    .locals 2

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;)V

    const-string v1, "notifySwipeToHomeFinished"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifySwipeUpGestureStarted()V
    .locals 2

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;)V

    const-string v1, "notifySwipeUpGestureStarted"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyTaskbarAutohideSuspend(Z)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Z)V

    const-string p1, "notifyTaskbarAutohideSuspend"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyTaskbarStatus(ZZ)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda18;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;ZZ)V

    const-string p1, "notifyTaskbarStatus"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAssistantGestureCompletion(F)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;F)V

    const-string p1, "onAssistantGestureCompletion"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAssistantProgress(F)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;F)V

    const-string p1, "onAssistantProgress"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;)V

    const-string v1, "onBackPressed"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onImeSwitcherPressed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$000(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerFromSystem(ZI)V

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$100(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_IME_SWITCHER_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public onOverviewShown(Z)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Z)V

    const-string p1, "onOverviewShown"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStatusBarMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/view/MotionEvent;)V

    const-string p1, "onStatusBarMotionEvent"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentity(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHomeRotationEnabled(Z)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Z)V

    const-string p1, "setHomeRotationEnabled"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNavBarButtonAlpha(FZ)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;FZ)V

    const-string p1, "setNavBarButtonAlpha"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSplitScreenMinimized(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$200(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda22;-><init>(Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startAssistant(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;Landroid/os/Bundle;)V

    const-string p1, "startAssistant"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startScreenPinning(I)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V

    const-string p1, "startScreenPinning"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopScreenPinning()V
    .locals 2

    sget-object v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda19;->INSTANCE:Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda19;

    const-string v1, "stopScreenPinning"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->verifyCallerAndClearCallingIdentityPostMain(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
