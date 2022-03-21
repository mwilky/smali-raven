.class public Lcom/android/systemui/ActivityStarterDelegate;
.super Ljava/lang/Object;
.source "ActivityStarterDelegate.java"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter;


# instance fields
.field private mActualStarterOptionalLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-Uvr_BHeQFwKOntfLtocC20LxcI(Landroid/content/Intent;ZZLcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startActivity$7(Landroid/content/Intent;ZZLcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1-tafwhcnKhh2KzVOZOpFUZ51XA(Landroid/content/Intent;ZLcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startActivity$5(Landroid/content/Intent;ZLcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FCVB2tdUKpndRlJalvNHSL5DUNY(Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startPendingIntentDismissingKeyguard$0(Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TM52skTYwMHlmzVkDjuci8z-siU(Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$postStartActivityDismissingKeyguard$11(Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yn4-tRo28Tkw_MKOSxLyS9sjcKk(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$dismissKeyguardThenExecute$14(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bl4I5TmKNRe9tp744k7qSPemIWA(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$postStartActivityDismissingKeyguard$10(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dQnTXuiPNlZ_F2scRD6ogzvgVyA(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$postQSRunnableDismissingKeyguard$13(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dty8XlJuQBOpva_FBeQCYjAPdFE(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startPendingIntentDismissingKeyguard$2(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kOyPvRhH3TUFB-GmZ_cgfPnnZpw(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$postStartActivityDismissingKeyguard$12(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n_GLWKnTy5A8sgMCMqggSbNSAC8(Landroid/content/Intent;ZZILcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startActivity$4(Landroid/content/Intent;ZZILcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rz4RAFLfJKF9349QBeODYz6mPL8(Landroid/content/Intent;ILcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$postStartActivityDismissingKeyguard$9(Landroid/content/Intent;ILcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tW-hlo8TwlI8G1sSvGyesMSfWn4(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startActivity$8(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v4nIsdCuBjPfraDM6FKxrhwwdSk(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startPendingIntentDismissingKeyguard$3(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wWL1lX10CzzKny5n8HeMSF4ELWk(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startPendingIntentDismissingKeyguard$1(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z70HCiNBeDxXm-58lnNDMz1fVzE(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/ActivityStarterDelegate;->lambda$startActivity$6(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarterOptionalLazy:Ldagger/Lazy;

    return-void
.end method

.method private static synthetic lambda$dismissKeyguardThenExecute$14(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private static synthetic lambda$postQSRunnableDismissingKeyguard$13(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$postStartActivityDismissingKeyguard$10(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method

.method private static synthetic lambda$postStartActivityDismissingKeyguard$11(Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static synthetic lambda$postStartActivityDismissingKeyguard$12(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method

.method private static synthetic lambda$postStartActivityDismissingKeyguard$9(Landroid/content/Intent;ILcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method private static synthetic lambda$startActivity$4(Landroid/content/Intent;ZZILcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZZI)V

    return-void
.end method

.method private static synthetic lambda$startActivity$5(Landroid/content/Intent;ZLcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private static synthetic lambda$startActivity$6(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V

    return-void
.end method

.method private static synthetic lambda$startActivity$7(Landroid/content/Intent;ZZLcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private static synthetic lambda$startActivity$8(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method

.method private static synthetic lambda$startPendingIntentDismissingKeyguard$0(Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static synthetic lambda$startPendingIntentDismissingKeyguard$1(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$startPendingIntentDismissingKeyguard$2(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$startPendingIntentDismissingKeyguard$3(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method


# virtual methods
.method public dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarterOptionalLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarterOptionalLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarterOptionalLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarterOptionalLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda2;-><init>(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarterOptionalLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda6;-><init>(Landroid/content/Intent;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarterOptionalLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda7;-><init>(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarterOptionalLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda8;-><init>(Landroid/content/Intent;Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarterOptionalLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda9;-><init>(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarterOptionalLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda10;-><init>(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarterOptionalLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda11;-><init>(Landroid/content/Intent;ZZ)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;ZZI)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarterOptionalLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda12;-><init>(Landroid/content/Intent;ZZI)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarterOptionalLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarterOptionalLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda3;-><init>(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarterOptionalLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda4;-><init>(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate;->mActualStarterOptionalLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda5;-><init>(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
