.class public final synthetic Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/systemui/ActivityStarterDelegate$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-interface {p1, v0, v1, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-void
.end method
