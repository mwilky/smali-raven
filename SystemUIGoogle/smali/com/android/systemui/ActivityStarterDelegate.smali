.class public Lcom/android/systemui/ActivityStarterDelegate;
.super Ljava/lang/Object;
.source "ActivityStarterDelegate.java"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter;


# instance fields
.field private mActualStarter:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1Bmoh843_wtrpIYdHU8BCDIBE7w(Landroid/content/Intent;ZLdagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startActivity$5(Landroid/content/Intent;ZLdagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6t-LSiD24UE4d-3HlFYy4ZUs6FY(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Ldagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startPendingIntentDismissingKeyguard$2(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7CADyxpqsE3shlaxQ_Y_7aUHr7A(Landroid/content/Intent;ILdagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$postStartActivityDismissingKeyguard$9(Landroid/content/Intent;ILdagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CBqVSpB7Mel0xqOPaF4g4pe1ZNA(Landroid/app/PendingIntent;Ldagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startPendingIntentDismissingKeyguard$0(Landroid/app/PendingIntent;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EINS3UBLKA2XKEwQOSHwJWM5wSc(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Ldagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$postStartActivityDismissingKeyguard$10(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FBf0zedluqDHJZZwHcw2AxX0srs(Landroid/app/PendingIntent;Ljava/lang/Runnable;Ldagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startPendingIntentDismissingKeyguard$1(Landroid/app/PendingIntent;Ljava/lang/Runnable;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GzyBy2b3NSkGSU5PUbMjcd8vV2s(Ljava/lang/Runnable;Ldagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$postQSRunnableDismissingKeyguard$13(Ljava/lang/Runnable;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HJrg9XibaLdwP-lCoddPK4--isQ(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Ldagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$postStartActivityDismissingKeyguard$12(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HpC2bvSf3Xg5JB55PP2XeiJ7XkQ(Landroid/content/Intent;ZZILdagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startActivity$4(Landroid/content/Intent;ZZILdagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KLVw4PbQur0YwmyYTDp4Bw0foyg(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;Ldagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startActivity$8(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SiwhPDaFEqEOknFrpcjT1ZbPv24(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Ldagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startPendingIntentDismissingKeyguard$3(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TnVER6KGnQoJTf40L_GZQH1lfsM(Landroid/content/Intent;ZZLdagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startActivity$7(Landroid/content/Intent;ZZLdagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dmHqE3zn4WygtrRMHKyegXFWE54(Landroid/app/PendingIntent;Ldagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$postStartActivityDismissingKeyguard$11(Landroid/app/PendingIntent;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q4VFIkntgcmOWigjQFhmWk_nsdA(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Ldagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startActivity$6(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Ldagger/Lazy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vjhY4wjH0txfRe7laoKH2eiRkKE(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLdagger/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$dismissKeyguardThenExecute$14(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLdagger/Lazy;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    return-void
.end method

.method private static synthetic lambda$dismissKeyguardThenExecute$14(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLdagger/Lazy;)V
    .locals 0

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private static synthetic lambda$postQSRunnableDismissingKeyguard$13(Ljava/lang/Runnable;Ldagger/Lazy;)V
    .locals 0

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$postStartActivityDismissingKeyguard$10(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Ldagger/Lazy;)V
    .locals 0

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method

.method private static synthetic lambda$postStartActivityDismissingKeyguard$11(Landroid/app/PendingIntent;Ldagger/Lazy;)V
    .locals 0

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static synthetic lambda$postStartActivityDismissingKeyguard$12(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Ldagger/Lazy;)V
    .locals 0

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method

.method private static synthetic lambda$postStartActivityDismissingKeyguard$9(Landroid/content/Intent;ILdagger/Lazy;)V
    .locals 0

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method private static synthetic lambda$startActivity$4(Landroid/content/Intent;ZZILdagger/Lazy;)V
    .locals 0

    invoke-interface {p4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method private static synthetic lambda$startActivity$5(Landroid/content/Intent;ZLdagger/Lazy;)V
    .locals 0

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private static synthetic lambda$startActivity$6(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Ldagger/Lazy;)V
    .locals 0

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method

.method private static synthetic lambda$startActivity$7(Landroid/content/Intent;ZZLdagger/Lazy;)V
    .locals 0

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private static synthetic lambda$startActivity$8(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;Ldagger/Lazy;)V
    .locals 0

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method

.method private static synthetic lambda$startPendingIntentDismissingKeyguard$0(Landroid/app/PendingIntent;Ldagger/Lazy;)V
    .locals 0

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static synthetic lambda$startPendingIntentDismissingKeyguard$1(Landroid/app/PendingIntent;Ljava/lang/Runnable;Ldagger/Lazy;)V
    .locals 0

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$startPendingIntentDismissingKeyguard$2(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Ldagger/Lazy;)V
    .locals 0

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$startPendingIntentDismissingKeyguard$3(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Ldagger/Lazy;)V
    .locals 0

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method


# virtual methods
.method public dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda2;-><init>(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda6;-><init>(Landroid/content/Intent;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda7;-><init>(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda8;-><init>(Landroid/content/Intent;Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda9;-><init>(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda10;-><init>(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda11;-><init>(Landroid/content/Intent;ZZ)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZI)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda12;-><init>(Landroid/content/Intent;ZZI)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda3;-><init>(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda4;-><init>(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda5;-><init>(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
